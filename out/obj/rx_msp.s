	.file	"rx_msp.c"
# GNU C99 (Ubuntu 5.4.1-2ubuntu1~16.04) version 5.4.1 20160904 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.1 20160904, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed rx_msp.i -mtune=generic -march=x86-64 -g
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
	.comm	imu,8,8
	.comm	receiveLength,4,4
	.comm	serialConfig_System,28,16
	.comm	rxConfig_System,26,16
	.section	.bss.mspFrame,"aw",@nobits
	.align 32
	.type	mspFrame, @object
	.size	mspFrame, 36
mspFrame:
	.zero	36
	.section	.bss.rxMspFrameDone,"aw",@nobits
	.type	rxMspFrameDone, @object
	.size	rxMspFrameDone, 1
rxMspFrameDone:
	.zero	1
	.section	.text.rxMspReadRawRC,"ax",@progbits
	.type	rxMspReadRawRC, @function
rxMspReadRawRC:
.LFB12:
	.file 1 "src/main/rx/rx_msp.c"
	.loc 1 41 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# rxRuntimeConfigPtr, rxRuntimeConfigPtr
	movl	%esi, %eax	# chan, tmp90
	movb	%al, -12(%rbp)	# tmp90, chan
	.loc 1 43 0
	movzbl	-12(%rbp), %eax	# chan, D.5399
	cltq
	movzwl	mspFrame(%rax,%rax), %eax	# mspFrame, D.5400
	.loc 1 44 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	rxMspReadRawRC, .-rxMspReadRawRC
	.section	.text.rxMspFrameReceive,"ax",@progbits
	.globl	rxMspFrameReceive
	.type	rxMspFrameReceive, @function
rxMspFrameReceive:
.LFB13:
	.loc 1 47 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# frame, frame
	movl	%esi, -28(%rbp)	# channelCount, channelCount
.LBB2:
	.loc 1 48 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L4	#
.L5:
	.loc 1 49 0 discriminator 3
	movl	-8(%rbp), %eax	# i, tmp91
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5401
	movq	-24(%rbp), %rax	# frame, tmp92
	addq	%rdx, %rax	# D.5401, D.5402
	movzwl	(%rax), %edx	# *_11, D.5403
	movl	-8(%rbp), %eax	# i, tmp94
	cltq
	movw	%dx, mspFrame(%rax,%rax)	# D.5403, mspFrame
	.loc 1 48 0 discriminator 3
	addl	$1, -8(%rbp)	#, i
.L4:
	.loc 1 48 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp95
	cmpl	-28(%rbp), %eax	# channelCount, tmp95
	jl	.L5	#,
.LBE2:
.LBB3:
	.loc 1 53 0 is_stmt 1
	movl	-28(%rbp), %eax	# channelCount, tmp96
	movl	%eax, -4(%rbp)	# tmp96, i
	jmp	.L6	#
.L7:
	.loc 1 54 0 discriminator 3
	movl	-4(%rbp), %eax	# i, tmp98
	cltq
	movw	$0, mspFrame(%rax,%rax)	#, mspFrame
	.loc 1 53 0 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L6:
	.loc 1 53 0 is_stmt 0 discriminator 1
	cmpl	$17, -4(%rbp)	#, i
	jle	.L7	#,
.LBE3:
	.loc 1 57 0 is_stmt 1
	movb	$1, rxMspFrameDone(%rip)	#, rxMspFrameDone
	.loc 1 58 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	rxMspFrameReceive, .-rxMspFrameReceive
	.section	.text.rxMspFrameComplete,"ax",@progbits
	.globl	rxMspFrameComplete
	.type	rxMspFrameComplete, @function
rxMspFrameComplete:
.LFB14:
	.loc 1 61 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 62 0
	movzbl	rxMspFrameDone(%rip), %eax	# rxMspFrameDone, D.5404
	xorl	$1, %eax	#, D.5404
	testb	%al, %al	# D.5404
	je	.L9	#,
	.loc 1 63 0
	movl	$0, %eax	#, D.5404
	jmp	.L10	#
.L9:
	.loc 1 66 0
	movb	$0, rxMspFrameDone(%rip)	#, rxMspFrameDone
	.loc 1 67 0
	movl	$1, %eax	#, D.5404
