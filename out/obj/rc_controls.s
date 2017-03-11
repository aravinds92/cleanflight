	.file	"rc_controls.c"
# GNU C99 (Ubuntu 5.4.1-2ubuntu1~16.04) version 5.4.1 20160904 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.1 20160904, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed rc_controls.i -mtune=generic
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
	.comm	featureConfig,8,8
	.comm	profileSelection_System,1,1
	.comm	imu,8,8
	.comm	rxConfig_System,26,16
	.comm	armingConfig_System,4,1
	.comm	batteryConfig_System,8,8
	.comm	sensorSelectionConfig_System,3,1
	.comm	sensorAlignmentConfig_System,12,8
	.comm	sensorTrims_System,12,8
	.comm	gyroConfig,8,8
	.comm	accelerometerConfig,8,8
	.comm	gpsConfig_System,16,16
	.comm	motorAndServoConfig_System,12,8
	.comm	failsafeConfig_System,8,8
	.globl	armingConfig_Registry
	.section	.pg_registry,"a",@progbits
	.align 8
	.type	armingConfig_Registry, @object
	.size	armingConfig_Registry, 32
armingConfig_Registry:
# pgn:
	.value	16
# size:
	.value	4
# address:
	.zero	4
	.quad	armingConfig_System
# ptr:
	.quad	0
# reset:
# ptr:
	.quad	pgResetTemplate_armingConfig
	.section	.bss.rcControlsConfig_Storage,"aw",@nobits
	.align 16
	.type	rcControlsConfig_Storage, @object
	.size	rcControlsConfig_Storage, 24
rcControlsConfig_Storage:
	.zero	24
	.comm	rcControlsConfig_ProfileCurrent,8,8
	.globl	rcControlsConfig_Registry
	.section	.pg_registry
	.align 8
	.type	rcControlsConfig_Registry, @object
	.size	rcControlsConfig_Registry, 32
rcControlsConfig_Registry:
# pgn:
	.value	25
# size:
	.value	-32760
# address:
	.zero	4
	.quad	rcControlsConfig_Storage
# ptr:
	.quad	rcControlsConfig_ProfileCurrent
# reset:
# ptr:
	.quad	pgResetTemplate_rcControlsConfig
	.section	.bss.modeActivationProfile_Storage,"aw",@nobits
	.align 32
	.type	modeActivationProfile_Storage, @object
	.size	modeActivationProfile_Storage, 480
modeActivationProfile_Storage:
	.zero	480
	.comm	modeActivationProfile_ProfileCurrent,8,8
	.globl	modeActivationProfile_Registry
	.section	.pg_registry
	.align 8
	.type	modeActivationProfile_Registry, @object
	.size	modeActivationProfile_Registry, 32
modeActivationProfile_Registry:
# pgn:
	.value	41
# size:
	.value	-32608
# address:
	.zero	4
	.quad	modeActivationProfile_Storage
# ptr:
	.quad	modeActivationProfile_ProfileCurrent
# reset:
# ptr:
	.quad	0
	.section	.data.isUsingSticksToArm,"aw",@progbits
	.type	isUsingSticksToArm, @object
	.size	isUsingSticksToArm, 1
isUsingSticksToArm:
	.byte	1
	.comm	rcCommand,8,8
	.section	.bss.rcModeActivationMask,"aw",@nobits
	.align 4
	.type	rcModeActivationMask, @object
	.size	rcModeActivationMask, 4
rcModeActivationMask:
	.zero	4
	.globl	pgResetTemplate_rcControlsConfig
	.section	.pg_resetdata,"a",@progbits
	.align 2
	.type	pgResetTemplate_rcControlsConfig, @object
	.size	pgResetTemplate_rcControlsConfig, 8
pgResetTemplate_rcControlsConfig:
# deadband:
	.byte	0
# yaw_deadband:
	.byte	0
# alt_hold_deadband:
	.byte	40
# alt_hold_fast_change:
	.byte	1
# yaw_control_direction:
	.byte	1
# deadband3d_throttle:
	.zero	1
	.value	50
	.globl	pgResetTemplate_armingConfig
	.align 2
	.type	pgResetTemplate_armingConfig, @object
	.size	pgResetTemplate_armingConfig, 4
pgResetTemplate_armingConfig:
# disarm_kill_switch:
	.zero	1
	.byte	1
# auto_disarm_delay:
	.byte	5
# max_arm_angle:
	.byte	25
	.section	.text.useRcControlsConfig,"ax",@progbits
	.globl	useRcControlsConfig
	.type	useRcControlsConfig, @function
useRcControlsConfig:
.LFB24:
	.file 1 "src/main/fc/rc_controls.c"
	.loc 1 343 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# modeActivationConditions, modeActivationConditions
	.loc 1 344 0
	movq	-8(%rbp), %rax	# modeActivationConditions, tmp93
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	rcModeIsActivationConditionPresent	#
	movzbl	%al, %eax	# D.7017, D.7018
	testl	%eax, %eax	# D.7018
	setne	%al	#, D.7017
	xorl	$1, %eax	#, D.7017
	movzbl	%al, %eax	# D.7017, D.7018
	andl	$1, %eax	#, D.7017
	movb	%al, isUsingSticksToArm(%rip)	# D.7017, isUsingSticksToArm
	.loc 1 345 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	useRcControlsConfig, .-useRcControlsConfig
	.section	.text.rcModeIsActivationConditionPresent,"ax",@progbits
	.globl	rcModeIsActivationConditionPresent
	.type	rcModeIsActivationConditionPresent, @function
rcModeIsActivationConditionPresent:
.LFB25:
	.loc 1 348 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# modeActivationConditions, modeActivationConditions
	movl	%esi, -28(%rbp)	# modeId, modeId
	.loc 1 351 0
	movb	$0, -9(%rbp)	#, index
	jmp	.L3	#
.L6:
.LBB2:
	.loc 1 352 0
	movzbl	-9(%rbp), %eax	# index, D.7020
	leaq	0(,%rax,8), %rdx	#, D.7020
	movq	-24(%rbp), %rax	# modeActivationConditions, tmp98
	addq	%rdx, %rax	# D.7020, tmp97
	movq	%rax, -8(%rbp)	# tmp97, modeActivationCondition
	.loc 1 354 0
	movq	-8(%rbp), %rax	# modeActivationCondition, tmp99
	movl	(%rax), %eax	# modeActivationCondition_7->modeId, D.7021
	cmpl	-28(%rbp), %eax	# modeId, D.7021
	jne	.L4	#,
	.loc 1 354 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# modeActivationCondition, tmp100
	movzbl	5(%rax), %edx	# modeActivationCondition_7->range.startStep, D.7022
	movq	-8(%rbp), %rax	# modeActivationCondition, tmp101
	movzbl	6(%rax), %eax	# modeActivationCondition_7->range.endStep, D.7022
	cmpb	%al, %dl	# D.7022, D.7022
	jnb	.L4	#,
	.loc 1 355 0 is_stmt 1
	movl	$1, %eax	#, D.7019
	jmp	.L5	#
.L4:
.LBE2:
	.loc 1 351 0 discriminator 2
	movzbl	-9(%rbp), %eax	# index, D.7022
	addl	$1, %eax	#, tmp102
	movb	%al, -9(%rbp)	# tmp102, index
.L3:
	.loc 1 351 0 is_stmt 0 discriminator 1
	cmpb	$19, -9(%rbp)	#, index
	jbe	.L6	#,
	.loc 1 358 0 is_stmt 1
	movl	$0, %eax	#, D.7019
.L5:
	.loc 1 359 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	rcModeIsActivationConditionPresent, .-rcModeIsActivationConditionPresent
	.section	.text.rcModeIsActive,"ax",@progbits
	.globl	rcModeIsActive
	.type	rcModeIsActive, @function
rcModeIsActive:
.LFB26:
	.loc 1 363 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# modeId, modeId
	.loc 1 364 0
	movl	-4(%rbp), %eax	# modeId, tmp93
	movl	$1, %edx	#, tmp94
	movl	%eax, %ecx	# tmp93, tmp97
	sall	%cl, %edx	# tmp97, D.7023
	movl	%edx, %eax	# D.7023, D.7023
	movl	%eax, %edx	# D.7023, D.7024
	movl	rcModeActivationMask(%rip), %eax	# rcModeActivationMask, D.7024
	andl	%edx, %eax	# D.7024, D.7024
	testl	%eax, %eax	# D.7024
	setne	%al	#, D.7025
	.loc 1 365 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	rcModeIsActive, .-rcModeIsActive
	.text
