	.file	"rc_adjustments.c"
# GNU C99 (Ubuntu 5.4.1-2ubuntu1~16.04) version 5.4.1 20160904 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.1 20160904, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed rc_adjustments.i -mtune=generic
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
	.comm	imu,8,8
	.comm	__pg_registry_start,8,8
	.comm	__pg_registry_end,8,8
	.comm	__pg_resetdata_start,8,8
	.comm	__pg_resetdata_end,8,8
	.comm	featureConfig,8,8
	.comm	profileSelection_System,1,1
	.comm	blackboxConfig_System,3,1
	.comm	rxConfig_System,26,16
	.comm	armingConfig_System,4,1
	.section	.bss.adjustmentProfile_Storage,"aw",@nobits
	.align 32
	.type	adjustmentProfile_Storage, @object
	.size	adjustmentProfile_Storage, 216
adjustmentProfile_Storage:
	.zero	216
	.comm	adjustmentProfile_ProfileCurrent,8,8
	.globl	adjustmentProfile_Registry
	.section	.pg_registry,"a",@progbits
	.align 8
	.type	adjustmentProfile_Registry, @object
	.size	adjustmentProfile_Registry, 32
adjustmentProfile_Registry:
# pgn:
	.value	37
# size:
	.value	-32696
# address:
	.zero	4
	.quad	adjustmentProfile_Storage
# ptr:
	.quad	adjustmentProfile_ProfileCurrent
# reset:
# ptr:
	.quad	0
	.globl	adjustmentStateMask
	.section	.bss.adjustmentStateMask,"aw",@nobits
	.type	adjustmentStateMask, @object
	.size	adjustmentStateMask, 1
adjustmentStateMask:
	.zero	1
	.comm	adjustmentStates,64,32
	.section	.text.resetAdjustmentStates,"ax",@progbits
	.globl	resetAdjustmentStates
	.type	resetAdjustmentStates, @function
resetAdjustmentStates:
.LFB21:
	.file 1 "src/main/fc/rc_adjustments.c"
	.loc 1 350 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 351 0
	movl	$64, %edx	#,
	movl	$0, %esi	#,
	movl	$adjustmentStates, %edi	#,
	call	memset	#
	.loc 1 352 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	resetAdjustmentStates, .-resetAdjustmentStates
	.text
