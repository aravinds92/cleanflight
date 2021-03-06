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

#include <string.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <time.h>
#include "serial_uart.h"
#include "timer_setup.h"
#include "drivers/SFE_LSM9DS0.h"
#include "drivers/drivers_compass.h"
#include "drivers/accgyro.h"

#include "sensors/sensors.h"
#include "fc/runtime_config.h"
//#include "flight/imu.h"

#define CLOCK CLOCK_MONOTONIC_RAW
#define MILLION 1000000
#define BILLION 1000000000
#define mHz 500
//#include <platform.h>

//#include "build/build_config.h"

//#include "dma.h"
//#include "gpio.h"
//#include "light_led.h"
//#include "sound_beeper.h"
//#include "nvic.h"
//#include "serial.h"
//#include "system.h"

// cycles per microsecond
static float usTicks = 0;            //Used to calculate time elapsed in microseconds  --AS--
                                        //Same as sysTickUptime. Maintained for compatibility reasons  --AS--
//uint32_t lastUpdate;                                        


// current uptime for 1kHz systick timer. will rollover after 49 days. hopefully we won't care.
static volatile uint32_t sysTickUptime = 0;     //gives time in us  --AS--

//Start value of system time
struct timespec start;
struct timespec current;

// cached value of RCC->CSR
//uint32_t cachedRccCsrValue;



//Sensor initializtion
extern LSM9DS0_t* imu;

mag_t mag;

acc_t acc;

gyro_t gyro;

//return system up time in microseconds
uint32_t micros(void)
{
    clock_gettime(CLOCK, &current);             //mark the current time  --AS--
    sysTickUptime = (MILLION * (current.tv_sec - start.tv_sec) + (current.tv_nsec - start.tv_nsec)/1000);   
    return sysTickUptime;
}

float time_in_seconds(void)                     //return time in seconds for attitude calculation
{
    float seconds;
    clock_gettime(CLOCK, &current);             //mark the current time
    seconds =  current.tv_sec + (current.tv_nsec)/BILLION;   
    return seconds;         //return time in seconds
}

//return system up time in milliseconds
uint32_t millis(void)
{
    return sysTickUptime/1000;
}


void init_sensors(void)                             //initialize sensor structs
{

    imu = (LSM9DS0_t*)malloc(sizeof(LSM9DS0_t));

    sparkfun_compass_Detect(&mag);
    sensorsSet(SENSOR_MAG);

    sparkfun_acc_Detect(&acc);
    sensorsSet(SENSOR_ACC);


    sparkfun_gyro_detect(&gyro);
    sensorsSet(SENSOR_GYRO);


    imu_setup(imu, 0x6B, 0x1D);
    uint16_t imuResult = begin(imu, G_SCALE_2000DPS, A_SCALE_4G, M_SCALE_4GS, G_ODR_190_BW_25, A_ODR_125, M_ODR_625);
    printf("the sensor initialization result is 0x%x\n",imuResult);
    return;    
}



//Initialize critical system components
void systemInit(void)                                       //Refer below for original function
{
    usartInitAllIOSignals();                                //Replace with code for initializing uart  --AS--
    //required for system up time
    clock_gettime(CLOCK, &start);                           //mark start time  --AS--
    //printf("Original:%lu\n",(start.tv_sec*BILLION + start.tv_nsec)/1000);
    init_sensors();
}

void delay(uint32_t ms)         //delay by the given number of milli seconds  --AS--
{
    usleep(1000*ms);
}


void readMarg(float* ax, float* ay, float* az, float* gx, float* gy, float* gz, float* mx, float* my, float* mz)            //read acc, gyro and mag values into the pointers  --AS--
{
    readAccel(imu);
    *ax = calcAccel(imu, imu->ax);
    *ay = calcAccel(imu, imu->ay);
    *az = calcAccel(imu, imu->az);

    readGyro(imu);
    *gx = calcGyro(imu, imu->gx);
    *gy = calcGyro(imu, imu->gy);
    *gz = calcGyro(imu, imu->gz);

    readMag(imu);
    *mx = calcMag(imu, imu->mx);
    *my = calcMag(imu, imu->my);
    *mz = calcMag(imu, imu->mz);    
}

uint64_t rdtsc(void) 
{
  uint64_t x;
  __asm__ volatile ("rdtsc" : "=A" (x));
  return x;
}


/*float tick()
{
  uint64_t now;
  now = rdtsc();
  float dt = (now - lastUpdate) / (mHz * 1000000.0f);
  lastUpdate = now;
  return dt;
}*/

