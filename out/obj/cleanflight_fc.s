	.file	"cleanflight_fc.c"
# GNU C99 (Ubuntu 5.4.1-2ubuntu1~16.04) version 5.4.1 20160904 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.1 20160904, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed cleanflight_fc.i -mtune=generic
# -march=x86-64 -g -std=gnu99 -ffunction-sections -fdata-sections
# -fverbose-asm -ffat-lto-objects -fstack-protector-strong -Wformat
# -Wformat-security
# options enabled:  -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fchkp-check-incomplete-type
# -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
# -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
# -fchkp-use-static-bounds -fchkp-use-static-const-bounds
# -fchkp-use-wrappers -fcommon -fdata-sections -fdelete-null-pointer-checks
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -ffunction-cse -ffunction-sections -fgcse-lm -fgnu-runtime -fgnu-unique
# -fident -finline-atomics -fira-hoist-pressure -fira-share-save-slots
# -fira-share-spill-slots -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flto-odr-type-merging -fmath-errno
# -fmerge-debug-strings -fpeephole -fprefetch-loop-arrays
# -freg-struct-return -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fsemantic-interposition -fshow-column -fsigned-zeros
# -fsplit-ivs-in-unroller -fstack-protector-strong -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
# -ftree-coalesce-vars -ftree-cselim -ftree-forwprop -ftree-loop-if-convert
# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
# -ftree-parallelize-loops= -ftree-phiprop -ftree-reassoc -ftree-scev-cprop
# -funit-at-a-time -funwind-tables -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -malign-stringops
# -mavx256-split-unaligned-load -mavx256-split-unaligned-store
# -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp
# -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2
# -mtls-direct-seg-refs -mvzeroupper

	.text
.Ltext0:
	.comm	U_ID_0,4,4
	.comm	U_ID_1,4,4
	.comm	U_ID_2,4,4
	.comm	__pg_registry_start,8,8
	.comm	__pg_registry_end,8,8
	.comm	__pg_resetdata_start,8,8
	.comm	__pg_resetdata_end,8,8
	.comm	imu,8,8
	.comm	sensorSelectionConfig_System,3,1
	.comm	sensorAlignmentConfig_System,12,8
	.comm	sensorTrims_System,12,8
	.section	.text.sensorTrims,"ax",@progbits
	.type	sensorTrims, @function
sensorTrims:
.LFB10:
	.file 1 "./src/main/sensors/sensors.h"
	.loc 1 88 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 88 0
	movl	$sensorTrims_System, %eax	#, D.6621
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	sensorTrims, .-sensorTrims
	.comm	accelerometerConfig,8,8
	.comm	imuConfig,8,8
	.comm	throttleCorrectionConfig,8,8
	.globl	cycleTime
	.section	.bss.cycleTime,"aw",@nobits
	.align 2
	.type	cycleTime, @object
	.size	cycleTime, 2
cycleTime:
	.zero	2
	.comm	dT,4,4
	.comm	magHold,2,2
	.comm	headFreeModeHold,2,2
	.globl	motorControlEnable
	.section	.bss.motorControlEnable,"aw",@nobits
	.type	motorControlEnable, @object
	.size	motorControlEnable, 1
motorControlEnable:
	.zero	1
	.comm	telemTemperature1,2,2
	.section	.bss.disarmAt,"aw",@nobits
	.align 4
	.type	disarmAt, @object
	.size	disarmAt, 4
disarmAt:
	.zero	4
	.section	.bss.isRXDataNew,"aw",@nobits
	.type	isRXDataNew, @object
	.size	isRXDataNew, 1
isRXDataNew:
	.zero	1
	.section	.bss.filteredCycleTimeState,"aw",@nobits
	.align 8
	.type	filteredCycleTimeState, @object
	.size	filteredCycleTimeState, 12
filteredCycleTimeState:
	.zero	12
	.comm	filteredCycleTime,2,2
	.globl	i
	.section	.bss.i,"aw",@nobits
	.align 4
	.type	i, @object
	.size	i, 4
i:
	.zero	4
	.globl	AccInflightCalibrationArmed
	.section	.bss.AccInflightCalibrationArmed,"aw",@nobits
	.type	AccInflightCalibrationArmed, @object
	.size	AccInflightCalibrationArmed, 1
AccInflightCalibrationArmed:
	.zero	1
	.globl	AccInflightCalibrationMeasurementDone
	.section	.bss.AccInflightCalibrationMeasurementDone,"aw",@nobits
	.type	AccInflightCalibrationMeasurementDone, @object
	.size	AccInflightCalibrationMeasurementDone, 1
AccInflightCalibrationMeasurementDone:
	.zero	1
	.globl	AccInflightCalibrationSavetoEEProm
	.section	.bss.AccInflightCalibrationSavetoEEProm,"aw",@nobits
	.type	AccInflightCalibrationSavetoEEProm, @object
	.size	AccInflightCalibrationSavetoEEProm, 1