.Letext0:
	.file 2 "/usr/include/stdint.h"
	.file 3 "./src/main/common/axis.h"
	.file 4 "./src/main/config/parameter_group.h"
	.file 5 "./src/main/config/feature.h"
	.file 6 "./src/main/config/profile.h"
	.file 7 "/usr/include/mraa/i2c.h"
	.file 8 "./src/main/drivers/SFE_LSM9DS0.h"
	.file 9 "./src/main/rx/rx.h"
	.file 10 "./src/main/fc/rc_controls.h"
	.file 11 "./src/main/sensors/battery.h"
	.file 12 "./src/main/sensors/sensors.h"
	.file 13 "./src/main/sensors/gyro.h"
	.file 14 "./src/main/sensors/acceleration.h"
	.file 15 "./src/main/io/gps.h"
	.file 16 "./src/main/io/motor_and_servo.h"
	.file 17 "./src/main/flight/pid.h"
	.file 18 "./src/main/flight/navigation.h"
	.file 19 "./src/main/flight/failsafe.h"
	.file 20 "./src/main/target/edison/target.h"
	.file 21 "./src/main/drivers/system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x115a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF313
	.byte	0xc
	.long	.LASF314
	.long	.LASF315
	.long	.Ldebug_ranges0+0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x2
	.byte	0x24
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x2
	.byte	0x25
	.long	0x46
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0x2
	.long	.LASF5
	.byte	0x2
	.byte	0x30
	.long	0x66
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0x31
	.long	0x78
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.long	.LASF9
	.byte	0x2
	.byte	0x33
	.long	0x8a
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF14
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF15
	.uleb128 0x5
	.byte	0x4
	.long	0x8a
	.byte	0x3
	.byte	0x1d
	.long	0xd9
	.uleb128 0x6
	.long	.LASF16
	.byte	0
	.uleb128 0x6
	.long	.LASF17
	.byte	0x1
	.uleb128 0x6
	.long	.LASF18
	.byte	0x2
	.uleb128 0x6
	.long	.LASF19
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x8a
	.byte	0x3
	.byte	0x25
	.long	0xf8
	.uleb128 0x6
	.long	.LASF20
	.byte	0
	.uleb128 0x6
	.long	.LASF21
	.byte	0x1
	.uleb128 0x6
	.long	.LASF22
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF23
	.byte	0x4
	.byte	0x15
	.long	0x6d
	.uleb128 0x5
	.byte	0x4
	.long	0x8a
	.byte	0x4
	.byte	0x1d
	.long	0x132
	.uleb128 0x7
	.long	.LASF24
	.value	0xfff
	.uleb128 0x7
	.long	.LASF25
	.value	0xf000
	.uleb128 0x7
	.long	.LASF26
	.value	0xfff
	.uleb128 0x6
	.long	.LASF27
	.byte	0
	.uleb128 0x7
	.long	.LASF28
	.value	0x8000
	.byte	0
	.uleb128 0x2
	.long	.LASF29
	.byte	0x4
	.byte	0x26
	.long	0x13d
	.uleb128 0x8
	.long	0x14d
	.uleb128 0x9
	.long	0x14d
	.uleb128 0x9
	.long	0x4d
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0x2d
	.long	0x16d
	.uleb128 0xc
	.string	"ptr"
	.byte	0x4
	.byte	0x2e
	.long	0x14d
	.uleb128 0xc
	.string	"fn"
	.byte	0x4
	.byte	0x2f
	.long	0x16d
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x132
	.uleb128 0xe
	.long	.LASF34
	.byte	0x20
	.byte	0x4
	.byte	0x28
	.long	0x1bc
	.uleb128 0xf
	.string	"pgn"
	.byte	0x4
	.byte	0x29
	.long	0xf8
	.byte	0
	.uleb128 0x10
	.long	.LASF30
	.byte	0x4
	.byte	0x2a
	.long	0x6d
	.byte	0x2
	.uleb128 0x10
	.long	.LASF31
	.byte	0x4
	.byte	0x2b
	.long	0x1bc
	.byte	0x8
	.uleb128 0xf
	.string	"ptr"
	.byte	0x4
	.byte	0x2c
	.long	0x1c2
	.byte	0x10
	.uleb128 0x10
	.long	.LASF32
	.byte	0x4
	.byte	0x30
	.long	0x14f
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x5b
	.uleb128 0xd
	.byte	0x8
	.long	0x1bc
	.uleb128 0x2
	.long	.LASF33
	.byte	0x4
	.byte	0x31
	.long	0x173
	.uleb128 0xe
	.long	.LASF35
	.byte	0x4
	.byte	0x5
	.byte	0x14
	.long	0x1ec
	.uleb128 0x10
	.long	.LASF36
	.byte	0x5
	.byte	0x15
	.long	0x7f
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF37
	.byte	0x5
	.byte	0x16
	.long	0x1d3
	.uleb128 0xe
	.long	.LASF38
	.byte	0x1
	.byte	0x6
	.byte	0x16
	.long	0x210
	.uleb128 0x10
	.long	.LASF39
	.byte	0x6
	.byte	0x17
	.long	0x5b
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x6
	.byte	0x18
	.long	0x1f7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF41
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF42
	.uleb128 0x2
	.long	.LASF43
	.byte	0x7
	.byte	0x35
	.long	0x234
	.uleb128 0xd
	.byte	0x8
	.long	0x23a
	.uleb128 0x11
	.long	.LASF316
	.uleb128 0x12
	.long	.LASF47
	.byte	0x4
	.long	0x8a
	.byte	0x8
	.byte	0x81
	.long	0x262
	.uleb128 0x6
	.long	.LASF44
	.byte	0
	.uleb128 0x6
	.long	.LASF45
	.byte	0x1
	.uleb128 0x6
	.long	.LASF46
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF47
	.byte	0x8
	.byte	0x86
	.long	0x23f
	.uleb128 0x12
	.long	.LASF48
	.byte	0x4
	.long	0x8a
	.byte	0x8
	.byte	0x89
	.long	0x29c
	.uleb128 0x6
	.long	.LASF49
	.byte	0
	.uleb128 0x6
	.long	.LASF50
	.byte	0x1
	.uleb128 0x6
	.long	.LASF51
	.byte	0x2
	.uleb128 0x6
	.long	.LASF52
	.byte	0x3
	.uleb128 0x6
	.long	.LASF53
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x8
	.byte	0x90
	.long	0x26d
	.uleb128 0x12
	.long	.LASF54
	.byte	0x4
	.long	0x8a
	.byte	0x8
	.byte	0x93
	.long	0x2d0
	.uleb128 0x6
	.long	.LASF55
	.byte	0
	.uleb128 0x6
	.long	.LASF56
	.byte	0x1
	.uleb128 0x6
	.long	.LASF57
	.byte	0x2
	.uleb128 0x6
	.long	.LASF58
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x8
	.byte	0x99
	.long	0x2a7
	.uleb128 0xe
	.long	.LASF59
	.byte	0x40
	.byte	0x8
	.byte	0xdc
	.long	0x3b6
	.uleb128 0xf
	.string	"gx"
	.byte	0x8
	.byte	0xe2
	.long	0x3b
	.byte	0
	.uleb128 0xf
	.string	"gy"
	.byte	0x8
	.byte	0xe2
	.long	0x3b
	.byte	0x2
	.uleb128 0xf
	.string	"gz"
	.byte	0x8
	.byte	0xe2
	.long	0x3b
	.byte	0x4
	.uleb128 0xf
	.string	"ax"
	.byte	0x8
	.byte	0xe3
	.long	0x3b
	.byte	0x6
	.uleb128 0xf
	.string	"ay"
	.byte	0x8
	.byte	0xe3
	.long	0x3b
	.byte	0x8
	.uleb128 0xf
	.string	"az"
	.byte	0x8
	.byte	0xe3
	.long	0x3b
	.byte	0xa
	.uleb128 0xf
	.string	"mx"
	.byte	0x8
	.byte	0xe4
	.long	0x3b
	.byte	0xc
	.uleb128 0xf
	.string	"my"
	.byte	0x8
	.byte	0xe4
	.long	0x3b
	.byte	0xe
	.uleb128 0xf
	.string	"mz"
	.byte	0x8
	.byte	0xe4
	.long	0x3b
	.byte	0x10
	.uleb128 0x10
	.long	.LASF60
	.byte	0x8
	.byte	0xe5
	.long	0x3b
	.byte	0x12
	.uleb128 0x10
	.long	.LASF61
	.byte	0x8
	.byte	0xe7
	.long	0x229
	.byte	0x18
	.uleb128 0xf
	.string	"xm"
	.byte	0x8
	.byte	0xe8
	.long	0x229
	.byte	0x20
	.uleb128 0x10
	.long	.LASF62
	.byte	0x8
	.byte	0xec
	.long	0x262
	.byte	0x28
	.uleb128 0x10
	.long	.LASF63
	.byte	0x8
	.byte	0xed
	.long	0x29c
	.byte	0x2c
	.uleb128 0x10
	.long	.LASF64
	.byte	0x8
	.byte	0xee
	.long	0x2d0
	.byte	0x30
	.uleb128 0x10
	.long	.LASF65
	.byte	0x8
	.byte	0xf3
	.long	0xa6
	.byte	0x34
	.uleb128 0x10
	.long	.LASF66
	.byte	0x8
	.byte	0xf3
	.long	0xa6
	.byte	0x38
	.uleb128 0x10
	.long	.LASF67
	.byte	0x8
	.byte	0xf3
	.long	0xa6
	.byte	0x3c
	.byte	0
	.uleb128 0x2
	.long	.LASF68
	.byte	0x8
	.byte	0xf5
	.long	0x2db
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF69
	.uleb128 0xe
	.long	.LASF70
	.byte	0x2
	.byte	0x9
	.byte	0x65
	.long	0x3ed
	.uleb128 0x10
	.long	.LASF71
	.byte	0x9
	.byte	0x66
	.long	0x5b
	.byte	0
	.uleb128 0x10
	.long	.LASF72
	.byte	0x9
	.byte	0x67
	.long	0x5b
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF73
	.byte	0x9
	.byte	0x68
	.long	0x3c8
	.uleb128 0xe
	.long	.LASF74
	.byte	0x4
	.byte	0x9
	.byte	0x6a
	.long	0x41d
	.uleb128 0xf
	.string	"min"
	.byte	0x9
	.byte	0x6b
	.long	0x6d
	.byte	0
	.uleb128 0xf
	.string	"max"
	.byte	0x9
	.byte	0x6c
	.long	0x6d
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF75
	.byte	0x9
	.byte	0x6d
	.long	0x3f8
	.uleb128 0xe
	.long	.LASF76
	.byte	0x1a
	.byte	0x9
	.byte	0x6f
	.long	0x4d1
	.uleb128 0x10
	.long	.LASF77
	.byte	0x9
	.byte	0x70
	.long	0x4d1
	.byte	0
	.uleb128 0x10
	.long	.LASF78
	.byte	0x9
	.byte	0x71
	.long	0x5b
	.byte	0x8
	.uleb128 0x10
	.long	.LASF79
	.byte	0x9
	.byte	0x72
	.long	0x5b
	.byte	0x9
	.uleb128 0x10
	.long	.LASF80
	.byte	0x9
	.byte	0x73
	.long	0x5b
	.byte	0xa
	.uleb128 0x10
	.long	.LASF81
	.byte	0x9
	.byte	0x74
	.long	0x5b
	.byte	0xb
	.uleb128 0x10
	.long	.LASF82
	.byte	0x9
	.byte	0x75
	.long	0x5b
	.byte	0xc
	.uleb128 0x10
	.long	.LASF83
	.byte	0x9
	.byte	0x76
	.long	0x5b
	.byte	0xd
	.uleb128 0x10
	.long	.LASF84
	.byte	0x9
	.byte	0x77
	.long	0x5b
	.byte	0xe
	.uleb128 0x10
	.long	.LASF85
	.byte	0x9
	.byte	0x78
	.long	0x6d
	.byte	0x10
	.uleb128 0x10
	.long	.LASF86
	.byte	0x9
	.byte	0x79
	.long	0x6d
	.byte	0x12
	.uleb128 0x10
	.long	.LASF87
	.byte	0x9
	.byte	0x7a
	.long	0x6d
	.byte	0x14
	.uleb128 0x10
	.long	.LASF88
	.byte	0x9
	.byte	0x7c
	.long	0x6d
	.byte	0x16
	.uleb128 0x10
	.long	.LASF89
	.byte	0x9
	.byte	0x7d
	.long	0x6d
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.long	0x5b
	.long	0x4e1
	.uleb128 0x14
	.long	0x98
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.long	.LASF90
	.byte	0x9
	.byte	0x7e
	.long	0x428
	.uleb128 0x5
	.byte	0x4
	.long	0x8a
	.byte	0xa
	.byte	0x16
	.long	0x5a7
	.uleb128 0x6
	.long	.LASF91
	.byte	0
	.uleb128 0x6
	.long	.LASF92
	.byte	0x1
	.uleb128 0x6
	.long	.LASF93
	.byte	0x2
	.uleb128 0x6
	.long	.LASF94
	.byte	0x3
	.uleb128 0x6
	.long	.LASF95
	.byte	0x4
	.uleb128 0x6
	.long	.LASF96
	.byte	0x5
	.uleb128 0x6
	.long	.LASF97
	.byte	0x6
	.uleb128 0x6
	.long	.LASF98
	.byte	0x7
	.uleb128 0x6
	.long	.LASF99
	.byte	0x8
	.uleb128 0x6
	.long	.LASF100
	.byte	0x9
	.uleb128 0x6
	.long	.LASF101
	.byte	0xa
	.uleb128 0x6
	.long	.LASF102
	.byte	0xb
	.uleb128 0x6
	.long	.LASF103
	.byte	0xc
	.uleb128 0x6
	.long	.LASF104
	.byte	0xd
	.uleb128 0x6
	.long	.LASF105
	.byte	0xe
	.uleb128 0x6
	.long	.LASF106
	.byte	0xf
	.uleb128 0x6
	.long	.LASF107
	.byte	0x10
	.uleb128 0x6
	.long	.LASF108
	.byte	0x11
	.uleb128 0x6
	.long	.LASF109
	.byte	0x12
	.uleb128 0x6
	.long	.LASF110
	.byte	0x13
	.uleb128 0x6
	.long	.LASF111
	.byte	0x14
	.uleb128 0x6
	.long	.LASF112
	.byte	0x15
	.uleb128 0x6
	.long	.LASF113
	.byte	0x16
	.uleb128 0x6
	.long	.LASF114
	.byte	0x17
	.uleb128 0x6
	.long	.LASF115
	.byte	0x18
	.uleb128 0x6
	.long	.LASF116
	.byte	0x19
	.uleb128 0x6
	.long	.LASF117
	.byte	0x1a
	.uleb128 0x6
	.long	.LASF118
	.byte	0x1b
	.uleb128 0x6
	.long	.LASF119
	.byte	0x1c
	.byte	0
	.uleb128 0x2
	.long	.LASF120
	.byte	0xa
	.byte	0x35
	.long	0x4ec
	.uleb128 0xe
	.long	.LASF121
	.byte	0x2
	.byte	0xa
	.byte	0x75
	.long	0x5d7
	.uleb128 0x10
	.long	.LASF122
	.byte	0xa
	.byte	0x76
	.long	0x5b
	.byte	0
	.uleb128 0x10
	.long	.LASF123
	.byte	0xa
	.byte	0x77
	.long	0x5b
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF124
	.byte	0xa
	.byte	0x78
	.long	0x5b2
	.uleb128 0xe
	.long	.LASF125
	.byte	0x8
	.byte	0xa
	.byte	0x7a
	.long	0x613
	.uleb128 0x10
	.long	.LASF126
	.byte	0xa
	.byte	0x7b
	.long	0x5a7
	.byte	0
	.uleb128 0x10
	.long	.LASF127
	.byte	0xa
	.byte	0x7c
	.long	0x5b
	.byte	0x4
	.uleb128 0x10
	.long	.LASF128
	.byte	0xa
	.byte	0x7d
	.long	0x5d7
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.long	.LASF129
	.byte	0xa
	.byte	0x7e
	.long	0x5e2
	.uleb128 0xe
	.long	.LASF130
	.byte	0xa0
	.byte	0xa
	.byte	0x82
	.long	0x637
	.uleb128 0x10
	.long	.LASF131
	.byte	0xa
	.byte	0x83
	.long	0x637
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x613
	.long	0x647
	.uleb128 0x14
	.long	0x98
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF132
	.byte	0xa
	.byte	0x84
	.long	0x61e
	.uleb128 0xe
	.long	.LASF133
	.byte	0x8
	.byte	0xa
	.byte	0x8a
	.long	0x6a7
	.uleb128 0x10
	.long	.LASF134
	.byte	0xa
	.byte	0x8b
	.long	0x5b
	.byte	0
	.uleb128 0x10
	.long	.LASF135
	.byte	0xa
	.byte	0x8c
	.long	0x5b
	.byte	0x1
	.uleb128 0x10
	.long	.LASF136
	.byte	0xa
	.byte	0x8d
	.long	0x5b
	.byte	0x2
	.uleb128 0x10
	.long	.LASF137
	.byte	0xa
	.byte	0x8e
	.long	0x5b
	.byte	0x3
	.uleb128 0x10
	.long	.LASF138
	.byte	0xa
	.byte	0x8f
	.long	0x29
	.byte	0x4
	.uleb128 0x10
	.long	.LASF139
	.byte	0xa
	.byte	0x90
	.long	0x6d
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF140
	.byte	0xa
	.byte	0x91
	.long	0x652
	.uleb128 0xe
	.long	.LASF141
	.byte	0x4
	.byte	0xa
	.byte	0x95
	.long	0x6ef
	.uleb128 0x10
	.long	.LASF142
	.byte	0xa
	.byte	0x97
	.long	0x5b
	.byte	0
	.uleb128 0x10
	.long	.LASF143
	.byte	0xa
	.byte	0x98
	.long	0x5b
	.byte	0x1
	.uleb128 0x10
	.long	.LASF144
	.byte	0xa
	.byte	0x99
	.long	0x5b
	.byte	0x2
	.uleb128 0x10
	.long	.LASF145
	.byte	0xa
	.byte	0x9a
	.long	0x5b
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF146
	.byte	0xa
	.byte	0x9b
	.long	0x6b2
	.uleb128 0xe
	.long	.LASF147
	.byte	0x8
	.byte	0xb
	.byte	0x14
	.long	0x743
	.uleb128 0x10
	.long	.LASF148
	.byte	0xb
	.byte	0x15
	.long	0x5b
	.byte	0
	.uleb128 0x10
	.long	.LASF149
	.byte	0xb
	.byte	0x16
	.long	0x5b
	.byte	0x1
	.uleb128 0x10
	.long	.LASF150
	.byte	0xb
	.byte	0x17
	.long	0x5b
	.byte	0x2
	.uleb128 0x10
	.long	.LASF151
	.byte	0xb
	.byte	0x18
	.long	0x6d
	.byte	0x4
	.uleb128 0x10
	.long	.LASF152
	.byte	0xb
	.byte	0x19
	.long	0x5b
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF153
	.byte	0xb
	.byte	0x1a
	.long	0x6fa
	.uleb128 0x5
	.byte	0x4
	.long	0x8a
	.byte	0xc
	.byte	0x15
	.long	0x773
	.uleb128 0x6
	.long	.LASF154
	.byte	0
	.uleb128 0x6
	.long	.LASF155
	.byte	0x1
	.uleb128 0x6
	.long	.LASF156
	.byte	0x2
	.uleb128 0x6
	.long	.LASF157
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.long	.LASF158
	.byte	0x6
	.byte	0xc
	.byte	0x20
	.long	0x7a4
	.uleb128 0x10
	.long	.LASF159
	.byte	0xc
	.byte	0x21
	.long	0x3b
	.byte	0
	.uleb128 0x10
	.long	.LASF160
	.byte	0xc
	.byte	0x22
	.long	0x3b
	.byte	0x2
	.uleb128 0xf
	.string	"yaw"
	.byte	0xc
	.byte	0x23
	.long	0x3b
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF161
	.byte	0xc
	.byte	0x24
	.long	0x773
	.uleb128 0x15
	.long	.LASF195
	.byte	0x6
	.byte	0xc
	.byte	0x26
	.long	0x7d2
	.uleb128 0xc
	.string	"raw"
	.byte	0xc
	.byte	0x27
	.long	0x7d2
	.uleb128 0x16
	.long	.LASF162
	.byte	0xc
	.byte	0x28
	.long	0x7a4
	.byte	0
	.uleb128 0x13
	.long	0x3b
	.long	0x7e2
	.uleb128 0x14
	.long	0x98
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF163
	.byte	0xc
	.byte	0x29
	.long	0x7af
	.uleb128 0x5
	.byte	0x4
	.long	0x8a
	.byte	0xc
	.byte	0x39
	.long	0x830
	.uleb128 0x6
	.long	.LASF164
	.byte	0
	.uleb128 0x6
	.long	.LASF165
	.byte	0x1
	.uleb128 0x6
	.long	.LASF166
	.byte	0x2
	.uleb128 0x6
	.long	.LASF167
	.byte	0x3
	.uleb128 0x6
	.long	.LASF168
	.byte	0x4
	.uleb128 0x6
	.long	.LASF169
	.byte	0x5
	.uleb128 0x6
	.long	.LASF170
	.byte	0x6
	.uleb128 0x6
	.long	.LASF171
	.byte	0x7
	.uleb128 0x6
	.long	.LASF172
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF173
	.byte	0xc
	.byte	0x43
	.long	0x7ed
	.uleb128 0xe
	.long	.LASF174
	.byte	0xc
	.byte	0xc
	.byte	0x45
	.long	0x86c
	.uleb128 0x10
	.long	.LASF175
	.byte	0xc
	.byte	0x46
	.long	0x830
	.byte	0
	.uleb128 0x10
	.long	.LASF176
	.byte	0xc
	.byte	0x47
	.long	0x830
	.byte	0x4
	.uleb128 0x10
	.long	.LASF177
	.byte	0xc
	.byte	0x48
	.long	0x830
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF178
	.byte	0xc
	.byte	0x49
	.long	0x83b
	.uleb128 0xe
	.long	.LASF179
	.byte	0x3
	.byte	0xc
	.byte	0x4b
	.long	0x8a8
	.uleb128 0x10
	.long	.LASF180
	.byte	0xc
	.byte	0x4c
	.long	0x5b
	.byte	0
	.uleb128 0x10
	.long	.LASF181
	.byte	0xc
	.byte	0x4d
	.long	0x5b
	.byte	0x1
	.uleb128 0x10
	.long	.LASF182
	.byte	0xc
	.byte	0x4e
	.long	0x5b
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF183
	.byte	0xc
	.byte	0x4f
	.long	0x877
	.uleb128 0xe
	.long	.LASF184
	.byte	0xc
	.byte	0xc
	.byte	0x51
	.long	0x8d8
	.uleb128 0x10
	.long	.LASF185
	.byte	0xc
	.byte	0x52
	.long	0x7e2
	.byte	0
	.uleb128 0x10
	.long	.LASF186
	.byte	0xc
	.byte	0x53
	.long	0x7e2
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF187
	.byte	0xc
	.byte	0x54
	.long	0x8b3
	.uleb128 0xe
	.long	.LASF188
	.byte	0x4
	.byte	0xd
	.byte	0x25
	.long	0x914
	.uleb128 0x10
	.long	.LASF189
	.byte	0xd
	.byte	0x26
	.long	0x5b
	.byte	0
	.uleb128 0x10
	.long	.LASF190
	.byte	0xd
	.byte	0x27
	.long	0x5b
	.byte	0x1
	.uleb128 0x10
	.long	.LASF191
	.byte	0xd
	.byte	0x28
	.long	0x6d
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF192
	.byte	0xd
	.byte	0x29
	.long	0x8e3
	.uleb128 0xe
	.long	.LASF193
	.byte	0x4
	.byte	0xe
	.byte	0x2b
	.long	0x944
	.uleb128 0x10
	.long	.LASF159
	.byte	0xe
	.byte	0x2c
	.long	0x3b
	.byte	0
	.uleb128 0x10
	.long	.LASF160
	.byte	0xe
	.byte	0x2d
	.long	0x3b
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF194
	.byte	0xe
	.byte	0x2e
	.long	0x91f
	.uleb128 0x15
	.long	.LASF196
	.byte	0x4
	.byte	0xe
	.byte	0x30
	.long	0x972
	.uleb128 0xc
	.string	"raw"
	.byte	0xe
	.byte	0x31
	.long	0x972
	.uleb128 0x16
	.long	.LASF162
	.byte	0xe
	.byte	0x32
	.long	0x944
	.byte	0
	.uleb128 0x13
	.long	0x3b
	.long	0x982
	.uleb128 0x14
	.long	0x98
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF197
	.byte	0xe
	.byte	0x33
	.long	0x94f
	.uleb128 0xe
	.long	.LASF198
	.byte	0x2
	.byte	0xe
	.byte	0x35
	.long	0x9af
	.uleb128 0xf
	.string	"xy"
	.byte	0xe
	.byte	0x36
	.long	0x5b
	.byte	0
	.uleb128 0xf
	.string	"z"
	.byte	0xe
	.byte	0x37
	.long	0x5b
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF199
	.byte	0xe
	.byte	0x38
	.long	0x98d
	.uleb128 0xe
	.long	.LASF200
	.byte	0x10
	.byte	0xe
	.byte	0x3a
	.long	0xa03
	.uleb128 0x10
	.long	.LASF201
	.byte	0xe
	.byte	0x3b
	.long	0x982
	.byte	0
	.uleb128 0x10
	.long	.LASF202
	.byte	0xe
	.byte	0x3e
	.long	0x5b
	.byte	0x4
	.uleb128 0x10
	.long	.LASF203
	.byte	0xe
	.byte	0x3f
	.long	0xa6
	.byte	0x8
	.uleb128 0x10
	.long	.LASF204
	.byte	0xe
	.byte	0x40
	.long	0x9af
	.byte	0xc
	.uleb128 0x10
	.long	.LASF205
	.byte	0xe
	.byte	0x41
	.long	0x5b
	.byte	0xe
	.byte	0
	.uleb128 0x2
	.long	.LASF206
	.byte	0xe
	.byte	0x42
	.long	0x9ba
	.uleb128 0x5
	.byte	0x4
	.long	0x8a
	.byte	0xf
	.byte	0x19
	.long	0xa27
	.uleb128 0x6
	.long	.LASF207
	.byte	0
	.uleb128 0x6
	.long	.LASF208
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF209
	.byte	0xf
	.byte	0x1c
	.long	0xa0e
	.uleb128 0x5
	.byte	0x4
	.long	0x8a
	.byte	0xf
	.byte	0x20
	.long	0xa5d
	.uleb128 0x6
	.long	.LASF210
	.byte	0
	.uleb128 0x6
	.long	.LASF211
	.byte	0x1
	.uleb128 0x6
	.long	.LASF212
	.byte	0x2
	.uleb128 0x6
	.long	.LASF213
	.byte	0x3
	.uleb128 0x6
	.long	.LASF214
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF215
	.byte	0xf
	.byte	0x26
	.long	0xa32
	.uleb128 0x5
	.byte	0x4
	.long	0x8a
	.byte	0xf
	.byte	0x32
	.long	0xa81
	.uleb128 0x6
	.long	.LASF216
	.byte	0
	.uleb128 0x6
	.long	.LASF217
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF218
	.byte	0xf
	.byte	0x35
	.long	0xa68
	.uleb128 0x5
	.byte	0x4
	.long	0x8a
	.byte	0xf
	.byte	0x37
	.long	0xaa5
	.uleb128 0x6
	.long	.LASF219
	.byte	0
	.uleb128 0x6
	.long	.LASF220
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF221
	.byte	0xf
	.byte	0x3a
	.long	0xa8c
	.uleb128 0xe
	.long	.LASF222
	.byte	0x10
	.byte	0xf
	.byte	0x3e
	.long	0xaed
	.uleb128 0x10
	.long	.LASF223
	.byte	0xf
	.byte	0x3f
	.long	0xa27
	.byte	0
	.uleb128 0x10
	.long	.LASF224
	.byte	0xf
	.byte	0x40
	.long	0xa5d
	.byte	0x4
	.uleb128 0x10
	.long	.LASF225
	.byte	0xf
	.byte	0x41
	.long	0xa81
	.byte	0x8
	.uleb128 0x10
	.long	.LASF226
	.byte	0xf
	.byte	0x42
	.long	0xaa5
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF227
	.byte	0xf
	.byte	0x43
	.long	0xab0
	.uleb128 0xe
	.long	.LASF228
	.byte	0xc
	.byte	0x10
	.byte	0x14
	.long	0xb4d
	.uleb128 0x10
	.long	.LASF229
	.byte	0x10
	.byte	0x17
	.long	0x6d
	.byte	0
	.uleb128 0x10
	.long	.LASF230
	.byte	0x10
	.byte	0x18
	.long	0x6d
	.byte	0x2
	.uleb128 0x10
	.long	.LASF231
	.byte	0x10
	.byte	0x19
	.long	0x6d
	.byte	0x4
	.uleb128 0x10
	.long	.LASF232
	.byte	0x10
	.byte	0x1a
	.long	0x6d
	.byte	0x6
	.uleb128 0x10
	.long	.LASF233
	.byte	0x10
	.byte	0x1c
	.long	0x6d
	.byte	0x8
	.uleb128 0x10
	.long	.LASF234
	.byte	0x10
	.byte	0x1d
	.long	0x6d
	.byte	0xa
	.byte	0
	.uleb128 0x2
	.long	.LASF235
	.byte	0x10
	.byte	0x1e
	.long	0xaf8
	.uleb128 0x5
	.byte	0x4
	.long	0x8a
	.byte	0x11
	.byte	0x1c
	.long	0xba7
	.uleb128 0x6
	.long	.LASF236
	.byte	0
	.uleb128 0x6
	.long	.LASF237
	.byte	0x1
	.uleb128 0x6
	.long	.LASF238
	.byte	0x2
	.uleb128 0x6
	.long	.LASF239
	.byte	0x3
	.uleb128 0x6
	.long	.LASF240
	.byte	0x4
	.uleb128 0x6
	.long	.LASF241
	.byte	0x5
	.uleb128 0x6
	.long	.LASF242
	.byte	0x6
	.uleb128 0x6
	.long	.LASF243
	.byte	0x7
	.uleb128 0x6
	.long	.LASF244
	.byte	0x8
	.uleb128 0x6
	.long	.LASF245
	.byte	0x9
	.uleb128 0x6
	.long	.LASF246
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.long	.LASF247
	.byte	0x2a
	.byte	0x11
	.byte	0x3d
	.long	0xc29
	.uleb128 0xf
	.string	"P8"
	.byte	0x11
	.byte	0x3e
	.long	0xc29
	.byte	0
	.uleb128 0xf
	.string	"I8"
	.byte	0x11
	.byte	0x3f
	.long	0xc29
	.byte	0xa
	.uleb128 0xf
	.string	"D8"
	.byte	0x11
	.byte	0x40
	.long	0xc29
	.byte	0x14
	.uleb128 0x10
	.long	.LASF248
	.byte	0x11
	.byte	0x41
	.long	0x5b
	.byte	0x1e
	.uleb128 0x10
	.long	.LASF249
	.byte	0x11
	.byte	0x42
	.long	0x6d
	.byte	0x20
	.uleb128 0x10
	.long	.LASF250
	.byte	0x11
	.byte	0x43
	.long	0x6d
	.byte	0x22
	.uleb128 0x10
	.long	.LASF251
	.byte	0x11
	.byte	0x44
	.long	0x6d
	.byte	0x24
	.uleb128 0x10
	.long	.LASF252
	.byte	0x11
	.byte	0x45
	.long	0x5b
	.byte	0x26
	.uleb128 0x10
	.long	.LASF253
	.byte	0x11
	.byte	0x46
	.long	0x5b
	.byte	0x27
	.uleb128 0x10
	.long	.LASF254
	.byte	0x11
	.byte	0x47
	.long	0x5b
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	0x5b
	.long	0xc39
	.uleb128 0x14
	.long	0x98
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.long	.LASF255
	.byte	0x11
	.byte	0x48
	.long	0xba7
	.uleb128 0xe
	.long	.LASF256
	.byte	0xc
	.byte	0x12
	.byte	0x1d
	.long	0xca5
	.uleb128 0x10
	.long	.LASF257
	.byte	0x12
	.byte	0x1e
	.long	0x6d
	.byte	0
	.uleb128 0x10
	.long	.LASF258
	.byte	0x12
	.byte	0x1f
	.long	0x5b
	.byte	0x2
	.uleb128 0x10
	.long	.LASF259
	.byte	0x12
	.byte	0x20
	.long	0x5b
	.byte	0x3
	.uleb128 0x10
	.long	.LASF260
	.byte	0x12
	.byte	0x21
	.long	0x5b
	.byte	0x4
	.uleb128 0x10
	.long	.LASF261
	.byte	0x12
	.byte	0x22
	.long	0x6d
	.byte	0x6
	.uleb128 0x10
	.long	.LASF262
	.byte	0x12
	.byte	0x23
	.long	0x6d
	.byte	0x8
	.uleb128 0x10
	.long	.LASF263
	.byte	0x12
	.byte	0x24
	.long	0x6d
	.byte	0xa
	.byte	0
	.uleb128 0x2
	.long	.LASF264
	.byte	0x12
	.byte	0x25
	.long	0xc44
	.uleb128 0xe
	.long	.LASF265
	.byte	0x8
	.byte	0x13
	.byte	0x1e
	.long	0xd05
	.uleb128 0x10
	.long	.LASF266
	.byte	0x13
	.byte	0x1f
	.long	0x5b
	.byte	0
	.uleb128 0x10
	.long	.LASF267
	.byte	0x13
	.byte	0x20
	.long	0x5b
	.byte	0x1
	.uleb128 0x10
	.long	.LASF268
	.byte	0x13
	.byte	0x21
	.long	0x6d
	.byte	0x2
	.uleb128 0x10
	.long	.LASF269
	.byte	0x13
	.byte	0x22
	.long	0x5b
	.byte	0x4
	.uleb128 0x10
	.long	.LASF270
	.byte	0x13
	.byte	0x23
	.long	0x6d
	.byte	0x5
	.uleb128 0x10
	.long	.LASF271
	.byte	0x13
	.byte	0x24
	.long	0x5b
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.long	.LASF272
	.byte	0x13
	.byte	0x25
	.long	0xcb0
	.uleb128 0x17
	.long	.LASF317
	.byte	0x1
	.value	0x156
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xd3e
	.uleb128 0x18
	.long	.LASF131
	.byte	0x1
	.value	0x156
	.long	0xd3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x613
	.uleb128 0x19
	.long	.LASF275
	.byte	0x1
	.value	0x15b
	.long	0x3c1
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0xdb5
	.uleb128 0x18
	.long	.LASF131
	.byte	0x1
	.value	0x15b
	.long	0xd3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF126
	.byte	0x1
	.value	0x15b
	.long	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.long	.LASF273
	.byte	0x1
	.value	0x15d
	.long	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1a
	.long	.LASF274
	.byte	0x1
	.value	0x160
	.long	0xd3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF276
	.byte	0x1
	.value	0x16a
	.long	0x3c1
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0xde7
	.uleb128 0x18
	.long	.LASF126
	.byte	0x1
	.value	0x16a
	.long	0x5a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	0x6a7
	.long	0xdf7
	.uleb128 0x14
	.long	0x98
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.long	.LASF277
	.byte	0x1
	.byte	0x44
	.long	0xde7
	.uleb128 0x9
	.byte	0x3
	.quad	rcControlsConfig_Storage
	.uleb128 0x13
	.long	0x647
	.long	0xe1c
	.uleb128 0x14
	.long	0x98
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.long	.LASF278
	.byte	0x1
	.byte	0x45
	.long	0xe0c
	.uleb128 0x9
	.byte	0x3
	.quad	modeActivationProfile_Storage
	.uleb128 0x1c
	.long	.LASF279
	.byte	0x1
	.byte	0x48
	.long	0x3c1
	.uleb128 0x9
	.byte	0x3
	.quad	isUsingSticksToArm
	.uleb128 0x1c
	.long	.LASF280
	.byte	0x1
	.byte	0x4e
	.long	0x7f
	.uleb128 0x9
	.byte	0x3
	.quad	rcModeActivationMask
	.uleb128 0x1d
	.long	.LASF281
	.byte	0x14
	.byte	0xca
	.long	0x7f
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_0
	.uleb128 0x1d
	.long	.LASF282
	.byte	0x14
	.byte	0xcb
	.long	0x7f
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_1
	.uleb128 0x1d
	.long	.LASF283
	.byte	0x14
	.byte	0xcc
	.long	0x7f
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_2
	.uleb128 0x1d
	.long	.LASF284
	.byte	0x4
	.byte	0x43
	.long	0xeaf
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_start
	.uleb128 0xd
	.byte	0x8
	.long	0x1c8
	.uleb128 0x1d
	.long	.LASF285
	.byte	0x4
	.byte	0x44
	.long	0xeaf
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_end
	.uleb128 0x1d
	.long	.LASF286
	.byte	0x4
	.byte	0x47
	.long	0x1bc
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_start
	.uleb128 0x1d
	.long	.LASF287
	.byte	0x4
	.byte	0x48
	.long	0x1bc
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_end
	.uleb128 0x1d
	.long	.LASF288
	.byte	0x5
	.byte	0x18
	.long	0xf09
	.uleb128 0x9
	.byte	0x3
	.quad	featureConfig
	.uleb128 0xd
	.byte	0x8
	.long	0x1ec
	.uleb128 0x1d
	.long	.LASF289
	.byte	0x6
	.byte	0x1a
	.long	0x210
	.uleb128 0x9
	.byte	0x3
	.quad	profileSelection_System
	.uleb128 0x1e
	.string	"imu"
	.byte	0x15
	.byte	0x38
	.long	0xf39
	.uleb128 0x9
	.byte	0x3
	.quad	imu
	.uleb128 0xd
	.byte	0x8
	.long	0x3b6
	.uleb128 0x1d
	.long	.LASF290
	.byte	0x9
	.byte	0x80
	.long	0x4e1
	.uleb128 0x9
	.byte	0x3
	.quad	rxConfig_System
	.uleb128 0x13
	.long	0x3ed
	.long	0xf64
	.uleb128 0x14
	.long	0x98
	.byte	0x11
	.byte	0
	.uleb128 0x1f
	.long	.LASF291
	.byte	0x9
	.byte	0x82
	.long	0xf54
	.uleb128 0x13
	.long	0x41d
	.long	0xf7f
	.uleb128 0x14
	.long	0x98
	.byte	0x3
	.byte	0
	.uleb128 0x1f
	.long	.LASF292
	.byte	0x9
	.byte	0x83
	.long	0xf6f
	.uleb128 0x1d
	.long	.LASF293
	.byte	0x1
	.byte	0x45
	.long	0xf9f
	.uleb128 0x9
	.byte	0x3
	.quad	modeActivationProfile_ProfileCurrent
	.uleb128 0xd
	.byte	0x8
	.long	0x647
	.uleb128 0x13
	.long	0x3b
	.long	0xfb5
	.uleb128 0x14
	.long	0x98
	.byte	0x3
	.byte	0
	.uleb128 0x1d
	.long	.LASF294
	.byte	0x1
	.byte	0x4a
	.long	0xfa5
	.uleb128 0x9
	.byte	0x3
	.quad	rcCommand
	.uleb128 0x1d
	.long	.LASF295
	.byte	0x1
	.byte	0x44
	.long	0xfdf
	.uleb128 0x9
	.byte	0x3
	.quad	rcControlsConfig_ProfileCurrent
	.uleb128 0xd
	.byte	0x8
	.long	0x6a7
	.uleb128 0x1d
	.long	.LASF296
	.byte	0x1
	.byte	0x42
	.long	0x6ef
	.uleb128 0x9
	.byte	0x3
	.quad	armingConfig_System
	.uleb128 0x1d
	.long	.LASF297
	.byte	0xb
	.byte	0x1c
	.long	0x743
	.uleb128 0x9
	.byte	0x3
	.quad	batteryConfig_System
	.uleb128 0x1d
	.long	.LASF298
	.byte	0xc
	.byte	0x56
	.long	0x8a8
	.uleb128 0x9
	.byte	0x3
	.quad	sensorSelectionConfig_System
	.uleb128 0x1d
	.long	.LASF299
	.byte	0xc
	.byte	0x57
	.long	0x86c
	.uleb128 0x9
	.byte	0x3
	.quad	sensorAlignmentConfig_System
	.uleb128 0x1d
	.long	.LASF300
	.byte	0xc
	.byte	0x58
	.long	0x8d8
	.uleb128 0x9
	.byte	0x3
	.quad	sensorTrims_System
	.uleb128 0x1d
	.long	.LASF301
	.byte	0xd
	.byte	0x2b
	.long	0x1063
	.uleb128 0x9
	.byte	0x3
	.quad	gyroConfig
	.uleb128 0xd
	.byte	0x8
	.long	0x914
	.uleb128 0x1d
	.long	.LASF302
	.byte	0xe
	.byte	0x45
	.long	0x107e
	.uleb128 0x9
	.byte	0x3
	.quad	accelerometerConfig
	.uleb128 0xd
	.byte	0x8
	.long	0xa03
	.uleb128 0x1d
	.long	.LASF303
	.byte	0xf
	.byte	0x45
	.long	0xaed
	.uleb128 0x9
	.byte	0x3
	.quad	gpsConfig_System
	.uleb128 0x1d
	.long	.LASF304
	.byte	0x10
	.byte	0x20
	.long	0xb4d
	.uleb128 0x9
	.byte	0x3
	.quad	motorAndServoConfig_System
	.uleb128 0x1f
	.long	.LASF305
	.byte	0x11
	.byte	0x4a
	.long	0x10b9
	.uleb128 0xd
	.byte	0x8
	.long	0xc39
	.uleb128 0x1f
	.long	.LASF306
	.byte	0x12
	.byte	0x27
	.long	0x10ca
	.uleb128 0xd
	.byte	0x8
	.long	0xca5
	.uleb128 0x1d
	.long	.LASF307
	.byte	0x13
	.byte	0x49
	.long	0xd05
	.uleb128 0x9
	.byte	0x3
	.quad	failsafeConfig_System
	.uleb128 0x1d
	.long	.LASF308
	.byte	0x1
	.byte	0x59
	.long	0x10fa
	.uleb128 0x9
	.byte	0x3
	.quad	pgResetTemplate_armingConfig
	.uleb128 0x20
	.long	0x6ef
	.uleb128 0x1d
	.long	.LASF309
	.byte	0x1
	.byte	0x42
	.long	0x1114
	.uleb128 0x9
	.byte	0x3
	.quad	armingConfig_Registry
	.uleb128 0x20
	.long	0x1c8
	.uleb128 0x1d
	.long	.LASF310
	.byte	0x1
	.byte	0x50
	.long	0x112e
	.uleb128 0x9
	.byte	0x3
	.quad	pgResetTemplate_rcControlsConfig
	.uleb128 0x20
	.long	0x6a7
	.uleb128 0x1d
	.long	.LASF311
	.byte	0x1
	.byte	0x44
	.long	0x1114
	.uleb128 0x9
	.byte	0x3
	.quad	rcControlsConfig_Registry
	.uleb128 0x1d
	.long	.LASF312
	.byte	0x1
	.byte	0x45
	.long	0x1114
	.uleb128 0x9
	.byte	0x3
	.quad	modeActivationProfile_Registry
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x4c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LFB24
	.quad	.LFE24
	.quad	.LFB25
	.quad	.LFE25
	.quad	.LFB26
	.quad	.LFE26
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF119:
	.string	"CHECKBOX_ITEM_COUNT"