.L10:
	.loc 1 68 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	rxMspFrameComplete, .-rxMspFrameComplete
	.section	.text.rxMspInit,"ax",@progbits
	.globl	rxMspInit
	.type	rxMspInit, @function
rxMspInit:
.LFB15:
	.loc 1 71 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# rxRuntimeConfig, rxRuntimeConfig
	movq	%rsi, -16(%rbp)	# callback, callback
	.loc 1 72 0
	movq	-8(%rbp), %rax	# rxRuntimeConfig, tmp87
	movb	$18, (%rax)	#, rxRuntimeConfig_3(D)->channelCount
	.loc 1 73 0
	cmpq	$0, -16(%rbp)	#, callback
	je	.L13	#,
	.loc 1 74 0
	movq	-16(%rbp), %rax	# callback, tmp88
	movq	$rxMspReadRawRC, (%rax)	#, *callback_5(D)
.L13:
	.loc 1 75 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	rxMspInit, .-rxMspInit
	.text
.Letext0:
	.file 2 "/usr/include/stdint.h"
	.file 3 "./src/main/config/parameter_group.h"
	.file 4 "/usr/include/mraa/i2c.h"
	.file 5 "./src/main/drivers/SFE_LSM9DS0.h"
	.file 6 "./src/main/io/io_serial.h"
	.file 7 "./src/main/rx/rx.h"
	.file 8 "./src/main/target/edison/target.h"
	.file 9 "./src/main/drivers/serial_uart.h"
	.file 10 "./src/main/drivers/system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7ce
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF116
	.byte	0xc
	.long	.LASF117
	.long	.LASF118
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
	.uleb128 0x3
	.long	.LASF11
	.byte	0x3
	.byte	0x15
	.long	0x62
	.uleb128 0x3
	.long	.LASF12
	.byte	0x3
	.byte	0x26
	.long	0xa3
	.uleb128 0x5
	.long	0xb3
	.uleb128 0x6
	.long	0xb3
	.uleb128 0x6
	.long	0x42
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x8
	.byte	0x8
	.byte	0x3
	.byte	0x2d
	.long	0xd3
	.uleb128 0x9
	.string	"ptr"
	.byte	0x3
	.byte	0x2e
	.long	0xb3
	.uleb128 0x9
	.string	"fn"
	.byte	0x3
	.byte	0x2f
	.long	0xd3
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x98
	.uleb128 0xb
	.long	.LASF37
	.byte	0x20
	.byte	0x3
	.byte	0x28
	.long	0x122
	.uleb128 0xc
	.string	"pgn"
	.byte	0x3
	.byte	0x29
	.long	0x8d
	.byte	0
	.uleb128 0xd
	.long	.LASF13
	.byte	0x3
	.byte	0x2a
	.long	0x62
	.byte	0x2
	.uleb128 0xd
	.long	.LASF14
	.byte	0x3
	.byte	0x2b
	.long	0x122
	.byte	0x8
	.uleb128 0xc
	.string	"ptr"
	.byte	0x3
	.byte	0x2c
	.long	0x128
	.byte	0x10
	.uleb128 0xd
	.long	.LASF15
	.byte	0x3
	.byte	0x30
	.long	0xb5
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x50
	.uleb128 0xa
	.byte	0x8
	.long	0x122
	.uleb128 0x3
	.long	.LASF16
	.byte	0x3
	.byte	0x31
	.long	0xd9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF17
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF18
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF19
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF20
	.uleb128 0x3
	.long	.LASF21
	.byte	0x4
	.byte	0x35
	.long	0x160
	.uleb128 0xa
	.byte	0x8
	.long	0x166
	.uleb128 0xe
	.long	.LASF119
	.uleb128 0xf
	.long	.LASF25
	.byte	0x4
	.long	0x7f
	.byte	0x5
	.byte	0x81
	.long	0x18e
	.uleb128 0x10
	.long	.LASF22
	.byte	0
	.uleb128 0x10
	.long	.LASF23
	.byte	0x1
	.uleb128 0x10
	.long	.LASF24
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF25
	.byte	0x5
	.byte	0x86
	.long	0x16b
	.uleb128 0xf
	.long	.LASF26
	.byte	0x4
	.long	0x7f
	.byte	0x5
	.byte	0x89
	.long	0x1c8
	.uleb128 0x10
	.long	.LASF27
	.byte	0
	.uleb128 0x10
	.long	.LASF28
	.byte	0x1
	.uleb128 0x10
	.long	.LASF29
	.byte	0x2
	.uleb128 0x10
	.long	.LASF30
	.byte	0x3
	.uleb128 0x10
	.long	.LASF31
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF26
	.byte	0x5
	.byte	0x90
	.long	0x199
	.uleb128 0xf
	.long	.LASF32
	.byte	0x4
	.long	0x7f
	.byte	0x5
	.byte	0x93
	.long	0x1fc
	.uleb128 0x10
	.long	.LASF33
	.byte	0
	.uleb128 0x10
	.long	.LASF34
	.byte	0x1
	.uleb128 0x10
	.long	.LASF35
	.byte	0x2
	.uleb128 0x10
	.long	.LASF36
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF32
	.byte	0x5
	.byte	0x99
	.long	0x1d3
	.uleb128 0xb
	.long	.LASF38
	.byte	0x40
	.byte	0x5
	.byte	0xdc
	.long	0x2e2
	.uleb128 0xc
	.string	"gx"
	.byte	0x5
	.byte	0xe2
	.long	0x30
	.byte	0
	.uleb128 0xc
	.string	"gy"
	.byte	0x5
	.byte	0xe2
	.long	0x30
	.byte	0x2
	.uleb128 0xc
	.string	"gz"
	.byte	0x5
	.byte	0xe2
	.long	0x30
	.byte	0x4
	.uleb128 0xc
	.string	"ax"
	.byte	0x5
	.byte	0xe3
	.long	0x30
	.byte	0x6
	.uleb128 0xc
	.string	"ay"
	.byte	0x5
	.byte	0xe3
	.long	0x30
	.byte	0x8
	.uleb128 0xc
	.string	"az"
	.byte	0x5
	.byte	0xe3
	.long	0x30
	.byte	0xa
	.uleb128 0xc
	.string	"mx"
	.byte	0x5
	.byte	0xe4
	.long	0x30
	.byte	0xc
	.uleb128 0xc
	.string	"my"
	.byte	0x5
	.byte	0xe4
	.long	0x30
	.byte	0xe
	.uleb128 0xc
	.string	"mz"
	.byte	0x5
	.byte	0xe4
	.long	0x30
	.byte	0x10
	.uleb128 0xd
	.long	.LASF39
	.byte	0x5
	.byte	0xe5
	.long	0x30
	.byte	0x12
	.uleb128 0xd
	.long	.LASF40
	.byte	0x5
	.byte	0xe7
	.long	0x155
	.byte	0x18
	.uleb128 0xc
	.string	"xm"
	.byte	0x5
	.byte	0xe8
	.long	0x155
	.byte	0x20
	.uleb128 0xd
	.long	.LASF41
	.byte	0x5
	.byte	0xec
	.long	0x18e
	.byte	0x28
	.uleb128 0xd
	.long	.LASF42
	.byte	0x5
	.byte	0xed
	.long	0x1c8
	.byte	0x2c
	.uleb128 0xd
	.long	.LASF43
	.byte	0x5
	.byte	0xee
	.long	0x1fc
	.byte	0x30
	.uleb128 0xd
	.long	.LASF44
	.byte	0x5
	.byte	0xf3
	.long	0x2e2
	.byte	0x34
	.uleb128 0xd
	.long	.LASF45
	.byte	0x5
	.byte	0xf3
	.long	0x2e2
	.byte	0x38
	.uleb128 0xd
	.long	.LASF46
	.byte	0x5
	.byte	0xf3
	.long	0x2e2
	.byte	0x3c
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF47
	.uleb128 0x3
	.long	.LASF48
	.byte	0x5
	.byte	0xf5
	.long	0x207
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF49
	.uleb128 0x11
	.byte	0x4
	.long	0x42
	.byte	0x6
	.byte	0x36
	.long	0x344
	.uleb128 0x12
	.long	.LASF50
	.sleb128 -1
	.uleb128 0x10
	.long	.LASF51
	.byte	0
	.uleb128 0x10
	.long	.LASF52
	.byte	0x1
	.uleb128 0x10
	.long	.LASF53
	.byte	0x2
	.uleb128 0x10
	.long	.LASF54
	.byte	0x3
	.uleb128 0x10
	.long	.LASF55
	.byte	0x4
	.uleb128 0x10
	.long	.LASF56
	.byte	0x14
	.uleb128 0x10
	.long	.LASF57
	.byte	0x1e
	.uleb128 0x10
	.long	.LASF58
	.byte	0x1f
	.uleb128 0x10
	.long	.LASF59
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.long	.LASF60
	.byte	0x6
	.byte	0x41
	.long	0x2fb
	.uleb128 0xb
	.long	.LASF61
	.byte	0xc
	.byte	0x6
	.byte	0x5a
	.long	0x380
	.uleb128 0xd
	.long	.LASF62
	.byte	0x6
	.byte	0x5b
	.long	0x344
	.byte	0
	.uleb128 0xd
	.long	.LASF63
	.byte	0x6
	.byte	0x5c
	.long	0x62
	.byte	0x4
	.uleb128 0xd
	.long	.LASF64
	.byte	0x6
	.byte	0x5d
	.long	0x380
	.byte	0x6
	.byte	0
	.uleb128 0x13
	.long	0x50
	.long	0x390
	.uleb128 0x14
	.long	0x139
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF65
	.byte	0x6
	.byte	0x5e
	.long	0x34f
	.uleb128 0xb
	.long	.LASF66
	.byte	0x1c
	.byte	0x6
	.byte	0x60
	.long	0x3c0
	.uleb128 0xd
	.long	.LASF67
	.byte	0x6
	.byte	0x61
	.long	0x50
	.byte	0
	.uleb128 0xd
	.long	.LASF68
	.byte	0x6
	.byte	0x62
	.long	0x3c0
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.long	0x390
	.long	0x3d0
	.uleb128 0x14
	.long	0x139
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF69
	.byte	0x6
	.byte	0x63
	.long	0x39b
	.uleb128 0xb
	.long	.LASF70
	.byte	0x2
	.byte	0x7
	.byte	0x65
	.long	0x400
	.uleb128 0xd
	.long	.LASF71
	.byte	0x7
	.byte	0x66
	.long	0x50
	.byte	0
	.uleb128 0xd
	.long	.LASF72
	.byte	0x7
	.byte	0x67
	.long	0x50
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF73
	.byte	0x7
	.byte	0x68
	.long	0x3db
	.uleb128 0xb
	.long	.LASF74
	.byte	0x4
	.byte	0x7
	.byte	0x6a
	.long	0x430
	.uleb128 0xc
	.string	"min"
	.byte	0x7
	.byte	0x6b
	.long	0x62
	.byte	0
	.uleb128 0xc
	.string	"max"
	.byte	0x7
	.byte	0x6c
	.long	0x62
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF75
	.byte	0x7
	.byte	0x6d
	.long	0x40b
	.uleb128 0xb
	.long	.LASF76
	.byte	0x1a
	.byte	0x7
	.byte	0x6f
	.long	0x4e4
	.uleb128 0xd
	.long	.LASF77
	.byte	0x7
	.byte	0x70
	.long	0x4e4
	.byte	0
	.uleb128 0xd
	.long	.LASF78
	.byte	0x7
	.byte	0x71
	.long	0x50
	.byte	0x8
	.uleb128 0xd
	.long	.LASF79
	.byte	0x7
	.byte	0x72
	.long	0x50
	.byte	0x9
	.uleb128 0xd
	.long	.LASF80
	.byte	0x7
	.byte	0x73
	.long	0x50
	.byte	0xa
	.uleb128 0xd
	.long	.LASF81
	.byte	0x7
	.byte	0x74
	.long	0x50
	.byte	0xb
	.uleb128 0xd
	.long	.LASF82
	.byte	0x7
	.byte	0x75
	.long	0x50
	.byte	0xc
	.uleb128 0xd
	.long	.LASF83
	.byte	0x7
	.byte	0x76
	.long	0x50
	.byte	0xd
	.uleb128 0xd
	.long	.LASF84
	.byte	0x7
	.byte	0x77
	.long	0x50
	.byte	0xe
	.uleb128 0xd
	.long	.LASF85
	.byte	0x7
	.byte	0x78
	.long	0x62
	.byte	0x10
	.uleb128 0xd
	.long	.LASF86
	.byte	0x7
	.byte	0x79
	.long	0x62
	.byte	0x12
	.uleb128 0xd
	.long	.LASF87
	.byte	0x7
	.byte	0x7a
	.long	0x62
	.byte	0x14
	.uleb128 0xd
	.long	.LASF88
	.byte	0x7
	.byte	0x7c
	.long	0x62
	.byte	0x16
	.uleb128 0xd
	.long	.LASF89
	.byte	0x7
	.byte	0x7d
	.long	0x62
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.long	0x50
	.long	0x4f4
	.uleb128 0x14
	.long	0x139
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF90
	.byte	0x7
	.byte	0x7e
	.long	0x43b
	.uleb128 0xb
	.long	.LASF91
	.byte	0x1
	.byte	0x7
	.byte	0x85
	.long	0x518
	.uleb128 0xd
	.long	.LASF92
	.byte	0x7
	.byte	0x86
	.long	0x50
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF93
	.byte	0x7
	.byte	0x87
	.long	0x4ff
	.uleb128 0x3
	.long	.LASF94
	.byte	0x7
	.byte	0x8b
	.long	0x52e
	.uleb128 0xa
	.byte	0x8
	.long	0x534
	.uleb128 0x15
	.long	0x62
	.long	0x548
	.uleb128 0x6
	.long	0x548
	.uleb128 0x6
	.long	0x50
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x518
	.uleb128 0x16
	.long	.LASF120
	.byte	0x1
	.byte	0x28
	.long	0x62
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x58c
	.uleb128 0x17
	.long	.LASF95
	.byte	0x1
	.byte	0x28
	.long	0x548
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.long	.LASF96
	.byte	0x1
	.byte	0x28
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x18
	.long	.LASF98
	.byte	0x1
	.byte	0x2e
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x606
	.uleb128 0x17
	.long	.LASF97
	.byte	0x1
	.byte	0x2e
	.long	0x606
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF92
	.byte	0x1
	.byte	0x2e
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x5e7
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x30
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x35
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x62
	.uleb128 0x1c
	.long	.LASF121
	.byte	0x1
	.byte	0x3c
	.long	0x2f4
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.long	.LASF99
	.byte	0x1
	.byte	0x46
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x663
	.uleb128 0x17
	.long	.LASF100
	.byte	0x1
	.byte	0x46
	.long	0x548
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.long	.LASF101
	.byte	0x1
	.byte	0x46
	.long	0x663
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x523
	.uleb128 0x13
	.long	0x62
	.long	0x679
	.uleb128 0x14
	.long	0x139
	.byte	0x11
	.byte	0
	.uleb128 0x1d
	.long	.LASF102
	.byte	0x1
	.byte	0x25
	.long	0x669
	.uleb128 0x9
	.byte	0x3
	.quad	mspFrame
	.uleb128 0x1d
	.long	.LASF103
	.byte	0x1
	.byte	0x26
	.long	0x2f4
	.uleb128 0x9
	.byte	0x3
	.quad	rxMspFrameDone
	.uleb128 0x1e
	.long	.LASF104
	.byte	0x8
	.byte	0xca
	.long	0x74
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_0
	.uleb128 0x1e
	.long	.LASF105
	.byte	0x8
	.byte	0xcb
	.long	0x74
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_1
	.uleb128 0x1e
	.long	.LASF106
	.byte	0x8
	.byte	0xcc
	.long	0x74
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_2
	.uleb128 0x1e
	.long	.LASF107
	.byte	0x3
	.byte	0x43
	.long	0x6f7
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_start
	.uleb128 0xa
	.byte	0x8
	.long	0x12e
	.uleb128 0x1e
	.long	.LASF108
	.byte	0x3
	.byte	0x44
	.long	0x6f7
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_end
	.uleb128 0x1e
	.long	.LASF109
	.byte	0x3
	.byte	0x47
	.long	0x122
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_start
	.uleb128 0x1e
	.long	.LASF110
	.byte	0x3
	.byte	0x48
	.long	0x122
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_end
	.uleb128 0x1f
	.string	"imu"
	.byte	0xa
	.byte	0x38
	.long	0x751
	.uleb128 0x9
	.byte	0x3
	.quad	imu
	.uleb128 0xa
	.byte	0x8
	.long	0x2e9
	.uleb128 0x1e
	.long	.LASF111
	.byte	0x9
	.byte	0x2c
	.long	0x76c
	.uleb128 0x9
	.byte	0x3
	.quad	receiveLength
	.uleb128 0x20
	.long	0x74
	.uleb128 0x1e
	.long	.LASF112
	.byte	0x6
	.byte	0x65
	.long	0x3d0
	.uleb128 0x9
	.byte	0x3
	.quad	serialConfig_System
	.uleb128 0x1e
	.long	.LASF113
	.byte	0x7
	.byte	0x80
	.long	0x4f4
	.uleb128 0x9
	.byte	0x3
	.quad	rxConfig_System
	.uleb128 0x13
	.long	0x400
	.long	0x7ab
	.uleb128 0x14
	.long	0x139
	.byte	0x11
	.byte	0
	.uleb128 0x21
	.long	.LASF114
	.byte	0x7
	.byte	0x82
	.long	0x79b
	.uleb128 0x13
	.long	0x430
	.long	0x7c6
	.uleb128 0x14
	.long	0x139
	.byte	0x3
	.byte	0
	.uleb128 0x21
	.long	.LASF115
	.byte	0x7
	.byte	0x83
	.long	0x7b6
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x16
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.long	0x5c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
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
.LASF55:
	.string	"SERIAL_PORT_UART5"