AccInflightCalibrationSavetoEEProm:
	.zero	1
	.globl	AccInflightCalibrationActive
	.section	.bss.AccInflightCalibrationActive,"aw",@nobits
	.type	AccInflightCalibrationActive, @object
	.size	AccInflightCalibrationActive, 1
AccInflightCalibrationActive:
	.zero	1
	.globl	InflightcalibratingA
	.section	.bss.InflightcalibratingA,"aw",@nobits
	.align 2
	.type	InflightcalibratingA, @object
	.size	InflightcalibratingA, 2
InflightcalibratingA:
	.zero	2
	.section	.text.taskHandleSerial,"ax",@progbits
	.globl	taskHandleSerial
	.type	taskHandleSerial, @function
taskHandleSerial:
.LFB12:
	.file 2 "src/main/fc/cleanflight_fc.c"
	.loc 2 154 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 2 164 0
	movl	$0, %eax	#,
	call	mspSerialProcess	#
	.loc 2 165 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	taskHandleSerial, .-taskHandleSerial
	.section	.text.taskUpdateCompass,"ax",@progbits
	.globl	taskUpdateCompass
	.type	taskUpdateCompass, @function
taskUpdateCompass:
.LFB13:
	.loc 2 170 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 2 171 0
	call	sensorTrims	#
	addq	$6, %rax	#, D.6623
	movq	%rax, %rdi	# D.6623,
	call	updateCompass	#
	.loc 2 172 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	taskUpdateCompass, .-taskUpdateCompass
	.section	.text.taskUpdateAccelerometer,"ax",@progbits
	.globl	taskUpdateAccelerometer
	.type	taskUpdateAccelerometer, @function
taskUpdateAccelerometer:
.LFB14:
	.loc 2 176 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 2 177 0
	movq	accelerometerConfig(%rip), %rax	# accelerometerConfig, D.6624
	movq	%rax, %rdi	# D.6625,
	call	imuUpdateAccelerometer	#
	.loc 2 178 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	taskUpdateAccelerometer, .-taskUpdateAccelerometer
	.section	.text.taskMainPidLoopChecker,"ax",@progbits
	.globl	taskMainPidLoopChecker
	.type	taskMainPidLoopChecker, @function
