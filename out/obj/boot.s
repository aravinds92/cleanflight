	.file	"boot.c"
# GNU C99 (Ubuntu 5.4.1-2ubuntu1~16.04) version 5.4.1 20160904 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.1 20160904, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed boot.i -mtune=generic -march=x86-64 -g
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
	.comm	imu,8,8
	.comm	receiveLength,4,4
	.comm	__pg_registry_start,8,8
	.comm	__pg_registry_end,8,8
	.comm	__pg_resetdata_start,8,8
	.comm	__pg_resetdata_end,8,8
	.comm	featureConfig,8,8
	.comm	serialConfig_System,28,16
	.comm	sensorSelectionConfig_System,3,1
	.comm	sensorAlignmentConfig_System,12,8
	.comm	sensorTrims_System,12,8
	.comm	accelerometerConfig,8,8
	.comm	gyroConfig,8,8
	.comm	imuConfig,8,8
	.comm	throttleCorrectionConfig,8,8
	.section	.text.configureScheduler,"ax",@progbits
	.globl	configureScheduler
	.type	configureScheduler, @function
configureScheduler:
.LFB14:
	.file 1 "src/main/fc/boot.c"
	.loc 1 764 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 765 0
	call	schedulerInit	#
	.loc 1 766 0
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	setTaskEnabled	#
	.loc 1 767 0
	movl	$1, %esi	#,
	movl	$1, %edi	#,
	call	setTaskEnabled	#
	.loc 1 769 0
	movl	$1, %esi	#,
	movl	$2, %edi	#,
	call	setTaskEnabled	#
	.loc 1 771 0
	movl	$1, %esi	#,
	movl	$3, %edi	#,
	call	setTaskEnabled	#
	.loc 1 772 0
	movl	$1, %esi	#,
	movl	$4, %edi	#,
	call	setTaskEnabled	#
	.loc 1 812 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	configureScheduler, .-configureScheduler
	.section	.text.malloc_structs,"ax",@progbits
	.globl	malloc_structs
	.type	malloc_structs, @function
malloc_structs:
.LFB15:
	.loc 1 815 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 816 0
	movl	$16, %edi	#,
	call	malloc	#
	movq	%rax, accelerometerConfig(%rip)	# D.6422, accelerometerConfig
	.loc 1 817 0
	movq	accelerometerConfig(%rip), %rax	# accelerometerConfig, D.6423
	movl	$16, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6423,
	call	memset	#
	.loc 1 818 0
	movq	accelerometerConfig(%rip), %rax	# accelerometerConfig, D.6423
	movq	%rax, %rdi	# D.6423,
	call	pgResetFn_accelerometerConfig	#
	.loc 1 820 0
	movl	$12, %edi	#,
	call	malloc	#
	movq	%rax, imuConfig(%rip)	# D.6422, imuConfig
	.loc 1 821 0
	movq	imuConfig(%rip), %rax	# imuConfig, D.6424
	movl	$12, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6424,
	call	memset	#
	.loc 1 822 0
	movq	imuConfig(%rip), %rax	# imuConfig, D.6424
	movw	$1000, (%rax)	#, _14->looptime
	.loc 1 824 0
	movl	$4, %edi	#,
	call	malloc	#
	movq	%rax, featureConfig(%rip)	# D.6422, featureConfig
	.loc 1 825 0
	movq	featureConfig(%rip), %rax	# featureConfig, D.6425
	movl	$4, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6425,
	call	memset	#
	.loc 1 827 0
	movl	$4, %edi	#,
	call	malloc	#
	movq	%rax, throttleCorrectionConfig(%rip)	# D.6422, throttleCorrectionConfig
	.loc 1 828 0
	movq	throttleCorrectionConfig(%rip), %rax	# throttleCorrectionConfig, D.6426
	movl	$4, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6426,
	call	memset	#
	.loc 1 830 0
	movl	$4, %edi	#,
	call	malloc	#
	movq	%rax, gyroConfig(%rip)	# D.6422, gyroConfig
	.loc 1 831 0
	movq	gyroConfig(%rip), %rax	# gyroConfig, D.6427
	movl	$4, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6427,
	call	memset	#
	.loc 1 832 0
	call	pgResetFn_gyroConfig	#
	.loc 1 833 0
	movq	imuConfig(%rip), %rax	# imuConfig, D.6424
	movzbl	3(%rax), %eax	# _32->gyroSyncDenominator, D.6428
	movzbl	%al, %ecx	# D.6428, D.6429
	movq	imuConfig(%rip), %rax	# imuConfig, D.6424
	movzbl	2(%rax), %eax	# _35->gyroSync, D.6428
	movzbl	%al, %edx	# D.6428, D.6429
	movq	gyroConfig(%rip), %rax	# gyroConfig, D.6427
	movzbl	1(%rax), %eax	# _38->gyro_lpf, D.6428
	movzbl	%al, %esi	# D.6428, D.6429
	movq	imuConfig(%rip), %rax	# imuConfig, D.6424
	movzwl	(%rax), %eax	# _41->looptime, D.6430
	movzwl	%ax, %eax	# D.6430, D.6431
	movl	%eax, %edi	# D.6431,
	call	gyroSetSampleRate	#
	.loc 1 834 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	malloc_structs, .-malloc_structs
	.section	.text.enableFeatures,"ax",@progbits
	.globl	enableFeatures
	.type	enableFeatures, @function