.LASF103:
	.string	"rxMspFrameDone"
.LASF100:
	.string	"rxRuntimeConfig"
.LASF12:
	.string	"pgResetFunc"
.LASF92:
	.string	"channelCount"
.LASF33:
	.string	"M_SCALE_2GS"
.LASF73:
	.string	"rxFailsafeChannelConfig_t"
.LASF45:
	.string	"aRes"
.LASF19:
	.string	"long long unsigned int"
.LASF97:
	.string	"frame"
.LASF59:
	.string	"SERIAL_PORT_IDENTIFIER_MAX"
.LASF68:
	.string	"portConfigs"
.LASF121:
	.string	"rxMspFrameComplete"
.LASF42:
	.string	"aScale"
.LASF67:
	.string	"reboot_character"
.LASF106:
	.string	"U_ID_2"
.LASF109:
	.string	"__pg_resetdata_start"
.LASF3:
	.string	"int16_t"
.LASF20:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF120:
	.string	"rxMspReadRawRC"
.LASF13:
	.string	"size"
.LASF46:
	.string	"mRes"
.LASF21:
	.string	"mraa_i2c_context"
.LASF111:
	.string	"receiveLength"
.LASF2:
	.string	"long int"
.LASF70:
	.string	"rxFailsafeChannelConfiguration_s"
