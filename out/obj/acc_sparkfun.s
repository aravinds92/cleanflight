	.file	"acc_sparkfun.c"
# GNU C99 (Ubuntu 5.4.1-2ubuntu1~16.04) version 5.4.1 20160904 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.1 20160904, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed acc_sparkfun.i -mtune=generic
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
	.section	.bss.useFifo,"aw",@nobits
	.type	useFifo, @object
	.size	useFifo, 1
useFifo:
	.zero	1
	.section	.text.sparkfun_acc_init,"ax",@progbits
	.type	sparkfun_acc_init, @function
sparkfun_acc_init:
.LFB2:
	.file 1 "src/main/drivers/acc_sparkfun.c"
	.loc 1 68 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 82 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	sparkfun_acc_init, .-sparkfun_acc_init
	.globl	acc_samples
	.section	.bss.acc_samples,"aw",@nobits
	.type	acc_samples, @object
	.size	acc_samples, 1
acc_samples:
	.zero	1
	.section	.text.sparkfun_Read,"ax",@progbits
	.type	sparkfun_Read, @function
sparkfun_Read:
.LFB3:
	.loc 1 87 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# accelData, accelData
	.loc 1 89 0
	movq	imu(%rip), %rax	# imu, D.4776
	movq	%rax, %rdi	# D.4776,
	call	readAccel	#
	.loc 1 91 0
	movq	imu(%rip), %rax	# imu, D.4776
	movzwl	6(%rax), %edx	# _4->ax, D.4777
	movq	-8(%rbp), %rax	# accelData, tmp98
	movw	%dx, (%rax)	# D.4777, *accelData_6(D)
	.loc 1 92 0
	movq	-8(%rbp), %rax	# accelData, tmp99
	leaq	2(%rax), %rdx	#, D.4778
	movq	imu(%rip), %rax	# imu, D.4776
	movzwl	8(%rax), %eax	# _9->ay, D.4777
	movw	%ax, (%rdx)	# D.4777, *_8
	.loc 1 93 0
	movq	-8(%rbp), %rax	# accelData, tmp100
	leaq	4(%rax), %rdx	#, D.4778
	movq	imu(%rip), %rax	# imu, D.4776
	movzwl	10(%rax), %eax	# _13->az, D.4777
	movw	%ax, (%rdx)	# D.4777, *_12
	.loc 1 132 0
	movl	$1, %eax	#, D.4779
	.loc 1 133 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	sparkfun_Read, .-sparkfun_Read
	.section	.text.sparkfun_acc_Detect,"ax",@progbits
	.globl	sparkfun_acc_Detect
	.type	sparkfun_acc_Detect, @function
sparkfun_acc_Detect:
.LFB4:
	.loc 1 136 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# acc, acc
	.loc 1 137 0
	movq	-8(%rbp), %rax	# acc, tmp89
	movq	$sparkfun_acc_init, (%rax)	#, acc_2(D)->init
	.loc 1 138 0
	movq	-8(%rbp), %rax	# acc, tmp90
	movq	$sparkfun_Read, 8(%rax)	#, acc_2(D)->read
	.loc 1 139 0
	movl	$1, %eax	#, D.4780
	.loc 1 140 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	sparkfun_acc_Detect, .-sparkfun_acc_Detect
	.text
