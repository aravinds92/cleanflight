/*
 * This file is part of Cleanflight.
 *
 * Cleanflight is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Cleanflight is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Cleanflight.  If not, see <http://www.gnu.org/licenses/>.
 */

// Inertial Measurement Unit (IMU)

#include <stdbool.h>
#include <stdint.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
#include <stdio.h>

#include "common/maths.h"

#include "build/build_config.h"
#include <platform.h>
#include "build/debug.h"

#include "common/axis.h"
#include "common/filter.h"

#include "config/parameter_group_ids.h"
#include "config/parameter_group.h"
#include "config/config_reset.h"
#include "config/profile.h"

#include "drivers/system.h"
#include "drivers/sensor.h"
#include "drivers/accgyro.h"
#include "drivers/drivers_compass.h"

#include "sensors/sensors.h"
#include "sensors/gyro.h"
#include "sensors/compass.h"
#include "sensors/acceleration.h"
#include "sensors/barometer.h"
#include "sensors/sonar.h"

#include "flight/mixer.h"
#include "flight/pid.h"
#include "flight/imu.h"

#include "io/gps.h"

#include "fc/runtime_config.h"

// the limit (in degrees/second) beyond which we stop integrating
// omega_I. At larger spin rates the DCM PI controller can get 'dizzy'
// which results in false gyro drift. See
// http://gentlenav.googlecode.com/files/fastRotations.pdf
#define SPIN_RATE_LIMIT 30


// Madgwick Constants
#define GyroMeasError M_PIf * (40.0f / 180.0f)       // gyroscope measurement error in rads/s (shown as 3 deg/s)
#define GyroMeasDrift M_PIf * (0.0f / 180.0f)      // gyroscope measurement drift in rad/s/s (shown as 0.0 deg/s/s)
//#define beta sqrt(3.0f / 4.0f) * GyroMeasError   // compute beta = 0.604
#define beta 0.1   // compute beta, usually 0.04
#define zeta sqrt(3.0f / 4.0f) * GyroMeasDrift   // compute zeta, the other free parameter in the Madgwick scheme usually set to a small or zero value


// Mahony Constants
#define Kp 2.0f * 5.0f
#define Ki 0.0f


//To choose between different algorithms
#define UPDATE_METHOD 1

//For finding delta
#define mHz 500


int16_t accSmooth[XYZ_AXIS_COUNT];
int32_t accSum[XYZ_AXIS_COUNT];

uint32_t accTimeSum = 0;        // keep track for integration of acc
int accSumCount = 0;
float accVelScale;

float throttleAngleScale;
float fc_acc;
float smallAngleCosZ = 0;

float lastUpdate = 0;    // used to calculate integration interval
float deltat = 0.0f;        // integration interval for both filter schemes
float now = 0;           // used to calculate integration interval

float mahonyErrors[3] = {0.0, 0.0, 0.0};



static bool isAccelUpdatedAtLeastOnce = false;

static imuRuntimeConfig_t *imuRuntimeConfig;
static accDeadband_t *accDeadband;

bool runtimeConfig_initialized = false;

PG_REGISTER_WITH_RESET_TEMPLATE(imuConfig_t, imuConfig, PG_IMU_CONFIG, 0);
PG_REGISTER_PROFILE_WITH_RESET_TEMPLATE(throttleCorrectionConfig_t, throttleCorrectionConfig, PG_THROTTLE_CORRECTION_CONFIG, 0);

PG_RESET_TEMPLATE(imuConfig_t, imuConfig,
    .dcm_kp = 2500,                // 1.0 * 10000
    .looptime = 2000,
    .gyroSync = 1,
    .gyroSyncDenominator = 1,
    .small_angle = 25,
    .max_angle_inclination = 500,    // 50 degrees
);

PG_RESET_TEMPLATE(throttleCorrectionConfig_t, throttleCorrectionConfig,
    .throttle_correction_value = 0,      // could 10 with althold or 40 for fpv
    .throttle_correction_angle = 800,    // could be 80.0 deg with atlhold or 45.0 for fpv
);