enableFeatures:
.LFB16:
	.loc 1 837 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 838 0
	movl	$4, %edi	#,
	call	featureSet	#
	.loc 1 839 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	enableFeatures, .-enableFeatures
	.section	.text.init,"ax",@progbits
	.globl	init
	.type	init, @function
init:
.LFB17:
	.loc 1 841 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 842 0
	call	systemInit	#
	.loc 1 843 0
	call	malloc_structs	#
	.loc 1 844 0
	call	enableFeatures	#
	.loc 1 845 0
	call	latchActiveFeatures	#
	.loc 1 846 0
	call	configureScheduler	#
	.loc 1 847 0
	movl	$1, %edi	#,
	call	serialInit	#
	.loc 1 848 0
	call	mspInit	#
	.loc 1 849 0
	call	mspSerialInit	#
	.loc 1 850 0
	call	activateConfig	#
	.loc 1 851 0
	call	imuInit	#
	.loc 1 858 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	init, .-init
	.section	.rodata
.LC0:
	.string	"Welcome to Cleanflight"
.LC1:
	.string	"init done"
	.section	.text.main,"ax",@progbits
	.globl	main
	.type	main, @function
main:
.LFB18:
	.loc 1 860 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 861 0
	movl	$.LC0, %edi	#,
	call	puts	#
	.loc 1 863 0
	call	init	#
	.loc 1 865 0
	movl	$.LC1, %edi	#,
	call	puts	#
.L6:
	.loc 1 869 0 discriminator 1
	call	scheduler	#
	.loc 1 870 0 discriminator 1
	jmp	.L6	#
	.cfi_endproc
