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

#pragma once

#include "drivers/SFE_LSM9DS0.h"

void systemInit(void);

void delayMicroseconds(uint32_t us);
void delay(uint32_t ms);
uint64_t micros(void);
uint64_t millis(void);
void delay(uint32_t ms);

// failure
void failureMode(uint8_t mode);

// bootloader/IAP
void systemReset(void);
void systemResetToBootloader(void);
bool isMPUSoftReset(void);

void enableGPIOPowerUsageAndNoiseReductions(void);

float time_in_seconds(void);
void readMarg(float* ax, float* ay, float* az, float* gx, float* gy, float* gz, float* mx, float* my, float* mz);
uint64_t rdtsc(void);
// current crystal frequency - 8 or 12MHz
extern uint32_t hse_value;

extern uint32_t cachedRccCsrValue;

typedef enum {
    FAILURE_DEVELOPER = 0,
    FAILURE_MISSING_ACC,
    FAILURE_ACC_INIT,
    FAILURE_ACC_INCOMPATIBLE,
    FAILURE_INVALID_EEPROM_CONTENTS,
    FAILURE_FLASH_WRITE_FAILED,
    FAILURE_GYRO_INIT_FAILED
} failureMode_e;

//void init_sensors(void);

LSM9DS0_t* imu;