.LASF215:
	.string	"sbasMode_e"
.LASF68:
	.string	"LSM9DS0_t"
.LASF28:
	.string	"PGR_SIZE_PROFILE_FLAG"
.LASF219:
	.string	"GPS_AUTOBAUD_OFF"
.LASF287:
	.string	"__pg_resetdata_end"
.LASF98:
	.string	"BOXCAMSTAB"
.LASF60:
	.string	"temperature"
.LASF74:
	.string	"rxChannelRangeConfiguration_s"
.LASF78:
	.string	"serialrx_provider"
.LASF27:
	.string	"PGR_SIZE_SYSTEM_FLAG"
.LASF48:
	.string	"accel_scale"
.LASF313:
	.string	"GNU C99 5.4.1 20160904 -mtune=generic -march=x86-64 -g -std=gnu99 -ffunction-sections -fdata-sections -ffat-lto-objects -fstack-protector-strong"
.LASF93:
	.string	"BOXHORIZON"
.LASF82:
	.string	"rssi_scale"
.LASF181:
	.string	"mag_hardware"
.LASF210:
	.string	"SBAS_AUTO"
.LASF242:
	.string	"PIDNAVR"
.LASF205:
	.string	"acc_unarmedcal"
.LASF108:
	.string	"BOXGOV"