.LFE18:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "/usr/include/stdint.h"
	.file 3 "/usr/include/mraa/i2c.h"
	.file 4 "./src/main/drivers/SFE_LSM9DS0.h"
	.file 5 "./src/main/fc/fc_tasks.h"
	.file 6 "./src/main/fc/config.h"
	.file 7 "./src/main/config/parameter_group.h"
	.file 8 "./src/main/config/feature.h"
	.file 9 "./src/main/io/io_serial.h"
	.file 10 "./src/main/sensors/sensors.h"
	.file 11 "./src/main/sensors/acceleration.h"
	.file 12 "./src/main/sensors/gyro.h"
	.file 13 "./src/main/flight/imu.h"
	.file 14 "./src/main/target/edison/target.h"
	.file 15 "./src/main/drivers/serial_uart.h"
	.file 16 "./src/main/drivers/system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa6f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF190
	.byte	0xc
	.long	.LASF191
	.long	.LASF192
	.long	.Ldebug_ranges0+0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x25
	.long	0x3b
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x3
	.long	.LASF4
	.byte	0x2
	.byte	0x30
	.long	0x5b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x2
	.byte	0x31
	.long	0x6d
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF7
	.uleb128 0x3
	.long	.LASF8
	.byte	0x2
	.byte	0x33
	.long	0x7f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x35
	.long	0xb6
	.uleb128 0x6
	.byte	0x8
	.long	0xbc
	.uleb128 0x7
	.long	.LASF193
	.uleb128 0x8
	.long	.LASF19
	.byte	0x4
	.long	0x7f
	.byte	0x4
	.byte	0x81
	.long	0xe4
	.uleb128 0x9
	.long	.LASF16
	.byte	0
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.uleb128 0x9
	.long	.LASF18
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF19
	.byte	0x4
	.byte	0x86
	.long	0xc1
	.uleb128 0x8
	.long	.LASF20
	.byte	0x4
	.long	0x7f
	.byte	0x4
	.byte	0x89
	.long	0x11e
	.uleb128 0x9
	.long	.LASF21
	.byte	0
	.uleb128 0x9
	.long	.LASF22
	.byte	0x1
	.uleb128 0x9
	.long	.LASF23
	.byte	0x2
	.uleb128 0x9
	.long	.LASF24
	.byte	0x3
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF20
	.byte	0x4
	.byte	0x90
	.long	0xef
	.uleb128 0x8
	.long	.LASF26
	.byte	0x4
	.long	0x7f
	.byte	0x4
	.byte	0x93
	.long	0x152
	.uleb128 0x9
	.long	.LASF27
	.byte	0
	.uleb128 0x9
	.long	.LASF28
	.byte	0x1
	.uleb128 0x9
	.long	.LASF29
	.byte	0x2
	.uleb128 0x9
	.long	.LASF30
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF26
	.byte	0x4
	.byte	0x99
	.long	0x129
	.uleb128 0xa
	.long	.LASF74
	.byte	0x40
	.byte	0x4
	.byte	0xdc
	.long	0x238
	.uleb128 0xb
	.string	"gx"
	.byte	0x4
	.byte	0xe2
	.long	0x30
	.byte	0
	.uleb128 0xb
	.string	"gy"
	.byte	0x4
	.byte	0xe2
	.long	0x30
	.byte	0x2
	.uleb128 0xb
	.string	"gz"
	.byte	0x4
	.byte	0xe2
	.long	0x30
	.byte	0x4
	.uleb128 0xb
	.string	"ax"
	.byte	0x4
	.byte	0xe3
	.long	0x30
	.byte	0x6
	.uleb128 0xb
	.string	"ay"
	.byte	0x4
	.byte	0xe3
	.long	0x30
	.byte	0x8
	.uleb128 0xb
	.string	"az"
	.byte	0x4
	.byte	0xe3
	.long	0x30
	.byte	0xa
	.uleb128 0xb
	.string	"mx"
	.byte	0x4
	.byte	0xe4
	.long	0x30
	.byte	0xc
	.uleb128 0xb
	.string	"my"
	.byte	0x4
	.byte	0xe4
	.long	0x30
	.byte	0xe
	.uleb128 0xb
	.string	"mz"
	.byte	0x4
	.byte	0xe4
	.long	0x30
	.byte	0x10
	.uleb128 0xc
	.long	.LASF31
	.byte	0x4
	.byte	0xe5
	.long	0x30
	.byte	0x12
	.uleb128 0xc
	.long	.LASF32
	.byte	0x4
	.byte	0xe7
	.long	0xab
	.byte	0x18
	.uleb128 0xb
	.string	"xm"
	.byte	0x4
	.byte	0xe8
	.long	0xab
	.byte	0x20
	.uleb128 0xc
	.long	.LASF33
	.byte	0x4
	.byte	0xec
	.long	0xe4
	.byte	0x28
	.uleb128 0xc
	.long	.LASF34
	.byte	0x4
	.byte	0xed
	.long	0x11e
	.byte	0x2c
	.uleb128 0xc
	.long	.LASF35
	.byte	0x4
	.byte	0xee
	.long	0x152
	.byte	0x30
	.uleb128 0xc
	.long	.LASF36
	.byte	0x4
	.byte	0xf3
	.long	0x238
	.byte	0x34
	.uleb128 0xc
	.long	.LASF37
	.byte	0x4
	.byte	0xf3
	.long	0x238
	.byte	0x38
	.uleb128 0xc
	.long	.LASF38
	.byte	0x4
	.byte	0xf3
	.long	0x238
	.byte	0x3c
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF39
	.uleb128 0x3
	.long	.LASF40
	.byte	0x4
	.byte	0xf5
	.long	0x15d
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF41
	.uleb128 0xd
	.byte	0x4
	.long	0x7f
	.byte	0x5
	.byte	0x17
	.long	0x28e
	.uleb128 0x9
	.long	.LASF42
	.byte	0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x1
	.uleb128 0x9
	.long	.LASF44
	.byte	0x2
	.uleb128 0x9
	.long	.LASF45
	.byte	0x3
	.uleb128 0x9
	.long	.LASF46
	.byte	0x4
	.uleb128 0x9
	.long	.LASF47
	.byte	0x5
	.uleb128 0x9
	.long	.LASF48
	.byte	0x6
	.uleb128 0x9
	.long	.LASF49
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x7f
	.byte	0x6
	.byte	0x17
	.long	0x339
	.uleb128 0x9
	.long	.LASF50
	.byte	0x1
	.uleb128 0x9
	.long	.LASF51
	.byte	0x2
	.uleb128 0x9
	.long	.LASF52
	.byte	0x4
	.uleb128 0x9
	.long	.LASF53
	.byte	0x8
	.uleb128 0x9
	.long	.LASF54
	.byte	0x10
	.uleb128 0x9
	.long	.LASF55
	.byte	0x20
	.uleb128 0x9
	.long	.LASF56
	.byte	0x40
	.uleb128 0x9
	.long	.LASF57
	.byte	0x80
	.uleb128 0xe
	.long	.LASF58
	.value	0x100
	.uleb128 0xe
	.long	.LASF59
	.value	0x200
	.uleb128 0xe
	.long	.LASF60
	.value	0x400
	.uleb128 0xe
	.long	.LASF61
	.value	0x800
	.uleb128 0xe
	.long	.LASF62
	.value	0x1000
	.uleb128 0xe
	.long	.LASF63
	.value	0x2000
	.uleb128 0xe
	.long	.LASF64
	.value	0x4000
	.uleb128 0xe
	.long	.LASF65
	.value	0x8000
	.uleb128 0xf
	.long	.LASF66
	.long	0x10000
	.uleb128 0xf
	.long	.LASF67
	.long	0x20000
	.uleb128 0xf
	.long	.LASF68
	.long	0x40000
	.uleb128 0xf
	.long	.LASF69
	.long	0x80000
	.uleb128 0xf
	.long	.LASF70
	.long	0x100000
	.uleb128 0xf
	.long	.LASF71
	.long	0x200000
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x50
	.uleb128 0x3
	.long	.LASF72
	.byte	0x7
	.byte	0x15
	.long	0x62
	.uleb128 0x3
	.long	.LASF73
	.byte	0x7
	.byte	0x26
	.long	0x355
	.uleb128 0x10
	.long	0x365
	.uleb128 0x11
	.long	0x94
	.uleb128 0x11
	.long	0x42
	.byte	0
	.uleb128 0x12
	.byte	0x8
	.byte	0x7
	.byte	0x2d
	.long	0x383
	.uleb128 0x13
	.string	"ptr"
	.byte	0x7
	.byte	0x2e
	.long	0x94
	.uleb128 0x13
	.string	"fn"
	.byte	0x7
	.byte	0x2f
	.long	0x383
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x34a
	.uleb128 0xa
	.long	.LASF75
	.byte	0x20
	.byte	0x7
	.byte	0x28
	.long	0x3d2
	.uleb128 0xb
	.string	"pgn"
	.byte	0x7
	.byte	0x29
	.long	0x33f
	.byte	0
	.uleb128 0xc
	.long	.LASF76
	.byte	0x7
	.byte	0x2a
	.long	0x62
	.byte	0x2
	.uleb128 0xc
	.long	.LASF77
	.byte	0x7
	.byte	0x2b
	.long	0x339
	.byte	0x8
	.uleb128 0xb
	.string	"ptr"
	.byte	0x7
	.byte	0x2c
	.long	0x3d2
	.byte	0x10
	.uleb128 0xc
	.long	.LASF78
	.byte	0x7
	.byte	0x30
	.long	0x365
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x339
	.uleb128 0x3
	.long	.LASF79
	.byte	0x7
	.byte	0x31
	.long	0x389
	.uleb128 0xa
	.long	.LASF80
	.byte	0x4
	.byte	0x8
	.byte	0x14
	.long	0x3fc
	.uleb128 0xc
	.long	.LASF81
	.byte	0x8
	.byte	0x15
	.long	0x74
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF82
	.byte	0x8
	.byte	0x16
	.long	0x3e3
	.uleb128 0xd
	.byte	0x4
	.long	0x42
	.byte	0x9
	.byte	0x36
	.long	0x450
	.uleb128 0x14
	.long	.LASF83
	.sleb128 -1
	.uleb128 0x9
	.long	.LASF84
	.byte	0
	.uleb128 0x9
	.long	.LASF85
	.byte	0x1
	.uleb128 0x9
	.long	.LASF86
	.byte	0x2
	.uleb128 0x9
	.long	.LASF87
	.byte	0x3
	.uleb128 0x9
	.long	.LASF88
	.byte	0x4
	.uleb128 0x9
	.long	.LASF89
	.byte	0x14
	.uleb128 0x9
	.long	.LASF90
	.byte	0x1e
	.uleb128 0x9
	.long	.LASF91
	.byte	0x1f
	.uleb128 0x9
	.long	.LASF92
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.long	.LASF93
	.byte	0x9
	.byte	0x41
	.long	0x407
	.uleb128 0xa
	.long	.LASF94
	.byte	0xc
	.byte	0x9
	.byte	0x5a
	.long	0x48c
	.uleb128 0xc
	.long	.LASF95
	.byte	0x9
	.byte	0x5b
	.long	0x450
	.byte	0
	.uleb128 0xc
	.long	.LASF96
	.byte	0x9
	.byte	0x5c
	.long	0x62
	.byte	0x4
	.uleb128 0xc
	.long	.LASF97
	.byte	0x9
	.byte	0x5d
	.long	0x48c
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.long	0x50
	.long	0x49c
	.uleb128 0x16
	.long	0x8d
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF98
	.byte	0x9
	.byte	0x5e
	.long	0x45b
	.uleb128 0xa
	.long	.LASF99
	.byte	0x1c
	.byte	0x9
	.byte	0x60
	.long	0x4cc
	.uleb128 0xc
	.long	.LASF100
	.byte	0x9
	.byte	0x61
	.long	0x50
	.byte	0
	.uleb128 0xc
	.long	.LASF101
	.byte	0x9
	.byte	0x62
	.long	0x4cc
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.long	0x49c
	.long	0x4dc
	.uleb128 0x16
	.long	0x8d
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF102
	.byte	0x9
	.byte	0x63
	.long	0x4a7
	.uleb128 0xd
	.byte	0x4
	.long	0x7f
	.byte	0xa
	.byte	0x15
	.long	0x50c
	.uleb128 0x9
	.long	.LASF103
	.byte	0
	.uleb128 0x9
	.long	.LASF104
	.byte	0x1
	.uleb128 0x9
	.long	.LASF105
	.byte	0x2
	.uleb128 0x9
	.long	.LASF106
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.long	.LASF107
	.byte	0x6
	.byte	0xa
	.byte	0x20
	.long	0x53d
	.uleb128 0xc
	.long	.LASF108
	.byte	0xa
	.byte	0x21
	.long	0x30
	.byte	0
	.uleb128 0xc
	.long	.LASF109
	.byte	0xa
	.byte	0x22
	.long	0x30
	.byte	0x2
	.uleb128 0xb
	.string	"yaw"
	.byte	0xa
	.byte	0x23
	.long	0x30
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF110
	.byte	0xa
	.byte	0x24
	.long	0x50c
	.uleb128 0x17
	.long	.LASF139
	.byte	0x6
	.byte	0xa
	.byte	0x26
	.long	0x56b
	.uleb128 0x13
	.string	"raw"
	.byte	0xa
	.byte	0x27
	.long	0x56b
	.uleb128 0x18
	.long	.LASF111
	.byte	0xa
	.byte	0x28
	.long	0x53d
	.byte	0
	.uleb128 0x15
	.long	0x30
	.long	0x57b
	.uleb128 0x16
	.long	0x8d
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF112
	.byte	0xa
	.byte	0x29
	.long	0x548
	.uleb128 0xd
	.byte	0x4
	.long	0x7f
	.byte	0xa
	.byte	0x39
	.long	0x5c9
	.uleb128 0x9
	.long	.LASF113
	.byte	0
	.uleb128 0x9
	.long	.LASF114
	.byte	0x1
	.uleb128 0x9
	.long	.LASF115
	.byte	0x2
	.uleb128 0x9
	.long	.LASF116
	.byte	0x3
	.uleb128 0x9
	.long	.LASF117
	.byte	0x4
	.uleb128 0x9
	.long	.LASF118
	.byte	0x5
	.uleb128 0x9
	.long	.LASF119
	.byte	0x6
	.uleb128 0x9
	.long	.LASF120
	.byte	0x7
	.uleb128 0x9
	.long	.LASF121
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF122
	.byte	0xa
	.byte	0x43
	.long	0x586
	.uleb128 0xa
	.long	.LASF123
	.byte	0xc
	.byte	0xa
	.byte	0x45
	.long	0x605
	.uleb128 0xc
	.long	.LASF124
	.byte	0xa
	.byte	0x46
	.long	0x5c9
	.byte	0
	.uleb128 0xc
	.long	.LASF125
	.byte	0xa
	.byte	0x47
	.long	0x5c9
	.byte	0x4
	.uleb128 0xc
	.long	.LASF126
	.byte	0xa
	.byte	0x48
	.long	0x5c9
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF127
	.byte	0xa
	.byte	0x49
	.long	0x5d4
	.uleb128 0xa
	.long	.LASF128
	.byte	0x3
	.byte	0xa
	.byte	0x4b
	.long	0x641
	.uleb128 0xc
	.long	.LASF129
	.byte	0xa
	.byte	0x4c
	.long	0x50
	.byte	0
	.uleb128 0xc
	.long	.LASF130
	.byte	0xa
	.byte	0x4d
	.long	0x50
	.byte	0x1
	.uleb128 0xc
	.long	.LASF131
	.byte	0xa
	.byte	0x4e
	.long	0x50
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF132
	.byte	0xa
	.byte	0x4f
	.long	0x610
	.uleb128 0xa
	.long	.LASF133
	.byte	0xc
	.byte	0xa
	.byte	0x51
	.long	0x671
	.uleb128 0xc
	.long	.LASF134
	.byte	0xa
	.byte	0x52
	.long	0x57b
	.byte	0
	.uleb128 0xc
	.long	.LASF135
	.byte	0xa
	.byte	0x53
	.long	0x57b
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.long	.LASF136
	.byte	0xa
	.byte	0x54
	.long	0x64c
	.uleb128 0xa
	.long	.LASF137
	.byte	0x4
	.byte	0xb
	.byte	0x2b
	.long	0x6a1
	.uleb128 0xc
	.long	.LASF108
	.byte	0xb
	.byte	0x2c
	.long	0x30
	.byte	0
	.uleb128 0xc
	.long	.LASF109
	.byte	0xb
	.byte	0x2d
	.long	0x30
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF138
	.byte	0xb
	.byte	0x2e
	.long	0x67c
	.uleb128 0x17
	.long	.LASF140
	.byte	0x4
	.byte	0xb
	.byte	0x30
	.long	0x6cf
	.uleb128 0x13
	.string	"raw"
	.byte	0xb
	.byte	0x31
	.long	0x6cf
	.uleb128 0x18
	.long	.LASF111
	.byte	0xb
	.byte	0x32
	.long	0x6a1
	.byte	0
	.uleb128 0x15
	.long	0x30
	.long	0x6df
	.uleb128 0x16
	.long	0x8d
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF141
	.byte	0xb
	.byte	0x33
	.long	0x6ac
	.uleb128 0xa
	.long	.LASF142
	.byte	0x2
	.byte	0xb
	.byte	0x35
	.long	0x70c
	.uleb128 0xb
	.string	"xy"
	.byte	0xb
	.byte	0x36
	.long	0x50
	.byte	0
	.uleb128 0xb
	.string	"z"
	.byte	0xb
	.byte	0x37
	.long	0x50
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF143
	.byte	0xb
	.byte	0x38
	.long	0x6ea
	.uleb128 0xa
	.long	.LASF144
	.byte	0x10
	.byte	0xb
	.byte	0x3a
	.long	0x760
	.uleb128 0xc
	.long	.LASF145
	.byte	0xb
	.byte	0x3b
	.long	0x6df
	.byte	0
	.uleb128 0xc
	.long	.LASF146
	.byte	0xb
	.byte	0x3e
	.long	0x50
	.byte	0x4
	.uleb128 0xc
	.long	.LASF147
	.byte	0xb
	.byte	0x3f
	.long	0x238
	.byte	0x8
	.uleb128 0xc
	.long	.LASF148
	.byte	0xb
	.byte	0x40
	.long	0x70c
	.byte	0xc
	.uleb128 0xc
	.long	.LASF149
	.byte	0xb
	.byte	0x41
	.long	0x50
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.long	.LASF150
	.byte	0xb
	.byte	0x42
	.long	0x717
	.uleb128 0xa
	.long	.LASF151
	.byte	0x4
	.byte	0xc
	.byte	0x25
	.long	0x79c
	.uleb128 0xc
	.long	.LASF152
	.byte	0xc
	.byte	0x26
	.long	0x50
	.byte	0
	.uleb128 0xc
	.long	.LASF153
	.byte	0xc
	.byte	0x27
	.long	0x50
	.byte	0x1
	.uleb128 0xc
	.long	.LASF154
	.byte	0xc
	.byte	0x28
	.long	0x62
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF155
	.byte	0xc
	.byte	0x29
	.long	0x76b
	.uleb128 0xa
	.long	.LASF156
	.byte	0xc
	.byte	0xd
	.byte	0x2f
	.long	0x808
	.uleb128 0xc
	.long	.LASF157
	.byte	0xd
	.byte	0x31
	.long	0x62
	.byte	0
	.uleb128 0xc
	.long	.LASF158
	.byte	0xd
	.byte	0x32
	.long	0x50
	.byte	0x2
	.uleb128 0xc
	.long	.LASF159
	.byte	0xd
	.byte	0x33
	.long	0x50
	.byte	0x3
	.uleb128 0xc
	.long	.LASF160
	.byte	0xd
	.byte	0x34
	.long	0x62
	.byte	0x4
	.uleb128 0xc
	.long	.LASF161
	.byte	0xd
	.byte	0x35
	.long	0x62
	.byte	0x6
	.uleb128 0xc
	.long	.LASF162
	.byte	0xd
	.byte	0x36
	.long	0x50
	.byte	0x8
	.uleb128 0xc
	.long	.LASF163
	.byte	0xd
	.byte	0x37
	.long	0x62
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.long	.LASF164
	.byte	0xd
	.byte	0x38
	.long	0x7a7
	.uleb128 0xa
	.long	.LASF165
	.byte	0x4
	.byte	0xd
	.byte	0x3c
	.long	0x838
	.uleb128 0xc
	.long	.LASF166
	.byte	0xd
	.byte	0x3d
	.long	0x62
	.byte	0
	.uleb128 0xc
	.long	.LASF167
	.byte	0xd
	.byte	0x3e
	.long	0x50
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF168
	.byte	0xd
	.byte	0x3f
	.long	0x813
	.uleb128 0x19
	.long	.LASF169
	.byte	0x1
	.value	0x2fb
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.long	.LASF170
	.byte	0x1
	.value	0x32e
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.long	.LASF171
	.byte	0x1
	.value	0x344
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.long	.LASF172
	.byte	0x1
	.value	0x348
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.long	.LASF194
	.byte	0x1
	.value	0x35b
	.long	0x42
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.long	.LASF173
	.byte	0xe
	.byte	0xca
	.long	0x74
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_0
	.uleb128 0x1b
	.long	.LASF174
	.byte	0xe
	.byte	0xcb
	.long	0x74
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_1
	.uleb128 0x1b
	.long	.LASF175
	.byte	0xe
	.byte	0xcc
	.long	0x74
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_2
	.uleb128 0x1c
	.string	"imu"
	.byte	0x10
	.byte	0x38
	.long	0x91d
	.uleb128 0x9
	.byte	0x3
	.quad	imu
	.uleb128 0x6
	.byte	0x8
	.long	0x23f
	.uleb128 0x1b
	.long	.LASF176
	.byte	0xf
	.byte	0x2c
	.long	0x938
	.uleb128 0x9
	.byte	0x3
	.quad	receiveLength
	.uleb128 0x1d
	.long	0x74
	.uleb128 0x1b
	.long	.LASF177
	.byte	0x7
	.byte	0x43
	.long	0x952
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_start
	.uleb128 0x6
	.byte	0x8
	.long	0x3d8
	.uleb128 0x1b
	.long	.LASF178
	.byte	0x7
	.byte	0x44
	.long	0x952
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_end
	.uleb128 0x1b
	.long	.LASF179
	.byte	0x7
	.byte	0x47
	.long	0x339
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_start
	.uleb128 0x1b
	.long	.LASF180
	.byte	0x7
	.byte	0x48
	.long	0x339
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_end
	.uleb128 0x1b
	.long	.LASF181
	.byte	0x8
	.byte	0x18
	.long	0x9ac
	.uleb128 0x9
	.byte	0x3
	.quad	featureConfig
	.uleb128 0x6
	.byte	0x8
	.long	0x3fc
	.uleb128 0x1b
	.long	.LASF182
	.byte	0x9
	.byte	0x65
	.long	0x4dc
	.uleb128 0x9
	.byte	0x3
	.quad	serialConfig_System
	.uleb128 0x1b
	.long	.LASF183
	.byte	0xa
	.byte	0x56
	.long	0x641
	.uleb128 0x9
	.byte	0x3
	.quad	sensorSelectionConfig_System
	.uleb128 0x1b
	.long	.LASF184
	.byte	0xa
	.byte	0x57
	.long	0x605
	.uleb128 0x9
	.byte	0x3
	.quad	sensorAlignmentConfig_System
	.uleb128 0x1b
	.long	.LASF185
	.byte	0xa
	.byte	0x58
	.long	0x671
	.uleb128 0x9
	.byte	0x3
	.quad	sensorTrims_System
	.uleb128 0x1b
	.long	.LASF186
	.byte	0xb
	.byte	0x45
	.long	0xa1b
	.uleb128 0x9
	.byte	0x3
	.quad	accelerometerConfig
	.uleb128 0x6
	.byte	0x8
	.long	0x760
	.uleb128 0x1b
	.long	.LASF187
	.byte	0xc
	.byte	0x2b
	.long	0xa36
	.uleb128 0x9
	.byte	0x3
	.quad	gyroConfig
	.uleb128 0x6
	.byte	0x8
	.long	0x79c
	.uleb128 0x1b
	.long	.LASF188
	.byte	0xd
	.byte	0x3a
	.long	0xa51
	.uleb128 0x9
	.byte	0x3
	.quad	imuConfig
	.uleb128 0x6
	.byte	0x8
	.long	0x808
	.uleb128 0x1b
	.long	.LASF189
	.byte	0xd
	.byte	0x41
	.long	0xa6c
	.uleb128 0x9
	.byte	0x3
	.quad	throttleCorrectionConfig
	.uleb128 0x6
	.byte	0x8
	.long	0x838
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LFB14
	.quad	.LFE14
	.quad	.LFB15
	.quad	.LFE15
	.quad	.LFB16
	.quad	.LFE16
	.quad	.LFB17
	.quad	.LFE17
	.quad	.LFB18
	.quad	.LFE18
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF192:
	.string	"/home/aravind/git/cleanflight"