taskMainPidLoopChecker:
.LFB15:
	.loc 2 181 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 2 182 0
	call	imuUpdateGyroAndAttitude	#
	.loc 2 203 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	taskMainPidLoopChecker, .-taskMainPidLoopChecker
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/include/stdint.h"
	.file 5 "./src/main/common/filter.h"
	.file 6 "./src/main/config/parameter_group.h"
	.file 7 "/usr/include/mraa/i2c.h"
	.file 8 "./src/main/drivers/SFE_LSM9DS0.h"
	.file 9 "./src/main/common/color.h"
	.file 10 "./src/main/sensors/compass.h"
	.file 11 "./src/main/sensors/acceleration.h"
	.file 12 "./src/main/flight/imu.h"
	.file 13 "./src/main/target/edison/target.h"
	.file 14 "./src/main/drivers/system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x9c5
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF153
	.byte	0xc
	.long	.LASF154
	.long	.LASF155
	.long	.Ldebug_ranges0+0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x5
	.long	.LASF11
	.byte	0x3
	.byte	0xc3
	.long	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.long	.LASF12
	.byte	0x4
	.byte	0x30
	.long	0x3e
	.uleb128 0x5
	.long	.LASF13
	.byte	0x4
	.byte	0x31
	.long	0x45
	.uleb128 0x5
	.long	.LASF14
	.byte	0x4
	.byte	0x33
	.long	0x37
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF15
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF16
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x9
	.byte	0x15
	.long	0xd8
	.uleb128 0x7
	.long	.LASF17
	.byte	0
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.uleb128 0x7
	.long	.LASF19
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF24
	.byte	0xc
	.byte	0x5
	.byte	0x14
	.long	0x107
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.byte	0x15
	.long	0xab
	.byte	0
	.uleb128 0xa
	.string	"RC"
	.byte	0x5
	.byte	0x16
	.long	0xab
	.byte	0x4
	.uleb128 0xa
	.string	"dT"
	.byte	0x5
	.byte	0x17
	.long	0xab
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF21
	.byte	0x5
	.byte	0x18
	.long	0xd8
	.uleb128 0xb
	.byte	0x8
	.long	0x8a
	.uleb128 0x5
	.long	.LASF22
	.byte	0x6
	.byte	0x15
	.long	0x95
	.uleb128 0x5
	.long	.LASF23
	.byte	0x6
	.byte	0x26
	.long	0x12e
	.uleb128 0xc
	.long	0x13e
	.uleb128 0xd
	.long	0x68
	.uleb128 0xd
	.long	0x30
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.byte	0x6
	.byte	0x2d
	.long	0x15c
	.uleb128 0xf
	.string	"ptr"
	.byte	0x6
	.byte	0x2e
	.long	0x68
	.uleb128 0xf
	.string	"fn"
	.byte	0x6
	.byte	0x2f
	.long	0x15c
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x123
	.uleb128 0x8
	.long	.LASF25
	.byte	0x20
	.byte	0x6
	.byte	0x28
	.long	0x1ab
	.uleb128 0xa
	.string	"pgn"
	.byte	0x6
	.byte	0x29
	.long	0x118
	.byte	0
	.uleb128 0x9
	.long	.LASF26
	.byte	0x6
	.byte	0x2a
	.long	0x95
	.byte	0x2
	.uleb128 0x9
	.long	.LASF27
	.byte	0x6
	.byte	0x2b
	.long	0x112
	.byte	0x8
	.uleb128 0xa
	.string	"ptr"
	.byte	0x6
	.byte	0x2c
	.long	0x1ab
	.byte	0x10
	.uleb128 0x9
	.long	.LASF28
	.byte	0x6
	.byte	0x30
	.long	0x13e
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x112
	.uleb128 0x5
	.long	.LASF29
	.byte	0x6
	.byte	0x31
	.long	0x162
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF30
	.uleb128 0x5
	.long	.LASF31
	.byte	0x7
	.byte	0x35
	.long	0x1ce
	.uleb128 0xb
	.byte	0x8
	.long	0x1d4
	.uleb128 0x10
	.long	.LASF156
	.uleb128 0x11
	.long	.LASF35
	.byte	0x4
	.long	0x37
	.byte	0x8
	.byte	0x81
	.long	0x1fc
	.uleb128 0x7
	.long	.LASF32
	.byte	0
	.uleb128 0x7
	.long	.LASF33
	.byte	0x1
	.uleb128 0x7
	.long	.LASF34
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF35
	.byte	0x8
	.byte	0x86
	.long	0x1d9
	.uleb128 0x11
	.long	.LASF36
	.byte	0x4
	.long	0x37
	.byte	0x8
	.byte	0x89
	.long	0x236
	.uleb128 0x7
	.long	.LASF37
	.byte	0
	.uleb128 0x7
	.long	.LASF38
	.byte	0x1
	.uleb128 0x7
	.long	.LASF39
	.byte	0x2
	.uleb128 0x7
	.long	.LASF40
	.byte	0x3
	.uleb128 0x7
	.long	.LASF41
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF36
	.byte	0x8
	.byte	0x90
	.long	0x207
	.uleb128 0x11
	.long	.LASF42
	.byte	0x4
	.long	0x37
	.byte	0x8
	.byte	0x93
	.long	0x26a
	.uleb128 0x7
	.long	.LASF43
	.byte	0
	.uleb128 0x7
	.long	.LASF44
	.byte	0x1
	.uleb128 0x7
	.long	.LASF45
	.byte	0x2
	.uleb128 0x7
	.long	.LASF46
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF42
	.byte	0x8
	.byte	0x99
	.long	0x241
	.uleb128 0x8
	.long	.LASF47
	.byte	0x40
	.byte	0x8
	.byte	0xdc
	.long	0x350
	.uleb128 0xa
	.string	"gx"
	.byte	0x8
	.byte	0xe2
	.long	0x78
	.byte	0
	.uleb128 0xa
	.string	"gy"
	.byte	0x8
	.byte	0xe2
	.long	0x78
	.byte	0x2
	.uleb128 0xa
	.string	"gz"
	.byte	0x8
	.byte	0xe2
	.long	0x78
	.byte	0x4
	.uleb128 0xa
	.string	"ax"
	.byte	0x8
	.byte	0xe3
	.long	0x78
	.byte	0x6
	.uleb128 0xa
	.string	"ay"
	.byte	0x8
	.byte	0xe3
	.long	0x78
	.byte	0x8
	.uleb128 0xa
	.string	"az"
	.byte	0x8
	.byte	0xe3
	.long	0x78
	.byte	0xa
	.uleb128 0xa
	.string	"mx"
	.byte	0x8
	.byte	0xe4
	.long	0x78
	.byte	0xc
	.uleb128 0xa
	.string	"my"
	.byte	0x8
	.byte	0xe4
	.long	0x78
	.byte	0xe
	.uleb128 0xa
	.string	"mz"
	.byte	0x8
	.byte	0xe4
	.long	0x78
	.byte	0x10
	.uleb128 0x9
	.long	.LASF48
	.byte	0x8
	.byte	0xe5
	.long	0x78
	.byte	0x12
	.uleb128 0x9
	.long	.LASF49
	.byte	0x8
	.byte	0xe7
	.long	0x1c3
	.byte	0x18
	.uleb128 0xa
	.string	"xm"
	.byte	0x8
	.byte	0xe8
	.long	0x1c3
	.byte	0x20
	.uleb128 0x9
	.long	.LASF50
	.byte	0x8
	.byte	0xec
	.long	0x1fc
	.byte	0x28
	.uleb128 0x9
	.long	.LASF51
	.byte	0x8
	.byte	0xed
	.long	0x236
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF52
	.byte	0x8
	.byte	0xee
	.long	0x26a
	.byte	0x30
	.uleb128 0x9
	.long	.LASF53
	.byte	0x8
	.byte	0xf3
	.long	0xab
	.byte	0x34
	.uleb128 0x9
	.long	.LASF54
	.byte	0x8
	.byte	0xf3
	.long	0xab
	.byte	0x38
	.uleb128 0x9
	.long	.LASF55
	.byte	0x8
	.byte	0xf3
	.long	0xab
	.byte	0x3c
	.byte	0
	.uleb128 0x5
	.long	.LASF56
	.byte	0x8
	.byte	0xf5
	.long	0x275
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x1
	.byte	0x15
	.long	0x380
	.uleb128 0x7
	.long	.LASF57
	.byte	0
	.uleb128 0x7
	.long	.LASF58
	.byte	0x1
	.uleb128 0x7
	.long	.LASF59
	.byte	0x2
	.uleb128 0x7
	.long	.LASF60
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	.LASF61
	.byte	0x6
	.byte	0x1
	.byte	0x20
	.long	0x3b1
	.uleb128 0x9
	.long	.LASF62
	.byte	0x1
	.byte	0x21
	.long	0x78
	.byte	0
	.uleb128 0x9
	.long	.LASF63
	.byte	0x1
	.byte	0x22
	.long	0x78
	.byte	0x2
	.uleb128 0xa
	.string	"yaw"
	.byte	0x1
	.byte	0x23
	.long	0x78
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF64
	.byte	0x1
	.byte	0x24
	.long	0x380
	.uleb128 0x12
	.long	.LASF96
	.byte	0x6
	.byte	0x1
	.byte	0x26
	.long	0x3df
	.uleb128 0xf
	.string	"raw"
	.byte	0x1
	.byte	0x27
	.long	0x3df
	.uleb128 0x13
	.long	.LASF65
	.byte	0x1
	.byte	0x28
	.long	0x3b1
	.byte	0
	.uleb128 0x14
	.long	0x78
	.long	0x3ef
	.uleb128 0x15
	.long	0x61
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.long	0x3bc
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x1
	.byte	0x39
	.long	0x43d
	.uleb128 0x7
	.long	.LASF67
	.byte	0
	.uleb128 0x7
	.long	.LASF68
	.byte	0x1
	.uleb128 0x7
	.long	.LASF69
	.byte	0x2
	.uleb128 0x7
	.long	.LASF70
	.byte	0x3
	.uleb128 0x7
	.long	.LASF71
	.byte	0x4
	.uleb128 0x7
	.long	.LASF72
	.byte	0x5
	.uleb128 0x7
	.long	.LASF73
	.byte	0x6
	.uleb128 0x7
	.long	.LASF74
	.byte	0x7
	.uleb128 0x7
	.long	.LASF75
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF76
	.byte	0x1
	.byte	0x43
	.long	0x3fa
	.uleb128 0x8
	.long	.LASF77
	.byte	0xc
	.byte	0x1
	.byte	0x45
	.long	0x479
	.uleb128 0x9
	.long	.LASF78
	.byte	0x1
	.byte	0x46
	.long	0x43d
	.byte	0
	.uleb128 0x9
	.long	.LASF79
	.byte	0x1
	.byte	0x47
	.long	0x43d
	.byte	0x4
	.uleb128 0x9
	.long	.LASF80
	.byte	0x1
	.byte	0x48
	.long	0x43d
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF81
	.byte	0x1
	.byte	0x49
	.long	0x448
	.uleb128 0x8
	.long	.LASF82
	.byte	0x3
	.byte	0x1
	.byte	0x4b
	.long	0x4b5
	.uleb128 0x9
	.long	.LASF83
	.byte	0x1
	.byte	0x4c
	.long	0x8a
	.byte	0
	.uleb128 0x9
	.long	.LASF84
	.byte	0x1
	.byte	0x4d
	.long	0x8a
	.byte	0x1
	.uleb128 0x9
	.long	.LASF85
	.byte	0x1
	.byte	0x4e
	.long	0x8a
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF86
	.byte	0x1
	.byte	0x4f
	.long	0x484
	.uleb128 0x8
	.long	.LASF87
	.byte	0xc
	.byte	0x1
	.byte	0x51
	.long	0x4e5
	.uleb128 0x9
	.long	.LASF88
	.byte	0x1
	.byte	0x52
	.long	0x3ef
	.byte	0
	.uleb128 0x9
	.long	.LASF89
	.byte	0x1
	.byte	0x53
	.long	0x3ef
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF90
	.byte	0x1
	.byte	0x54
	.long	0x4c0
	.uleb128 0x8
	.long	.LASF91
	.byte	0x2
	.byte	0xa
	.byte	0x20
	.long	0x509
	.uleb128 0x9
	.long	.LASF92
	.byte	0xa
	.byte	0x21
	.long	0x78
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF93
	.byte	0xa
	.byte	0x23
	.long	0x4f0
	.uleb128 0x8
	.long	.LASF94
	.byte	0x4
	.byte	0xb
	.byte	0x2b
	.long	0x539
	.uleb128 0x9
	.long	.LASF62
	.byte	0xb
	.byte	0x2c
	.long	0x78
	.byte	0
	.uleb128 0x9
	.long	.LASF63
	.byte	0xb
	.byte	0x2d
	.long	0x78
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF95
	.byte	0xb
	.byte	0x2e
	.long	0x514
	.uleb128 0x12
	.long	.LASF97
	.byte	0x4
	.byte	0xb
	.byte	0x30
	.long	0x567
	.uleb128 0xf
	.string	"raw"
	.byte	0xb
	.byte	0x31
	.long	0x567
	.uleb128 0x13
	.long	.LASF65
	.byte	0xb
	.byte	0x32
	.long	0x539
	.byte	0
	.uleb128 0x14
	.long	0x78
	.long	0x577
	.uleb128 0x15
	.long	0x61
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF98
	.byte	0xb
	.byte	0x33
	.long	0x544
	.uleb128 0x8
	.long	.LASF99
	.byte	0x2
	.byte	0xb
	.byte	0x35
	.long	0x5a4
	.uleb128 0xa
	.string	"xy"
	.byte	0xb
	.byte	0x36
	.long	0x8a
	.byte	0
	.uleb128 0xa
	.string	"z"
	.byte	0xb
	.byte	0x37
	.long	0x8a
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF100
	.byte	0xb
	.byte	0x38
	.long	0x582
	.uleb128 0x8
	.long	.LASF101
	.byte	0x10
	.byte	0xb
	.byte	0x3a
	.long	0x5f8
	.uleb128 0x9
	.long	.LASF102
	.byte	0xb
	.byte	0x3b
	.long	0x577
	.byte	0
	.uleb128 0x9
	.long	.LASF103
	.byte	0xb
	.byte	0x3e
	.long	0x8a
	.byte	0x4
	.uleb128 0x9
	.long	.LASF104
	.byte	0xb
	.byte	0x3f
	.long	0xab
	.byte	0x8
	.uleb128 0x9
	.long	.LASF105
	.byte	0xb
	.byte	0x40
	.long	0x5a4
	.byte	0xc
	.uleb128 0x9
	.long	.LASF106
	.byte	0xb
	.byte	0x41
	.long	0x8a
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.long	.LASF107
	.byte	0xb
	.byte	0x42
	.long	0x5af
	.uleb128 0x8
	.long	.LASF108
	.byte	0xc
	.byte	0xc
	.byte	0x2f
	.long	0x664
	.uleb128 0x9
	.long	.LASF109
	.byte	0xc
	.byte	0x31
	.long	0x95
	.byte	0
	.uleb128 0x9
	.long	.LASF110
	.byte	0xc
	.byte	0x32
	.long	0x8a
	.byte	0x2
	.uleb128 0x9
	.long	.LASF111
	.byte	0xc
	.byte	0x33
	.long	0x8a
	.byte	0x3
	.uleb128 0x9
	.long	.LASF112
	.byte	0xc
	.byte	0x34
	.long	0x95
	.byte	0x4
	.uleb128 0x9
	.long	.LASF113
	.byte	0xc
	.byte	0x35
	.long	0x95
	.byte	0x6
	.uleb128 0x9
	.long	.LASF114
	.byte	0xc
	.byte	0x36
	.long	0x8a
	.byte	0x8
	.uleb128 0x9
	.long	.LASF115
	.byte	0xc
	.byte	0x37
	.long	0x95
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	.LASF116
	.byte	0xc
	.byte	0x38
	.long	0x603
	.uleb128 0x8
	.long	.LASF117
	.byte	0x4
	.byte	0xc
	.byte	0x3c
	.long	0x694
	.uleb128 0x9
	.long	.LASF118
	.byte	0xc
	.byte	0x3d
	.long	0x95
	.byte	0
	.uleb128 0x9
	.long	.LASF119
	.byte	0xc
	.byte	0x3e
	.long	0x8a
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF120
	.byte	0xc
	.byte	0x3f
	.long	0x66f
	.uleb128 0x16
	.long	.LASF157
	.byte	0x1
	.byte	0x58
	.long	0x6bc
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.byte	0x8
	.long	0x4e5
	.uleb128 0x17
	.long	.LASF121
	.byte	0x2
	.byte	0x99
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.long	.LASF122
	.byte	0x2
	.byte	0xa9
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.long	.LASF123
	.byte	0x2
	.byte	0xaf
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.long	.LASF124
	.byte	0x2
	.byte	0xb4
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.long	.LASF125
	.byte	0x2
	.byte	0x81
	.long	0xa0
	.uleb128 0x9
	.byte	0x3
	.quad	disarmAt
	.uleb128 0x18
	.long	.LASF126
	.byte	0x2
	.byte	0x88
	.long	0x1bc
	.uleb128 0x9
	.byte	0x3
	.quad	isRXDataNew
	.uleb128 0x18
	.long	.LASF127
	.byte	0x2
	.byte	0x8b
	.long	0x107
	.uleb128 0x9
	.byte	0x3
	.quad	filteredCycleTimeState
	.uleb128 0x19
	.long	.LASF128
	.byte	0xd
	.byte	0xca
	.long	0xa0
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_0
	.uleb128 0x19
	.long	.LASF129
	.byte	0xd
	.byte	0xcb
	.long	0xa0
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_1
	.uleb128 0x19
	.long	.LASF130
	.byte	0xd
	.byte	0xcc
	.long	0xa0
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_2
	.uleb128 0x19
	.long	.LASF131
	.byte	0x6
	.byte	0x43
	.long	0x7b9
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_start
	.uleb128 0xb
	.byte	0x8
	.long	0x1b1
	.uleb128 0x19
	.long	.LASF132
	.byte	0x6
	.byte	0x44
	.long	0x7b9
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_end
	.uleb128 0x19
	.long	.LASF133
	.byte	0x6
	.byte	0x47
	.long	0x112
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_start
	.uleb128 0x19
	.long	.LASF134
	.byte	0x6
	.byte	0x48
	.long	0x112
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_end
	.uleb128 0x1a
	.string	"imu"
	.byte	0xe
	.byte	0x38
	.long	0x813
	.uleb128 0x9
	.byte	0x3
	.quad	imu
	.uleb128 0xb
	.byte	0x8
	.long	0x350
	.uleb128 0x19
	.long	.LASF135
	.byte	0x1
	.byte	0x56
	.long	0x4b5
	.uleb128 0x9
	.byte	0x3
	.quad	sensorSelectionConfig_System
	.uleb128 0x19
	.long	.LASF136
	.byte	0x1
	.byte	0x57
	.long	0x479
	.uleb128 0x9
	.byte	0x3
	.quad	sensorAlignmentConfig_System
	.uleb128 0x19
	.long	.LASF137
	.byte	0x1
	.byte	0x58
	.long	0x4e5
	.uleb128 0x9
	.byte	0x3
	.quad	sensorTrims_System
	.uleb128 0x1b
	.long	.LASF138
	.byte	0xa
	.byte	0x25
	.long	0x863
	.uleb128 0xb
	.byte	0x8
	.long	0x509
	.uleb128 0x19
	.long	.LASF139
	.byte	0xb
	.byte	0x45
	.long	0x87e
	.uleb128 0x9
	.byte	0x3
	.quad	accelerometerConfig
	.uleb128 0xb
	.byte	0x8
	.long	0x5f8
	.uleb128 0x19
	.long	.LASF140
	.byte	0xc
	.byte	0x3a
	.long	0x899
	.uleb128 0x9
	.byte	0x3
	.quad	imuConfig
	.uleb128 0xb
	.byte	0x8
	.long	0x664
	.uleb128 0x19
	.long	.LASF141
	.byte	0xc
	.byte	0x41
	.long	0x8b4
	.uleb128 0x9
	.byte	0x3
	.quad	throttleCorrectionConfig
	.uleb128 0xb
	.byte	0x8
	.long	0x694
	.uleb128 0x19
	.long	.LASF142
	.byte	0x2
	.byte	0x77
	.long	0x95
	.uleb128 0x9
	.byte	0x3
	.quad	cycleTime
	.uleb128 0x1a
	.string	"dT"
	.byte	0x2
	.byte	0x79
	.long	0xab
	.uleb128 0x9
	.byte	0x3
	.quad	dT
	.uleb128 0x19
	.long	.LASF143
	.byte	0x2
	.byte	0x7b
	.long	0x78
	.uleb128 0x9
	.byte	0x3
	.quad	magHold
	.uleb128 0x19
	.long	.LASF144
	.byte	0x2
	.byte	0x7c
	.long	0x78
	.uleb128 0x9
	.byte	0x3
	.quad	headFreeModeHold
	.uleb128 0x19
	.long	.LASF145
	.byte	0x2
	.byte	0x7e
	.long	0x8a
	.uleb128 0x9
	.byte	0x3
	.quad	motorControlEnable
	.uleb128 0x19
	.long	.LASF146
	.byte	0x2
	.byte	0x80
	.long	0x78
	.uleb128 0x9
	.byte	0x3
	.quad	telemTemperature1
	.uleb128 0x19
	.long	.LASF147
	.byte	0x2
	.byte	0x8c
	.long	0x95
	.uleb128 0x9
	.byte	0x3
	.quad	filteredCycleTime
	.uleb128 0x1a
	.string	"i"
	.byte	0x2
	.byte	0x8d
	.long	0x30
	.uleb128 0x9
	.byte	0x3
	.quad	i
	.uleb128 0x19
	.long	.LASF148
	.byte	0x2
	.byte	0x90
	.long	0x1bc
	.uleb128 0x9
	.byte	0x3
	.quad	AccInflightCalibrationArmed
	.uleb128 0x19
	.long	.LASF149
	.byte	0x2
	.byte	0x91
	.long	0x1bc
	.uleb128 0x9
	.byte	0x3
	.quad	AccInflightCalibrationMeasurementDone
	.uleb128 0x19
	.long	.LASF150
	.byte	0x2
	.byte	0x92
	.long	0x1bc
	.uleb128 0x9
	.byte	0x3
	.quad	AccInflightCalibrationSavetoEEProm
	.uleb128 0x19
	.long	.LASF151
	.byte	0x2
	.byte	0x93
	.long	0x1bc
	.uleb128 0x9
	.byte	0x3
	.quad	AccInflightCalibrationActive
	.uleb128 0x19
	.long	.LASF152
	.byte	0x2
	.byte	0x94
	.long	0x95
	.uleb128 0x9
	.byte	0x3
	.quad	InflightcalibratingA
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x6c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LFB10
	.quad	.LFE10
	.quad	.LFB12
	.quad	.LFE12
	.quad	.LFB13
	.quad	.LFE13
	.quad	.LFB14
	.quad	.LFE14
	.quad	.LFB15
	.quad	.LFE15
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF112:
	.string	"dcm_kp"