.Letext0:
	.file 2 "/usr/include/stdint.h"
	.file 3 "/usr/include/mraa/i2c.h"
	.file 4 "./src/main/drivers/SFE_LSM9DS0.h"
	.file 5 "./src/main/config/parameter_group.h"
	.file 6 "./src/main/common/axis.h"
	.file 7 "./src/main/config/feature.h"
	.file 8 "./src/main/config/profile.h"
	.file 9 "./src/main/flight/pid.h"
	.file 10 "./src/main/fc/rate_profile.h"
	.file 11 "./src/main/rx/rx.h"
	.file 12 "./src/main/blackbox/blackbox.h"
	.file 13 "./src/main/fc/rc_controls.h"
	.file 14 "./src/main/fc/rc_adjustments.h"
	.file 15 "./src/main/target/edison/target.h"
	.file 16 "./src/main/drivers/system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc9a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF228
	.byte	0xc
	.long	.LASF229
	.long	.LASF230
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
	.byte	0x6
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
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF20
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF21
	.uleb128 0x2
	.long	.LASF22
	.byte	0x3
	.byte	0x35
	.long	0xf4
	.uleb128 0x8
	.byte	0x8
	.long	0xfa
	.uleb128 0x9
	.long	.LASF231
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.long	0x8a
	.byte	0x4
	.byte	0x81
	.long	0x122
	.uleb128 0x6
	.long	.LASF23
	.byte	0
	.uleb128 0x6
	.long	.LASF24
	.byte	0x1
	.uleb128 0x6
	.long	.LASF25
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF26
	.byte	0x4
	.byte	0x86
	.long	0xff
	.uleb128 0xa
	.long	.LASF27
	.byte	0x4
	.long	0x8a
	.byte	0x4
	.byte	0x89
	.long	0x15c
	.uleb128 0x6
	.long	.LASF28
	.byte	0
	.uleb128 0x6
	.long	.LASF29
	.byte	0x1
	.uleb128 0x6
	.long	.LASF30
	.byte	0x2
	.uleb128 0x6
	.long	.LASF31
	.byte	0x3
	.uleb128 0x6
	.long	.LASF32
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF27
	.byte	0x4
	.byte	0x90
	.long	0x12d
	.uleb128 0xa
	.long	.LASF33
	.byte	0x4
	.long	0x8a
	.byte	0x4
	.byte	0x93
	.long	0x190
	.uleb128 0x6
	.long	.LASF34
	.byte	0
	.uleb128 0x6
	.long	.LASF35
	.byte	0x1
	.uleb128 0x6
	.long	.LASF36
	.byte	0x2
	.uleb128 0x6
	.long	.LASF37
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF33
	.byte	0x4
	.byte	0x99
	.long	0x167
	.uleb128 0xb
	.long	.LASF54
	.byte	0x40
	.byte	0x4
	.byte	0xdc
	.long	0x276
	.uleb128 0xc
	.string	"gx"
	.byte	0x4
	.byte	0xe2
	.long	0x3b
	.byte	0
	.uleb128 0xc
	.string	"gy"
	.byte	0x4
	.byte	0xe2
	.long	0x3b
	.byte	0x2
	.uleb128 0xc
	.string	"gz"
	.byte	0x4
	.byte	0xe2
	.long	0x3b
	.byte	0x4
	.uleb128 0xc
	.string	"ax"
	.byte	0x4
	.byte	0xe3
	.long	0x3b
	.byte	0x6
	.uleb128 0xc
	.string	"ay"
	.byte	0x4
	.byte	0xe3
	.long	0x3b
	.byte	0x8
	.uleb128 0xc
	.string	"az"
	.byte	0x4
	.byte	0xe3
	.long	0x3b
	.byte	0xa
	.uleb128 0xc
	.string	"mx"
	.byte	0x4
	.byte	0xe4
	.long	0x3b
	.byte	0xc
	.uleb128 0xc
	.string	"my"
	.byte	0x4
	.byte	0xe4
	.long	0x3b
	.byte	0xe
	.uleb128 0xc
	.string	"mz"
	.byte	0x4
	.byte	0xe4
	.long	0x3b
	.byte	0x10
	.uleb128 0xd
	.long	.LASF38
	.byte	0x4
	.byte	0xe5
	.long	0x3b
	.byte	0x12
	.uleb128 0xd
	.long	.LASF39
	.byte	0x4
	.byte	0xe7
	.long	0xe9
	.byte	0x18
	.uleb128 0xc
	.string	"xm"
	.byte	0x4
	.byte	0xe8
	.long	0xe9
	.byte	0x20
	.uleb128 0xd
	.long	.LASF40
	.byte	0x4
	.byte	0xec
	.long	0x122
	.byte	0x28
	.uleb128 0xd
	.long	.LASF41
	.byte	0x4
	.byte	0xed
	.long	0x15c
	.byte	0x2c
	.uleb128 0xd
	.long	.LASF42
	.byte	0x4
	.byte	0xee
	.long	0x190
	.byte	0x30
	.uleb128 0xd
	.long	.LASF43
	.byte	0x4
	.byte	0xf3
	.long	0xa6
	.byte	0x34
	.uleb128 0xd
	.long	.LASF44
	.byte	0x4
	.byte	0xf3
	.long	0xa6
	.byte	0x38
	.uleb128 0xd
	.long	.LASF45
	.byte	0x4
	.byte	0xf3
	.long	0xa6
	.byte	0x3c
	.byte	0
	.uleb128 0x2
	.long	.LASF46
	.byte	0x4
	.byte	0xf5
	.long	0x19b
	.uleb128 0x2
	.long	.LASF47
	.byte	0x5
	.byte	0x15
	.long	0x6d
	.uleb128 0x5
	.byte	0x4
	.long	0x8a
	.byte	0x5
	.byte	0x1d
	.long	0x2bb
	.uleb128 0xe
	.long	.LASF48
	.value	0xfff
	.uleb128 0xe
	.long	.LASF49
	.value	0xf000
	.uleb128 0xe
	.long	.LASF50
	.value	0xfff
	.uleb128 0x6
	.long	.LASF51
	.byte	0
	.uleb128 0xe
	.long	.LASF52
	.value	0x8000
	.byte	0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x5
	.byte	0x26
	.long	0x2c6
	.uleb128 0xf
	.long	0x2d6
	.uleb128 0x10
	.long	0xd9
	.uleb128 0x10
	.long	0x4d
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0x5
	.byte	0x2d
	.long	0x2f4
	.uleb128 0x12
	.string	"ptr"
	.byte	0x5
	.byte	0x2e
	.long	0xd9
	.uleb128 0x12
	.string	"fn"
	.byte	0x5
	.byte	0x2f
	.long	0x2f4
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2bb
	.uleb128 0xb
	.long	.LASF55
	.byte	0x20
	.byte	0x5
	.byte	0x28
	.long	0x343
	.uleb128 0xc
	.string	"pgn"
	.byte	0x5
	.byte	0x29
	.long	0x281
	.byte	0
	.uleb128 0xd
	.long	.LASF56
	.byte	0x5
	.byte	0x2a
	.long	0x6d
	.byte	0x2
	.uleb128 0xd
	.long	.LASF57
	.byte	0x5
	.byte	0x2b
	.long	0x343
	.byte	0x8
	.uleb128 0xc
	.string	"ptr"
	.byte	0x5
	.byte	0x2c
	.long	0x349
	.byte	0x10
	.uleb128 0xd
	.long	.LASF58
	.byte	0x5
	.byte	0x30
	.long	0x2d6
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x5b
	.uleb128 0x8
	.byte	0x8
	.long	0x343
	.uleb128 0x2
	.long	.LASF59
	.byte	0x5
	.byte	0x31
	.long	0x2fa
	.uleb128 0xb
	.long	.LASF60
	.byte	0x4
	.byte	0x7
	.byte	0x14
	.long	0x373
	.uleb128 0xd
	.long	.LASF61
	.byte	0x7
	.byte	0x15
	.long	0x7f
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x7
	.byte	0x16
	.long	0x35a
	.uleb128 0xb
	.long	.LASF63
	.byte	0x1
	.byte	0x8
	.byte	0x16
	.long	0x397
	.uleb128 0xd
	.long	.LASF64
	.byte	0x8
	.byte	0x17
	.long	0x5b
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x8
	.byte	0x18
	.long	0x37e
	.uleb128 0x5
	.byte	0x4
	.long	0x8a
	.byte	0x9
	.byte	0x1c
	.long	0x3f1
	.uleb128 0x6
	.long	.LASF66
	.byte	0
	.uleb128 0x6
	.long	.LASF67
	.byte	0x1
	.uleb128 0x6
	.long	.LASF68
	.byte	0x2
	.uleb128 0x6
	.long	.LASF69
	.byte	0x3
	.uleb128 0x6
	.long	.LASF70
	.byte	0x4
	.uleb128 0x6
	.long	.LASF71
	.byte	0x5
	.uleb128 0x6
	.long	.LASF72
	.byte	0x6
	.uleb128 0x6
	.long	.LASF73
	.byte	0x7
	.uleb128 0x6
	.long	.LASF74
	.byte	0x8
	.uleb128 0x6
	.long	.LASF75
	.byte	0x9
	.uleb128 0x6
	.long	.LASF76
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.long	.LASF77
	.byte	0x2a
	.byte	0x9
	.byte	0x3d
	.long	0x473
	.uleb128 0xc
	.string	"P8"
	.byte	0x9
	.byte	0x3e
	.long	0x473
	.byte	0
	.uleb128 0xc
	.string	"I8"
	.byte	0x9
	.byte	0x3f
	.long	0x473
	.byte	0xa
	.uleb128 0xc
	.string	"D8"
	.byte	0x9
	.byte	0x40
	.long	0x473
	.byte	0x14
	.uleb128 0xd
	.long	.LASF78
	.byte	0x9
	.byte	0x41
	.long	0x5b
	.byte	0x1e
	.uleb128 0xd
	.long	.LASF79
	.byte	0x9
	.byte	0x42
	.long	0x6d
	.byte	0x20
	.uleb128 0xd
	.long	.LASF80
	.byte	0x9
	.byte	0x43
	.long	0x6d
	.byte	0x22
	.uleb128 0xd
	.long	.LASF81
	.byte	0x9
	.byte	0x44
	.long	0x6d
	.byte	0x24
	.uleb128 0xd
	.long	.LASF82
	.byte	0x9
	.byte	0x45
	.long	0x5b
	.byte	0x26
	.uleb128 0xd
	.long	.LASF83
	.byte	0x9
	.byte	0x46
	.long	0x5b
	.byte	0x27
	.uleb128 0xd
	.long	.LASF84
	.byte	0x9
	.byte	0x47
	.long	0x5b
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	0x5b
	.long	0x483
	.uleb128 0x14
	.long	0x98
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.long	.LASF85
	.byte	0x9
	.byte	0x48
	.long	0x3f1
	.uleb128 0xb
	.long	.LASF86
	.byte	0xc
	.byte	0xa
	.byte	0x14
	.long	0x4fb
	.uleb128 0xd
	.long	.LASF87
	.byte	0xa
	.byte	0x15
	.long	0x5b
	.byte	0
	.uleb128 0xd
	.long	.LASF88
	.byte	0xa
	.byte	0x16
	.long	0x5b
	.byte	0x1
	.uleb128 0xd
	.long	.LASF89
	.byte	0xa
	.byte	0x17
	.long	0x5b
	.byte	0x2
	.uleb128 0xd
	.long	.LASF90
	.byte	0xa
	.byte	0x18
	.long	0x5b
	.byte	0x3
	.uleb128 0xd
	.long	.LASF91
	.byte	0xa
	.byte	0x19
	.long	0x5e7
	.byte	0x4
	.uleb128 0xd
	.long	.LASF92
	.byte	0xa
	.byte	0x1a
	.long	0x5b
	.byte	0x7
	.uleb128 0xd
	.long	.LASF93
	.byte	0xa
	.byte	0x1b
	.long	0x5b
	.byte	0x8
	.uleb128 0xd
	.long	.LASF94
	.byte	0xa
	.byte	0x1c
	.long	0x6d
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.long	.LASF95
	.byte	0x1a
	.byte	0xb
	.byte	0x6f
	.long	0x5a4
	.uleb128 0xd
	.long	.LASF96
	.byte	0xb
	.byte	0x70
	.long	0x686
	.byte	0
	.uleb128 0xd
	.long	.LASF97
	.byte	0xb
	.byte	0x71
	.long	0x5b
	.byte	0x8
	.uleb128 0xd
	.long	.LASF98
	.byte	0xb
	.byte	0x72
	.long	0x5b
	.byte	0x9
	.uleb128 0xd
	.long	.LASF99
	.byte	0xb
	.byte	0x73
	.long	0x5b
	.byte	0xa
	.uleb128 0xd
	.long	.LASF100
	.byte	0xb
	.byte	0x74
	.long	0x5b
	.byte	0xb
	.uleb128 0xd
	.long	.LASF101
	.byte	0xb
	.byte	0x75
	.long	0x5b
	.byte	0xc
	.uleb128 0xd
	.long	.LASF102
	.byte	0xb
	.byte	0x76
	.long	0x5b
	.byte	0xd
	.uleb128 0xd
	.long	.LASF103
	.byte	0xb
	.byte	0x77
	.long	0x5b
	.byte	0xe
	.uleb128 0xd
	.long	.LASF104
	.byte	0xb
	.byte	0x78
	.long	0x6d
	.byte	0x10
	.uleb128 0xd
	.long	.LASF105
	.byte	0xb
	.byte	0x79
	.long	0x6d
	.byte	0x12
	.uleb128 0xd
	.long	.LASF106
	.byte	0xb
	.byte	0x7a
	.long	0x6d
	.byte	0x14
	.uleb128 0xd
	.long	.LASF107
	.byte	0xb
	.byte	0x7c
	.long	0x6d
	.byte	0x16
	.uleb128 0xd
	.long	.LASF108
	.byte	0xb
	.byte	0x7d
	.long	0x6d
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF109
	.uleb128 0xb
	.long	.LASF110
	.byte	0x3
	.byte	0xc
	.byte	0x16
	.long	0x5dc
	.uleb128 0xd
	.long	.LASF111
	.byte	0xc
	.byte	0x17
	.long	0x5b
	.byte	0
	.uleb128 0xd
	.long	.LASF112
	.byte	0xc
	.byte	0x18
	.long	0x5b
	.byte	0x1
	.uleb128 0xd
	.long	.LASF113
	.byte	0xc
	.byte	0x19
	.long	0x5b
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF114
	.byte	0xc
	.byte	0x1a
	.long	0x5ab
	.uleb128 0x13
	.long	0x5b
	.long	0x5f7
	.uleb128 0x14
	.long	0x98
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF115
	.byte	0xa
	.byte	0x1d
	.long	0x48e
	.uleb128 0xb
	.long	.LASF116
	.byte	0x1
	.byte	0xa
	.byte	0x24
	.long	0x61b
	.uleb128 0xd
	.long	.LASF117
	.byte	0xa
	.byte	0x25
	.long	0x5b
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF118
	.byte	0xa
	.byte	0x26
	.long	0x602
	.uleb128 0xb
	.long	.LASF119
	.byte	0x2
	.byte	0xb
	.byte	0x65
	.long	0x64b
	.uleb128 0xd
	.long	.LASF120
	.byte	0xb
	.byte	0x66
	.long	0x5b
	.byte	0
	.uleb128 0xd
	.long	.LASF121
	.byte	0xb
	.byte	0x67
	.long	0x5b
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF122
	.byte	0xb
	.byte	0x68
	.long	0x626
	.uleb128 0xb
	.long	.LASF123
	.byte	0x4
	.byte	0xb
	.byte	0x6a
	.long	0x67b
	.uleb128 0xc
	.string	"min"
	.byte	0xb
	.byte	0x6b
	.long	0x6d
	.byte	0
	.uleb128 0xc
	.string	"max"
	.byte	0xb
	.byte	0x6c
	.long	0x6d
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF124
	.byte	0xb
	.byte	0x6d
	.long	0x656
	.uleb128 0x13
	.long	0x5b
	.long	0x696
	.uleb128 0x14
	.long	0x98
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.long	.LASF125
	.byte	0xb
	.byte	0x7e
	.long	0x4fb
	.uleb128 0x5
	.byte	0x4
	.long	0x8a
	.byte	0xd
	.byte	0x16
	.long	0x75c
	.uleb128 0x6
	.long	.LASF126
	.byte	0
	.uleb128 0x6
	.long	.LASF127
	.byte	0x1
	.uleb128 0x6
	.long	.LASF128
	.byte	0x2
	.uleb128 0x6
	.long	.LASF129
	.byte	0x3
	.uleb128 0x6
	.long	.LASF130
	.byte	0x4
	.uleb128 0x6
	.long	.LASF131
	.byte	0x5
	.uleb128 0x6
	.long	.LASF132
	.byte	0x6
	.uleb128 0x6
	.long	.LASF133
	.byte	0x7
	.uleb128 0x6
	.long	.LASF134
	.byte	0x8
	.uleb128 0x6
	.long	.LASF135
	.byte	0x9
	.uleb128 0x6
	.long	.LASF136
	.byte	0xa
	.uleb128 0x6
	.long	.LASF137
	.byte	0xb
	.uleb128 0x6
	.long	.LASF138
	.byte	0xc
	.uleb128 0x6
	.long	.LASF139
	.byte	0xd
	.uleb128 0x6
	.long	.LASF140
	.byte	0xe
	.uleb128 0x6
	.long	.LASF141
	.byte	0xf
	.uleb128 0x6
	.long	.LASF142
	.byte	0x10
	.uleb128 0x6
	.long	.LASF143
	.byte	0x11
	.uleb128 0x6
	.long	.LASF144
	.byte	0x12
	.uleb128 0x6
	.long	.LASF145
	.byte	0x13
	.uleb128 0x6
	.long	.LASF146
	.byte	0x14
	.uleb128 0x6
	.long	.LASF147
	.byte	0x15
	.uleb128 0x6
	.long	.LASF148
	.byte	0x16
	.uleb128 0x6
	.long	.LASF149
	.byte	0x17
	.uleb128 0x6
	.long	.LASF150
	.byte	0x18
	.uleb128 0x6
	.long	.LASF151
	.byte	0x19
	.uleb128 0x6
	.long	.LASF152
	.byte	0x1a
	.uleb128 0x6
	.long	.LASF153
	.byte	0x1b
	.uleb128 0x6
	.long	.LASF154
	.byte	0x1c
	.byte	0
	.uleb128 0x2
	.long	.LASF155
	.byte	0xd
	.byte	0x35
	.long	0x6a1
	.uleb128 0xb
	.long	.LASF156
	.byte	0x2
	.byte	0xd
	.byte	0x75
	.long	0x78c
	.uleb128 0xd
	.long	.LASF157
	.byte	0xd
	.byte	0x76
	.long	0x5b
	.byte	0
	.uleb128 0xd
	.long	.LASF158
	.byte	0xd
	.byte	0x77
	.long	0x5b
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF159
	.byte	0xd
	.byte	0x78
	.long	0x767
	.uleb128 0xb
	.long	.LASF160
	.byte	0x8
	.byte	0xd
	.byte	0x7a
	.long	0x7c8
	.uleb128 0xd
	.long	.LASF161
	.byte	0xd
	.byte	0x7b
	.long	0x75c
	.byte	0
	.uleb128 0xd
	.long	.LASF162
	.byte	0xd
	.byte	0x7c
	.long	0x5b
	.byte	0x4
	.uleb128 0xd
	.long	.LASF163
	.byte	0xd
	.byte	0x7d
	.long	0x78c
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.long	.LASF164
	.byte	0xd
	.byte	0x7e
	.long	0x797
	.uleb128 0xb
	.long	.LASF165
	.byte	0xa0
	.byte	0xd
	.byte	0x82
	.long	0x7ec
	.uleb128 0xd
	.long	.LASF166
	.byte	0xd
	.byte	0x83
	.long	0x7ec
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x7c8
	.long	0x7fc
	.uleb128 0x14
	.long	0x98
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF167
	.byte	0xd
	.byte	0x84
	.long	0x7d3
	.uleb128 0xb
	.long	.LASF168
	.byte	0x8
	.byte	0xd
	.byte	0x8a
	.long	0x85c
	.uleb128 0xd
	.long	.LASF169
	.byte	0xd
	.byte	0x8b
	.long	0x5b
	.byte	0
	.uleb128 0xd
	.long	.LASF170
	.byte	0xd
	.byte	0x8c
	.long	0x5b
	.byte	0x1
	.uleb128 0xd
	.long	.LASF171
	.byte	0xd
	.byte	0x8d
	.long	0x5b
	.byte	0x2
	.uleb128 0xd
	.long	.LASF172
	.byte	0xd
	.byte	0x8e
	.long	0x5b
	.byte	0x3
	.uleb128 0xd
	.long	.LASF173
	.byte	0xd
	.byte	0x8f
	.long	0x29
	.byte	0x4
	.uleb128 0xd
	.long	.LASF174
	.byte	0xd
	.byte	0x90
	.long	0x6d
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF175
	.byte	0xd
	.byte	0x91
	.long	0x807
	.uleb128 0xb
	.long	.LASF176
	.byte	0x4
	.byte	0xd
	.byte	0x95
	.long	0x8a4
	.uleb128 0xd
	.long	.LASF177
	.byte	0xd
	.byte	0x97
	.long	0x5b
	.byte	0
	.uleb128 0xd
	.long	.LASF178
	.byte	0xd
	.byte	0x98
	.long	0x5b
	.byte	0x1
	.uleb128 0xd
	.long	.LASF179
	.byte	0xd
	.byte	0x99
	.long	0x5b
	.byte	0x2
	.uleb128 0xd
	.long	.LASF180
	.byte	0xd
	.byte	0x9a
	.long	0x5b
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF181
	.byte	0xd
	.byte	0x9b
	.long	0x867
	.uleb128 0xb
	.long	.LASF182
	.byte	0x1
	.byte	0xe
	.byte	0x4f
	.long	0x8c8
	.uleb128 0xd
	.long	.LASF121
	.byte	0xe
	.byte	0x50
	.long	0x5b
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF183
	.byte	0xe
	.byte	0x51
	.long	0x8af
	.uleb128 0xb
	.long	.LASF184
	.byte	0x1
	.byte	0xe
	.byte	0x53
	.long	0x8ec
	.uleb128 0xd
	.long	.LASF185
	.byte	0xe
	.byte	0x54
	.long	0x5b
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF186
	.byte	0xe
	.byte	0x55
	.long	0x8d3
	.uleb128 0x15
	.long	.LASF232
	.byte	0x1
	.byte	0xe
	.byte	0x57
	.long	0x91a
	.uleb128 0x16
	.long	.LASF187
	.byte	0xe
	.byte	0x58
	.long	0x8c8
	.uleb128 0x16
	.long	.LASF188
	.byte	0xe
	.byte	0x59
	.long	0x8ec
	.byte	0
	.uleb128 0x2
	.long	.LASF189
	.byte	0xe
	.byte	0x5a
	.long	0x8f7
	.uleb128 0xb
	.long	.LASF190
	.byte	0x3
	.byte	0xe
	.byte	0x5c
	.long	0x956
	.uleb128 0xd
	.long	.LASF191
	.byte	0xe
	.byte	0x5d
	.long	0x5b
	.byte	0
	.uleb128 0xd
	.long	.LASF120
	.byte	0xe
	.byte	0x5e
	.long	0x5b
	.byte	0x1
	.uleb128 0xd
	.long	.LASF192
	.byte	0xe
	.byte	0x5f
	.long	0x91a
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF193
	.byte	0xe
	.byte	0x60
	.long	0x925
	.uleb128 0xb
	.long	.LASF194
	.byte	0x6
	.byte	0xe
	.byte	0x62
	.long	0x9aa
	.uleb128 0xd
	.long	.LASF162
	.byte	0xe
	.byte	0x64
	.long	0x5b
	.byte	0
	.uleb128 0xd
	.long	.LASF163
	.byte	0xe
	.byte	0x65
	.long	0x78c
	.byte	0x1
	.uleb128 0xd
	.long	.LASF191
	.byte	0xe
	.byte	0x68
	.long	0x5b
	.byte	0x3
	.uleb128 0xd
	.long	.LASF195
	.byte	0xe
	.byte	0x69
	.long	0x5b
	.byte	0x4
	.uleb128 0xd
	.long	.LASF196
	.byte	0xe
	.byte	0x6c
	.long	0x5b
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.long	.LASF197
	.byte	0xe
	.byte	0x6d
	.long	0x961
	.uleb128 0xb
	.long	.LASF198
	.byte	0x10
	.byte	0xe
	.byte	0x71
	.long	0x9f2
	.uleb128 0xd
	.long	.LASF162
	.byte	0xe
	.byte	0x72
	.long	0x5b
	.byte	0
	.uleb128 0xd
	.long	.LASF199
	.byte	0xe
	.byte	0x73
	.long	0x956
	.byte	0x1
	.uleb128 0xd
	.long	.LASF200
	.byte	0xe
	.byte	0x74
	.long	0x7f
	.byte	0x4
	.uleb128 0xd
	.long	.LASF163
	.byte	0xe
	.byte	0x75
	.long	0x9f2
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x9aa
	.uleb128 0x2
	.long	.LASF201
	.byte	0xe
	.byte	0x76
	.long	0x9b5
	.uleb128 0xb
	.long	.LASF202
	.byte	0x48
	.byte	0xe
	.byte	0x7a
	.long	0xa1c
	.uleb128 0xd
	.long	.LASF203
	.byte	0xe
	.byte	0x7b
	.long	0xa1c
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x9aa
	.long	0xa2c
	.uleb128 0x14
	.long	0x98
	.byte	0xb
	.byte	0
	.uleb128 0x2
	.long	.LASF204
	.byte	0xe
	.byte	0x7c
	.long	0xa03
	.uleb128 0x17
	.long	.LASF233
	.byte	0x1
	.value	0x15d
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.long	0xa2c
	.long	0xa61
	.uleb128 0x14
	.long	0x98
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.long	.LASF234
	.byte	0x1
	.byte	0x32
	.long	0xa51
	.uleb128 0x9
	.byte	0x3
	.quad	adjustmentProfile_Storage
	.uleb128 0x19
	.long	.LASF205
	.byte	0xf
	.byte	0xca
	.long	0x7f
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_0
	.uleb128 0x19
	.long	.LASF206
	.byte	0xf
	.byte	0xcb
	.long	0x7f
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_1
	.uleb128 0x19
	.long	.LASF207
	.byte	0xf
	.byte	0xcc
	.long	0x7f
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_2
	.uleb128 0x1a
	.string	"imu"
	.byte	0x10
	.byte	0x38
	.long	0xaca
	.uleb128 0x9
	.byte	0x3
	.quad	imu
	.uleb128 0x8
	.byte	0x8
	.long	0x276
	.uleb128 0x19
	.long	.LASF208
	.byte	0x5
	.byte	0x43
	.long	0xae5
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_start
	.uleb128 0x8
	.byte	0x8
	.long	0x34f
	.uleb128 0x19
	.long	.LASF209
	.byte	0x5
	.byte	0x44
	.long	0xae5
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_end
	.uleb128 0x19
	.long	.LASF210
	.byte	0x5
	.byte	0x47
	.long	0x343
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_start
	.uleb128 0x19
	.long	.LASF211
	.byte	0x5
	.byte	0x48
	.long	0x343
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_end
	.uleb128 0x19
	.long	.LASF212
	.byte	0x7
	.byte	0x18
	.long	0xb3f
	.uleb128 0x9
	.byte	0x3
	.quad	featureConfig
	.uleb128 0x8
	.byte	0x8
	.long	0x373
	.uleb128 0x19
	.long	.LASF213
	.byte	0x8
	.byte	0x1a
	.long	0x397
	.uleb128 0x9
	.byte	0x3
	.quad	profileSelection_System
	.uleb128 0x1b
	.long	.LASF214
	.byte	0x9
	.byte	0x4a
	.long	0xb65
	.uleb128 0x8
	.byte	0x8
	.long	0x483
	.uleb128 0x19
	.long	.LASF215
	.byte	0xc
	.byte	0x1c
	.long	0x5dc
	.uleb128 0x9
	.byte	0x3
	.quad	blackboxConfig_System
	.uleb128 0x13
	.long	0x5f7
	.long	0xb90
	.uleb128 0x14
	.long	0x98
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.long	.LASF216
	.byte	0xa
	.byte	0x20
	.long	0xb80
	.uleb128 0x1b
	.long	.LASF217
	.byte	0xa
	.byte	0x28
	.long	0xba6
	.uleb128 0x8
	.byte	0x8
	.long	0x61b
	.uleb128 0x19
	.long	.LASF218
	.byte	0xb
	.byte	0x80
	.long	0x696
	.uleb128 0x9
	.byte	0x3
	.quad	rxConfig_System
	.uleb128 0x13
	.long	0x64b
	.long	0xbd1
	.uleb128 0x14
	.long	0x98
	.byte	0x11
	.byte	0
	.uleb128 0x1b
	.long	.LASF219
	.byte	0xb
	.byte	0x82
	.long	0xbc1
	.uleb128 0x13
	.long	0x67b
	.long	0xbec
	.uleb128 0x14
	.long	0x98
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.long	.LASF220
	.byte	0xb
	.byte	0x83
	.long	0xbdc
	.uleb128 0x1b
	.long	.LASF221
	.byte	0xd
	.byte	0x86
	.long	0xc02
	.uleb128 0x8
	.byte	0x8
	.long	0x7fc
	.uleb128 0x1b
	.long	.LASF222
	.byte	0xd
	.byte	0x93
	.long	0xc13
	.uleb128 0x8
	.byte	0x8
	.long	0x85c
	.uleb128 0x19
	.long	.LASF223
	.byte	0xd
	.byte	0x9d
	.long	0x8a4
	.uleb128 0x9
	.byte	0x3
	.quad	armingConfig_System
	.uleb128 0x19
	.long	.LASF224
	.byte	0x1
	.byte	0x32
	.long	0xc43
	.uleb128 0x9
	.byte	0x3
	.quad	adjustmentProfile_ProfileCurrent
	.uleb128 0x8
	.byte	0x8
	.long	0xa2c
	.uleb128 0x19
	.long	.LASF225
	.byte	0x1
	.byte	0x32
	.long	0xc5e
	.uleb128 0x9
	.byte	0x3
	.quad	adjustmentProfile_Registry
	.uleb128 0x1c
	.long	0x34f
	.uleb128 0x19
	.long	.LASF226
	.byte	0x1
	.byte	0x34
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	adjustmentStateMask
	.uleb128 0x13
	.long	0x9f8
	.long	0xc88
	.uleb128 0x14
	.long	0x98
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.long	.LASF227
	.byte	0x1
	.byte	0x3b
	.long	0xc78
	.uleb128 0x9
	.byte	0x3
	.quad	adjustmentStates
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.byte	0
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LFB21
	.quad	.LFE21
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF54:
	.string	"LSM9DS0"