.Letext0:
	.file 2 "/usr/include/stdint.h"
	.file 3 "/usr/include/mraa/i2c.h"
	.file 4 "./src/main/drivers/SFE_LSM9DS0.h"
	.file 5 "src/main/drivers/sensor.h"
	.file 6 "src/main/drivers/accgyro.h"
	.file 7 "./src/main/target/edison/target.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3cf
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF56
	.byte	0xc
	.long	.LASF57
	.long	.LASF58
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF14
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x35
	.long	0xb4
	.uleb128 0x5
	.byte	0x8
	.long	0xba
	.uleb128 0x6
	.long	.LASF59
	.uleb128 0x7
	.long	.LASF19
	.byte	0x4
	.long	0x7f
	.byte	0x4
	.byte	0x81
	.long	0xe2
	.uleb128 0x8
	.long	.LASF16
	.byte	0
	.uleb128 0x8
	.long	.LASF17
	.byte	0x1
	.uleb128 0x8
	.long	.LASF18
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF19
	.byte	0x4
	.byte	0x86
	.long	0xbf
	.uleb128 0x7
	.long	.LASF20
	.byte	0x4
	.long	0x7f
	.byte	0x4
	.byte	0x89
	.long	0x11c
	.uleb128 0x8
	.long	.LASF21
	.byte	0
	.uleb128 0x8
	.long	.LASF22
	.byte	0x1
	.uleb128 0x8
	.long	.LASF23
	.byte	0x2
	.uleb128 0x8
	.long	.LASF24
	.byte	0x3
	.uleb128 0x8
	.long	.LASF25
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF20
	.byte	0x4
	.byte	0x90
	.long	0xed
	.uleb128 0x7
	.long	.LASF26
	.byte	0x4
	.long	0x7f
	.byte	0x4
	.byte	0x93
	.long	0x150
	.uleb128 0x8
	.long	.LASF27
	.byte	0
	.uleb128 0x8
	.long	.LASF28
	.byte	0x1
	.uleb128 0x8
	.long	.LASF29
	.byte	0x2
	.uleb128 0x8
	.long	.LASF30
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF26
	.byte	0x4
	.byte	0x99
	.long	0x127
	.uleb128 0x9
	.long	.LASF44
	.byte	0x40
	.byte	0x4
	.byte	0xdc
	.long	0x236
	.uleb128 0xa
	.string	"gx"
	.byte	0x4
	.byte	0xe2
	.long	0x30
	.byte	0
	.uleb128 0xa
	.string	"gy"
	.byte	0x4
	.byte	0xe2
	.long	0x30
	.byte	0x2
	.uleb128 0xa
	.string	"gz"
	.byte	0x4
	.byte	0xe2
	.long	0x30
	.byte	0x4
	.uleb128 0xa
	.string	"ax"
	.byte	0x4
	.byte	0xe3
	.long	0x30
	.byte	0x6
	.uleb128 0xa
	.string	"ay"
	.byte	0x4
	.byte	0xe3
	.long	0x30
	.byte	0x8
	.uleb128 0xa
	.string	"az"
	.byte	0x4
	.byte	0xe3
	.long	0x30
	.byte	0xa
	.uleb128 0xa
	.string	"mx"
	.byte	0x4
	.byte	0xe4
	.long	0x30
	.byte	0xc
	.uleb128 0xa
	.string	"my"
	.byte	0x4
	.byte	0xe4
	.long	0x30
	.byte	0xe
	.uleb128 0xa
	.string	"mz"
	.byte	0x4
	.byte	0xe4
	.long	0x30
	.byte	0x10
	.uleb128 0xb
	.long	.LASF31
	.byte	0x4
	.byte	0xe5
	.long	0x30
	.byte	0x12
	.uleb128 0xb
	.long	.LASF32
	.byte	0x4
	.byte	0xe7
	.long	0xa9
	.byte	0x18
	.uleb128 0xa
	.string	"xm"
	.byte	0x4
	.byte	0xe8
	.long	0xa9
	.byte	0x20
	.uleb128 0xb
	.long	.LASF33
	.byte	0x4
	.byte	0xec
	.long	0xe2
	.byte	0x28
	.uleb128 0xb
	.long	.LASF34
	.byte	0x4
	.byte	0xed
	.long	0x11c
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF35
	.byte	0x4
	.byte	0xee
	.long	0x150
	.byte	0x30
	.uleb128 0xb
	.long	.LASF36
	.byte	0x4
	.byte	0xf3
	.long	0x236
	.byte	0x34
	.uleb128 0xb
	.long	.LASF37
	.byte	0x4
	.byte	0xf3
	.long	0x236
	.byte	0x38
	.uleb128 0xb
	.long	.LASF38
	.byte	0x4
	.byte	0xf3
	.long	0x236
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
	.long	0x15b
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF41
	.uleb128 0x3
	.long	.LASF42
	.byte	0x5
	.byte	0x15
	.long	0x25a
	.uleb128 0x5
	.byte	0x8
	.long	0x260
	.uleb128 0xc
	.long	0x248
	.long	0x26f
	.uleb128 0xd
	.long	0x26f
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x30
	.uleb128 0x3
	.long	.LASF43
	.byte	0x5
	.byte	0x18
	.long	0x280
	.uleb128 0x5
	.byte	0x8
	.long	0x286
	.uleb128 0xe
	.uleb128 0x9
	.long	.LASF45
	.byte	0x18
	.byte	0x6
	.byte	0x27
	.long	0x2c4
	.uleb128 0xb
	.long	.LASF46
	.byte	0x6
	.byte	0x28
	.long	0x275
	.byte	0
	.uleb128 0xb
	.long	.LASF47
	.byte	0x6
	.byte	0x29
	.long	0x24f
	.byte	0x8
	.uleb128 0xb
	.long	.LASF48
	.byte	0x6
	.byte	0x2a
	.long	0x62
	.byte	0x10
	.uleb128 0xb
	.long	.LASF49
	.byte	0x6
	.byte	0x2b
	.long	0x94
	.byte	0x12
	.byte	0
	.uleb128 0x3
	.long	.LASF50
	.byte	0x6
	.byte	0x2c
	.long	0x287
	.uleb128 0xf
	.long	.LASF60
	.byte	0x1
	.byte	0x43
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.long	.LASF61
	.byte	0x1
	.byte	0x56
	.long	0x248
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x318
	.uleb128 0x11
	.long	.LASF51
	.byte	0x1
	.byte	0x56
	.long	0x26f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF62
	.byte	0x1
	.byte	0x87
	.long	0x248
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x348
	.uleb128 0x13
	.string	"acc"
	.byte	0x1
	.byte	0x87
	.long	0x348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x2c4
	.uleb128 0x14
	.long	.LASF63
	.byte	0x1
	.byte	0x3f
	.long	0x248
	.uleb128 0x9
	.byte	0x3
	.quad	useFifo
	.uleb128 0x15
	.long	.LASF52
	.byte	0x7
	.byte	0xca
	.long	0x74
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_0
	.uleb128 0x15
	.long	.LASF53
	.byte	0x7
	.byte	0xcb
	.long	0x74
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_1
	.uleb128 0x15
	.long	.LASF54
	.byte	0x7
	.byte	0xcc
	.long	0x74
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_2
	.uleb128 0x16
	.string	"imu"
	.byte	0x1
	.byte	0x41
	.long	0x3b7
	.uleb128 0x9
	.byte	0x3
	.quad	imu
	.uleb128 0x5
	.byte	0x8
	.long	0x23d
	.uleb128 0x15
	.long	.LASF55
	.byte	0x1
	.byte	0x54
	.long	0x50
	.uleb128 0x9
	.byte	0x3
	.quad	acc_samples
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x4c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LFB2
	.quad	.LFE2
	.quad	.LFB3
	.quad	.LFE3
	.quad	.LFB4
	.quad	.LFE4
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"gRes"
.LASF16:
	.string	"G_SCALE_245DPS"