.LASF71:
	.string	"CW270_DEG"
.LASF74:
	.string	"CW180_DEG_FLIP"
.LASF148:
	.string	"AccInflightCalibrationArmed"
.LASF61:
	.string	"int16_flightDynamicsTrims_s"
.LASF23:
	.string	"pgResetFunc"
.LASF59:
	.string	"SENSOR_INDEX_BARO"
.LASF18:
	.string	"RGB_GREEN"
.LASF87:
	.string	"sensorTrims_s"
.LASF90:
	.string	"sensorTrims_t"
.LASF115:
	.string	"max_angle_inclination"
.LASF92:
	.string	"mag_declination"
.LASF43:
	.string	"M_SCALE_2GS"
.LASF143:
	.string	"magHold"
.LASF10:
	.string	"long long unsigned int"
.LASF73:
	.string	"CW90_DEG_FLIP"
.LASF67:
	.string	"ALIGN_DEFAULT"
.LASF119:
	.string	"throttle_correction_value"
.LASF65:
	.string	"values"
.LASF144:
	.string	"headFreeModeHold"
.LASF106:
	.string	"acc_unarmedcal"
.LASF64:
	.string	"flightDynamicsTrims_def_t"
.LASF127:
	.string	"filteredCycleTimeState"
.LASF130:
	.string	"U_ID_2"
