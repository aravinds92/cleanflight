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

#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include <string.h>
#include <math.h>

#include <platform.h>

#include "common/axis.h"
#include "common/maths.h"
#include "common/filter.h"

#include "config/parameter_group.h"
#include "config/parameter_group_ids.h"
#include "config/config_reset.h"

#include "drivers/sensor.h"
#include "drivers/accgyro.h"
#include "drivers/gyro_sync.h"

#include "sensors/sensors.h"

#include "io/beeper.h"
#include "io/statusindicator.h"

#include "sensors/boardalignment.h"

#include "sensors/gyro.h"

#define INTEGRAL_COUNT 10
#define ROLL_CALIBRATE 4
#define PITCH_CALIBRATE 45 
#define YAW_CALIBRATE -92

extern gyro_t gyro;                      // gyro access functions
sensor_align_e gyroAlign = 0;

int32_t gyroADC[XYZ_AXIS_COUNT];

int16_t roll[INTEGRAL_COUNT], pitch[INTEGRAL_COUNT], yaw[INTEGRAL_COUNT];       //for integrating


static uint16_t calibratingG = 0;
static int16_t gyroADCRaw[XYZ_AXIS_COUNT];
static int32_t gyroZero[XYZ_AXIS_COUNT] = { 0, 0, 0 };

static biquad_t gyroFilterState[3];
static bool gyroFilterStateIsSet;

bool gyro_initialized = false;

//PG_REGISTER_WITH_RESET_TEMPLATE(gyroConfig_t, gyroConfig, PG_GYRO_CONFIG, 0);


void pgResetFn_gyroConfig(void)
{
		gyroConfig->gyro_lpf = GYRO_LPF_256HZ;
		gyroConfig->soft_gyro_lpf_hz = 100;    // software based lpf filter for gyro
		gyroConfig->gyroMovementCalibrationThreshold = 32;    
}

static void initGyroFilterCoefficients(void)
{
	if (gyroConfig->soft_gyro_lpf_hz) {
		// Initialisation needs to happen once sampling rate is known
		for (int axis = 0; axis < 3; axis++) {
			BiQuadNewLpf(gyroConfig->soft_gyro_lpf_hz, &gyroFilterState[axis], targetLooptime);
		}
		gyroFilterStateIsSet = true;
	}
}

void gyroSetCalibrationCycles(uint16_t calibrationCyclesRequired)
{
	calibratingG = calibrationCyclesRequired;
}

bool isGyroCalibrationComplete(void)
{
	return calibratingG == 0;
}

static bool isOnFinalGyroCalibrationCycle(void)
{
	return calibratingG == 1;
}

static bool isOnFirstGyroCalibrationCycle(void)
{
	return calibratingG == CALIBRATING_GYRO_CYCLES;
}

static void performAcclerationCalibration(uint8_t gyroMovementCalibrationThreshold)
{
	static int32_t g[3];
	static stdev_t var[3];

	for (int axis = 0; axis < 3; axis++) {

		// Reset g[axis] at start of calibration
		if (isOnFirstGyroCalibrationCycle()) {
			g[axis] = 0;
			devClear(&var[axis]);
		}

		// Sum up CALIBRATING_GYRO_CYCLES readings
		g[axis] += gyroADC[axis];
		devPush(&var[axis], gyroADC[axis]);

		// Reset global variables to prevent other code from using un-calibrated data
		gyroADC[axis] = 0;
		gyroZero[axis] = 0;

		if (isOnFinalGyroCalibrationCycle()) {
			float dev = devStandardDeviation(&var[axis]);
			// check deviation and startover in case the model was moved
			if (gyroMovementCalibrationThreshold && dev > gyroMovementCalibrationThreshold) {
				gyroSetCalibrationCycles(CALIBRATING_GYRO_CYCLES);
				return;
			}
			gyroZero[axis] = (g[axis] + (CALIBRATING_GYRO_CYCLES / 2)) / CALIBRATING_GYRO_CYCLES;
		}
	}

	if (isOnFinalGyroCalibrationCycle()) {
		beeper(BEEPER_GYRO_CALIBRATED);
	}
	calibratingG--;
}

static void applyGyroZero(void)
{
	for (int axis = 0; axis < 3; axis++) {
		gyroADC[axis] -= gyroZero[axis];
	}
}

void gyroUpdate(void)
{
	// range: +/- 8192; +/- 2000 deg/sec
	if(!gyro_initialized)
	{
		//malloc structs
		gyro_initialized = true;
	}
	if (!gyro.read(gyroADCRaw)) {
		return;
	}
	
	//calibrateGyro();
	//integrate();

	// Prepare a copy of int32_t gyroADC for mangling to prevent overflow
	for (int axis = 0; axis < XYZ_AXIS_COUNT; axis++) {
		gyroADC[axis] = gyroADCRaw[axis];
	}
	//printf("GyroADC:%d\t%d\t%d\n",gyroADC[0],gyroADC[1],gyroADC[2]);

	alignSensors(gyroADC, gyroADC, gyroAlign);

	if (gyroConfig->soft_gyro_lpf_hz) {
		if (!gyroFilterStateIsSet) {
			initGyroFilterCoefficients();
		}
		for (int axis = 0; axis < XYZ_AXIS_COUNT; axis++) {
			gyroADC[axis] = lrintf(applyBiQuadFilter((float)gyroADC[axis], &gyroFilterState[axis]));
		}
	}

	if (!isGyroCalibrationComplete()) {
		performAcclerationCalibration(gyroConfig->gyroMovementCalibrationThreshold);
	}

	applyGyroZero();
	//printf("Gyro:%d\t%d\t%d\n",gyroADC[0],gyroADC[1],gyroADC[2]);
}

void integrate(void)
{
	static int i = 0;    
	int j=0;
	int16_t roll_sum=0, pitch_sum=0, yaw_sum=0;
	roll[i] = gyroADCRaw[0];
	pitch[i] = gyroADCRaw[1];
	yaw[i] = gyroADCRaw[2];
	i++;

	if(i>INTEGRAL_COUNT)                //reset the value of i to 0 if it exceeds array size
		i=0;

	for(j=0;j<INTEGRAL_COUNT;j++)
	{
		if((roll[j] == 0) && (pitch[j] == 0) && (yaw[j] == 0))
			break;
		else
		{
			roll_sum += roll[j];
			pitch_sum += pitch[j];
			yaw_sum += yaw[j];
		}
	}

	gyroADCRaw[0] = ceil(roll_sum/j);
	gyroADCRaw[1] = ceil(pitch_sum/j);
	gyroADCRaw[2] = ceil(yaw_sum/j);
}

void calibrateGyro(void)
{
	gyroADCRaw[0] -= ROLL_CALIBRATE;
	gyroADCRaw[1] -= PITCH_CALIBRATE;
	gyroADCRaw[2] -= YAW_CALIBRATE;
}