.LASF0:
	.string	"int8_t"
.LASF216:
	.string	"controlRateProfiles_SystemArray"
.LASF177:
	.string	"retarded_arm"
.LASF12:
	.string	"sizetype"
.LASF137:
	.string	"BOXPASSTHRU"
.LASF45:
	.string	"mRes"
.LASF36:
	.string	"M_SCALE_8GS"
.LASF224:
	.string	"adjustmentProfile_ProfileCurrent"
.LASF67:
	.string	"PIDPITCH"
.LASF61:
	.string	"enabledFeatures"
.LASF228:
	.string	"GNU C99 5.4.1 20160904 -mtune=generic -march=x86-64 -g -std=gnu99 -ffunction-sections -fdata-sections -ffat-lto-objects -fstack-protector-strong"
.LASF156:
	.string	"channelRange_s"
.LASF176:
	.string	"armingConfig_s"
.LASF181:
	.string	"armingConfig_t"
.LASF83:
	.string	"horizon_tilt_effect"
.LASF199:
	.string	"config"
.LASF42:
	.string	"mScale"
.LASF213:
	.string	"profileSelection_System"
.LASF174:
	.string	"deadband3d_throttle"
.LASF198:
	.string	"adjustmentState_s"
.LASF201:
	.string	"adjustmentState_t"