.LASF95:
	.string	"rxRuntimeConfigPtr"
.LASF24:
	.string	"G_SCALE_2000DPS"
.LASF29:
	.string	"A_SCALE_6G"
.LASF74:
	.string	"rxChannelRangeConfiguration_s"
.LASF75:
	.string	"rxChannelRangeConfiguration_t"
.LASF6:
	.string	"uint16_t"
.LASF56:
	.string	"SERIAL_PORT_USB_VCP"
.LASF39:
	.string	"temperature"
.LASF38:
	.string	"LSM9DS0"
.LASF23:
	.string	"G_SCALE_500DPS"
.LASF22:
	.string	"G_SCALE_245DPS"
.LASF52:
	.string	"SERIAL_PORT_UART2"
.LASF53:
	.string	"SERIAL_PORT_UART3"
.LASF15:
	.string	"reset"
.LASF60:
	.string	"serialPortIdentifier_e"
.LASF9:
	.string	"unsigned int"
.LASF87:
	.string	"maxcheck"
.LASF114:
	.string	"failsafeChannelConfigs_SystemArray"
.LASF48:
	.string	"LSM9DS0_t"
.LASF116:
	.string	"GNU C99 5.4.1 20160904 -mtune=generic -march=x86-64 -g -std=gnu99 -ffunction-sections -fdata-sections -ffat-lto-objects -fstack-protector-strong"