/*
void systemInit(void)
{
#ifdef CC3D               //Not needed for edison
    //Accounts for OP Bootloader, set the Vector Table base address as specified in .ld file
    extern void *isr_vector_table_base;

    NVIC_SetVectorTable((uint32_t)&isr_vector_table_base, 0x0);             //Not needed. Necessary interrupts are initialized when writing code for the peripherals

#endif

    // Configure NVIC preempt/priority groups
    //NVIC_PriorityGroupConfig(NVIC_PRIORITY_GROUPING);                       //Priority handled by the mraa library.

#ifdef STM32F10X                                                            //Not necessary.
    // Turn on clocks for stuff we use
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);
#endif

    // cache RCC->CSR value to use it in isMPUSoftreset() and others
    cachedRccCsrValue = RCC->CSR;                         //Gets the cached value of register. Unnecessary.
    RCC_ClearFlag();
    
    //enableGPIOPowerUsageAndNoiseReductions();             //Not necessary for now

    usartInitAllIOSignals();                                //Replace with code for initializing uart
    clock_gettime(CLOCK, &start);                           //mark start time


#ifdef STM32F10X
    // Turn off JTAG port 'cause we're using the GPIO for leds
#define AFIO_MAPR_SWJ_CFG_NO_JTAG_SW            (0x2 << 24)
    AFIO->MAPR |= AFIO_MAPR_SWJ_CFG_NO_JTAG_SW;
#endif
                                                           //No JTAG port on the edison
    // Init cycle counter
    //cycleCounterInit();                                    //Calculates cycles per Microsecond. Unecessary

    // SysTick
    //SysTick_Config(SystemCoreClock / 1000);             //Systick generates interrupts at a regular interval. OS is gonna do this anyway. Not needed
}
*/

/*
static void cycleCounterInit(void)
{
    RCC_ClocksTypeDef clocks;
    RCC_GetClocksFreq(&clocks);
    usTicks = clocks.SYSCLK_Frequency / 1000000;
}
*/

/*
// Return system uptime in microseconds (rollover in 70minutes)
uint32_t micros(void)
{
    register uint32_t ms, cycle_cnt;
    do {
        ms = sysTickUptime;
        cycle_cnt = SysTick->VAL;

        
         // If the SysTick timer expired during the previous instruction, we need to give it a little time for that
         // interrupt to be delivered before we can recheck sysTickUptime:
         
        asm volatile("\tnop\n");
    } while (ms != sysTickUptime);
    return (ms * 1000) + (usTicks * 1000 - cycle_cnt) / usTicks;
}
*/

// Return system uptime in milliseconds (rollover in 49 days)

/*
#if 1
void delayMicroseconds(uint32_t us)
{
    uint32_t now = micros();
    while (micros() - now < us);
}
#else
void delayMicroseconds(uint32_t us)
{
    uint32_t elapsed = 0;
    uint32_t lastCount = SysTick->VAL;

    for (;;) {
        register uint32_t current_count = SysTick->VAL;
        uint32_t elapsed_us;

        // measure the time elapsed since the last time we checked
        elapsed += current_count - lastCount;
        lastCount = current_count;

        // convert to microseconds
        elapsed_us = elapsed / usTicks;
        if (elapsed_us >= us)
            break;

        // reduce the delay by the elapsed time
        us -= elapsed_us;

        // keep fractional microseconds for the next iteration
        elapsed %= usTicks;
    }
}
#endif

#define SHORT_FLASH_DURATION 50
#define CODE_FLASH_DURATION 250

void failureMode(failureMode_e mode)
{
    int codeRepeatsRemaining = 10;
    int codeFlashesRemaining;
    int shortFlashesRemaining;

    while (codeRepeatsRemaining--) {
        LED1_ON;
        LED0_OFF;
        shortFlashesRemaining = 5;
        codeFlashesRemaining = mode + 1;
        uint8_t flashDuration = SHORT_FLASH_DURATION;

        while (shortFlashesRemaining || codeFlashesRemaining) {
            LED1_TOGGLE;
            LED0_TOGGLE;
            BEEP_ON;
            delay(flashDuration);

            LED1_TOGGLE;
            LED0_TOGGLE;
            BEEP_OFF;
            delay(flashDuration);

            if (shortFlashesRemaining) {
                shortFlashesRemaining--;
                if (shortFlashesRemaining == 0) {
                    delay(500);
                    flashDuration = CODE_FLASH_DURATION;
                }
            } else {
                codeFlashesRemaining--;
            }
        }
        delay(1000);
    }

#ifdef DEBUG
    systemReset();
#else
    systemResetToBootloader();
#endif
}
*/