.LASF102:
	.string	"rssi_ppm_invert"
.LASF179:
	.string	"auto_disarm_delay"
.LASF66:
	.string	"PIDROLL"
.LASF211:
	.string	"__pg_resetdata_end"
.LASF187:
	.string	"stepConfig"
.LASF73:
	.string	"PIDLEVEL"
.LASF37:
	.string	"M_SCALE_12GS"
.LASF188:
	.string	"selectConfig"
.LASF27:
	.string	"accel_scale"
.LASF208:
	.string	"__pg_registry_start"
.LASF126:
	.string	"BOXARM"
.LASF4:
	.string	"long int"
.LASF49:
	.string	"PGR_PGN_VERSION_MASK"
.LASF68:
	.string	"PIDYAW"
.LASF221:
	.string	"modeActivationProfile_ProfileCurrent"
.LASF165:
	.string	"modeActivationProfile_s"
.LASF167:
	.string	"modeActivationProfile_t"
.LASF50:
	.string	"PGR_SIZE_MASK"
.LASF192:
	.string	"data"
.LASF110:
	.string	"blackboxConfig_s"
.LASF114:
	.string	"blackboxConfig_t"
.LASF22:
	.string	"mraa_i2c_context"
.LASF2:
	.string	"signed char"
.LASF122:
	.string	"rxFailsafeChannelConfig_t"