.LASF124:
	.string	"taskMainPidLoopChecker"
.LASF11:
	.string	"int16_t"
.LASF9:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF19:
	.string	"RGB_BLUE"
.LASF57:
	.string	"SENSOR_INDEX_GYRO"
.LASF26:
	.string	"size"
.LASF55:
	.string	"mRes"
.LASF101:
	.string	"accelerometerConfig_s"
.LASF107:
	.string	"accelerometerConfig_t"
.LASF141:
	.string	"throttleCorrectionConfig"
.LASF31:
	.string	"mraa_i2c_context"
.LASF118:
	.string	"throttle_correction_angle"
.LASF20:
	.string	"state"
.LASF6:
	.string	"long int"
.LASF108:
	.string	"imuConfig_s"
.LASF116:
	.string	"imuConfig_t"
.LASF34:
	.string	"G_SCALE_2000DPS"
.LASF39:
	.string	"A_SCALE_6G"
.LASF111:
	.string	"gyroSyncDenominator"
.LASF69:
	.string	"CW90_DEG"
.LASF13:
	.string	"uint16_t"
.LASF16:
	.string	"double"
.LASF17:
	.string	"RGB_RED"
.LASF48:
	.string	"temperature"
.LASF96:
	.string	"flightDynamicsTrims_u"