.LASF160:
	.string	"dcm_kp"
.LASF117:
	.string	"CW270_DEG"
.LASF120:
	.string	"CW180_DEG_FLIP"
.LASF33:
	.string	"gScale"
.LASF107:
	.string	"int16_flightDynamicsTrims_s"
.LASF73:
	.string	"pgResetFunc"
.LASF104:
	.string	"SENSOR_INDEX_ACC"
.LASF105:
	.string	"SENSOR_INDEX_BARO"
.LASF133:
	.string	"sensorTrims_s"
.LASF136:
	.string	"sensorTrims_t"
.LASF163:
	.string	"max_angle_inclination"
.LASF27:
	.string	"M_SCALE_2GS"
.LASF55:
	.string	"FEATURE_SERVO_TILT"
.LASF172:
	.string	"init"
.LASF48:
	.string	"TASK_RX"
.LASF14:
	.string	"long long unsigned int"
.LASF119:
	.string	"CW90_DEG_FLIP"
.LASF113:
	.string	"ALIGN_DEFAULT"
.LASF167:
	.string	"throttle_correction_value"
.LASF111:
	.string	"values"
.LASF92:
	.string	"SERIAL_PORT_IDENTIFIER_MAX"
.LASF101:
	.string	"portConfigs"
.LASF173:
	.string	"U_ID_0"
