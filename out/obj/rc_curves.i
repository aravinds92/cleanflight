# 1 "src/main/fc/rc_curves.c"
# 1 "/home/aravind/git/cleanflight//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "src/main/fc/rc_curves.c"
# 18 "src/main/fc/rc_curves.c"
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdbool.h" 1 3 4
# 19 "src/main/fc/rc_curves.c" 2
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdint.h" 3 4
# 1 "/usr/include/stdint.h" 1 3 4
# 25 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 367 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 410 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 411 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 368 "/usr/include/features.h" 2 3 4
# 391 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 392 "/usr/include/features.h" 2 3 4
# 26 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/stdint.h" 2 3 4
# 36 "/usr/include/stdint.h" 3 4

# 36 "/usr/include/stdint.h" 3 4
typedef signed char int8_t;
typedef short int int16_t;
typedef int int32_t;

typedef long int int64_t;







typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;

typedef unsigned int uint32_t;



typedef unsigned long int uint64_t;
# 65 "/usr/include/stdint.h" 3 4
typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;

typedef long int int_least64_t;






typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;

typedef unsigned long int uint_least64_t;
# 90 "/usr/include/stdint.h" 3 4
typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 103 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 119 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 134 "/usr/include/stdint.h" 3 4
typedef long int intmax_t;
typedef unsigned long int uintmax_t;
# 10 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdint.h" 2 3 4
# 20 "src/main/fc/rc_curves.c" 2

# 1 "./src/main/config/parameter_group.h" 1
# 18 "./src/main/config/parameter_group.h"
       



# 21 "./src/main/config/parameter_group.h"
typedef uint16_t pgn_t;


typedef enum {
    PGRF_NONE = 0,
    PGRF_CLASSIFICATON_BIT = (1 << 0),
} pgRegistryFlags_e;

typedef enum {
    PGR_PGN_MASK = 0x0fff,
    PGR_PGN_VERSION_MASK = 0xf000,
    PGR_SIZE_MASK = 0x0fff,
    PGR_SIZE_SYSTEM_FLAG = 0x0000,
    PGR_SIZE_PROFILE_FLAG = 0x8000,
} pgRegistryInternal_e;


typedef void (pgResetFunc)(void * , int );

typedef struct pgRegistry_s {
    pgn_t pgn;
    uint16_t size;
    uint8_t *address;
    uint8_t **ptr;
    union {
        void *ptr;
        pgResetFunc *fn;
    } reset;
} pgRegistry_t;

static inline uint16_t pgN(const pgRegistry_t* reg) {return reg->pgn & PGR_PGN_MASK;}
static inline uint8_t pgVersion(const pgRegistry_t* reg) {return reg->pgn >> 12;}
static inline uint16_t pgSize(const pgRegistry_t* reg) {return reg->size & PGR_SIZE_MASK;}
static inline uint16_t pgIsSystem(const pgRegistry_t* reg) {return (reg->size & PGR_SIZE_PROFILE_FLAG) == 0;}
# 67 "./src/main/config/parameter_group.h"
    pgRegistry_t* __pg_registry_start;
    pgRegistry_t* __pg_registry_end;


    uint8_t* __pg_resetdata_start;
    uint8_t* __pg_resetdata_end;
# 227 "./src/main/config/parameter_group.h"
const pgRegistry_t* pgFind(pgn_t pgn);

void pgLoad(const pgRegistry_t* reg, int profileIndex, const void *from, int size, int version);
int pgStore(const pgRegistry_t* reg, void *to, int size, uint8_t profileIndex);
void pgResetAll(int profileCount);
void pgResetCurrent(const pgRegistry_t *reg);
void pgReset(const pgRegistry_t* reg, int profileIndex);
void pgActivateProfile(int profileIndex);
# 22 "src/main/fc/rc_curves.c" 2

# 1 "./src/main/rx/rx.h" 1
# 18 "./src/main/rx/rx.h"
       
# 40 "./src/main/rx/rx.h"
typedef enum {
    SERIAL_RX_FRAME_PENDING = 0,
    SERIAL_RX_FRAME_COMPLETE = (1 << 0),
    SERIAL_RX_FRAME_FAILSAFE = (1 << 1)
} serialrxFrameState_t;

typedef enum {
    SERIALRX_SPEKTRUM1024 = 0,
    SERIALRX_SPEKTRUM2048 = 1,
    SERIALRX_SBUS = 2,
    SERIALRX_SUMD = 3,
    SERIALRX_SUMH = 4,
    SERIALRX_SRXL = 5,
    SERIALRX_XBUS_MODE_B_RJ01 = 6,
    SERIALRX_IBUS = 7,
    SERIALRX_PROVIDER_MAX = SERIALRX_IBUS
} SerialRXType;
# 75 "./src/main/rx/rx.h"
extern const char rcChannelLetters[];

