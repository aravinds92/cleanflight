	.file	"config.c"
# GNU C99 (Ubuntu 5.4.1-2ubuntu1~16.04) version 5.4.1 20160904 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.1 20160904, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed config.i -mtune=generic -march=x86-64 -g
# -std=gnu99 -ffunction-sections -fdata-sections -fverbose-asm
# -ffat-lto-objects -fstack-protector-strong -Wformat -Wformat-security
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
	.comm	systemConfig_System,2,1
	.comm	imu,8,8
	.comm	rxConfig_System,26,16
	.comm	armingConfig_System,4,1
	.comm	serialConfig_System,28,16
	.comm	sensorSelectionConfig_System,3,1
	.comm	sensorAlignmentConfig_System,12,8
	.comm	sensorTrims_System,12,8
	.section	.text.sensorTrims,"ax",@progbits
	.type	sensorTrims, @function
sensorTrims:
.LFB25:
	.file 1 "./src/main/sensors/sensors.h"
	.loc 1 88 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 88 0
	movl	$sensorTrims_System, %eax	#, D.6503
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	sensorTrims, .-sensorTrims
	.comm	accelerometerConfig,8,8
	.comm	telemetryConfig_System,3,1
	.comm	mixerConfig_System,6,2
	.comm	motor3DConfig_System,6,2
	.comm	inputSource_e,4,4
	.comm	imuConfig,8,8
	.comm	throttleCorrectionConfig,8,8
	.comm	failsafeConfig_System,8,8
	.comm	batteryConfig_System,8,8
	.comm	motorAndServoConfig_System,12,8
	.section	.text.activateConfig,"ax",@progbits
	.globl	activateConfig
	.type	activateConfig, @function