.LASF19:
	.string	"gyro_scale"
.LASF100:
	.string	"reboot_character"
.LASF47:
	.string	"TASK_BATTERY"
.LASF158:
	.string	"gyroSync"
.LASF3:
	.string	"int16_t"
.LASF123:
	.string	"sensorAlignmentConfig_s"
.LASF0:
	.string	"signed char"
.LASF191:
	.string	"src/main/fc/boot.c"
.LASF43:
	.string	"TASK_SERIAL"
.LASF149:
	.string	"acc_unarmedcal"
.LASF42:
	.string	"TASK_SYSTEM"
.LASF103:
	.string	"SENSOR_INDEX_GYRO"
.LASF38:
	.string	"mRes"
.LASF144:
	.string	"accelerometerConfig_s"
.LASF150:
	.string	"accelerometerConfig_t"
.LASF189:
	.string	"throttleCorrectionConfig"
.LASF52:
	.string	"FEATURE_INFLIGHT_ACC_CAL"
.LASF15:
	.string	"mraa_i2c_context"
.LASF98:
	.string	"serialPortConfig_t"
.LASF26:
	.string	"mag_scale"
.LASF176:
	.string	"receiveLength"
.LASF2:
	.string	"long int"
.LASF80:
	.string	"featureConfig_s"