extern int16_t rcData[(18)];







typedef enum {
    RX_FAILSAFE_MODE_AUTO = 0,
    RX_FAILSAFE_MODE_HOLD,
    RX_FAILSAFE_MODE_SET,
    RX_FAILSAFE_MODE_INVALID,
} rxFailsafeChannelMode_e;



typedef enum {
    RX_FAILSAFE_TYPE_FLIGHT = 0,
    RX_FAILSAFE_TYPE_AUX,
} rxFailsafeChannelType_e;



typedef struct rxFailsafeChannelConfiguration_s {
    uint8_t mode;
    uint8_t step;
} rxFailsafeChannelConfig_t;

typedef struct rxChannelRangeConfiguration_s {
    uint16_t min;
    uint16_t max;
} rxChannelRangeConfiguration_t;

typedef struct rxConfig_s {
    uint8_t rcmap[8];
    uint8_t serialrx_provider;
    uint8_t sbus_inversion;
    uint8_t spektrum_sat_bind;
    uint8_t rssi_channel;
    uint8_t rssi_scale;
    uint8_t rssi_ppm_invert;
    uint8_t rcSmoothing;
    uint16_t midrc;
    uint16_t mincheck;
    uint16_t maxcheck;

    uint16_t rx_min_usec;
    uint16_t rx_max_usec;
} rxConfig_t;

rxConfig_t rxConfig_System; static inline rxConfig_t* rxConfig(void) { return &rxConfig_System; } struct _dummy;

extern rxFailsafeChannelConfig_t failsafeChannelConfigs_SystemArray[(18)]; static inline rxFailsafeChannelConfig_t* failsafeChannelConfigs(int _index) { return &failsafeChannelConfigs_SystemArray[_index]; } static inline rxFailsafeChannelConfig_t (* failsafeChannelConfigs_arr(void))[(18)] { return &failsafeChannelConfigs_SystemArray; } struct _dummy;
extern rxChannelRangeConfiguration_t channelRanges_SystemArray[4]; static inline rxChannelRangeConfiguration_t* channelRanges(int _index) { return &channelRanges_SystemArray[_index]; } static inline rxChannelRangeConfiguration_t (* channelRanges_arr(void))[4] { return &channelRanges_SystemArray; } struct _dummy;

typedef struct rxRuntimeConfig_s {
    uint8_t channelCount;
} rxRuntimeConfig_t;

extern rxRuntimeConfig_t rxRuntimeConfig;

typedef uint16_t (*rcReadRawDataPtr)(rxRuntimeConfig_t *rxRuntimeConfig, uint8_t chan);

void updateRx(uint32_t currentTime);

# 142 "./src/main/rx/rx.h" 3 4
_Bool 
# 142 "./src/main/rx/rx.h"
    rxIsReceivingSignal(void);

# 143 "./src/main/rx/rx.h" 3 4
_Bool 
# 143 "./src/main/rx/rx.h"
    rxAreFlightChannelsValid(void);

# 144 "./src/main/rx/rx.h" 3 4
_Bool 
# 144 "./src/main/rx/rx.h"
    shouldProcessRx(uint32_t currentTime);
void calculateRxChannelsAndUpdateFailsafe(uint32_t currentTime);

void parseRcChannels(const char *input, rxConfig_t *rxConfig);
uint8_t serialRxFrameStatus();

void updateRSSI(uint32_t currentTime);
void resetAllRxChannelRangeConfigurations(rxChannelRangeConfiguration_t *rxChannelRangeConfiguration);

void suspendRxSignal(void);
void resumeRxSignal(void);

void initRxRefreshRate(uint16_t *rxRefreshRatePtr);

extern uint16_t rssi;
# 24 "src/main/fc/rc_curves.c" 2

# 1 "./src/main/io/motor_and_servo.h" 1
# 18 "./src/main/io/motor_and_servo.h"
       

typedef struct motorAndServoConfig_s {


    uint16_t minthrottle;
    uint16_t maxthrottle;
    uint16_t mincommand;
    uint16_t servoCenterPulse;

    uint16_t motor_pwm_rate;
    uint16_t servo_pwm_rate;
} motorAndServoConfig_t;

motorAndServoConfig_t motorAndServoConfig_System; static inline motorAndServoConfig_t* motorAndServoConfig(void) { return &motorAndServoConfig_System; } struct _dummy;
# 26 "src/main/fc/rc_curves.c" 2

# 1 "./src/main/fc/rate_profile.h" 1
# 18 "./src/main/fc/rate_profile.h"
       

typedef struct controlRateConfig_s {
    uint8_t rcRate8;
    uint8_t rcExpo8;
    uint8_t thrMid8;
    uint8_t thrExpo8;
    uint8_t rates[3];
    uint8_t dynThrPID;
    uint8_t rcYawExpo8;
    uint16_t tpa_breakpoint;
} controlRateConfig_t;