.LASF5:
	.string	"uint8_t"
.LASF92:
	.string	"dynThrPID"
.LASF80:
	.string	"dterm_lpf"
.LASF227:
	.string	"adjustmentStates"
.LASF121:
	.string	"step"
.LASF35:
	.string	"M_SCALE_4GS"
.LASF145:
	.string	"BOXTELEMETRY"
.LASF6:
	.string	"unsigned char"
.LASF89:
	.string	"thrMid8"
.LASF51:
	.string	"PGR_SIZE_SYSTEM_FLAG"
.LASF190:
	.string	"adjustmentConfig_s"
.LASF193:
	.string	"adjustmentConfig_t"
.LASF232:
	.string	"adjustmentConfig_u"
.LASF143:
	.string	"BOXGOV"
.LASF170:
	.string	"yaw_deadband"
.LASF151:
	.string	"BOXBLACKBOX"
.LASF109:
	.string	"_Bool"
.LASF103:
	.string	"rcSmoothing"
.LASF132:
	.string	"BOXHEADADJ"
.LASF76:
	.string	"PID_ITEM_COUNT"
.LASF13:
	.string	"char"
.LASF39:
	.string	"gyro"
.LASF136:
	.string	"BOXGPSHOLD"
.LASF214:
	.string	"pidProfile_ProfileCurrent"