.LASF290:
	.string	"rxConfig_System"
.LASF247:
	.string	"pidProfile_s"
.LASF255:
	.string	"pidProfile_t"
.LASF204:
	.string	"accDeadband"
.LASF160:
	.string	"pitch"
.LASF79:
	.string	"sbus_inversion"
.LASF220:
	.string	"GPS_AUTOBAUD_ON"
.LASF63:
	.string	"aScale"
.LASF163:
	.string	"flightDynamicsTrims_t"
.LASF195:
	.string	"flightDynamicsTrims_u"
.LASF3:
	.string	"short int"
.LASF302:
	.string	"accelerometerConfig"
.LASF135:
	.string	"yaw_deadband"
.LASF26:
	.string	"PGR_SIZE_MASK"
.LASF208:
	.string	"GPS_UBLOX"
.LASF127:
	.string	"auxChannelIndex"
.LASF207:
	.string	"GPS_NMEA"
.LASF71:
	.string	"mode"
.LASF295:
	.string	"rcControlsConfig_ProfileCurrent"
.LASF261:
	.string	"nav_speed_min"
.LASF57:
	.string	"M_SCALE_8GS"
.LASF123:
	.string	"endStep"
.LASF117:
	.string	"BOXFAILSAFE"
.LASF268:
	.string	"failsafe_throttle"