.LASF47:
	.string	"LSM9DS0"
.LASF104:
	.string	"accz_lpf_cutoff"
.LASF88:
	.string	"accZero"
.LASF33:
	.string	"G_SCALE_500DPS"
.LASF32:
	.string	"G_SCALE_245DPS"
.LASF151:
	.string	"AccInflightCalibrationActive"
.LASF28:
	.string	"reset"
.LASF105:
	.string	"accDeadband"
.LASF83:
	.string	"acc_hardware"
.LASF91:
	.string	"compassConfig_s"
.LASF93:
	.string	"compassConfig_t"
.LASF135:
	.string	"sensorSelectionConfig_System"
.LASF94:
	.string	"rollAndPitchTrims_s"
.LASF1:
	.string	"unsigned int"
.LASF56:
	.string	"LSM9DS0_t"
.LASF152:
	.string	"InflightcalibratingA"
.LASF153:
	.string	"GNU C99 5.4.1 20160904 -mtune=generic -march=x86-64 -g -std=gnu99 -ffunction-sections -fdata-sections -ffat-lto-objects -fstack-protector-strong"
.LASF22:
	.string	"pgn_t"
.LASF0:
	.string	"long unsigned int"
.LASF146:
	.string	"telemTemperature1"
.LASF121:
	.string	"taskHandleSerial"