.LASF49:
	.string	"revisionCode"
.LASF15:
	.string	"mraa_i2c_context"
.LASF45:
	.string	"acc_s"
.LASF50:
	.string	"acc_t"
.LASF26:
	.string	"mag_scale"
.LASF1:
	.string	"short int"
.LASF11:
	.string	"sizetype"
.LASF52:
	.string	"U_ID_0"
.LASF53:
	.string	"U_ID_1"
.LASF54:
	.string	"U_ID_2"
.LASF29:
	.string	"M_SCALE_8GS"
.LASF20:
	.string	"accel_scale"
.LASF18:
	.string	"G_SCALE_2000DPS"
.LASF17:
	.string	"G_SCALE_500DPS"
.LASF39:
	.string	"float"
.LASF47:
	.string	"read"
.LASF14:
	.string	"long long int"
.LASF13:
	.string	"long long unsigned int"
.LASF56:
	.string	"GNU C99 5.4.1 20160904 -mtune=generic -march=x86-64 -g -std=gnu99 -ffunction-sections -fdata-sections -ffat-lto-objects -fstack-protector-strong"
.LASF35:
	.string	"mScale"
.LASF61:
	.string	"sparkfun_Read"
.LASF2:
	.string	"long int"
.LASF40:
	.string	"LSM9DS0_t"
.LASF33:
	.string	"gScale"
.LASF48:
	.string	"acc_1G"
.LASF22:
	.string	"A_SCALE_4G"
.LASF34:
	.string	"aScale"
.LASF62:
	.string	"sparkfun_acc_Detect"
.LASF24:
	.string	"A_SCALE_8G"
.LASF5:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF32:
	.string	"gyro"
.LASF8:
	.string	"uint32_t"
.LASF9:
	.string	"unsigned int"
.LASF6:
	.string	"uint16_t"
.LASF43:
	.string	"sensorAccInitFuncPtr"
.LASF30:
	.string	"M_SCALE_12GS"
.LASF25:
	.string	"A_SCALE_16G"
.LASF12:
	.string	"char"
.LASF46:
	.string	"init"
.LASF55:
	.string	"acc_samples"
.LASF42:
	.string	"sensorReadFuncPtr"
.LASF7:
	.string	"short unsigned int"
.LASF58:
	.string	"/home/aravind/git/cleanflight"
.LASF41:
	.string	"_Bool"
.LASF19:
	.string	"gyro_scale"
.LASF28:
	.string	"M_SCALE_4GS"
.LASF37:
	.string	"aRes"
.LASF10:
	.string	"long unsigned int"
.LASF51:
	.string	"accelData"
.LASF63:
	.string	"useFifo"
.LASF31:
	.string	"temperature"
.LASF38:
	.string	"mRes"
.LASF4:
	.string	"uint8_t"
.LASF21:
	.string	"A_SCALE_2G"
.LASF57:
	.string	"src/main/drivers/acc_sparkfun.c"
.LASF59:
	.string	"_i2c"
.LASF3:
	.string	"int16_t"
.LASF60:
	.string	"sparkfun_acc_init"
.LASF27:
	.string	"M_SCALE_2GS"
.LASF23:
	.string	"A_SCALE_6G"
.LASF44:
	.string	"LSM9DS0"
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