activateConfig:
.LFB40:
	.file 2 "src/main/fc/config.c"
	.loc 2 327 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 2 330 0
	call	resetAdjustmentStates	#
	.loc 2 341 0
	call	sensorTrims	#
	movq	%rax, %rdi	# D.6505,
	call	setAccelerationTrims	#
	.loc 2 348 0
	movq	imuConfig(%rip), %rax	# imuConfig, D.6506
	movw	$100, 6(%rax)	#, _7->dcm_ki
	.loc 2 349 0
	movq	imuConfig(%rip), %rax	# imuConfig, D.6506
	movw	$10000, 4(%rax)	#, _9->dcm_kp
	.loc 2 355 0
	movq	imuConfig(%rip), %rax	# imuConfig, D.6506
	movzwl	4(%rax), %eax	# _11->dcm_kp, D.6507
	movzwl	%ax, %eax	# D.6507, D.6508
	pxor	%xmm0, %xmm0	# D.6509
	cvtsi2ss	%eax, %xmm0	# D.6508, D.6509
	movss	.LC0(%rip), %xmm1	#, tmp114
	divss	%xmm1, %xmm0	# tmp114, D.6509
	movss	%xmm0, imuRuntimeConfig.6470+8(%rip)	# D.6509, imuRuntimeConfig.dcm_kp
	.loc 2 356 0
	movq	imuConfig(%rip), %rax	# imuConfig, D.6506
	movzwl	6(%rax), %eax	# _17->dcm_ki, D.6507
	movzwl	%ax, %eax	# D.6507, D.6508
	pxor	%xmm0, %xmm0	# D.6509
	cvtsi2ss	%eax, %xmm0	# D.6508, D.6509
	movss	.LC0(%rip), %xmm1	#, tmp115
	divss	%xmm1, %xmm0	# tmp115, D.6509
	movss	%xmm0, imuRuntimeConfig.6470+4(%rip)	# D.6509, imuRuntimeConfig.dcm_ki
	.loc 2 357 0
	movq	accelerometerConfig(%rip), %rax	# accelerometerConfig, D.6510
	movzbl	4(%rax), %eax	# _23->acc_cut_hz, D.6511
	movb	%al, imuRuntimeConfig.6470(%rip)	# D.6511, imuRuntimeConfig.acc_cut_hz
	.loc 2 358 0
	movq	accelerometerConfig(%rip), %rax	# accelerometerConfig, D.6510
	movzbl	14(%rax), %eax	# _26->acc_unarmedcal, D.6511
	movb	%al, imuRuntimeConfig.6470+1(%rip)	# D.6511, imuRuntimeConfig.acc_unarmedcal
	.loc 2 359 0
	movq	imuConfig(%rip), %rax	# imuConfig, D.6506
	movzbl	8(%rax), %eax	# _29->small_angle, D.6511
	movb	%al, imuRuntimeConfig.6470+12(%rip)	# D.6511, imuRuntimeConfig.small_angle
	.loc 2 365 0
	movq	throttleCorrectionConfig(%rip), %rax	# throttleCorrectionConfig, D.6512
	movzwl	(%rax), %eax	# _32->throttle_correction_angle, D.6507
	.loc 2 361 0
	movzwl	%ax, %edx	# D.6507, D.6508
	.loc 2 364 0
	movq	accelerometerConfig(%rip), %rax	# accelerometerConfig, D.6510
	.loc 2 361 0
	movl	8(%rax), %eax	# _35->accz_lpf_cutoff, D.6509
	.loc 2 363 0
	movq	accelerometerConfig(%rip), %rcx	# accelerometerConfig, D.6510
	.loc 2 361 0
	addq	$12, %rcx	#, D.6513
	movl	%eax, -4(%rbp)	# D.6509, %sfp
	movss	-4(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rsi	# D.6513,
	movl	$imuRuntimeConfig.6470, %edi	#,
	call	imuConfigure	#
	.loc 2 367 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	activateConfig, .-activateConfig
	.section	.bss.imuRuntimeConfig.6470,"aw",@nobits
	.align 16
	.type	imuRuntimeConfig.6470, @object
	.size	imuRuntimeConfig.6470, 16
imuRuntimeConfig.6470:
	.zero	16
	.section	.rodata
	.align 4
.LC0:
	.long	1176256512
	.text
.Letext0:
	.file 3 "/usr/include/stdint.h"
	.file 4 "./src/main/common/axis.h"
	.file 5 "./src/main/config/parameter_group.h"
	.file 6 "./src/main/config/feature.h"
	.file 7 "./src/main/config/profile.h"
	.file 8 "./src/main/config/config_system.h"
	.file 9 "/usr/include/mraa/i2c.h"
	.file 10 "./src/main/drivers/SFE_LSM9DS0.h"
	.file 11 "./src/main/fc/rate_profile.h"
	.file 12 "./src/main/rx/rx.h"
	.file 13 "./src/main/fc/rc_controls.h"
	.file 14 "./src/main/fc/rc_adjustments.h"
	.file 15 "./src/main/io/io_serial.h"
	.file 16 "./src/main/sensors/voltage.h"
	.file 17 "./src/main/sensors/compass.h"
	.file 18 "./src/main/sensors/acceleration.h"
	.file 19 "./src/main/telemetry/telemetry.h"
	.file 20 "./src/main/flight/mixer.h"
	.file 21 "./src/main/flight/servos.h"
	.file 22 "./src/main/flight/imu.h"
	.file 23 "./src/main/flight/failsafe.h"
	.file 24 "./src/main/flight/pid.h"
	.file 25 "./src/main/flight/navigation.h"
	.file 26 "./src/main/sensors/battery.h"
	.file 27 "./src/main/io/motor_and_servo.h"
	.file 28 "./src/main/target/edison/target.h"
	.file 29 "./src/main/drivers/system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x15a9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF399
	.byte	0xc
	.long	.LASF400
	.long	.LASF401
	.long	.Ldebug_ranges0+0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x3
	.byte	0x24
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x3
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
	.byte	0x3
	.byte	0x30
	.long	0x66
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
	.byte	0x31
	.long	0x78
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
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
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x4
	.long	0x8a
	.byte	0x4
	.byte	0x1d
	.long	0xcd
	.uleb128 0x7
	.long	.LASF14
	.byte	0
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.uleb128 0x7
	.long	.LASF16
	.byte	0x2
	.uleb128 0x7
	.long	.LASF17
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x8a
	.byte	0x4
	.byte	0x25
	.long	0xec
	.uleb128 0x7
	.long	.LASF18
	.byte	0
	.uleb128 0x7
	.long	.LASF19
	.byte	0x1
	.uleb128 0x7
	.long	.LASF20
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF21
	.uleb128 0x2
	.long	.LASF22
	.byte	0x5
	.byte	0x15
	.long	0x6d
	.uleb128 0x2
	.long	.LASF23
	.byte	0x5
	.byte	0x26
	.long	0x109
	.uleb128 0x8
	.long	0x119
	.uleb128 0x9
	.long	0xa6
	.uleb128 0x9
	.long	0x4d
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0x2d
	.long	0x137
	.uleb128 0xb
	.string	"ptr"
	.byte	0x5
	.byte	0x2e
	.long	0xa6
	.uleb128 0xb
	.string	"fn"
	.byte	0x5
	.byte	0x2f
	.long	0x137
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0xfe
	.uleb128 0xd
	.long	.LASF28
	.byte	0x20
	.byte	0x5
	.byte	0x28
	.long	0x186
	.uleb128 0xe
	.string	"pgn"
	.byte	0x5
	.byte	0x29
	.long	0xf3
	.byte	0
	.uleb128 0xf
	.long	.LASF24
	.byte	0x5
	.byte	0x2a
	.long	0x6d
	.byte	0x2
	.uleb128 0xf
	.long	.LASF25
	.byte	0x5
	.byte	0x2b
	.long	0x186
	.byte	0x8
	.uleb128 0xe
	.string	"ptr"
	.byte	0x5
	.byte	0x2c
	.long	0x18c
	.byte	0x10
	.uleb128 0xf
	.long	.LASF26
	.byte	0x5
	.byte	0x30
	.long	0x119
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0x5b
	.uleb128 0xc
	.byte	0x8
	.long	0x186
	.uleb128 0x2
	.long	.LASF27
	.byte	0x5
	.byte	0x31
	.long	0x13d
	.uleb128 0xd
	.long	.LASF29
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.long	0x1b6
	.uleb128 0xf
	.long	.LASF30
	.byte	0x6
	.byte	0x15
	.long	0x7f
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF31
	.byte	0x6
	.byte	0x16
	.long	0x19d
	.uleb128 0xd
	.long	.LASF32
	.byte	0x1
	.byte	0x7
	.byte	0x16
	.long	0x1da
	.uleb128 0xf
	.long	.LASF33
	.byte	0x7
	.byte	0x17
	.long	0x5b
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF34
	.byte	0x7
	.byte	0x18
	.long	0x1c1
	.uleb128 0xd
	.long	.LASF35
	.byte	0x2
	.byte	0x8
	.byte	0x14
	.long	0x20a
	.uleb128 0xf
	.long	.LASF36
	.byte	0x8
	.byte	0x15
	.long	0x5b
	.byte	0
	.uleb128 0xf
	.long	.LASF37
	.byte	0x8
	.byte	0x16
	.long	0x5b
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF38
	.byte	0x8
	.byte	0x17
	.long	0x1e5
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF39
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF40
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF41
	.uleb128 0x2
	.long	.LASF42
	.byte	0x9
	.byte	0x35
	.long	0x235
	.uleb128 0xc
	.byte	0x8
	.long	0x23b
	.uleb128 0x10
	.long	.LASF402
	.uleb128 0x11
	.long	.LASF46
	.byte	0x4
	.long	0x8a
	.byte	0xa
	.byte	0x81
	.long	0x263
	.uleb128 0x7
	.long	.LASF43
	.byte	0
	.uleb128 0x7
	.long	.LASF44
	.byte	0x1
	.uleb128 0x7
	.long	.LASF45
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF46
	.byte	0xa
	.byte	0x86
	.long	0x240
	.uleb128 0x11
	.long	.LASF47
	.byte	0x4
	.long	0x8a
	.byte	0xa
	.byte	0x89
	.long	0x29d
	.uleb128 0x7
	.long	.LASF48
	.byte	0
	.uleb128 0x7
	.long	.LASF49
	.byte	0x1
	.uleb128 0x7
	.long	.LASF50
	.byte	0x2
	.uleb128 0x7
	.long	.LASF51
	.byte	0x3
	.uleb128 0x7
	.long	.LASF52
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF47
	.byte	0xa
	.byte	0x90
	.long	0x26e
	.uleb128 0x11
	.long	.LASF53
	.byte	0x4
	.long	0x8a
	.byte	0xa
	.byte	0x93
	.long	0x2d1
	.uleb128 0x7
	.long	.LASF54
	.byte	0
	.uleb128 0x7
	.long	.LASF55
	.byte	0x1
	.uleb128 0x7
	.long	.LASF56
	.byte	0x2
	.uleb128 0x7
	.long	.LASF57
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF53
	.byte	0xa
	.byte	0x99
	.long	0x2a8
	.uleb128 0xd
	.long	.LASF58
	.byte	0x40
	.byte	0xa
	.byte	0xdc
	.long	0x3b7
	.uleb128 0xe
	.string	"gx"
	.byte	0xa
	.byte	0xe2
	.long	0x3b
	.byte	0
	.uleb128 0xe
	.string	"gy"
	.byte	0xa
	.byte	0xe2
	.long	0x3b
	.byte	0x2
	.uleb128 0xe
	.string	"gz"
	.byte	0xa
	.byte	0xe2
	.long	0x3b
	.byte	0x4
	.uleb128 0xe
	.string	"ax"
	.byte	0xa
	.byte	0xe3
	.long	0x3b
	.byte	0x6
	.uleb128 0xe
	.string	"ay"
	.byte	0xa
	.byte	0xe3
	.long	0x3b
	.byte	0x8
	.uleb128 0xe
	.string	"az"
	.byte	0xa
	.byte	0xe3
	.long	0x3b
	.byte	0xa
	.uleb128 0xe
	.string	"mx"
	.byte	0xa
	.byte	0xe4
	.long	0x3b
	.byte	0xc
	.uleb128 0xe
	.string	"my"
	.byte	0xa
	.byte	0xe4
	.long	0x3b
	.byte	0xe
	.uleb128 0xe
	.string	"mz"
	.byte	0xa
	.byte	0xe4
	.long	0x3b
	.byte	0x10
	.uleb128 0xf
	.long	.LASF59
	.byte	0xa
	.byte	0xe5
	.long	0x3b
	.byte	0x12
	.uleb128 0xf
	.long	.LASF60
	.byte	0xa
	.byte	0xe7
	.long	0x22a
	.byte	0x18
	.uleb128 0xe
	.string	"xm"
	.byte	0xa
	.byte	0xe8
	.long	0x22a
	.byte	0x20
	.uleb128 0xf
	.long	.LASF61
	.byte	0xa
	.byte	0xec
	.long	0x263
	.byte	0x28
	.uleb128 0xf
	.long	.LASF62
	.byte	0xa
	.byte	0xed
	.long	0x29d
	.byte	0x2c
	.uleb128 0xf
	.long	.LASF63
	.byte	0xa
	.byte	0xee
	.long	0x2d1
	.byte	0x30
	.uleb128 0xf
	.long	.LASF64
	.byte	0xa
	.byte	0xf3
	.long	0xec
	.byte	0x34
	.uleb128 0xf
	.long	.LASF65
	.byte	0xa
	.byte	0xf3
	.long	0xec
	.byte	0x38
	.uleb128 0xf
	.long	.LASF66
	.byte	0xa
	.byte	0xf3
	.long	0xec
	.byte	0x3c
	.byte	0
	.uleb128 0x2
	.long	.LASF67
	.byte	0xa
	.byte	0xf5
	.long	0x2dc
	.uleb128 0xd
	.long	.LASF68
	.byte	0xc
	.byte	0xb
	.byte	0x14
	.long	0x42f
	.uleb128 0xf
	.long	.LASF69
	.byte	0xb
	.byte	0x15
	.long	0x5b
	.byte	0
	.uleb128 0xf
	.long	.LASF70
	.byte	0xb
	.byte	0x16
	.long	0x5b
	.byte	0x1
	.uleb128 0xf
	.long	.LASF71
	.byte	0xb
	.byte	0x17
	.long	0x5b
	.byte	0x2
	.uleb128 0xf
	.long	.LASF72
	.byte	0xb
	.byte	0x18
	.long	0x5b
	.byte	0x3
	.uleb128 0xf
	.long	.LASF73
	.byte	0xb
	.byte	0x19
	.long	0x42f
	.byte	0x4
	.uleb128 0xf
	.long	.LASF74
	.byte	0xb
	.byte	0x1a
	.long	0x5b
	.byte	0x7
	.uleb128 0xf
	.long	.LASF75
	.byte	0xb
	.byte	0x1b
	.long	0x5b
	.byte	0x8
	.uleb128 0xf
	.long	.LASF76
	.byte	0xb
	.byte	0x1c
	.long	0x6d
	.byte	0xa
	.byte	0
	.uleb128 0x12
	.long	0x5b
	.long	0x43f
	.uleb128 0x13
	.long	0x98
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF77
	.byte	0xb
	.byte	0x1d
	.long	0x3c2
	.uleb128 0xd
	.long	.LASF78
	.byte	0x1
	.byte	0xb
	.byte	0x24
	.long	0x463
	.uleb128 0xf
	.long	.LASF79
	.byte	0xb
	.byte	0x25
	.long	0x5b
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF80
	.byte	0xb
	.byte	0x26
	.long	0x44a
	.uleb128 0xd
	.long	.LASF81
	.byte	0x2
	.byte	0xc
	.byte	0x65
	.long	0x493
	.uleb128 0xf
	.long	.LASF82
	.byte	0xc
	.byte	0x66
	.long	0x5b
	.byte	0
	.uleb128 0xf
	.long	.LASF83
	.byte	0xc
	.byte	0x67
	.long	0x5b
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF84
	.byte	0xc
	.byte	0x68
	.long	0x46e
	.uleb128 0xd
	.long	.LASF85
	.byte	0x4
	.byte	0xc
	.byte	0x6a
	.long	0x4c3
	.uleb128 0xe
	.string	"min"
	.byte	0xc
	.byte	0x6b
	.long	0x6d
	.byte	0
	.uleb128 0xe
	.string	"max"
	.byte	0xc
	.byte	0x6c
	.long	0x6d
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF86
	.byte	0xc
	.byte	0x6d
	.long	0x49e
	.uleb128 0xd
	.long	.LASF87
	.byte	0x1a
	.byte	0xc
	.byte	0x6f
	.long	0x577
	.uleb128 0xf
	.long	.LASF88
	.byte	0xc
	.byte	0x70
	.long	0x577
	.byte	0
	.uleb128 0xf
	.long	.LASF89
	.byte	0xc
	.byte	0x71
	.long	0x5b
	.byte	0x8
	.uleb128 0xf
	.long	.LASF90
	.byte	0xc
	.byte	0x72
	.long	0x5b
	.byte	0x9
	.uleb128 0xf
	.long	.LASF91
	.byte	0xc
	.byte	0x73
	.long	0x5b
	.byte	0xa
	.uleb128 0xf
	.long	.LASF92
	.byte	0xc
	.byte	0x74
	.long	0x5b
	.byte	0xb
	.uleb128 0xf
	.long	.LASF93
	.byte	0xc
	.byte	0x75
	.long	0x5b
	.byte	0xc
	.uleb128 0xf
	.long	.LASF94
	.byte	0xc
	.byte	0x76
	.long	0x5b
	.byte	0xd
	.uleb128 0xf
	.long	.LASF95
	.byte	0xc
	.byte	0x77
	.long	0x5b
	.byte	0xe
	.uleb128 0xf
	.long	.LASF96
	.byte	0xc
	.byte	0x78
	.long	0x6d
	.byte	0x10
	.uleb128 0xf
	.long	.LASF97
	.byte	0xc
	.byte	0x79
	.long	0x6d
	.byte	0x12
	.uleb128 0xf
	.long	.LASF98
	.byte	0xc
	.byte	0x7a
	.long	0x6d
	.byte	0x14
	.uleb128 0xf
	.long	.LASF99
	.byte	0xc
	.byte	0x7c
	.long	0x6d
	.byte	0x16
	.uleb128 0xf
	.long	.LASF100
	.byte	0xc
	.byte	0x7d
	.long	0x6d
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.long	0x5b
	.long	0x587
	.uleb128 0x13
	.long	0x98
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.long	.LASF101
	.byte	0xc
	.byte	0x7e
	.long	0x4ce
	.uleb128 0x6
	.byte	0x4
	.long	0x8a
	.byte	0xd
	.byte	0x16
	.long	0x64d
	.uleb128 0x7
	.long	.LASF102
	.byte	0
	.uleb128 0x7
	.long	.LASF103
	.byte	0x1
	.uleb128 0x7
	.long	.LASF104
	.byte	0x2
	.uleb128 0x7
	.long	.LASF105
	.byte	0x3
	.uleb128 0x7
	.long	.LASF106
	.byte	0x4
	.uleb128 0x7
	.long	.LASF107
	.byte	0x5
	.uleb128 0x7
	.long	.LASF108
	.byte	0x6
	.uleb128 0x7
	.long	.LASF109
	.byte	0x7
	.uleb128 0x7
	.long	.LASF110
	.byte	0x8
	.uleb128 0x7
	.long	.LASF111
	.byte	0x9
	.uleb128 0x7
	.long	.LASF112
	.byte	0xa
	.uleb128 0x7
	.long	.LASF113
	.byte	0xb
	.uleb128 0x7
	.long	.LASF114
	.byte	0xc
	.uleb128 0x7
	.long	.LASF115
	.byte	0xd
	.uleb128 0x7
	.long	.LASF116
	.byte	0xe
	.uleb128 0x7
	.long	.LASF117
	.byte	0xf
	.uleb128 0x7
	.long	.LASF118
	.byte	0x10
	.uleb128 0x7
	.long	.LASF119
	.byte	0x11
	.uleb128 0x7
	.long	.LASF120
	.byte	0x12
	.uleb128 0x7
	.long	.LASF121
	.byte	0x13
	.uleb128 0x7
	.long	.LASF122
	.byte	0x14
	.uleb128 0x7
	.long	.LASF123
	.byte	0x15
	.uleb128 0x7
	.long	.LASF124
	.byte	0x16
	.uleb128 0x7
	.long	.LASF125
	.byte	0x17
	.uleb128 0x7
	.long	.LASF126
	.byte	0x18
	.uleb128 0x7
	.long	.LASF127
	.byte	0x19
	.uleb128 0x7
	.long	.LASF128
	.byte	0x1a
	.uleb128 0x7
	.long	.LASF129
	.byte	0x1b
	.uleb128 0x7
	.long	.LASF130
	.byte	0x1c
	.byte	0
	.uleb128 0x2
	.long	.LASF131
	.byte	0xd
	.byte	0x35
	.long	0x592
	.uleb128 0xd
	.long	.LASF132
	.byte	0x2
	.byte	0xd
	.byte	0x75
	.long	0x67d
	.uleb128 0xf
	.long	.LASF133
	.byte	0xd
	.byte	0x76
	.long	0x5b
	.byte	0
	.uleb128 0xf
	.long	.LASF134
	.byte	0xd
	.byte	0x77
	.long	0x5b
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF135
	.byte	0xd
	.byte	0x78
	.long	0x658
	.uleb128 0xd
	.long	.LASF136
	.byte	0x8
	.byte	0xd
	.byte	0x7a
	.long	0x6b9
	.uleb128 0xf
	.long	.LASF137
	.byte	0xd
	.byte	0x7b
	.long	0x64d
	.byte	0
	.uleb128 0xf
	.long	.LASF138
	.byte	0xd
	.byte	0x7c
	.long	0x5b
	.byte	0x4
	.uleb128 0xf
	.long	.LASF139
	.byte	0xd
	.byte	0x7d
	.long	0x67d
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.long	.LASF140
	.byte	0xd
	.byte	0x7e
	.long	0x688
	.uleb128 0xd
	.long	.LASF141
	.byte	0xa0
	.byte	0xd
	.byte	0x82
	.long	0x6dd
	.uleb128 0xf
	.long	.LASF142
	.byte	0xd
	.byte	0x83
	.long	0x6dd
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x6b9
	.long	0x6ed
	.uleb128 0x13
	.long	0x98
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF143
	.byte	0xd
	.byte	0x84
	.long	0x6c4
	.uleb128 0xd
	.long	.LASF144
	.byte	0x8
	.byte	0xd
	.byte	0x8a
	.long	0x74d
	.uleb128 0xf
	.long	.LASF145
	.byte	0xd
	.byte	0x8b
	.long	0x5b
	.byte	0
	.uleb128 0xf
	.long	.LASF146
	.byte	0xd
	.byte	0x8c
	.long	0x5b
	.byte	0x1
	.uleb128 0xf
	.long	.LASF147
	.byte	0xd
	.byte	0x8d
	.long	0x5b
	.byte	0x2
	.uleb128 0xf
	.long	.LASF148
	.byte	0xd
	.byte	0x8e
	.long	0x5b
	.byte	0x3
	.uleb128 0xf
	.long	.LASF149
	.byte	0xd
	.byte	0x8f
	.long	0x29
	.byte	0x4
	.uleb128 0xf
	.long	.LASF150
	.byte	0xd
	.byte	0x90
	.long	0x6d
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF151
	.byte	0xd
	.byte	0x91
	.long	0x6f8
	.uleb128 0xd
	.long	.LASF152
	.byte	0x4
	.byte	0xd
	.byte	0x95
	.long	0x795
	.uleb128 0xf
	.long	.LASF153
	.byte	0xd
	.byte	0x97
	.long	0x5b
	.byte	0
	.uleb128 0xf
	.long	.LASF154
	.byte	0xd
	.byte	0x98
	.long	0x5b
	.byte	0x1
	.uleb128 0xf
	.long	.LASF155
	.byte	0xd
	.byte	0x99
	.long	0x5b
	.byte	0x2
	.uleb128 0xf
	.long	.LASF156
	.byte	0xd
	.byte	0x9a
	.long	0x5b
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF157
	.byte	0xd
	.byte	0x9b
	.long	0x758
	.uleb128 0xd
	.long	.LASF158
	.byte	0x6
	.byte	0xe
	.byte	0x62
	.long	0x7e9
	.uleb128 0xf
	.long	.LASF138
	.byte	0xe
	.byte	0x64
	.long	0x5b
	.byte	0
	.uleb128 0xf
	.long	.LASF139
	.byte	0xe
	.byte	0x65
	.long	0x67d
	.byte	0x1
	.uleb128 0xf
	.long	.LASF159
	.byte	0xe
	.byte	0x68
	.long	0x5b
	.byte	0x3
	.uleb128 0xf
	.long	.LASF160
	.byte	0xe
	.byte	0x69
	.long	0x5b
	.byte	0x4
	.uleb128 0xf
	.long	.LASF161
	.byte	0xe
	.byte	0x6c
	.long	0x5b
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.long	.LASF162
	.byte	0xe
	.byte	0x6d
	.long	0x7a0
	.uleb128 0xd
	.long	.LASF163
	.byte	0x48
	.byte	0xe
	.byte	0x7a
	.long	0x80d
	.uleb128 0xf
	.long	.LASF164
	.byte	0xe
	.byte	0x7b
	.long	0x80d
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x7e9
	.long	0x81d
	.uleb128 0x13
	.long	0x98
	.byte	0xb
	.byte	0
	.uleb128 0x2
	.long	.LASF165
	.byte	0xe
	.byte	0x7c
	.long	0x7f4
	.uleb128 0x6
	.byte	0x4
	.long	0x4d
	.byte	0xf
	.byte	0x36
	.long	0x871
	.uleb128 0x14
	.long	.LASF166
	.sleb128 -1
	.uleb128 0x7
	.long	.LASF167
	.byte	0
	.uleb128 0x7
	.long	.LASF168
	.byte	0x1
	.uleb128 0x7
	.long	.LASF169
	.byte	0x2
	.uleb128 0x7
	.long	.LASF170
	.byte	0x3
	.uleb128 0x7
	.long	.LASF171
	.byte	0x4
	.uleb128 0x7
	.long	.LASF172
	.byte	0x14
	.uleb128 0x7
	.long	.LASF173
	.byte	0x1e
	.uleb128 0x7
	.long	.LASF174
	.byte	0x1f
	.uleb128 0x7
	.long	.LASF175
	.byte	0x1f
	.byte	0
	.uleb128 0x2
	.long	.LASF176
	.byte	0xf
	.byte	0x41
	.long	0x828
	.uleb128 0xd
	.long	.LASF177
	.byte	0xc
	.byte	0xf
	.byte	0x5a
	.long	0x8ad
	.uleb128 0xf
	.long	.LASF178
	.byte	0xf
	.byte	0x5b
	.long	0x871
	.byte	0
	.uleb128 0xf
	.long	.LASF179
	.byte	0xf
	.byte	0x5c
	.long	0x6d
	.byte	0x4
	.uleb128 0xf
	.long	.LASF180
	.byte	0xf
	.byte	0x5d
	.long	0x8ad
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.long	0x5b
	.long	0x8bd
	.uleb128 0x13
	.long	0x98
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF181
	.byte	0xf
	.byte	0x5e
	.long	0x87c
	.uleb128 0xd
	.long	.LASF182
	.byte	0x1c
	.byte	0xf
	.byte	0x60
	.long	0x8ed
	.uleb128 0xf
	.long	.LASF183
	.byte	0xf
	.byte	0x61
	.long	0x5b
	.byte	0
	.uleb128 0xf
	.long	.LASF184
	.byte	0xf
	.byte	0x62
	.long	0x8ed
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.long	0x8bd
	.long	0x8fd
	.uleb128 0x13
	.long	0x98
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF185
	.byte	0xf
	.byte	0x63
	.long	0x8c8
	.uleb128 0xd
	.long	.LASF186
	.byte	0x3
	.byte	0x10
	.byte	0x20
	.long	0x939
	.uleb128 0xf
	.long	.LASF187
	.byte	0x10
	.byte	0x21
	.long	0x5b
	.byte	0
	.uleb128 0xf
	.long	.LASF188
	.byte	0x10
	.byte	0x22
	.long	0x5b
	.byte	0x1
	.uleb128 0xf
	.long	.LASF189
	.byte	0x10
	.byte	0x23
	.long	0x5b
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF190
	.byte	0x10
	.byte	0x24
	.long	0x908
	.uleb128 0x6
	.byte	0x4
	.long	0x8a
	.byte	0x1
	.byte	0x15
	.long	0x969
	.uleb128 0x7
	.long	.LASF191
	.byte	0
	.uleb128 0x7
	.long	.LASF192
	.byte	0x1
	.uleb128 0x7
	.long	.LASF193
	.byte	0x2
	.uleb128 0x7
	.long	.LASF194
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.long	.LASF195
	.byte	0x6
	.byte	0x1
	.byte	0x20
	.long	0x99a
	.uleb128 0xf
	.long	.LASF196
	.byte	0x1
	.byte	0x21
	.long	0x3b
	.byte	0
	.uleb128 0xf
	.long	.LASF197
	.byte	0x1
	.byte	0x22
	.long	0x3b
	.byte	0x2
	.uleb128 0xe
	.string	"yaw"
	.byte	0x1
	.byte	0x23
	.long	0x3b
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF198
	.byte	0x1
	.byte	0x24
	.long	0x969
	.uleb128 0x15
	.long	.LASF230
	.byte	0x6
	.byte	0x1
	.byte	0x26
	.long	0x9c8
	.uleb128 0xb
	.string	"raw"
	.byte	0x1
	.byte	0x27
	.long	0x9c8
	.uleb128 0x16
	.long	.LASF199
	.byte	0x1
	.byte	0x28
	.long	0x99a
	.byte	0
	.uleb128 0x12
	.long	0x3b
	.long	0x9d8
	.uleb128 0x13
	.long	0x98
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF200
	.byte	0x1
	.byte	0x29
	.long	0x9a5
	.uleb128 0x6
	.byte	0x4
	.long	0x8a
	.byte	0x1
	.byte	0x39
	.long	0xa26
	.uleb128 0x7
	.long	.LASF201
	.byte	0
	.uleb128 0x7
	.long	.LASF202
	.byte	0x1
	.uleb128 0x7
	.long	.LASF203
	.byte	0x2
	.uleb128 0x7
	.long	.LASF204
	.byte	0x3
	.uleb128 0x7
	.long	.LASF205
	.byte	0x4
	.uleb128 0x7
	.long	.LASF206
	.byte	0x5
	.uleb128 0x7
	.long	.LASF207
	.byte	0x6
	.uleb128 0x7
	.long	.LASF208
	.byte	0x7
	.uleb128 0x7
	.long	.LASF209
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF210
	.byte	0x1
	.byte	0x43
	.long	0x9e3
	.uleb128 0xd
	.long	.LASF211
	.byte	0xc
	.byte	0x1
	.byte	0x45
	.long	0xa62
	.uleb128 0xf
	.long	.LASF212
	.byte	0x1
	.byte	0x46
	.long	0xa26
	.byte	0
	.uleb128 0xf
	.long	.LASF213
	.byte	0x1
	.byte	0x47
	.long	0xa26
	.byte	0x4
	.uleb128 0xf
	.long	.LASF214
	.byte	0x1
	.byte	0x48
	.long	0xa26
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF215
	.byte	0x1
	.byte	0x49
	.long	0xa31
	.uleb128 0xd
	.long	.LASF216
	.byte	0x3
	.byte	0x1
	.byte	0x4b
	.long	0xa9e
	.uleb128 0xf
	.long	.LASF217
	.byte	0x1
	.byte	0x4c
	.long	0x5b
	.byte	0
	.uleb128 0xf
	.long	.LASF218
	.byte	0x1
	.byte	0x4d
	.long	0x5b
	.byte	0x1
	.uleb128 0xf
	.long	.LASF219
	.byte	0x1
	.byte	0x4e
	.long	0x5b
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF220
	.byte	0x1
	.byte	0x4f
	.long	0xa6d
	.uleb128 0xd
	.long	.LASF221
	.byte	0xc
	.byte	0x1
	.byte	0x51
	.long	0xace
	.uleb128 0xf
	.long	.LASF222
	.byte	0x1
	.byte	0x52
	.long	0x9d8
	.byte	0
	.uleb128 0xf
	.long	.LASF223
	.byte	0x1
	.byte	0x53
	.long	0x9d8
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF224
	.byte	0x1
	.byte	0x54
	.long	0xaa9
	.uleb128 0xd
	.long	.LASF225
	.byte	0x2
	.byte	0x11
	.byte	0x20
	.long	0xaf2
	.uleb128 0xf
	.long	.LASF226
	.byte	0x11
	.byte	0x21
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF227
	.byte	0x11
	.byte	0x23
	.long	0xad9
	.uleb128 0xd
	.long	.LASF228
	.byte	0x4
	.byte	0x12
	.byte	0x2b
	.long	0xb22
	.uleb128 0xf
	.long	.LASF196
	.byte	0x12
	.byte	0x2c
	.long	0x3b
	.byte	0
	.uleb128 0xf
	.long	.LASF197
	.byte	0x12
	.byte	0x2d
	.long	0x3b
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF229
	.byte	0x12
	.byte	0x2e
	.long	0xafd
	.uleb128 0x15
	.long	.LASF231
	.byte	0x4
	.byte	0x12
	.byte	0x30
	.long	0xb50
	.uleb128 0xb
	.string	"raw"
	.byte	0x12
	.byte	0x31
	.long	0xb50
	.uleb128 0x16
	.long	.LASF199
	.byte	0x12
	.byte	0x32
	.long	0xb22
	.byte	0
	.uleb128 0x12
	.long	0x3b
	.long	0xb60
	.uleb128 0x13
	.long	0x98
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF232
	.byte	0x12
	.byte	0x33
	.long	0xb2d
	.uleb128 0xd
	.long	.LASF233
	.byte	0x2
	.byte	0x12
	.byte	0x35
	.long	0xb8d
	.uleb128 0xe
	.string	"xy"
	.byte	0x12
	.byte	0x36
	.long	0x5b
	.byte	0
	.uleb128 0xe
	.string	"z"
	.byte	0x12
	.byte	0x37
	.long	0x5b
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF234
	.byte	0x12
	.byte	0x38
	.long	0xb6b
	.uleb128 0xd
	.long	.LASF235
	.byte	0x10
	.byte	0x12
	.byte	0x3a
	.long	0xbe1
	.uleb128 0xf
	.long	.LASF236
	.byte	0x12
	.byte	0x3b
	.long	0xb60
	.byte	0
	.uleb128 0xf
	.long	.LASF237
	.byte	0x12
	.byte	0x3e
	.long	0x5b
	.byte	0x4
	.uleb128 0xf
	.long	.LASF238
	.byte	0x12
	.byte	0x3f
	.long	0xec
	.byte	0x8
	.uleb128 0xf
	.long	.LASF239
	.byte	0x12
	.byte	0x40
	.long	0xb8d
	.byte	0xc
	.uleb128 0xf
	.long	.LASF240
	.byte	0x12
	.byte	0x41
	.long	0x5b
	.byte	0xe
	.byte	0
	.uleb128 0x2
	.long	.LASF241
	.byte	0x12
	.byte	0x42
	.long	0xb98
	.uleb128 0xd
	.long	.LASF242
	.byte	0x3
	.byte	0x13
	.byte	0x1e
	.long	0xc1d
	.uleb128 0xf
	.long	.LASF243
	.byte	0x13
	.byte	0x1f
	.long	0x5b
	.byte	0
	.uleb128 0xf
	.long	.LASF244
	.byte	0x13
	.byte	0x20
	.long	0x5b
	.byte	0x1
	.uleb128 0xf
	.long	.LASF245
	.byte	0x13
	.byte	0x21
	.long	0x5b
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF246
	.byte	0x13
	.byte	0x22
	.long	0xbec
	.uleb128 0xd
	.long	.LASF247
	.byte	0x10
	.byte	0x14
	.byte	0x40
	.long	0xc65
	.uleb128 0xf
	.long	.LASF248
	.byte	0x14
	.byte	0x41
	.long	0xec
	.byte	0
	.uleb128 0xf
	.long	.LASF196
	.byte	0x14
	.byte	0x42
	.long	0xec
	.byte	0x4
	.uleb128 0xf
	.long	.LASF197
	.byte	0x14
	.byte	0x43
	.long	0xec
	.byte	0x8
	.uleb128 0xe
	.string	"yaw"
	.byte	0x14
	.byte	0x44
	.long	0xec
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF249
	.byte	0x14
	.byte	0x45
	.long	0xc28
	.uleb128 0xd
	.long	.LASF250
	.byte	0x6
	.byte	0x14
	.byte	0x50
	.long	0xcad
	.uleb128 0xf
	.long	.LASF251
	.byte	0x14
	.byte	0x51
	.long	0x5b
	.byte	0
	.uleb128 0xf
	.long	.LASF252
	.byte	0x14
	.byte	0x52
	.long	0x5b
	.byte	0x1
	.uleb128 0xf
	.long	.LASF253
	.byte	0x14
	.byte	0x53
	.long	0x29
	.byte	0x2
	.uleb128 0xf
	.long	.LASF254
	.byte	0x14
	.byte	0x54
	.long	0x6d
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF255
	.byte	0x14
	.byte	0x5a
	.long	0xc70
	.uleb128 0xd
	.long	.LASF256
	.byte	0x6
	.byte	0x14
	.byte	0x5e
	.long	0xce9
	.uleb128 0xf
	.long	.LASF257
	.byte	0x14
	.byte	0x5f
	.long	0x6d
	.byte	0
	.uleb128 0xf
	.long	.LASF258
	.byte	0x14
	.byte	0x60
	.long	0x6d
	.byte	0x2
	.uleb128 0xf
	.long	.LASF259
	.byte	0x14
	.byte	0x61
	.long	0x6d
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF260
	.byte	0x14
	.byte	0x62
	.long	0xcb8
	.uleb128 0x6
	.byte	0x4
	.long	0x8a
	.byte	0x15
	.byte	0x1c
	.long	0xd5b
	.uleb128 0x7
	.long	.LASF261
	.byte	0
	.uleb128 0x7
	.long	.LASF262
	.byte	0x1
	.uleb128 0x7
	.long	.LASF263
	.byte	0x2
	.uleb128 0x7
	.long	.LASF264
	.byte	0x3
	.uleb128 0x7
	.long	.LASF265
	.byte	0x4
	.uleb128 0x7
	.long	.LASF266
	.byte	0x5
	.uleb128 0x7
	.long	.LASF267
	.byte	0x6
	.uleb128 0x7
	.long	.LASF268
	.byte	0x7
	.uleb128 0x7
	.long	.LASF269
	.byte	0x8
	.uleb128 0x7
	.long	.LASF270
	.byte	0x9
	.uleb128 0x7
	.long	.LASF271
	.byte	0xa
	.uleb128 0x7
	.long	.LASF272
	.byte	0xb
	.uleb128 0x7
	.long	.LASF273
	.byte	0xc
	.uleb128 0x7
	.long	.LASF274
	.byte	0xd
	.uleb128 0x7
	.long	.LASF275
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.long	.LASF276
	.byte	0x7
	.byte	0x15
	.byte	0x53
	.long	0xdbc
	.uleb128 0xf
	.long	.LASF277
	.byte	0x15
	.byte	0x54
	.long	0x5b
	.byte	0
	.uleb128 0xf
	.long	.LASF278
	.byte	0x15
	.byte	0x55
	.long	0x5b
	.byte	0x1
	.uleb128 0xf
	.long	.LASF279
	.byte	0x15
	.byte	0x56
	.long	0x29
	.byte	0x2
	.uleb128 0xf
	.long	.LASF280
	.byte	0x15
	.byte	0x57
	.long	0x5b
	.byte	0x3
	.uleb128 0xe
	.string	"min"
	.byte	0x15
	.byte	0x58
	.long	0x29
	.byte	0x4
	.uleb128 0xe
	.string	"max"
	.byte	0x15
	.byte	0x59
	.long	0x29
	.byte	0x5
	.uleb128 0xe
	.string	"box"
	.byte	0x15
	.byte	0x5a
	.long	0x5b
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF281
	.byte	0x15
	.byte	0x5b
	.long	0xd5b
	.uleb128 0xd
	.long	.LASF282
	.byte	0xe
	.byte	0x15
	.byte	0x69
	.long	0xe34
	.uleb128 0xe
	.string	"min"
	.byte	0x15
	.byte	0x6a
	.long	0x3b
	.byte	0
	.uleb128 0xe
	.string	"max"
	.byte	0x15
	.byte	0x6b
	.long	0x3b
	.byte	0x2
	.uleb128 0xf
	.long	.LASF283
	.byte	0x15
	.byte	0x6c
	.long	0x3b
	.byte	0x4
	.uleb128 0xf
	.long	.LASF279
	.byte	0x15
	.byte	0x6d
	.long	0x29
	.byte	0x6
	.uleb128 0xf
	.long	.LASF284
	.byte	0x15
	.byte	0x6e
	.long	0x5b
	.byte	0x7
	.uleb128 0xf
	.long	.LASF285
	.byte	0x15
	.byte	0x6f
	.long	0x5b
	.byte	0x8
	.uleb128 0xf
	.long	.LASF286
	.byte	0x15
	.byte	0x70
	.long	0x29
	.byte	0x9
	.uleb128 0xf
	.long	.LASF287
	.byte	0x15
	.byte	0x71
	.long	0x7f
	.byte	0xa
	.byte	0
	.uleb128 0x2
	.long	.LASF288
	.byte	0x15
	.byte	0x72
	.long	0xdc7
	.uleb128 0xd
	.long	.LASF289
	.byte	0xe
	.byte	0x15
	.byte	0x74
	.long	0xe58
	.uleb128 0xf
	.long	.LASF290
	.byte	0x15
	.byte	0x75
	.long	0xe58
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0xe34
	.long	0xe68
	.uleb128 0x13
	.long	0x98
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF291
	.byte	0x15
	.byte	0x76
	.long	0xe3f
	.uleb128 0xd
	.long	.LASF292
	.byte	0xc
	.byte	0x16
	.byte	0x2f
	.long	0xed4
	.uleb128 0xf
	.long	.LASF293
	.byte	0x16
	.byte	0x31
	.long	0x6d
	.byte	0
	.uleb128 0xf
	.long	.LASF294
	.byte	0x16
	.byte	0x32
	.long	0x5b
	.byte	0x2
	.uleb128 0xf
	.long	.LASF295
	.byte	0x16
	.byte	0x33
	.long	0x5b
	.byte	0x3
	.uleb128 0xf
	.long	.LASF296
	.byte	0x16
	.byte	0x34
	.long	0x6d
	.byte	0x4
	.uleb128 0xf
	.long	.LASF297
	.byte	0x16
	.byte	0x35
	.long	0x6d
	.byte	0x6
	.uleb128 0xf
	.long	.LASF298
	.byte	0x16
	.byte	0x36
	.long	0x5b
	.byte	0x8
	.uleb128 0xf
	.long	.LASF299
	.byte	0x16
	.byte	0x37
	.long	0x6d
	.byte	0xa
	.byte	0
	.uleb128 0x2
	.long	.LASF300
	.byte	0x16
	.byte	0x38
	.long	0xe73
	.uleb128 0xd
	.long	.LASF301
	.byte	0x4
	.byte	0x16
	.byte	0x3c
	.long	0xf04
	.uleb128 0xf
	.long	.LASF302
	.byte	0x16
	.byte	0x3d
	.long	0x6d
	.byte	0
	.uleb128 0xf
	.long	.LASF303
	.byte	0x16
	.byte	0x3e
	.long	0x5b
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF304
	.byte	0x16
	.byte	0x3f
	.long	0xedf
	.uleb128 0xd
	.long	.LASF305
	.byte	0x10
	.byte	0x16
	.byte	0x44
	.long	0xf58
	.uleb128 0xf
	.long	.LASF237
	.byte	0x16
	.byte	0x45
	.long	0x5b
	.byte	0
	.uleb128 0xf
	.long	.LASF240
	.byte	0x16
	.byte	0x46
	.long	0x5b
	.byte	0x1
	.uleb128 0xf
	.long	.LASF297
	.byte	0x16
	.byte	0x47
	.long	0xec
	.byte	0x4
	.uleb128 0xf
	.long	.LASF296
	.byte	0x16
	.byte	0x48
	.long	0xec
	.byte	0x8
	.uleb128 0xf
	.long	.LASF298
	.byte	0x16
	.byte	0x49
	.long	0x5b
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF306
	.byte	0x16
	.byte	0x4a
	.long	0xf0f
	.uleb128 0xd
	.long	.LASF307
	.byte	0x8
	.byte	0x17
	.byte	0x1e
	.long	0xfb8
	.uleb128 0xf
	.long	.LASF308
	.byte	0x17
	.byte	0x1f
	.long	0x5b
	.byte	0
	.uleb128 0xf
	.long	.LASF309
	.byte	0x17
	.byte	0x20
	.long	0x5b
	.byte	0x1
	.uleb128 0xf
	.long	.LASF310
	.byte	0x17
	.byte	0x21
	.long	0x6d
	.byte	0x2
	.uleb128 0xf
	.long	.LASF311
	.byte	0x17
	.byte	0x22
	.long	0x5b
	.byte	0x4
	.uleb128 0xf
	.long	.LASF312
	.byte	0x17
	.byte	0x23
	.long	0x6d
	.byte	0x5
	.uleb128 0xf
	.long	.LASF313
	.byte	0x17
	.byte	0x24
	.long	0x5b
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.long	.LASF314
	.byte	0x17
	.byte	0x25
	.long	0xf63
	.uleb128 0x6
	.byte	0x4
	.long	0x8a
	.byte	0x18
	.byte	0x1c
	.long	0x1012
	.uleb128 0x7
	.long	.LASF315
	.byte	0
	.uleb128 0x7
	.long	.LASF316
	.byte	0x1
	.uleb128 0x7
	.long	.LASF317
	.byte	0x2
	.uleb128 0x7
	.long	.LASF318
	.byte	0x3
	.uleb128 0x7
	.long	.LASF319
	.byte	0x4
	.uleb128 0x7
	.long	.LASF320
	.byte	0x5
	.uleb128 0x7
	.long	.LASF321
	.byte	0x6
	.uleb128 0x7
	.long	.LASF322
	.byte	0x7
	.uleb128 0x7
	.long	.LASF323
	.byte	0x8
	.uleb128 0x7
	.long	.LASF324
	.byte	0x9
	.uleb128 0x7
	.long	.LASF325
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.long	.LASF326
	.byte	0x2a
	.byte	0x18
	.byte	0x3d
	.long	0x1094
	.uleb128 0xe
	.string	"P8"
	.byte	0x18
	.byte	0x3e
	.long	0x1094
	.byte	0
	.uleb128 0xe
	.string	"I8"
	.byte	0x18
	.byte	0x3f
	.long	0x1094
	.byte	0xa
	.uleb128 0xe
	.string	"D8"
	.byte	0x18
	.byte	0x40
	.long	0x1094
	.byte	0x14
	.uleb128 0xf
	.long	.LASF327
	.byte	0x18
	.byte	0x41
	.long	0x5b
	.byte	0x1e
	.uleb128 0xf
	.long	.LASF328
	.byte	0x18
	.byte	0x42
	.long	0x6d
	.byte	0x20
	.uleb128 0xf
	.long	.LASF329
	.byte	0x18
	.byte	0x43
	.long	0x6d
	.byte	0x22
	.uleb128 0xf
	.long	.LASF330
	.byte	0x18
	.byte	0x44
	.long	0x6d
	.byte	0x24
	.uleb128 0xf
	.long	.LASF331
	.byte	0x18
	.byte	0x45
	.long	0x5b
	.byte	0x26
	.uleb128 0xf
	.long	.LASF332
	.byte	0x18
	.byte	0x46
	.long	0x5b
	.byte	0x27
	.uleb128 0xf
	.long	.LASF333
	.byte	0x18
	.byte	0x47
	.long	0x5b
	.byte	0x28
	.byte	0
	.uleb128 0x12
	.long	0x5b
	.long	0x10a4
	.uleb128 0x13
	.long	0x98
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.long	.LASF334
	.byte	0x18
	.byte	0x48
	.long	0x1012
	.uleb128 0xd
	.long	.LASF335
	.byte	0xc
	.byte	0x19
	.byte	0x1d
	.long	0x1110
	.uleb128 0xf
	.long	.LASF336
	.byte	0x19
	.byte	0x1e
	.long	0x6d
	.byte	0
	.uleb128 0xf
	.long	.LASF337
	.byte	0x19
	.byte	0x1f
	.long	0x5b
	.byte	0x2
	.uleb128 0xf
	.long	.LASF338
	.byte	0x19
	.byte	0x20
	.long	0x5b
	.byte	0x3
	.uleb128 0xf
	.long	.LASF339
	.byte	0x19
	.byte	0x21
	.long	0x5b
	.byte	0x4
	.uleb128 0xf
	.long	.LASF340
	.byte	0x19
	.byte	0x22
	.long	0x6d
	.byte	0x6
	.uleb128 0xf
	.long	.LASF341
	.byte	0x19
	.byte	0x23
	.long	0x6d
	.byte	0x8
	.uleb128 0xf
	.long	.LASF342
	.byte	0x19
	.byte	0x24
	.long	0x6d
	.byte	0xa
	.byte	0
	.uleb128 0x2
	.long	.LASF343
	.byte	0x19
	.byte	0x25
	.long	0x10af
	.uleb128 0xd
	.long	.LASF344
	.byte	0x8
	.byte	0x1a
	.byte	0x14
	.long	0x1164
	.uleb128 0xf
	.long	.LASF345
	.byte	0x1a
	.byte	0x15
	.long	0x5b
	.byte	0
	.uleb128 0xf
	.long	.LASF346
	.byte	0x1a
	.byte	0x16
	.long	0x5b
	.byte	0x1
	.uleb128 0xf
	.long	.LASF347
	.byte	0x1a
	.byte	0x17
	.long	0x5b
	.byte	0x2
	.uleb128 0xf
	.long	.LASF348
	.byte	0x1a
	.byte	0x18
	.long	0x6d
	.byte	0x4
	.uleb128 0xf
	.long	.LASF349
	.byte	0x1a
	.byte	0x19
	.long	0x5b
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF350
	.byte	0x1a
	.byte	0x1a
	.long	0x111b
	.uleb128 0xd
	.long	.LASF351
	.byte	0xc
	.byte	0x1b
	.byte	0x14
	.long	0x11c4
	.uleb128 0xf
	.long	.LASF352
	.byte	0x1b
	.byte	0x17
	.long	0x6d
	.byte	0
	.uleb128 0xf
	.long	.LASF353
	.byte	0x1b
	.byte	0x18
	.long	0x6d
	.byte	0x2
	.uleb128 0xf
	.long	.LASF354
	.byte	0x1b
	.byte	0x19
	.long	0x6d
	.byte	0x4
	.uleb128 0xf
	.long	.LASF355
	.byte	0x1b
	.byte	0x1a
	.long	0x6d
	.byte	0x6
	.uleb128 0xf
	.long	.LASF356
	.byte	0x1b
	.byte	0x1c
	.long	0x6d
	.byte	0x8
	.uleb128 0xf
	.long	.LASF357
	.byte	0x1b
	.byte	0x1d
	.long	0x6d
	.byte	0xa
	.byte	0
	.uleb128 0x2
	.long	.LASF358
	.byte	0x1b
	.byte	0x1e
	.long	0x116f
	.uleb128 0x17
	.long	.LASF403
	.byte	0x1
	.byte	0x58
	.long	0x11ec
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.byte	0x8
	.long	0xace
	.uleb128 0x18
	.long	.LASF404
	.byte	0x2
	.value	0x146
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1227
	.uleb128 0x19
	.long	.LASF405
	.byte	0x2
	.value	0x162
	.long	0xf58
	.uleb128 0x9
	.byte	0x3
	.quad	imuRuntimeConfig.6470
	.byte	0
	.uleb128 0x1a
	.long	.LASF359
	.byte	0x1c
	.byte	0xca
	.long	0x7f
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_0
	.uleb128 0x1a
	.long	.LASF360
	.byte	0x1c
	.byte	0xcb
	.long	0x7f
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_1
	.uleb128 0x1a
	.long	.LASF361
	.byte	0x1c
	.byte	0xcc
	.long	0x7f
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_2
	.uleb128 0x1a
	.long	.LASF362
	.byte	0x5
	.byte	0x43
	.long	0x127b
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_start
	.uleb128 0xc
	.byte	0x8
	.long	0x192
	.uleb128 0x1a
	.long	.LASF363
	.byte	0x5
	.byte	0x44
	.long	0x127b
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_end
	.uleb128 0x1a
	.long	.LASF364
	.byte	0x5
	.byte	0x47
	.long	0x186
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_start
	.uleb128 0x1a
	.long	.LASF365
	.byte	0x5
	.byte	0x48
	.long	0x186
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_end
	.uleb128 0x1a
	.long	.LASF366
	.byte	0x6
	.byte	0x18
	.long	0x12d5
	.uleb128 0x9
	.byte	0x3
	.quad	featureConfig
	.uleb128 0xc
	.byte	0x8
	.long	0x1b6
	.uleb128 0x1a
	.long	.LASF367
	.byte	0x7
	.byte	0x1a
	.long	0x1da
	.uleb128 0x9
	.byte	0x3
	.quad	profileSelection_System
	.uleb128 0x1a
	.long	.LASF368
	.byte	0x8
	.byte	0x19
	.long	0x20a
	.uleb128 0x9
	.byte	0x3
	.quad	systemConfig_System
	.uleb128 0x1b
	.string	"imu"
	.byte	0x1d
	.byte	0x38
	.long	0x131a
	.uleb128 0x9
	.byte	0x3
	.quad	imu
	.uleb128 0xc
	.byte	0x8
	.long	0x3b7
	.uleb128 0x12
	.long	0x43f
	.long	0x1330
	.uleb128 0x13
	.long	0x98
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.long	.LASF369
	.byte	0xb
	.byte	0x20
	.long	0x1320
	.uleb128 0x1c
	.long	.LASF370
	.byte	0xb
	.byte	0x28
	.long	0x1346
	.uleb128 0xc
	.byte	0x8
	.long	0x463
	.uleb128 0x1a
	.long	.LASF371
	.byte	0xc
	.byte	0x80
	.long	0x587
	.uleb128 0x9
	.byte	0x3
	.quad	rxConfig_System
	.uleb128 0x12
	.long	0x493
	.long	0x1371
	.uleb128 0x13
	.long	0x98
	.byte	0x11
	.byte	0
	.uleb128 0x1c
	.long	.LASF372
	.byte	0xc
	.byte	0x82
	.long	0x1361
	.uleb128 0x12
	.long	0x4c3
	.long	0x138c
	.uleb128 0x13
	.long	0x98
	.byte	0x3
	.byte	0
	.uleb128 0x1c
	.long	.LASF373
	.byte	0xc
	.byte	0x83
	.long	0x137c
	.uleb128 0x1c
	.long	.LASF374
	.byte	0xd
	.byte	0x86
	.long	0x13a2
	.uleb128 0xc
	.byte	0x8
	.long	0x6ed
	.uleb128 0x1c
	.long	.LASF375
	.byte	0xd
	.byte	0x93
	.long	0x13b3
	.uleb128 0xc
	.byte	0x8
	.long	0x74d
	.uleb128 0x1a
	.long	.LASF376
	.byte	0xd
	.byte	0x9d
	.long	0x795
	.uleb128 0x9
	.byte	0x3
	.quad	armingConfig_System
	.uleb128 0x1c
	.long	.LASF377
	.byte	0xe
	.byte	0x7e
	.long	0x13d9
	.uleb128 0xc
	.byte	0x8
	.long	0x81d
	.uleb128 0x1a
	.long	.LASF378
	.byte	0xf
	.byte	0x65
	.long	0x8fd
	.uleb128 0x9
	.byte	0x3
	.quad	serialConfig_System
	.uleb128 0x12
	.long	0x939
	.long	0x1404
	.uleb128 0x13
	.long	0x98
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF379
	.byte	0x10
	.byte	0x26
	.long	0x13f4
	.uleb128 0x1a
	.long	.LASF380
	.byte	0x1
	.byte	0x56
	.long	0xa9e
	.uleb128 0x9
	.byte	0x3
	.quad	sensorSelectionConfig_System
	.uleb128 0x1a
	.long	.LASF381
	.byte	0x1
	.byte	0x57
	.long	0xa62
	.uleb128 0x9
	.byte	0x3
	.quad	sensorAlignmentConfig_System
	.uleb128 0x1a
	.long	.LASF382
	.byte	0x1
	.byte	0x58
	.long	0xace
	.uleb128 0x9
	.byte	0x3
	.quad	sensorTrims_System
	.uleb128 0x1c
	.long	.LASF383
	.byte	0x11
	.byte	0x25
	.long	0x1459
	.uleb128 0xc
	.byte	0x8
	.long	0xaf2
	.uleb128 0x1a
	.long	.LASF384
	.byte	0x12
	.byte	0x45
	.long	0x1474
	.uleb128 0x9
	.byte	0x3
	.quad	accelerometerConfig
	.uleb128 0xc
	.byte	0x8
	.long	0xbe1
	.uleb128 0x1a
	.long	.LASF385
	.byte	0x13
	.byte	0x24
	.long	0xc1d
	.uleb128 0x9
	.byte	0x3
	.quad	telemetryConfig_System
	.uleb128 0x12
	.long	0xc65
	.long	0x149f
	.uleb128 0x13
	.long	0x98
	.byte	0x3
	.byte	0
	.uleb128 0x1c
	.long	.LASF386
	.byte	0x14
	.byte	0x47
	.long	0x148f
	.uleb128 0x1a
	.long	.LASF387
	.byte	0x14
	.byte	0x5c
	.long	0xcad
	.uleb128 0x9
	.byte	0x3
	.quad	mixerConfig_System
	.uleb128 0x1a
	.long	.LASF388
	.byte	0x14
	.byte	0x64
	.long	0xce9
	.uleb128 0x9
	.byte	0x3
	.quad	motor3DConfig_System
	.uleb128 0x1a
	.long	.LASF389
	.byte	0x15
	.byte	0x2d
	.long	0xcf4
	.uleb128 0x9
	.byte	0x3
	.quad	inputSource_e
	.uleb128 0x12
	.long	0xdbc
	.long	0x14f9
	.uleb128 0x13
	.long	0x98
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.long	.LASF390
	.byte	0x15
	.byte	0x61
	.long	0x14e9
	.uleb128 0x1c
	.long	.LASF391
	.byte	0x15
	.byte	0x78
	.long	0x150f
	.uleb128 0xc
	.byte	0x8
	.long	0xe68
	.uleb128 0x1a
	.long	.LASF392
	.byte	0x16
	.byte	0x3a
	.long	0x152a
	.uleb128 0x9
	.byte	0x3
	.quad	imuConfig
	.uleb128 0xc
	.byte	0x8
	.long	0xed4
	.uleb128 0x1a
	.long	.LASF393
	.byte	0x16
	.byte	0x41
	.long	0x1545
	.uleb128 0x9
	.byte	0x3
	.quad	throttleCorrectionConfig
	.uleb128 0xc
	.byte	0x8
	.long	0xf04
	.uleb128 0x1a
	.long	.LASF394
	.byte	0x17
	.byte	0x49
	.long	0xfb8
	.uleb128 0x9
	.byte	0x3
	.quad	failsafeConfig_System
	.uleb128 0x1c
	.long	.LASF395
	.byte	0x18
	.byte	0x4a
	.long	0x156b
	.uleb128 0xc
	.byte	0x8
	.long	0x10a4
	.uleb128 0x1c
	.long	.LASF396
	.byte	0x19
	.byte	0x27
	.long	0x157c
	.uleb128 0xc
	.byte	0x8
	.long	0x1110
	.uleb128 0x1a
	.long	.LASF397
	.byte	0x1a
	.byte	0x1c
	.long	0x1164
	.uleb128 0x9
	.byte	0x3
	.quad	batteryConfig_System
	.uleb128 0x1a
	.long	.LASF398
	.byte	0x1b
	.byte	0x20
	.long	0x11c4
	.uleb128 0x9
	.byte	0x3
	.quad	motorAndServoConfig_System
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LFB25
	.quad	.LFE25
	.quad	.LFB40
	.quad	.LFE40
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"long int"
.LASF269:
	.string	"INPUT_RC_AUX1"
.LASF270:
	.string	"INPUT_RC_AUX2"
.LASF271:
	.string	"INPUT_RC_AUX3"
.LASF272:
	.string	"INPUT_RC_AUX4"
.LASF250:
	.string	"mixerConfig_s"
.LASF255:
	.string	"mixerConfig_t"
.LASF363:
	.string	"__pg_registry_end"
.LASF365:
	.string	"__pg_resetdata_end"
.LASF109:
	.string	"BOXCAMSTAB"
.LASF366:
	.string	"featureConfig"
.LASF59:
	.string	"temperature"
.LASF274:
	.string	"INPUT_GIMBAL_ROLL"
.LASF85:
	.string	"rxChannelRangeConfiguration_s"
.LASF89:
	.string	"serialrx_provider"
.LASF336:
	.string	"gps_wp_radius"
.LASF275:
	.string	"INPUT_SOURCE_COUNT"
.LASF47:
	.string	"accel_scale"
.LASF399:
	.string	"GNU C99 5.4.1 20160904 -mtune=generic -march=x86-64 -g -std=gnu99 -ffunction-sections -fdata-sections -ffat-lto-objects -fstack-protector-strong"
.LASF104:
	.string	"BOXHORIZON"
.LASF295:
	.string	"gyroSyncDenominator"
.LASF93:
	.string	"rssi_scale"
.LASF218:
	.string	"mag_hardware"
.LASF10:
	.string	"unsigned int"
.LASF244:
	.string	"telemetry_inversion"
.LASF69:
	.string	"rcRate8"
.LASF321:
	.string	"PIDNAVR"
.LASF240:
	.string	"acc_unarmedcal"
.LASF119:
	.string	"BOXGOV"
.LASF371:
	.string	"rxConfig_System"
.LASF326:
	.string	"pidProfile_s"
.LASF334:
	.string	"pidProfile_t"
.LASF292:
	.string	"imuConfig_s"
.LASF300:
	.string	"imuConfig_t"
.LASF163:
	.string	"adjustmentProfile_s"
.LASF165:
	.string	"adjustmentProfile_t"
.LASF239:
	.string	"accDeadband"
.LASF197:
	.string	"pitch"
.LASF229:
	.string	"rollAndPitchTrims_t_def"
.LASF185:
	.string	"serialConfig_t"
.LASF183:
	.string	"reboot_character"
.LASF90:
	.string	"sbus_inversion"
.LASF65:
	.string	"aRes"
.LASF78:
	.string	"rateProfileSelection_s"
.LASF62:
	.string	"aScale"
.LASF200:
	.string	"flightDynamicsTrims_t"
.LASF230:
	.string	"flightDynamicsTrims_u"
.LASF182:
	.string	"serialConfig_s"
.LASF3:
	.string	"short int"
.LASF75:
	.string	"rcYawExpo8"
.LASF384:
	.string	"accelerometerConfig"
.LASF241:
	.string	"accelerometerConfig_t"
.LASF146:
	.string	"yaw_deadband"
.LASF330:
	.string	"yaw_lpf"
.LASF82:
	.string	"mode"
.LASF375:
	.string	"rcControlsConfig_ProfileCurrent"
.LASF174:
	.string	"SERIAL_PORT_SOFTSERIAL2"
.LASF340:
	.string	"nav_speed_min"
.LASF56:
	.string	"M_SCALE_8GS"
.LASF80:
	.string	"rateProfileSelection_t"
.LASF134:
	.string	"endStep"
.LASF128:
	.string	"BOXFAILSAFE"
.LASF310:
	.string	"failsafe_throttle"
.LASF370:
	.string	"rateProfileSelection_ProfileCurrent"
.LASF224:
	.string	"sensorTrims_t"
.LASF280:
	.string	"speed"
.LASF184:
	.string	"portConfigs"
.LASF92:
	.string	"rssi_channel"
.LASF204:
	.string	"CW180_DEG"
.LASF373:
	.string	"channelRanges_SystemArray"
.LASF323:
	.string	"PIDMAG"
.LASF132:
	.string	"channelRange_s"
.LASF135:
	.string	"channelRange_t"
.LASF48:
	.string	"A_SCALE_2G"
.LASF360:
	.string	"U_ID_1"
.LASF361:
	.string	"U_ID_2"
.LASF57:
	.string	"M_SCALE_12GS"
.LASF173:
	.string	"SERIAL_PORT_SOFTSERIAL1"
.LASF192:
	.string	"SENSOR_INDEX_ACC"
.LASF335:
	.string	"gpsProfile_s"
.LASF386:
	.string	"customMotorMixer_SystemArray"
.LASF289:
	.string	"servoProfile_s"
.LASF9:
	.string	"uint32_t"
.LASF186:
	.string	"voltageMeterConfig_s"
.LASF190:
	.string	"voltageMeterConfig_t"
.LASF298:
	.string	"small_angle"
.LASF53:
	.string	"mag_scale"
.LASF383:
	.string	"compassConfig_ProfileCurrent"
.LASF161:
	.string	"adjustmentIndex"
.LASF308:
	.string	"failsafe_delay"
.LASF380:
	.string	"sensorSelectionConfig_System"
.LASF202:
	.string	"CW0_DEG"
.LASF156:
	.string	"max_arm_angle"
.LASF44:
	.string	"G_SCALE_500DPS"
.LASF355:
	.string	"servoCenterPulse"
.LASF107:
	.string	"BOXHEADFREE"
.LASF1:
	.string	"int16_t"
.LASF343:
	.string	"gpsProfile_t"
.LASF382:
	.string	"sensorTrims_System"
.LASF194:
	.string	"SENSOR_INDEX_MAG"
.LASF40:
	.string	"long long unsigned int"
.LASF14:
	.string	"FD_ROLL"
.LASF17:
	.string	"FD_INDEX_COUNT"
.LASF99:
	.string	"rx_min_usec"
.LASF237:
	.string	"acc_cut_hz"
.LASF64:
	.string	"gRes"
.LASF297:
	.string	"dcm_ki"
.LASF180:
	.string	"baudRates"
.LASF286:
	.string	"forwardFromChannel"
.LASF279:
	.string	"rate"
.LASF259:
	.string	"neutral3d"
.LASF304:
	.string	"throttleCorrectionConfig_t"
.LASF385:
	.string	"telemetryConfig_System"
.LASF94:
	.string	"rssi_ppm_invert"
.LASF209:
	.string	"CW270_DEG_FLIP"
.LASF315:
	.string	"PIDROLL"
.LASF357:
	.string	"servo_pwm_rate"
.LASF97:
	.string	"mincheck"
.LASF305:
	.string	"imuRuntimeConfig_s"
.LASF306:
	.string	"imuRuntimeConfig_t"
.LASF367:
	.string	"profileSelection_System"
.LASF179:
	.string	"functionMask"
.LASF303:
	.string	"throttle_correction_value"
.LASF153:
	.string	"retarded_arm"
.LASF395:
	.string	"pidProfile_ProfileCurrent"
.LASF154:
	.string	"disarm_kill_switch"
.LASF49:
	.string	"A_SCALE_4G"
.LASF345:
	.string	"vbatmaxcellvoltage"
.LASF266:
	.string	"INPUT_RC_PITCH"
.LASF140:
	.string	"modeActivationCondition_t"
.LASF130:
	.string	"CHECKBOX_ITEM_COUNT"
.LASF22:
	.string	"pgn_t"
.LASF329:
	.string	"dterm_lpf"
.LASF379:
	.string	"voltageMeterConfig_SystemArray"
.LASF8:
	.string	"short unsigned int"
.LASF84:
	.string	"rxFailsafeChannelConfig_t"
.LASF103:
	.string	"BOXANGLE"
.LASF114:
	.string	"BOXBEEPERON"
.LASF170:
	.string	"SERIAL_PORT_UART4"
.LASF15:
	.string	"FD_PITCH"
.LASF39:
	.string	"_Bool"
.LASF234:
	.string	"accDeadband_t"
.LASF28:
	.string	"pgRegistry_s"
.LASF27:
	.string	"pgRegistry_t"
.LASF110:
	.string	"BOXCAMTRIG"
.LASF81:
	.string	"rxFailsafeChannelConfiguration_s"
.LASF282:
	.string	"servoParam_s"
.LASF288:
	.string	"servoParam_t"
.LASF63:
	.string	"mScale"
.LASF193:
	.string	"SENSOR_INDEX_BARO"
.LASF147:
	.string	"alt_hold_deadband"
.LASF52:
	.string	"A_SCALE_16G"
.LASF397:
	.string	"batteryConfig_System"
.LASF245:
	.string	"telemetry_send_cells"
.LASF372:
	.string	"failsafeChannelConfigs_SystemArray"
.LASF377:
	.string	"adjustmentProfile_ProfileCurrent"
.LASF79:
	.string	"defaultRateProfileIndex"
.LASF11:
	.string	"long unsigned int"
.LASF116:
	.string	"BOXLEDLOW"
.LASF317:
	.string	"PIDYAW"
.LASF122:
	.string	"BOXGTUNE"
.LASF313:
	.string	"failsafe_procedure"
.LASF0:
	.string	"int8_t"
.LASF19:
	.string	"AI_PITCH"
.LASF159:
	.string	"adjustmentFunction"
.LASF387:
	.string	"mixerConfig_System"
.LASF108:
	.string	"BOXHEADADJ"
.LASF405:
	.string	"imuRuntimeConfig"
.LASF402:
	.string	"_i2c"
.LASF207:
	.string	"CW90_DEG_FLIP"
.LASF238:
	.string	"accz_lpf_cutoff"
.LASF144:
	.string	"rcControlsConfig_s"
.LASF316:
	.string	"PIDPITCH"
.LASF13:
	.string	"char"
.LASF354:
	.string	"mincommand"
.LASF247:
	.string	"motorMixer_s"
.LASF249:
	.string	"motorMixer_t"
.LASF290:
	.string	"servoConf"
.LASF368:
	.string	"systemConfig_System"
.LASF396:
	.string	"gpsProfile_ProfileCurrent"
.LASF322:
	.string	"PIDLEVEL"
.LASF301:
	.string	"throttleCorrectionConfig_s"
.LASF33:
	.string	"current_profile_index"
.LASF71:
	.string	"thrMid8"
.LASF50:
	.string	"A_SCALE_6G"
.LASF324:
	.string	"PIDVEL"
.LASF187:
	.string	"vbatscale"
.LASF283:
	.string	"middle"
.LASF287:
	.string	"reversedSources"
.LASF5:
	.string	"uint8_t"
.LASF362:
	.string	"__pg_registry_start"
.LASF196:
	.string	"roll"
.LASF312:
	.string	"failsafe_throttle_low_delay"
.LASF142:
	.string	"modeActivationConditions"
.LASF133:
	.string	"startStep"
.LASF42:
	.string	"mraa_i2c_context"
.LASF18:
	.string	"AI_ROLL"
.LASF389:
	.string	"inputSource_e"
.LASF88:
	.string	"rcmap"
.LASF296:
	.string	"dcm_kp"
.LASF20:
	.string	"ANGLE_INDEX_COUNT"
.LASF127:
	.string	"BOXBLACKBOX"
.LASF41:
	.string	"long long int"
.LASF235:
	.string	"accelerometerConfig_s"
.LASF181:
	.string	"serialPortConfig_t"
.LASF198:
	.string	"flightDynamicsTrims_def_t"
.LASF188:
	.string	"vbatresdivval"
.LASF145:
	.string	"deadband"
.LASF273:
	.string	"INPUT_GIMBAL_PITCH"
.LASF120:
	.string	"BOXOSD"
.LASF217:
	.string	"acc_hardware"
.LASF325:
	.string	"PID_ITEM_COUNT"
.LASF388:
	.string	"motor3DConfig_System"
.LASF151:
	.string	"rcControlsConfig_t"
.LASF214:
	.string	"mag_align"
.LASF332:
	.string	"horizon_tilt_effect"
.LASF155:
	.string	"auto_disarm_delay"
.LASF106:
	.string	"BOXMAG"
.LASF216:
	.string	"sensorSelectionConfig_s"
.LASF220:
	.string	"sensorSelectionConfig_t"
.LASF403:
	.string	"sensorTrims"
.LASF95:
	.string	"rcSmoothing"
.LASF302:
	.string	"throttle_correction_angle"
.LASF390:
	.string	"customServoMixer_SystemArray"
.LASF68:
	.string	"controlRateConfig_s"
.LASF77:
	.string	"controlRateConfig_t"
.LASF83:
	.string	"step"
.LASF24:
	.string	"size"
.LASF293:
	.string	"looptime"
.LASF139:
	.string	"range"
.LASF55:
	.string	"M_SCALE_4GS"
.LASF262:
	.string	"INPUT_STABILIZED_PITCH"
.LASF203:
	.string	"CW90_DEG"
.LASF401:
	.string	"/home/aravind/git/cleanflight"
.LASF51:
	.string	"A_SCALE_8G"
.LASF31:
	.string	"featureConfig_t"
.LASF60:
	.string	"gyro"
.LASF258:
	.string	"deadband3d_high"
.LASF291:
	.string	"servoProfile_t"
.LASF213:
	.string	"acc_align"
.LASF263:
	.string	"INPUT_STABILIZED_YAW"
.LASF318:
	.string	"PIDALT"
.LASF268:
	.string	"INPUT_RC_THROTTLE"
.LASF199:
	.string	"values"
.LASF222:
	.string	"accZero"
.LASF113:
	.string	"BOXPASSTHRU"
.LASF391:
	.string	"servoProfile_ProfileCurrent"
.LASF72:
	.string	"thrExpo8"
.LASF138:
	.string	"auxChannelIndex"
.LASF212:
	.string	"gyro_align"
.LASF320:
	.string	"PIDPOSR"
.LASF58:
	.string	"LSM9DS0"
.LASF175:
	.string	"SERIAL_PORT_IDENTIFIER_MAX"
.LASF172:
	.string	"SERIAL_PORT_USB_VCP"
.LASF131:
	.string	"boxId_e"
.LASF351:
	.string	"motorAndServoConfig_s"
.LASF358:
	.string	"motorAndServoConfig_t"
.LASF378:
	.string	"serialConfig_System"
.LASF299:
	.string	"max_angle_inclination"
.LASF35:
	.string	"systemConfig_s"
.LASF38:
	.string	"systemConfig_t"
.LASF242:
	.string	"telemetryConfig_s"
.LASF246:
	.string	"telemetryConfig_t"
.LASF364:
	.string	"__pg_resetdata_start"
.LASF7:
	.string	"uint16_t"
.LASF16:
	.string	"FD_YAW"
.LASF226:
	.string	"mag_declination"
.LASF341:
	.string	"nav_speed_max"
.LASF393:
	.string	"throttleCorrectionConfig"
.LASF29:
	.string	"featureConfig_s"
.LASF112:
	.string	"BOXGPSHOLD"
.LASF124:
	.string	"BOXSERVO1"
.LASF125:
	.string	"BOXSERVO2"
.LASF126:
	.string	"BOXSERVO3"
.LASF309:
	.string	"failsafe_off_delay"
.LASF86:
	.string	"rxChannelRangeConfiguration_t"
.LASF164:
	.string	"adjustmentRanges"
.LASF257:
	.string	"deadband3d_low"
.LASF346:
	.string	"vbatmincellvoltage"
.LASF233:
	.string	"accDeadband_s"
.LASF398:
	.string	"motorAndServoConfig_System"
.LASF141:
	.string	"modeActivationProfile_s"
.LASF143:
	.string	"modeActivationProfile_t"
.LASF150:
	.string	"deadband3d_throttle"
.LASF61:
	.string	"gScale"
.LASF333:
	.string	"horizon_tilt_mode"
.LASF348:
	.string	"batteryCapacity"
.LASF331:
	.string	"deltaMethod"
.LASF121:
	.string	"BOXTELEMETRY"
.LASF265:
	.string	"INPUT_RC_ROLL"
.LASF167:
	.string	"SERIAL_PORT_UART1"
.LASF168:
	.string	"SERIAL_PORT_UART2"
.LASF169:
	.string	"SERIAL_PORT_UART3"
.LASF223:
	.string	"magZero"
.LASF171:
	.string	"SERIAL_PORT_UART5"
.LASF337:
	.string	"gps_lpf"
.LASF284:
	.string	"angleAtMin"
.LASF117:
	.string	"BOXLLIGHTS"
.LASF152:
	.string	"armingConfig_s"
.LASF157:
	.string	"armingConfig_t"
.LASF328:
	.string	"yaw_p_limit"
.LASF381:
	.string	"sensorAlignmentConfig_System"
.LASF123:
	.string	"BOXSONAR"
.LASF148:
	.string	"alt_hold_fast_change"
.LASF129:
	.string	"BOXAIRMODE"
.LASF111:
	.string	"BOXGPSHOME"
.LASF66:
	.string	"mRes"
.LASF205:
	.string	"CW270_DEG"
.LASF76:
	.string	"tpa_breakpoint"
.LASF319:
	.string	"PIDPOS"
.LASF344:
	.string	"batteryConfig_s"
.LASF350:
	.string	"batteryConfig_t"
.LASF176:
	.string	"serialPortIdentifier_e"
.LASF236:
	.string	"accelerometerTrims"
.LASF162:
	.string	"adjustmentRange_t"
.LASF26:
	.string	"reset"
.LASF392:
	.string	"imuConfig"
.LASF400:
	.string	"src/main/fc/config.c"
.LASF210:
	.string	"sensor_align_e"
.LASF105:
	.string	"BOXBARO"
.LASF87:
	.string	"rxConfig_s"
.LASF101:
	.string	"rxConfig_t"
.LASF276:
	.string	"servoMixer_s"
.LASF281:
	.string	"servoMixer_t"
.LASF277:
	.string	"targetChannel"
.LASF191:
	.string	"SENSOR_INDEX_GYRO"
.LASF178:
	.string	"identifier"
.LASF54:
	.string	"M_SCALE_2GS"
.LASF267:
	.string	"INPUT_RC_YAW"
.LASF96:
	.string	"midrc"
.LASF12:
	.string	"sizetype"
.LASF376:
	.string	"armingConfig_System"
.LASF327:
	.string	"pidController"
.LASF25:
	.string	"address"
.LASF206:
	.string	"CW0_DEG_FLIP"
.LASF136:
	.string	"modeActivationCondition_s"
.LASF256:
	.string	"motor3DConfig_s"
.LASF260:
	.string	"motor3DConfig_t"
.LASF21:
	.string	"float"
.LASF253:
	.string	"yaw_motor_direction"
.LASF100:
	.string	"rx_max_usec"
.LASF195:
	.string	"int16_flightDynamicsTrims_s"
.LASF338:
	.string	"nav_slew_rate"
.LASF208:
	.string	"CW180_DEG_FLIP"
.LASF221:
	.string	"sensorTrims_s"
.LASF264:
	.string	"INPUT_STABILIZED_THROTTLE"
.LASF252:
	.string	"pid_at_min_throttle"
.LASF189:
	.string	"vbatresdivmultiplier"
.LASF149:
	.string	"yaw_control_direction"
.LASF73:
	.string	"rates"
.LASF6:
	.string	"unsigned char"
.LASF307:
	.string	"failsafeConfig_s"
.LASF314:
	.string	"failsafeConfig_t"
.LASF46:
	.string	"gyro_scale"
.LASF342:
	.string	"ap_mode"
.LASF115:
	.string	"BOXLEDMAX"
.LASF349:
	.string	"amperageMeterSource"
.LASF294:
	.string	"gyroSync"
.LASF36:
	.string	"emf_avoidance"
.LASF30:
	.string	"enabledFeatures"
.LASF359:
	.string	"U_ID_0"
.LASF356:
	.string	"motor_pwm_rate"
.LASF225:
	.string	"compassConfig_s"
.LASF227:
	.string	"compassConfig_t"
.LASF251:
	.string	"mixerMode"
.LASF37:
	.string	"i2c_highspeed"
.LASF102:
	.string	"BOXARM"
.LASF369:
	.string	"controlRateProfiles_SystemArray"
.LASF353:
	.string	"maxthrottle"
.LASF43:
	.string	"G_SCALE_245DPS"
.LASF2:
	.string	"signed char"
.LASF118:
	.string	"BOXCALIB"
.LASF374:
	.string	"modeActivationProfile_ProfileCurrent"
.LASF228:
	.string	"rollAndPitchTrims_s"
.LASF232:
	.string	"rollAndPitchTrims_t"
.LASF231:
	.string	"rollAndPitchTrims_u"
.LASF243:
	.string	"telemetry_switch"
.LASF278:
	.string	"inputSource"
.LASF45:
	.string	"G_SCALE_2000DPS"
.LASF67:
	.string	"LSM9DS0_t"
.LASF285:
	.string	"angleAtMax"
.LASF32:
	.string	"profileSelection_s"
.LASF34:
	.string	"profileSelection_t"
.LASF98:
	.string	"maxcheck"
.LASF70:
	.string	"rcExpo8"
.LASF347:
	.string	"vbatwarningcellvoltage"
.LASF177:
	.string	"serialPortConfig_s"
.LASF211:
	.string	"sensorAlignmentConfig_s"
.LASF215:
	.string	"sensorAlignmentConfig_t"
.LASF352:
	.string	"minthrottle"
.LASF261:
	.string	"INPUT_STABILIZED_ROLL"
.LASF248:
	.string	"throttle"
.LASF201:
	.string	"ALIGN_DEFAULT"
.LASF74:
	.string	"dynThrPID"
.LASF166:
	.string	"SERIAL_PORT_NONE"
.LASF311:
	.string	"failsafe_kill_switch"
.LASF158:
	.string	"adjustmentRange_s"
.LASF339:
	.string	"nav_controls_heading"
.LASF91:
	.string	"spektrum_sat_bind"
.LASF23:
	.string	"pgResetFunc"
.LASF137:
	.string	"modeId"
.LASF394:
	.string	"failsafeConfig_System"
.LASF160:
	.string	"auxSwitchChannelIndex"
.LASF219:
	.string	"baro_hardware"
.LASF254:
	.string	"yaw_jump_prevention_limit"
.LASF404:
	.string	"activateConfig"
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