.LASF184:
	.string	"sensorTrims_s"
.LASF187:
	.string	"sensorTrims_t"
.LASF175:
	.string	"gyro_align"
.LASF81:
	.string	"rssi_channel"
.LASF167:
	.string	"CW180_DEG"
.LASF292:
	.string	"channelRanges_SystemArray"
.LASF121:
	.string	"channelRange_s"
.LASF124:
	.string	"channelRange_t"
.LASF49:
	.string	"A_SCALE_2G"
.LASF282:
	.string	"U_ID_1"
.LASF283:
	.string	"U_ID_2"
.LASF58:
	.string	"M_SCALE_12GS"
.LASF200:
	.string	"accelerometerConfig_s"
.LASF206:
	.string	"accelerometerConfig_t"
.LASF256:
	.string	"gpsProfile_s"
.LASF264:
	.string	"gpsProfile_t"
.LASF9:
	.string	"uint32_t"
.LASF0:
	.string	"int8_t"
.LASF197:
	.string	"rollAndPitchTrims_t"
.LASF54:
	.string	"mag_scale"
.LASF266:
	.string	"failsafe_delay"
.LASF298:
	.string	"sensorSelectionConfig_System"
.LASF165:
	.string	"CW0_DEG"
.LASF145:
	.string	"max_arm_angle"