STATIC_UNIT_TESTED float q0 = 1.0f, q1 = 0.0f, q2 = 0.0f, q3 = 0.0f;    // quaternion of sensor frame relative to earth frame
float q[4] = {1.0f, 0.0f, 0.0f, 0.0f};    // vector to hold quaternion
static float rMat[3][3];

attitudeEulerAngles_t attitude = { { 0, 0, 0 } };     // absolute angle inclination in multiple of 0.1 degree    180 deg = 1800

static float gyroScale;

STATIC_UNIT_TESTED void imuComputeRotationMatrix(void)
{
    float q1q1 = sq(q1);
    float q2q2 = sq(q2);
    float q3q3 = sq(q3);

    float q0q1 = q0 * q1;
    float q0q2 = q0 * q2;
    float q0q3 = q0 * q3;
    float q1q2 = q1 * q2;
    float q1q3 = q1 * q3;
    float q2q3 = q2 * q3;

    rMat[0][0] = 1.0f - 2.0f * q2q2 - 2.0f * q3q3;
    rMat[0][1] = 2.0f * (q1q2 + -q0q3);
    rMat[0][2] = 2.0f * (q1q3 - -q0q2);

    rMat[1][0] = 2.0f * (q1q2 - -q0q3);
    rMat[1][1] = 1.0f - 2.0f * q1q1 - 2.0f * q3q3;
    rMat[1][2] = 2.0f * (q2q3 + -q0q1);

    rMat[2][0] = 2.0f * (q1q3 + -q0q2);
    rMat[2][1] = 2.0f * (q2q3 - -q0q1);
    rMat[2][2] = 1.0f - 2.0f * q1q1 - 2.0f * q2q2;
}

void imuConfigure(
    imuRuntimeConfig_t *initialImuRuntimeConfig,
    accDeadband_t *initialAccDeadband,
    float accz_lpf_cutoff,
    uint16_t throttle_correction_angle
)
{
    if(!runtimeConfig_initialized)
    {

        runtimeConfig_initialized = true;
    }
    imuRuntimeConfig = initialImuRuntimeConfig;
    accDeadband = initialAccDeadband;
    fc_acc = calculateAccZLowPassFilterRCTimeConstant(accz_lpf_cutoff);
    throttleAngleScale = calculateThrottleAngleScale(throttle_correction_angle);
}

void imuInit(void)
{
    smallAngleCosZ = cos_approx(degreesToRadians(imuRuntimeConfig->small_angle));
    gyroScale = gyro.scale * (M_PIf / 180.0f);  // gyro output scaled to rad per second
    accVelScale = 9.80665f / acc.acc_1G / 10000.0f;

    imuComputeRotationMatrix();
}

float calculateThrottleAngleScale(uint16_t throttle_correction_angle)
{
    return (1800.0f / M_PIf) * (900.0f / throttle_correction_angle);
}

/*
* Calculate RC time constant used in the accZ lpf.
*/
float calculateAccZLowPassFilterRCTimeConstant(float accz_lpf_cutoff)
{
    return 0.5f / (M_PIf * accz_lpf_cutoff);
}

void imuResetAccelerationSum(void)
{
    accSum[0] = 0;
    accSum[1] = 0;
    accSum[2] = 0;
    accSumCount = 0;
    accTimeSum = 0;
}

void imuTransformVectorBodyToEarth(t_fp_vector * v)
{
    float x,y,z;

    /* From body frame to earth frame */
    x = rMat[0][0] * v->V.X + rMat[0][1] * v->V.Y + rMat[0][2] * v->V.Z;
    y = rMat[1][0] * v->V.X + rMat[1][1] * v->V.Y + rMat[1][2] * v->V.Z;
    z = rMat[2][0] * v->V.X + rMat[2][1] * v->V.Y + rMat[2][2] * v->V.Z;

    v->V.X = x;
    v->V.Y = -y;
    v->V.Z = z;
}