.LASF11:
	.string	"pgn_t"
.LASF78:
	.string	"serialrx_provider"
.LASF10:
	.string	"long unsigned int"
.LASF112:
	.string	"serialConfig_System"
.LASF37:
	.string	"pgRegistry_s"
.LASF7:
	.string	"short unsigned int"
.LASF31:
	.string	"A_SCALE_16G"
.LASF64:
	.string	"baudRates"
.LASF101:
	.string	"callback"
.LASF85:
	.string	"midrc"
.LASF1:
	.string	"short int"
.LASF41:
	.string	"gScale"
.LASF57:
	.string	"SERIAL_PORT_SOFTSERIAL1"
.LASF58:
	.string	"SERIAL_PORT_SOFTSERIAL2"
.LASF108:
	.string	"__pg_registry_end"
.LASF30:
	.string	"A_SCALE_8G"
.LASF40:
	.string	"gyro"
.LASF91:
	.string	"rxRuntimeConfig_s"
.LASF93:
	.string	"rxRuntimeConfig_t"
.LASF86:
	.string	"mincheck"
.LASF17:
	.string	"sizetype"
.LASF25:
	.string	"gyro_scale"
.LASF63:
	.string	"functionMask"
.LASF14:
	.string	"address"
.LASF32:
	.string	"mag_scale"