.LASF82:
	.string	"featureConfig_t"
.LASF18:
	.string	"G_SCALE_2000DPS"
.LASF23:
	.string	"A_SCALE_6G"
.LASF159:
	.string	"gyroSyncDenominator"
.LASF46:
	.string	"TASK_GYROPID"
.LASF90:
	.string	"SERIAL_PORT_SOFTSERIAL1"
.LASF96:
	.string	"functionMask"
.LASF95:
	.string	"identifier"
.LASF6:
	.string	"uint16_t"
.LASF156:
	.string	"imuConfig_s"
.LASF49:
	.string	"TASK_COUNT"
.LASF89:
	.string	"SERIAL_PORT_USB_VCP"
.LASF112:
	.string	"flightDynamicsTrims_t"
.LASF139:
	.string	"flightDynamicsTrims_u"
.LASF181:
	.string	"featureConfig"
.LASF71:
	.string	"FEATURE_TRANSPONDER"
.LASF74:
	.string	"LSM9DS0"
.LASF147:
	.string	"accz_lpf_cutoff"
.LASF31:
	.string	"temperature"
.LASF134:
	.string	"accZero"
.LASF16:
	.string	"G_SCALE_245DPS"
.LASF86:
	.string	"SERIAL_PORT_UART3"
.LASF78:
	.string	"reset"