extern controlRateConfig_t controlRateProfiles_SystemArray[3]; static inline controlRateConfig_t* controlRateProfiles(int _index) { return &controlRateProfiles_SystemArray[_index]; } static inline controlRateConfig_t (* controlRateProfiles_arr(void))[3] { return &controlRateProfiles_SystemArray; } struct _dummy;

extern controlRateConfig_t *currentControlRateProfile;

typedef struct rateProfileSelection_s {
    uint8_t defaultRateProfileIndex;
} rateProfileSelection_t;

extern rateProfileSelection_t *rateProfileSelection_ProfileCurrent; static inline rateProfileSelection_t* rateProfileSelection(void) { return rateProfileSelection_ProfileCurrent; } struct _dummy;

void setControlRateProfile(uint8_t profileIndex);
uint8_t getCurrentControlRateProfile(void);
controlRateConfig_t *getControlRateConfig(uint8_t profileIndex);
void configureRateProfileSelection(uint8_t profileIndex, uint8_t rateProfileIndex);
void resetControlRateConfig(controlRateConfig_t *controlRateConfig);

void activateControlRateConfig(void);
# 28 "src/main/fc/rc_curves.c" 2
# 1 "./src/main/fc/rc_controls.h" 1
# 18 "./src/main/fc/rc_controls.h"
       



typedef enum {
    BOXARM = 0,
    BOXANGLE,
    BOXHORIZON,
    BOXBARO,

    BOXMAG,
    BOXHEADFREE,
    BOXHEADADJ,
    BOXCAMSTAB,
    BOXCAMTRIG,
    BOXGPSHOME,
    BOXGPSHOLD,
    BOXPASSTHRU,
    BOXBEEPERON,
    BOXLEDMAX,
    BOXLEDLOW,
    BOXLLIGHTS,
    BOXCALIB,
    BOXGOV,
    BOXOSD,
    BOXTELEMETRY,
    BOXGTUNE,
    BOXSONAR,
    BOXSERVO1,
    BOXSERVO2,
    BOXSERVO3,
    BOXBLACKBOX,
    BOXFAILSAFE,
    BOXAIRMODE,
    CHECKBOX_ITEM_COUNT
} boxId_e;

typedef enum rc_alias {
    ROLL = 0,
    PITCH,
    YAW,
    THROTTLE,
    AUX1,
    AUX2,
    AUX3,
    AUX4,
    AUX5,
    AUX6,
    AUX7,
    AUX8
} rc_alias_e;

typedef enum {
    THROTTLE_LOW = 0,
    THROTTLE_HIGH
} throttleStatus_e;

typedef enum {
    NOT_CENTERED = 0,
    CENTERED
} rollPitchStatus_e;
# 117 "./src/main/fc/rc_controls.h"
typedef struct channelRange_s {
    uint8_t startStep;
    uint8_t endStep;
} channelRange_t;

typedef struct modeActivationCondition_s {
    boxId_e modeId;
    uint8_t auxChannelIndex;
    channelRange_t range;
} modeActivationCondition_t;



typedef struct modeActivationProfile_s {
    modeActivationCondition_t modeActivationConditions[20];
} modeActivationProfile_t;

extern modeActivationProfile_t *modeActivationProfile_ProfileCurrent; static inline modeActivationProfile_t* modeActivationProfile(void) { return modeActivationProfile_ProfileCurrent; } struct _dummy;

extern int16_t rcCommand[4];

typedef struct rcControlsConfig_s {
    uint8_t deadband;
    uint8_t yaw_deadband;
    uint8_t alt_hold_deadband;
    uint8_t alt_hold_fast_change;
    int8_t yaw_control_direction;
    uint16_t deadband3d_throttle;
} rcControlsConfig_t;

extern rcControlsConfig_t *rcControlsConfig_ProfileCurrent; static inline rcControlsConfig_t* rcControlsConfig(void) { return rcControlsConfig_ProfileCurrent; } struct _dummy;

typedef struct armingConfig_s {

    uint8_t retarded_arm;
    uint8_t disarm_kill_switch;
    uint8_t auto_disarm_delay;
    uint8_t max_arm_angle;
} armingConfig_t;

armingConfig_t armingConfig_System; static inline armingConfig_t* armingConfig(void) { return &armingConfig_System; } struct _dummy;


# 159 "./src/main/fc/rc_controls.h" 3 4
_Bool 
# 159 "./src/main/fc/rc_controls.h"
    areUsingSticksToArm(void);


# 161 "./src/main/fc/rc_controls.h" 3 4
_Bool 
# 161 "./src/main/fc/rc_controls.h"
    areSticksInApModePosition(uint16_t ap_mode);