.LASF230:
	.string	"/home/aravind/git/cleanflight"
.LASF210:
	.string	"__pg_resetdata_start"
.LASF105:
	.string	"mincheck"
.LASF135:
	.string	"BOXGPSHOME"
.LASF229:
	.string	"src/main/fc/rc_adjustments.c"
.LASF17:
	.string	"FD_PITCH"
.LASF94:
	.string	"tpa_breakpoint"
.LASF71:
	.string	"PIDPOSR"
.LASF101:
	.string	"rssi_scale"
.LASF168:
	.string	"rcControlsConfig_s"
.LASF175:
	.string	"rcControlsConfig_t"
.LASF182:
	.string	"adjustmentStepConfig_s"
.LASF183:
	.string	"adjustmentStepConfig_t"
.LASF159:
	.string	"channelRange_t"
.LASF133:
	.string	"BOXCAMSTAB"
.LASF139:
	.string	"BOXLEDMAX"
.LASF48:
	.string	"PGR_PGN_MASK"
.LASF226:
	.string	"adjustmentStateMask"
.LASF41:
	.string	"aScale"
.LASF172:
	.string	"alt_hold_fast_change"
.LASF23:
	.string	"G_SCALE_245DPS"
.LASF160:
	.string	"modeActivationCondition_s"