.LASF58:
	.string	"FEATURE_FAILSAFE"
.LASF164:
	.string	"imuConfig_t"
.LASF13:
	.string	"long long int"
.LASF129:
	.string	"acc_hardware"
.LASF183:
	.string	"sensorSelectionConfig_System"
.LASF137:
	.string	"rollAndPitchTrims_s"
.LASF60:
	.string	"FEATURE_TELEMETRY"
.LASF170:
	.string	"malloc_structs"
.LASF40:
	.string	"LSM9DS0_t"
.LASF125:
	.string	"acc_align"
.LASF190:
	.string	"GNU C99 5.4.1 20160904 -mtune=generic -march=x86-64 -g -std=gnu99 -ffunction-sections -fdata-sections -ffat-lto-objects -fstack-protector-strong"
.LASF72:
	.string	"pgn_t"
.LASF45:
	.string	"TASK_ACCEL"
.LASF51:
	.string	"FEATURE_VBAT"
.LASF76:
	.string	"size"
.LASF7:
	.string	"short unsigned int"
.LASF25:
	.string	"A_SCALE_16G"
.LASF64:
	.string	"FEATURE_RX_MSP"
.LASF97:
	.string	"baudRates"
.LASF153:
	.string	"gyro_lpf"
.LASF44:
	.string	"TASK_COMPASS"
.LASF1:
	.string	"short int"
.LASF53:
	.string	"FEATURE_RX_SERIAL"
.LASF106:
	.string	"SENSOR_INDEX_MAG"
.LASF50:
	.string	"FEATURE_RX_PPM"
.LASF179:
	.string	"__pg_resetdata_start"
.LASF59:
	.string	"FEATURE_SONAR"