.LASF110:
	.string	"__pg_resetdata_end"
.LASF107:
	.string	"__pg_registry_start"
.LASF82:
	.string	"rssi_scale"
.LASF104:
	.string	"U_ID_0"
.LASF51:
	.string	"SERIAL_PORT_UART1"
.LASF118:
	.string	"/home/aravind/git/cleanflight"
.LASF47:
	.string	"float"
.LASF54:
	.string	"SERIAL_PORT_UART4"
.LASF80:
	.string	"spektrum_sat_bind"
.LASF81:
	.string	"rssi_channel"
.LASF49:
	.string	"_Bool"
.LASF5:
	.string	"unsigned char"
.LASF72:
	.string	"step"
.LASF105:
	.string	"U_ID_1"
.LASF98:
	.string	"rxMspFrameReceive"
.LASF27:
	.string	"A_SCALE_2G"
.LASF66:
	.string	"serialConfig_s"
.LASF69:
	.string	"serialConfig_t"
.LASF115:
	.string	"channelRanges_SystemArray"
.LASF34:
	.string	"M_SCALE_4GS"
.LASF99:
	.string	"rxMspInit"
.LASF61:
	.string	"serialPortConfig_s"
.LASF65:
	.string	"serialPortConfig_t"
.LASF8:
	.string	"uint32_t"