.LASF3:
	.string	"short unsigned int"
.LASF41:
	.string	"A_SCALE_16G"
.LASF126:
	.string	"isRXDataNew"
.LASF62:
	.string	"roll"
.LASF68:
	.string	"CW0_DEG"
.LASF60:
	.string	"SENSOR_INDEX_MAG"
.LASF50:
	.string	"gScale"
.LASF133:
	.string	"__pg_resetdata_start"
.LASF132:
	.string	"__pg_registry_end"
.LASF40:
	.string	"A_SCALE_8G"
.LASF49:
	.string	"gyro"
.LASF54:
	.string	"aRes"
.LASF123:
	.string	"taskUpdateAccelerometer"
.LASF7:
	.string	"sizetype"
.LASF95:
	.string	"rollAndPitchTrims_t_def"
.LASF35:
	.string	"gyro_scale"
.LASF120:
	.string	"throttleCorrectionConfig_t"
.LASF27:
	.string	"address"
.LASF24:
	.string	"pt1Filter_s"
.LASF21:
	.string	"pt1Filter_t"
.LASF42:
	.string	"mag_scale"
.LASF63:
	.string	"pitch"
.LASF51:
	.string	"aScale"
.LASF103:
	.string	"acc_cut_hz"
.LASF134:
	.string	"__pg_resetdata_end"