.LASF91:
	.string	"SERIAL_PORT_SOFTSERIAL2"
.LASF178:
	.string	"__pg_registry_end"
.LASF24:
	.string	"A_SCALE_8G"
.LASF32:
	.string	"gyro"
.LASF37:
	.string	"aRes"
.LASF65:
	.string	"FEATURE_RSSI_ADC"
.LASF11:
	.string	"sizetype"
.LASF54:
	.string	"FEATURE_MOTOR_STOP"
.LASF93:
	.string	"serialPortIdentifier_e"
.LASF168:
	.string	"throttleCorrectionConfig_t"
.LASF77:
	.string	"address"
.LASF68:
	.string	"FEATURE_ONESHOT125"
.LASF109:
	.string	"pitch"
.LASF34:
	.string	"aScale"
.LASF10:
	.string	"long unsigned int"
.LASF146:
	.string	"acc_cut_hz"
.LASF180:
	.string	"__pg_resetdata_end"
.LASF177:
	.string	"__pg_registry_start"
.LASF138:
	.string	"rollAndPitchTrims_t_def"
.LASF66:
	.string	"FEATURE_LED_STRIP"
.LASF108:
	.string	"roll"
.LASF148:
	.string	"accDeadband"
.LASF84:
	.string	"SERIAL_PORT_UART1"
.LASF85:
	.string	"SERIAL_PORT_UART2"
.LASF39:
	.string	"float"
.LASF87:
	.string	"SERIAL_PORT_UART4"
.LASF88:
	.string	"SERIAL_PORT_UART5"
.LASF128:
	.string	"sensorSelectionConfig_s"
.LASF130:
	.string	"mag_hardware"
.LASF116:
	.string	"CW180_DEG"
.LASF145:
	.string	"accelerometerTrims"
.LASF70:
	.string	"FEATURE_CHANNEL_FORWARDING"
.LASF41:
	.string	"_Bool"
.LASF5:
	.string	"unsigned char"
.LASF81:
	.string	"enabledFeatures"
.LASF151:
	.string	"gyroConfig_s"
.LASF155:
	.string	"gyroConfig_t"
.LASF174:
	.string	"U_ID_1"
.LASF182:
	.string	"serialConfig_System"
.LASF175:
	.string	"U_ID_2"
.LASF152:
	.string	"gyroMovementCalibrationThreshold"
.LASF118:
	.string	"CW0_DEG_FLIP"
.LASF21:
	.string	"A_SCALE_2G"
.LASF99:
	.string	"serialConfig_s"
.LASF102:
	.string	"serialConfig_t"
.LASF28:
	.string	"M_SCALE_4GS"
.LASF157:
	.string	"looptime"
.LASF94:
	.string	"serialPortConfig_s"
.LASF135:
	.string	"magZero"
.LASF166:
	.string	"throttle_correction_angle"
.LASF141:
	.string	"rollAndPitchTrims_t"
.LASF140:
	.string	"rollAndPitchTrims_u"
.LASF124:
	.string	"gyro_align"
.LASF8:
	.string	"uint32_t"
.LASF75:
	.string	"pgRegistry_s"
.LASF79:
	.string	"pgRegistry_t"
.LASF12:
	.string	"char"
.LASF131:
	.string	"baro_hardware"
.LASF56:
	.string	"FEATURE_SOFTSERIAL"
.LASF122:
	.string	"sensor_align_e"
.LASF9:
	.string	"unsigned int"
.LASF154:
	.string	"soft_gyro_lpf_hz"
.LASF185:
	.string	"sensorTrims_System"
.LASF4:
	.string	"uint8_t"
.LASF35:
	.string	"mScale"
.LASF193:
	.string	"_i2c"
.LASF162:
	.string	"small_angle"
.LASF36:
	.string	"gRes"
.LASF29:
	.string	"M_SCALE_8GS"
.LASF127:
	.string	"sensorAlignmentConfig_t"
.LASF67:
	.string	"FEATURE_DISPLAY"
.LASF69:
	.string	"FEATURE_BLACKBOX"
.LASF186:
	.string	"accelerometerConfig"
.LASF83:
	.string	"SERIAL_PORT_NONE"
.LASF62:
	.string	"FEATURE_3D"
.LASF110:
	.string	"flightDynamicsTrims_def_t"
.LASF63:
	.string	"FEATURE_RX_PARALLEL_PWM"
.LASF169:
	.string	"configureScheduler"
.LASF165:
	.string	"throttleCorrectionConfig_s"
.LASF114:
	.string	"CW0_DEG"
.LASF126:
	.string	"mag_align"
.LASF184:
	.string	"sensorAlignmentConfig_System"
.LASF188:
	.string	"imuConfig"
.LASF115:
	.string	"CW90_DEG"
.LASF57:
	.string	"FEATURE_GPS"
.LASF20:
	.string	"accel_scale"
.LASF142:
	.string	"accDeadband_s"
.LASF143:
	.string	"accDeadband_t"
.LASF121:
	.string	"CW270_DEG_FLIP"
.LASF61:
	.string	"FEATURE_AMPERAGE_METER"
.LASF132:
	.string	"sensorSelectionConfig_t"
.LASF22:
	.string	"A_SCALE_4G"
.LASF171:
	.string	"enableFeatures"
.LASF194:
	.string	"main"
.LASF187:
	.string	"gyroConfig"
.LASF17:
	.string	"G_SCALE_500DPS"
.LASF161:
	.string	"dcm_ki"
.LASF30:
	.string	"M_SCALE_12GS"
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