.LASF24:
	.string	"PGR_PGN_MASK"
.LASF45:
	.string	"G_SCALE_500DPS"
.LASF232:
	.string	"servoCenterPulse"
.LASF273:
	.string	"index"
.LASF96:
	.string	"BOXHEADFREE"
.LASF1:
	.string	"int16_t"
.LASF67:
	.string	"mRes"
.LASF300:
	.string	"sensorTrims_System"
.LASF157:
	.string	"SENSOR_INDEX_MAG"
.LASF25:
	.string	"PGR_PGN_VERSION_MASK"
.LASF41:
	.string	"long long unsigned int"
.LASF16:
	.string	"FD_ROLL"
.LASF19:
	.string	"FD_INDEX_COUNT"
.LASF88:
	.string	"rx_min_usec"
.LASF202:
	.string	"acc_cut_hz"
.LASF65:
	.string	"gRes"
.LASF311:
	.string	"rcControlsConfig_Registry"
.LASF259:
	.string	"nav_slew_rate"
.LASF172:
	.string	"CW270_DEG_FLIP"
.LASF236:
	.string	"PIDROLL"
.LASF234:
	.string	"servo_pwm_rate"
.LASF86:
	.string	"mincheck"
.LASF251:
	.string	"yaw_lpf"
.LASF142:
	.string	"retarded_arm"