throttleStatus_e calculateThrottleStatus(rxConfig_t *rxConfig, uint16_t deadband3d_throttle);
rollPitchStatus_e calculateRollPitchCenterStatus(rxConfig_t *rxConfig);
void processRcStickPositions(rxConfig_t *rxConfig, throttleStatus_e throttleStatus, 
# 164 "./src/main/fc/rc_controls.h" 3 4
                                                                                   _Bool 
# 164 "./src/main/fc/rc_controls.h"
                                                                                        retarded_arm, 
# 164 "./src/main/fc/rc_controls.h" 3 4
                                                                                                      _Bool 
# 164 "./src/main/fc/rc_controls.h"
                                                                                                           disarm_kill_switch);


# 166 "./src/main/fc/rc_controls.h" 3 4
_Bool 
# 166 "./src/main/fc/rc_controls.h"
    rcModeIsActive(boxId_e modeId);
void rcModeUpdateActivated(modeActivationCondition_t *modeActivationConditions);

# 168 "./src/main/fc/rc_controls.h" 3 4
_Bool 
# 168 "./src/main/fc/rc_controls.h"
    rcModeIsActivationConditionPresent(modeActivationCondition_t *modeActivationConditions, boxId_e modeId);



# 171 "./src/main/fc/rc_controls.h" 3 4
_Bool 
# 171 "./src/main/fc/rc_controls.h"
    isUsingSticksForArming(void);

int32_t getRcStickDeflection(int32_t axis, uint16_t midrc);

void useRcControlsConfig(modeActivationCondition_t *modeActivationConditions);


# 177 "./src/main/fc/rc_controls.h" 3 4
_Bool 
# 177 "./src/main/fc/rc_controls.h"
    isRangeActive(uint8_t auxChannelIndex, channelRange_t *range);
# 29 "src/main/fc/rc_curves.c" 2
# 1 "./src/main/fc/rc_curves.h" 1
# 18 "./src/main/fc/rc_curves.h"
       

int16_t rcLookupPitchRoll(int rcVal);
int16_t rcLookupYaw(int rcYaw);
int16_t rcLookupThrottle(int rcThrottle);

void generatePitchRollCurve(void);
void generateYawCurve(void);
void generateThrottleCurve(void);
# 30 "src/main/fc/rc_curves.c" 2






static int16_t lookupPitchRollRC[7];
static int16_t lookupYawRC[7];
static int16_t lookupThrottleRC[12];


void generatePitchRollCurve(void)
{
    for (int i = 0; i < 7; i++) {
        lookupPitchRollRC[i] = (2500 + currentControlRateProfile->rcExpo8 * (i * i - 25)) * i * (int32_t) currentControlRateProfile->rcRate8 / 2500;
    }
}

void generateYawCurve(void)
{
     for (int i = 0; i < 7; i++) {
        lookupYawRC[i] = (2500 + currentControlRateProfile->rcYawExpo8 * (i * i - 25)) * i / 25;
    }
}

void generateThrottleCurve(void)
{
    for (int i = 0; i < 12; i++) {
        const int16_t tmp = 10 * i - currentControlRateProfile->thrMid8;
        uint8_t y = 1;
        if (tmp > 0)
            y = 100 - currentControlRateProfile->thrMid8;
        if (tmp < 0)
            y = currentControlRateProfile->thrMid8;
        lookupThrottleRC[i] = 10 * currentControlRateProfile->thrMid8 + tmp * (100 - currentControlRateProfile->thrExpo8 + (int32_t) currentControlRateProfile->thrExpo8 * (tmp * tmp) / (y * y)) / 10;
        lookupThrottleRC[i] = motorAndServoConfig()->minthrottle + (int32_t) (motorAndServoConfig()->maxthrottle - motorAndServoConfig()->minthrottle) * lookupThrottleRC[i] / 1000;
    }
}

int16_t rcLookupPitchRoll(int tmp)
{
    const int tmp2 = tmp / 100;
    return lookupPitchRollRC[tmp2] + (tmp - tmp2 * 100) * (lookupPitchRollRC[tmp2 + 1] - lookupPitchRollRC[tmp2]) / 100;
}

int16_t rcLookupYaw(int tmp)
{
    const int tmp2 = tmp / 100;
    return lookupYawRC[tmp2] + (tmp - tmp2 * 100) * (lookupYawRC[tmp2 + 1] - lookupYawRC[tmp2]) / 100;
}

int16_t rcLookupThrottle(int tmp)
{
    const int tmp2 = tmp / 100;
    return lookupThrottleRC[tmp2] + (tmp - tmp2 * 100) * (lookupThrottleRC[tmp2 + 1] - lookupThrottleRC[tmp2]) / 100;
}