.LASF164:
	.string	"modeActivationCondition_t"
.LASF11:
	.string	"long unsigned int"
.LASF196:
	.string	"adjustmentIndex"
.LASF57:
	.string	"address"
.LASF202:
	.string	"adjustmentProfile_s"
.LASF204:
	.string	"adjustmentProfile_t"
.LASF117:
	.string	"defaultRateProfileIndex"
.LASF153:
	.string	"BOXAIRMODE"
.LASF99:
	.string	"spektrum_sat_bind"
.LASF108:
	.string	"rx_max_usec"
.LASF157:
	.string	"startStep"
.LASF93:
	.string	"rcYawExpo8"
.LASF96:
	.string	"rcmap"
.LASF18:
	.string	"FD_YAW"
.LASF72:
	.string	"PIDNAVR"
.LASF64:
	.string	"current_profile_index"
.LASF119:
	.string	"rxFailsafeChannelConfiguration_s"
.LASF203:
	.string	"adjustmentRanges"
.LASF21:
	.string	"long long int"
.LASF123:
	.string	"rxChannelRangeConfiguration_s"
.LASF124:
	.string	"rxChannelRangeConfiguration_t"
.LASF173:
	.string	"yaw_control_direction"
.LASF79:
	.string	"yaw_p_limit"
.LASF84:
	.string	"horizon_tilt_mode"
.LASF32:
	.string	"A_SCALE_16G"
.LASF15:
	.string	"double"
.LASF112:
	.string	"rate_denom"
.LASF97:
	.string	"serialrx_provider"
.LASF178:
	.string	"disarm_kill_switch"
.LASF155:
	.string	"boxId_e"
.LASF14:
	.string	"float"
.LASF10:
	.string	"unsigned int"
.LASF82:
	.string	"deltaMethod"