.LASF113:
	.string	"rxConfig_System"
.LASF96:
	.string	"chan"
.LASF16:
	.string	"pgRegistry_t"
.LASF84:
	.string	"rcSmoothing"
.LASF18:
	.string	"char"
.LASF71:
	.string	"mode"
.LASF94:
	.string	"rcReadRawDataPtr"
.LASF77:
	.string	"rcmap"
.LASF102:
	.string	"mspFrame"
.LASF43:
	.string	"mScale"
.LASF119:
	.string	"_i2c"
.LASF44:
	.string	"gRes"
.LASF62:
	.string	"identifier"
.LASF76:
	.string	"rxConfig_s"
.LASF90:
	.string	"rxConfig_t"
.LASF50:
	.string	"SERIAL_PORT_NONE"
.LASF88:
	.string	"rx_min_usec"
.LASF89:
	.string	"rx_max_usec"
.LASF4:
	.string	"uint8_t"
.LASF26:
	.string	"accel_scale"
.LASF117:
	.string	"src/main/rx/rx_msp.c"
.LASF28:
	.string	"A_SCALE_4G"
.LASF79:
	.string	"sbus_inversion"
.LASF83:
	.string	"rssi_ppm_invert"
.LASF35:
	.string	"M_SCALE_8GS"
.LASF36:
	.string	"M_SCALE_12GS"
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