.LASF305:
	.string	"pidProfile_ProfileCurrent"
.LASF143:
	.string	"disarm_kill_switch"
.LASF50:
	.string	"A_SCALE_4G"
.LASF148:
	.string	"vbatmaxcellvoltage"
.LASF125:
	.string	"modeActivationCondition_s"
.LASF129:
	.string	"modeActivationCondition_t"
.LASF312:
	.string	"modeActivationProfile_Registry"
.LASF23:
	.string	"pgn_t"
.LASF257:
	.string	"gps_wp_radius"
.LASF250:
	.string	"dterm_lpf"
.LASF188:
	.string	"gyroConfig_s"
.LASF192:
	.string	"gyroConfig_t"
.LASF92:
	.string	"BOXANGLE"
.LASF221:
	.string	"gpsAutoBaud_e"
.LASF15:
	.string	"double"
.LASF103:
	.string	"BOXBEEPERON"
.LASF17:
	.string	"FD_PITCH"
.LASF69:
	.string	"_Bool"
.LASF199:
	.string	"accDeadband_t"
.LASF217:
	.string	"GPS_AUTOCONFIG_ON"
.LASF33:
	.string	"pgRegistry_t"
.LASF309:
	.string	"armingConfig_Registry"
.LASF70:
	.string	"rxFailsafeChannelConfiguration_s"
.LASF64:
	.string	"mScale"
.LASF156:
	.string	"SENSOR_INDEX_BARO"
.LASF53:
	.string	"A_SCALE_16G"
.LASF274:
	.string	"modeActivationCondition"
.LASF277:
	.string	"rcControlsConfig_Storage"
.LASF291:
	.string	"failsafeChannelConfigs_SystemArray"
.LASF11:
	.string	"long unsigned int"
.LASF105:
	.string	"BOXLEDLOW"
.LASF238:
	.string	"PIDYAW"
.LASF111:
	.string	"BOXGTUNE"
.LASF271:
	.string	"failsafe_procedure"
.LASF21:
	.string	"AI_PITCH"
.LASF97:
	.string	"BOXHEADADJ"
.LASF316:
	.string	"_i2c"
.LASF297:
	.string	"batteryConfig_System"
.LASF170:
	.string	"CW90_DEG_FLIP"
.LASF203:
	.string	"accz_lpf_cutoff"
.LASF133:
	.string	"rcControlsConfig_s"
.LASF237:
	.string	"PIDPITCH"
.LASF13:
	.string	"char"
.LASF231:
	.string	"mincommand"
.LASF269:
	.string	"failsafe_kill_switch"
.LASF275:
	.string	"rcModeIsActivationConditionPresent"
.LASF306:
	.string	"gpsProfile_ProfileCurrent"
.LASF243:
	.string	"PIDLEVEL"
.LASF39:
	.string	"current_profile_index"
.LASF51:
	.string	"A_SCALE_6G"
.LASF245:
	.string	"PIDVEL"
.LASF301:
	.string	"gyroConfig"
.LASF159:
	.string	"roll"
.LASF5:
	.string	"uint8_t"
.LASF284:
	.string	"__pg_registry_start"
.LASF244:
	.string	"PIDMAG"
.LASF270:
	.string	"failsafe_throttle_low_delay"
.LASF131:
	.string	"modeActivationConditions"
.LASF122:
	.string	"startStep"
.LASF43:
	.string	"mraa_i2c_context"
.LASF20:
	.string	"AI_ROLL"
.LASF77:
	.string	"rcmap"
.LASF22:
	.string	"ANGLE_INDEX_COUNT"
.LASF116:
	.string	"BOXBLACKBOX"