.LASF47:
	.string	"pgn_t"
.LASF100:
	.string	"rssi_channel"
.LASF55:
	.string	"pgRegistry_s"
.LASF59:
	.string	"pgRegistry_t"
.LASF171:
	.string	"alt_hold_deadband"
.LASF162:
	.string	"auxChannelIndex"
.LASF220:
	.string	"channelRanges_SystemArray"
.LASF129:
	.string	"BOXBARO"
.LASF28:
	.string	"A_SCALE_2G"
.LASF140:
	.string	"BOXLEDLOW"
.LASF116:
	.string	"rateProfileSelection_s"
.LASF118:
	.string	"rateProfileSelection_t"
.LASF77:
	.string	"pidProfile_s"
.LASF85:
	.string	"pidProfile_t"
.LASF26:
	.string	"gyro_scale"
.LASF222:
	.string	"rcControlsConfig_ProfileCurrent"
.LASF25:
	.string	"G_SCALE_2000DPS"
.LASF218:
	.string	"rxConfig_System"
.LASF141:
	.string	"BOXLLIGHTS"
.LASF148:
	.string	"BOXSERVO1"
.LASF149:
	.string	"BOXSERVO2"
.LASF150:
	.string	"BOXSERVO3"
.LASF98:
	.string	"sbus_inversion"
.LASF86:
	.string	"controlRateConfig_s"
.LASF115:
	.string	"controlRateConfig_t"
.LASF60:
	.string	"featureConfig_s"
.LASF62:
	.string	"featureConfig_t"
.LASF104:
	.string	"midrc"
.LASF33:
	.string	"mag_scale"
.LASF24:
	.string	"G_SCALE_500DPS"
.LASF52:
	.string	"PGR_SIZE_PROFILE_FLAG"
.LASF147:
	.string	"BOXSONAR"
.LASF75:
	.string	"PIDVEL"
.LASF69:
	.string	"PIDALT"
.LASF113:
	.string	"device"
.LASF56:
	.string	"size"
.LASF128:
	.string	"BOXHORIZON"
.LASF16:
	.string	"FD_ROLL"
.LASF20:
	.string	"long long unsigned int"
.LASF7:
	.string	"uint16_t"
.LASF215:
	.string	"blackboxConfig_System"
.LASF106:
	.string	"maxcheck"
.LASF154:
	.string	"CHECKBOX_ITEM_COUNT"
.LASF87:
	.string	"rcRate8"
.LASF134:
	.string	"BOXCAMTRIG"
.LASF191:
	.string	"adjustmentFunction"
.LASF184:
	.string	"adjustmentSelectConfig_s"
.LASF186:
	.string	"adjustmentSelectConfig_t"
.LASF200:
	.string	"timeoutAt"
.LASF40:
	.string	"gScale"
.LASF74:
	.string	"PIDMAG"
.LASF205:
	.string	"U_ID_0"
.LASF206:
	.string	"U_ID_1"
.LASF207:
	.string	"U_ID_2"
.LASF233:
	.string	"resetAdjustmentStates"
.LASF38:
	.string	"temperature"
.LASF166:
	.string	"modeActivationConditions"
.LASF29:
	.string	"A_SCALE_4G"
.LASF107:
	.string	"rx_min_usec"
.LASF180:
	.string	"max_arm_angle"
.LASF212:
	.string	"featureConfig"
.LASF58:
	.string	"reset"
.LASF19:
	.string	"FD_INDEX_COUNT"
.LASF169:
	.string	"deadband"
.LASF78:
	.string	"pidController"
.LASF70:
	.string	"PIDPOS"
.LASF194:
	.string	"adjustmentRange_s"
.LASF197:
	.string	"adjustmentRange_t"
.LASF195:
	.string	"auxSwitchChannelIndex"
.LASF46:
	.string	"LSM9DS0_t"
.LASF90:
	.string	"thrExpo8"
.LASF3:
	.string	"short int"
.LASF34:
	.string	"M_SCALE_2GS"
.LASF120:
	.string	"mode"
.LASF163:
	.string	"range"
.LASF225:
	.string	"adjustmentProfile_Registry"
.LASF217:
	.string	"rateProfileSelection_ProfileCurrent"
.LASF30:
	.string	"A_SCALE_6G"
.LASF1:
	.string	"int16_t"
.LASF219:
	.string	"failsafeChannelConfigs_SystemArray"
.LASF209:
	.string	"__pg_registry_end"
.LASF81:
	.string	"yaw_lpf"
.LASF138:
	.string	"BOXBEEPERON"
.LASF146:
	.string	"BOXGTUNE"
.LASF88:
	.string	"rcExpo8"
.LASF189:
	.string	"adjustmentData_t"
.LASF234:
	.string	"adjustmentProfile_Storage"
.LASF127:
	.string	"BOXANGLE"
.LASF161:
	.string	"modeId"
.LASF31:
	.string	"A_SCALE_8G"
.LASF231:
	.string	"_i2c"
.LASF9:
	.string	"uint32_t"
.LASF185:
	.string	"switchPositions"
.LASF142:
	.string	"BOXCALIB"
.LASF131:
	.string	"BOXHEADFREE"
.LASF8:
	.string	"short unsigned int"
.LASF223:
	.string	"armingConfig_System"
.LASF53:
	.string	"pgResetFunc"
.LASF95:
	.string	"rxConfig_s"
.LASF125:
	.string	"rxConfig_t"
.LASF44:
	.string	"aRes"
.LASF152:
	.string	"BOXFAILSAFE"
.LASF91:
	.string	"rates"
.LASF111:
	.string	"rate_num"
.LASF158:
	.string	"endStep"
.LASF43:
	.string	"gRes"
.LASF144:
	.string	"BOXOSD"
.LASF63:
	.string	"profileSelection_s"
.LASF65:
	.string	"profileSelection_t"
.LASF130:
	.string	"BOXMAG"
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