// rotate acc into Earth frame and calculate acceleration in it
void imuCalculateAcceleration(uint32_t deltat)
{
    static int32_t accZoffset = 0;
    static float accz_smooth = 0;
    float dT;
    t_fp_vector accel_ned;

    // deltat is measured in us ticks
    dT = (float)deltat * 1e-6f;

    accel_ned.V.X = accSmooth[0];
    accel_ned.V.Y = accSmooth[1];
    accel_ned.V.Z = accSmooth[2];

    imuTransformVectorBodyToEarth(&accel_ned);

    if (imuRuntimeConfig->acc_unarmedcal == 1) {
        if (!ARMING_FLAG(ARMED)) {
            accZoffset -= accZoffset / 64;
            accZoffset += accel_ned.V.Z;
        }
        accel_ned.V.Z -= accZoffset / 64;  // compensate for gravitation on z-axis
    } else
        accel_ned.V.Z -= acc.acc_1G;

    accz_smooth = accz_smooth + (dT / (fc_acc + dT)) * (accel_ned.V.Z - accz_smooth); // low pass filter

    // apply Deadband to reduce integration drift and vibration influence
    accSum[X] += applyDeadband(lrintf(accel_ned.V.X), accDeadband->xy);
    accSum[Y] += applyDeadband(lrintf(accel_ned.V.Y), accDeadband->xy);
    accSum[Z] += applyDeadband(lrintf(accz_smooth), accDeadband->z);

    // sum up Values for later integration to get velocity and distance
    accTimeSum += deltat;
    accSumCount++;
}



bool imuIsAircraftArmable(uint8_t arming_angle)
{
    /* Update small angle state */
    
    float armingAngleCosZ = cos_approx(degreesToRadians(arming_angle));
    
    return (rMat[2][2] > armingAngleCosZ);
}


void imuUpdateAccelerometer(rollAndPitchTrims_t *accelerometerTrims)
{
        updateAccelerationReadings(accelerometerTrims);
        isAccelUpdatedAtLeastOnce = true;
}

void imuUpdateGyroAndAttitude(void)
{
    gyroUpdate();
    if (sensors(SENSOR_ACC) && isAccelUpdatedAtLeastOnce) {
        switch(UPDATE_METHOD)
        {
            case 0:
                imuCalculateEstimatedAttitude();
                break;
            case 1:
                MadgwickcalculateAttitude();
                break;
            case 2:
                MahonycalculateAttitude();
                break;
            default:
                printf("Select proper option for attitude update method\n");

        }
        
    } else {
        accADC[X] = 0;
        accADC[Y] = 0;
        accADC[Z] = 0;
    }
}

float getCosTiltAngle(void)
{
    return rMat[2][2];
}

int16_t calculateThrottleAngleCorrection(uint8_t throttle_correction_value)
{
    /*
    * Use 0 as the throttle angle correction if we are inverted, vertical or with a
    * small angle < 0.86 deg
    * TODO: Define this small angle in config.
    */
    if (rMat[2][2] <= 0.015f) {
        return 0;
    }
    int angle = lrintf(acos_approx(rMat[2][2]) * throttleAngleScale);
    if (angle > 900)
        angle = 900;
    return lrintf(throttle_correction_value * sin_approx(angle / (900.0f * M_PIf / 2.0f)));
}


void MadgwickcalculateAttitude(void)
{
    float ax, ay, az, gx, gy, gz, mx, my, mz; // variables to hold latest sensor data values    

    readMarg(&ax, &ay, &az, &gx, &gy, &gz, &mx, &my, &mz);
    MadgwickQuaternionUpdate(ax, ay, az, gx*M_PIf/180.0f, gy*M_PIf/180.0f, gz*M_PIf/180.0f, mx, my, mz);
    updateEulerAngles();
    tick();
}