.LASF131:
	.string	"__pg_registry_start"
.LASF147:
	.string	"filteredCycleTime"
.LASF79:
	.string	"acc_align"
.LASF128:
	.string	"U_ID_0"
.LASF129:
	.string	"U_ID_1"
.LASF155:
	.string	"/home/aravind/git/cleanflight"
.LASF15:
	.string	"float"
.LASF82:
	.string	"sensorSelectionConfig_s"
.LASF142:
	.string	"cycleTime"
.LASF70:
	.string	"CW180_DEG"
.LASF102:
	.string	"accelerometerTrims"
.LASF138:
	.string	"compassConfig_ProfileCurrent"
.LASF30:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF72:
	.string	"CW0_DEG_FLIP"
.LASF37:
	.string	"A_SCALE_2G"
.LASF66:
	.string	"flightDynamicsTrims_t"
.LASF125:
	.string	"disarmAt"
.LASF44:
	.string	"M_SCALE_4GS"
.LASF109:
	.string	"looptime"
.LASF89:
	.string	"magZero"
.LASF98:
	.string	"rollAndPitchTrims_t"
.LASF97:
	.string	"rollAndPitchTrims_u"
.LASF78:
	.string	"gyro_align"
.LASF14:
	.string	"uint32_t"
.LASF84:
	.string	"mag_hardware"
.LASF122:
	.string	"taskUpdateCompass"
.LASF25:
	.string	"pgRegistry_s"
.LASF29:
	.string	"pgRegistry_t"
.LASF85:
	.string	"baro_hardware"
.LASF8:
	.string	"char"
.LASF76:
	.string	"sensor_align_e"
.LASF157:
	.string	"sensorTrims"
.LASF154:
	.string	"src/main/fc/cleanflight_fc.c"
.LASF137:
	.string	"sensorTrims_System"
.LASF80:
	.string	"mag_align"
.LASF52:
	.string	"mScale"
.LASF156:
	.string	"_i2c"
.LASF114:
	.string	"small_angle"
.LASF53:
	.string	"gRes"
.LASF77:
	.string	"sensorAlignmentConfig_s"
.LASF81:
	.string	"sensorAlignmentConfig_t"
.LASF139:
	.string	"accelerometerConfig"
.LASF58:
	.string	"SENSOR_INDEX_ACC"
.LASF149:
	.string	"AccInflightCalibrationMeasurementDone"
.LASF117:
	.string	"throttleCorrectionConfig_s"
.LASF12:
	.string	"uint8_t"
.LASF136:
	.string	"sensorAlignmentConfig_System"
.LASF140:
	.string	"imuConfig"
.LASF36:
	.string	"accel_scale"
.LASF99:
	.string	"accDeadband_s"
.LASF100:
	.string	"accDeadband_t"
.LASF75:
	.string	"CW270_DEG_FLIP"
.LASF150:
	.string	"AccInflightCalibrationSavetoEEProm"
.LASF86:
	.string	"sensorSelectionConfig_t"
.LASF38:
	.string	"A_SCALE_4G"
.LASF110:
	.string	"gyroSync"
.LASF145:
	.string	"motorControlEnable"
.LASF45:
	.string	"M_SCALE_8GS"
.LASF113:
	.string	"dcm_ki"
.LASF46:
	.string	"M_SCALE_12GS"
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