.LASF42:
	.string	"long long int"
.LASF161:
	.string	"flightDynamicsTrims_def_t"
.LASF212:
	.string	"SBAS_WAAS"
.LASF134:
	.string	"deadband"
.LASF109:
	.string	"BOXOSD"
.LASF180:
	.string	"acc_hardware"
.LASF246:
	.string	"PID_ITEM_COUNT"
.LASF310:
	.string	"pgResetTemplate_rcControlsConfig"
.LASF140:
	.string	"rcControlsConfig_t"
.LASF177:
	.string	"mag_align"
.LASF253:
	.string	"horizon_tilt_effect"
.LASF144:
	.string	"auto_disarm_delay"
.LASF95:
	.string	"BOXMAG"
.LASF179:
	.string	"sensorSelectionConfig_s"
.LASF183:
	.string	"sensorSelectionConfig_t"
.LASF214:
	.string	"SBAS_GAGAN"
.LASF84:
	.string	"rcSmoothing"
.LASF72:
	.string	"step"
.LASF30:
	.string	"size"
.LASF191:
	.string	"soft_gyro_lpf_hz"
.LASF128:
	.string	"range"
.LASF56:
	.string	"M_SCALE_4GS"
.LASF166:
	.string	"CW90_DEG"
.LASF315:
	.string	"/home/aravind/git/cleanflight"
.LASF52:
	.string	"A_SCALE_8G"
.LASF37:
	.string	"featureConfig_t"
.LASF61:
	.string	"gyro"
.LASF225:
	.string	"autoConfig"
.LASF239:
	.string	"PIDALT"
.LASF224:
	.string	"sbasMode"
.LASF162:
	.string	"values"
.LASF185:
	.string	"accZero"
.LASF102:
	.string	"BOXPASSTHRU"
.LASF35:
	.string	"featureConfig_s"
.LASF222:
	.string	"gpsConfig_s"
.LASF227:
	.string	"gpsConfig_t"
.LASF285:
	.string	"__pg_registry_end"
.LASF241:
	.string	"PIDPOSR"
.LASF59:
	.string	"LSM9DS0"
.LASF155:
	.string	"SENSOR_INDEX_ACC"
.LASF120:
	.string	"boxId_e"
.LASF228:
	.string	"motorAndServoConfig_s"
.LASF235:
	.string	"motorAndServoConfig_t"
.LASF8:
	.string	"short unsigned int"
.LASF286:
	.string	"__pg_resetdata_start"
.LASF7:
	.string	"uint16_t"
.LASF18:
	.string	"FD_YAW"
.LASF262:
	.string	"nav_speed_max"
.LASF136:
	.string	"alt_hold_deadband"
.LASF101:
	.string	"BOXGPSHOLD"
.LASF113:
	.string	"BOXSERVO1"
.LASF114:
	.string	"BOXSERVO2"
.LASF115:
	.string	"BOXSERVO3"
.LASF267:
	.string	"failsafe_off_delay"
.LASF75:
	.string	"rxChannelRangeConfiguration_t"
.LASF149:
	.string	"vbatmincellvoltage"
.LASF12:
	.string	"sizetype"
.LASF130:
	.string	"modeActivationProfile_s"
.LASF132:
	.string	"modeActivationProfile_t"
.LASF139:
	.string	"deadband3d_throttle"
.LASF254:
	.string	"horizon_tilt_mode"
.LASF151:
	.string	"batteryCapacity"
.LASF252:
	.string	"deltaMethod"
.LASF110:
	.string	"BOXTELEMETRY"
.LASF186:
	.string	"magZero"
.LASF4:
	.string	"long int"
.LASF258:
	.string	"gps_lpf"
.LASF83:
	.string	"rssi_ppm_invert"
.LASF106:
	.string	"BOXLLIGHTS"
.LASF141:
	.string	"armingConfig_s"
.LASF146:
	.string	"armingConfig_t"
.LASF249:
	.string	"yaw_p_limit"
.LASF299:
	.string	"sensorAlignmentConfig_System"
.LASF112:
	.string	"BOXSONAR"
.LASF317:
	.string	"useRcControlsConfig"
.LASF189:
	.string	"gyroMovementCalibrationThreshold"
.LASF137:
	.string	"alt_hold_fast_change"
.LASF118:
	.string	"BOXAIRMODE"
.LASF100:
	.string	"BOXGPSHOME"
.LASF99:
	.string	"BOXCAMTRIG"
.LASF276:
	.string	"rcModeIsActive"
.LASF223:
	.string	"provider"
.LASF168:
	.string	"CW270_DEG"
.LASF240:
	.string	"PIDPOS"
.LASF147:
	.string	"batteryConfig_s"
.LASF153:
	.string	"batteryConfig_t"
.LASF218:
	.string	"gpsAutoConfig_e"
.LASF201:
	.string	"accelerometerTrims"
.LASF62:
	.string	"gScale"
.LASF32:
	.string	"reset"
.LASF171:
	.string	"CW180_DEG_FLIP"
.LASF173:
	.string	"sensor_align_e"
.LASF94:
	.string	"BOXBARO"
.LASF76:
	.string	"rxConfig_s"
.LASF90:
	.string	"rxConfig_t"
.LASF190:
	.string	"gyro_lpf"
.LASF154:
	.string	"SENSOR_INDEX_GYRO"
.LASF226:
	.string	"autoBaud"
.LASF176:
	.string	"acc_align"
.LASF55:
	.string	"M_SCALE_2GS"
.LASF85:
	.string	"midrc"
.LASF279:
	.string	"isUsingSticksToArm"
.LASF296:
	.string	"armingConfig_System"
.LASF248:
	.string	"pidController"
.LASF31:
	.string	"address"
.LASF169:
	.string	"CW0_DEG_FLIP"
.LASF66:
	.string	"aRes"
.LASF289:
	.string	"profileSelection_System"
.LASF14:
	.string	"float"
.LASF89:
	.string	"rx_max_usec"
.LASF158:
	.string	"int16_flightDynamicsTrims_s"
.LASF308:
	.string	"pgResetTemplate_armingConfig"
.LASF10:
	.string	"unsigned int"
.LASF303:
	.string	"gpsConfig_System"
.LASF138:
	.string	"yaw_control_direction"
.LASF6:
	.string	"unsigned char"
.LASF265:
	.string	"failsafeConfig_s"
.LASF272:
	.string	"failsafeConfig_t"
.LASF304:
	.string	"motorAndServoConfig_System"
.LASF216:
	.string	"GPS_AUTOCONFIG_OFF"
.LASF47:
	.string	"gyro_scale"
.LASF263:
	.string	"ap_mode"
.LASF104:
	.string	"BOXLEDMAX"
.LASF152:
	.string	"amperageMeterSource"
.LASF36:
	.string	"enabledFeatures"
.LASF281:
	.string	"U_ID_0"
.LASF233:
	.string	"motor_pwm_rate"
.LASF278:
	.string	"modeActivationProfile_Storage"
.LASF73:
	.string	"rxFailsafeChannelConfig_t"
.LASF280:
	.string	"rcModeActivationMask"
.LASF91:
	.string	"BOXARM"
.LASF194:
	.string	"rollAndPitchTrims_t_def"
.LASF230:
	.string	"maxthrottle"
.LASF44:
	.string	"G_SCALE_245DPS"
.LASF2:
	.string	"signed char"
.LASF107:
	.string	"BOXCALIB"
.LASF314:
	.string	"src/main/fc/rc_controls.c"
.LASF293:
	.string	"modeActivationProfile_ProfileCurrent"
.LASF193:
	.string	"rollAndPitchTrims_s"
.LASF211:
	.string	"SBAS_EGNOS"
.LASF196:
	.string	"rollAndPitchTrims_u"
.LASF288:
	.string	"featureConfig"
.LASF46:
	.string	"G_SCALE_2000DPS"
.LASF38:
	.string	"profileSelection_s"
.LASF40:
	.string	"profileSelection_t"
.LASF87:
	.string	"maxcheck"
.LASF150:
	.string	"vbatwarningcellvoltage"
.LASF174:
	.string	"sensorAlignmentConfig_s"
.LASF178:
	.string	"sensorAlignmentConfig_t"
.LASF229:
	.string	"minthrottle"
.LASF213:
	.string	"SBAS_MSAS"
.LASF164:
	.string	"ALIGN_DEFAULT"
.LASF209:
	.string	"gpsProvider_e"
.LASF294:
	.string	"rcCommand"
.LASF198:
	.string	"accDeadband_s"
.LASF260:
	.string	"nav_controls_heading"
.LASF80:
	.string	"spektrum_sat_bind"
.LASF29:
	.string	"pgResetFunc"
.LASF126:
	.string	"modeId"
.LASF307:
	.string	"failsafeConfig_System"
.LASF34:
	.string	"pgRegistry_s"
.LASF182:
	.string	"baro_hardware"
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