void MadgwickQuaternionUpdate(float ax, float ay, float az, float gx, float gy, float gz, float mx, float my, float mz)
{
    //printf("%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\n",ax,ay,az,gx,gy,gz,mx,my,mz);
    float qa = q0, qb = q1, qc = q2, qd = q3;   // short name local variable for readability
    float norm;
    float hx, hy, _2bx, _2bz;
    float s1, s2, s3, s4;
    float qDot1, qDot2, qDot3, qDot4;

    // Auxiliary variables to avoid repeated arithmetic
    float _2q1mx;
    float _2q1my;
    float _2q1mz;
    float _2q2mx;
    float _4bx;
    float _4bz;
    float _2q1 = 2.0f * qa;
    float _2q2 = 2.0f * qb;
    float _2q3 = 2.0f * qc;
    float _2q4 = 2.0f * qd;
    float _2q1q3 = 2.0f * qa * qc;
    float _2q3q4 = 2.0f * qc * qd;
    float q1q1 = qa * qa;
    float q1q2 = qa * qb;
    float q1q3 = qa * qc;
    float q1q4 = qa * qd;
    float q2q2 = qb * qb;
    float q2q3 = qb * qc;
    float q2q4 = qb * qd;
    float q3q3 = qc * qc;
    float q3q4 = qc * qd;
    float q4q4 = qd * qd;

    // Normalise accelerometer measurement
    norm = sqrt(ax * ax + ay * ay + az * az);
    if (norm == 0.0f) return; // handle NaN
    norm = 1.0f/norm;
    ax *= norm;
    ay *= norm;
    az *= norm;

    // Normalise magnetometer measurement
    norm = sqrt(mx * mx + my * my + mz * mz);
    if (norm == 0.0f) return; // handle NaN
    norm = 1.0f/norm;
    mx *= norm;
    my *= norm;
    mz *= norm;

    // Reference direction of Earth's magnetic field
    _2q1mx = 2.0f * qa * mx;
    _2q1my = 2.0f * qa * my;
    _2q1mz = 2.0f * qa * mz;
    _2q2mx = 2.0f * qb * mx;
    hx = mx * q1q1 - _2q1my * qd + _2q1mz * qc + mx * q2q2 + _2q2 * my * qc + _2q2 * mz * qd - mx * q3q3 - mx * q4q4;
    hy = _2q1mx * qd + my * q1q1 - _2q1mz * qb + _2q2mx * qc - my * q2q2 + my * q3q3 + _2q3 * mz * qd - my * q4q4;
    _2bx = sqrt(hx * hx + hy * hy);
    _2bz = -_2q1mx * qc + _2q1my * qb + mz * q1q1 + _2q2mx * qd - mz * q2q2 + _2q3 * my * qd - mz * q3q3 + mz * q4q4;
    _4bx = 2.0f * _2bx;
    _4bz = 2.0f * _2bz;

    // Gradient decent algorithm corrective step
    s1 = -_2q3 * (2.0f * q2q4 - _2q1q3 - ax) + _2q2 * (2.0f * q1q2 + _2q3q4 - ay) - _2bz * qc * (_2bx * (0.5f - q3q3 - q4q4) + _2bz * (q2q4 - q1q3) - mx) + (-_2bx * qd + _2bz * qb) * (_2bx * (q2q3 - q1q4) + _2bz * (q1q2 + q3q4) - my) + _2bx * qc * (_2bx * (q1q3 + q2q4) + _2bz * (0.5f - q2q2 - q3q3) - mz);
    s2 = _2q4 * (2.0f * q2q4 - _2q1q3 - ax) + _2q1 * (2.0f * q1q2 + _2q3q4 - ay) - 4.0f * qb * (1.0f - 2.0f * q2q2 - 2.0f * q3q3 - az) + _2bz * qd * (_2bx * (0.5f - q3q3 - q4q4) + _2bz * (q2q4 - q1q3) - mx) + (_2bx * qc + _2bz * qa) * (_2bx * (q2q3 - q1q4) + _2bz * (q1q2 + q3q4) - my) + (_2bx * qd - _4bz * qb) * (_2bx * (q1q3 + q2q4) + _2bz * (0.5f - q2q2 - q3q3) - mz);
    s3 = -_2q1 * (2.0f * q2q4 - _2q1q3 - ax) + _2q4 * (2.0f * q1q2 + _2q3q4 - ay) - 4.0f * qc * (1.0f - 2.0f * q2q2 - 2.0f * q3q3 - az) + (-_4bx * qc - _2bz * qa) * (_2bx * (0.5f - q3q3 - q4q4) + _2bz * (q2q4 - q1q3) - mx) + (_2bx * qb + _2bz * qd) * (_2bx * (q2q3 - q1q4) + _2bz * (q1q2 + q3q4) - my) + (_2bx * qa - _4bz * qc) * (_2bx * (q1q3 + q2q4) + _2bz * (0.5f - q2q2 - q3q3) - mz);
    s4 = _2q2 * (2.0f * q2q4 - _2q1q3 - ax) + _2q3 * (2.0f * q1q2 + _2q3q4 - ay) + (-_4bx * qd + _2bz * qb) * (_2bx * (0.5f - q3q3 - q4q4) + _2bz * (q2q4 - q1q3) - mx) + (-_2bx * qa + _2bz * qc) * (_2bx * (q2q3 - q1q4) + _2bz * (q1q2 + q3q4) - my) + _2bx * qb * (_2bx * (q1q3 + q2q4) + _2bz * (0.5f - q2q2 - q3q3) - mz);
    norm = sqrt(s1 * s1 + s2 * s2 + s3 * s3 + s4 * s4);    // normalise step magnitude
    norm = 1.0f/norm;
    s1 *= norm;
    s2 *= norm;
    s3 *= norm;
    s4 *= norm;

    // Compute rate of change of quaternion
    qDot1 = 0.5f * (-qb * gx - qc * gy - qd * gz) - beta * s1;
    qDot2 = 0.5f * (qa * gx + qc * gz - qd * gy) - beta * s2;
    qDot3 = 0.5f * (qa * gy - qb * gz + qd * gx) - beta * s3;
    qDot4 = 0.5f * (qa * gz + qb * gy - qc * gx) - beta * s4;

    // Integrate to yield quaternion
    qa += qDot1 * deltat;
    qb += qDot2 * deltat;
    qc += qDot3 * deltat;
    qd += qDot4 * deltat;
    norm = sqrt(qa * qa + qb * qb + qc * qc + qd * qd);    // normalise quaternion
    norm = 1.0f/norm;
    q0 = qa * norm;
    q1 = qb * norm;
    q2 = qc * norm;
    q3 = qd * norm;
    //printf("%f\t%f\t%f\t%f\n",qa,qb,qc,qd);
}


void updateEulerAngles(void)
{
    attitude.values.yaw = atan2(2.0f * (q1 * q2 + q0 * q3), q0 * q0 + q1 * q1 - q2 * q2 - q3 * q3);
    attitude.values.yaw *= 180.0f / M_PIf - 13.8f; // Declination at Danville, California is 13 degrees 48 minutes and 47 seconds on 2014-04-04
    attitude.values.pitch = -asin(2.0f * (q1 * q3 - q0 * q2));
    attitude.values.pitch *= 180.0f / M_PIf;
    attitude.values.roll = atan2(2.0f * (q0 * q1 + q2 * q3), q0 * q0 - q1 * q1 - q2 * q2 + q3 * q3);
    attitude.values.roll *= 180.0f / M_PIf;

    //printf("attitude:%f\t%f\t%f\n",attitude.values.roll, attitude.values.pitch, attitude.values.yaw);
}


void tick(void)
{
    now = micros_total();
    deltat = (now - lastUpdate); // set integration time by time elapsed since last filter update
    lastUpdate = now;
}