	.file	"msp_serial.c"
# GNU C99 (Ubuntu 5.4.1-2ubuntu1~16.04) version 5.4.1 20160904 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.1 20160904, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed msp_serial.i -mtune=generic -march=x86-64
# -g -std=gnu99 -ffunction-sections -fdata-sections -fverbose-asm
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
	.comm	serialConfig_System,28,16
	.comm	receiveLength,4,4
	.globl	mspPostProcessFn
	.section	.bss.mspPostProcessFn,"aw",@nobits
	.align 8
	.type	mspPostProcessFn, @object
	.size	mspPostProcessFn, 8
mspPostProcessFn:
	.zero	8
	.comm	mspPorts,192,32
	.section	.text.resetMspPort,"ax",@progbits
	.type	resetMspPort, @function
resetMspPort:
.LFB9:
	.file 1 "src/main/msp/msp_serial.c"
	.loc 1 53 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# mspPortToReset, mspPortToReset
	movq	%rsi, -16(%rbp)	# serialPort, serialPort
	.loc 1 54 0
	movq	-8(%rbp), %rax	# mspPortToReset, tmp87
	movl	$96, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	memset	#
	.loc 1 56 0
	movq	-8(%rbp), %rax	# mspPortToReset, tmp88
	movq	-16(%rbp), %rdx	# serialPort, tmp89
	movq	%rdx, (%rax)	# tmp89, mspPortToReset_2(D)->port
	.loc 1 57 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	resetMspPort, .-resetMspPort
	.section	.text.mspPortFindFree,"ax",@progbits
	.type	mspPortFindFree, @function
mspPortFindFree:
.LFB10:
	.loc 1 60 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
.LBB2:
	.loc 1 61 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L3	#
.L6:
	.loc 1 62 0
	movl	-4(%rbp), %eax	# i, tmp91
	movslq	%eax, %rdx	# tmp91, tmp90
	movq	%rdx, %rax	# tmp90, tmp93
	addq	%rax, %rax	# tmp93
	addq	%rdx, %rax	# tmp90, tmp93
	salq	$5, %rax	#, tmp94
	addq	$mspPorts, %rax	#, tmp95
	movq	(%rax), %rax	# mspPorts[i_1].port, D.5625
	testq	%rax, %rax	# D.5625
	jne	.L4	#,
	.loc 1 63 0
	movl	-4(%rbp), %eax	# i, tmp97
	movslq	%eax, %rdx	# tmp97, tmp96
	movq	%rdx, %rax	# tmp96, tmp98
	addq	%rax, %rax	# tmp98
	addq	%rdx, %rax	# tmp96, tmp98
	salq	$5, %rax	#, tmp99
	addq	$mspPorts, %rax	#, D.5624
	jmp	.L5	#
.L4:
	.loc 1 61 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L3:
	.loc 1 61 0 is_stmt 0 discriminator 1
	cmpl	$1, -4(%rbp)	#, i
	jle	.L6	#,
.LBE2:
	.loc 1 64 0 is_stmt 1
	movl	$0, %eax	#, D.5624
.L5:
	.loc 1 65 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	mspPortFindFree, .-mspPortFindFree
	.section	.rodata
.LC0:
	.string	"Error"
	.section	.text.mspSerialAllocatePorts,"ax",@progbits
	.globl	mspSerialAllocatePorts
	.type	mspSerialAllocatePorts, @function
mspSerialAllocatePorts:
.LFB11:
	.loc 1 68 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
.LBB3:
	.loc 1 69 0
	movl	$513, %edi	#,
	call	findSerialPortConfig	#
	movq	%rax, -24(%rbp)	# tmp94, portConfig
	jmp	.L8	#
.L14:
.LBB4:
	.loc 1 72 0
	movq	-24(%rbp), %rax	# portConfig, tmp95
	movq	%rax, %rdi	# tmp95,
	call	isSerialPortOpen	#
	testb	%al, %al	# D.5626
	jne	.L15	#,
	.loc 1 77 0
	call	mspPortFindFree	#
	movq	%rax, -16(%rbp)	# tmp96, mspPort
	.loc 1 78 0
	cmpq	$0, -16(%rbp)	#, mspPort
	je	.L16	#,
	.loc 1 84 0
	movq	-24(%rbp), %rax	# portConfig, tmp97
	movzwl	4(%rax), %eax	# portConfig_1->functionMask, D.5627
	andw	$513, %ax	#, tmp98
	movw	%ax, -30(%rbp)	# tmp98, function
	.loc 1 87 0
	movb	$0, -31(%rbp)	#, baudRatesIndex
	.loc 1 88 0
	movl	$0, -28(%rbp)	#, mode
	.loc 1 98 0
	movzbl	-31(%rbp), %eax	# baudRatesIndex, D.5628
	movq	-24(%rbp), %rdx	# portConfig, tmp99
	cltq
	movzbl	6(%rdx,%rax), %eax	# portConfig_1->baudRates, D.5629
	.loc 1 97 0
	movzbl	%al, %eax	# D.5629, D.5628
	cltq
	movl	baudRates(,%rax,4), %edx	# baudRates, D.5630
	movzwl	-30(%rbp), %eax	# function, D.5631
	movl	$0, %r9d	#,
	movl	$3, %r8d	#,
	movl	%edx, %ecx	# D.5630,
	movl	$0, %edx	#,
	movl	%eax, %esi	# D.5631,
	movl	$20, %edi	#,
	call	openSerialPort	#
	movq	%rax, -8(%rbp)	# tmp102, serialPort
	.loc 1 99 0
	cmpq	$0, -8(%rbp)	#, serialPort
	je	.L13	#,
	.loc 1 100 0
	movq	-8(%rbp), %rdx	# serialPort, tmp103
	movq	-16(%rbp), %rax	# mspPort, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	resetMspPort	#
	.loc 1 101 0
	movq	-16(%rbp), %rax	# mspPort, tmp105
	movl	-28(%rbp), %edx	# mode, tmp106
	movl	%edx, 8(%rax)	# tmp106, mspPort_13->mode
	jmp	.L10	#
.L13:
	.loc 1 103 0
	movl	$.LC0, %edi	#,
	call	puts	#
	jmp	.L10	#
.L15:
	.loc 1 73 0
	nop
.L10:
.LBE4:
	.loc 1 71 0
	movl	$513, %edi	#,
	call	findNextSerialPortConfig	#
	movq	%rax, -24(%rbp)	# tmp107, portConfig
.L8:
	.loc 1 69 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, portConfig
	jne	.L14	#,
	jmp	.L7	#
.L16:
.LBB5:
	.loc 1 81 0
	nop
.L7:
.LBE5:
.LBE3:
	.loc 1 107 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	mspSerialAllocatePorts, .-mspSerialAllocatePorts
	.section	.text.mspSerialReleasePortIfAllocated,"ax",@progbits
	.globl	mspSerialReleasePortIfAllocated
	.type	mspSerialReleasePortIfAllocated, @function
mspSerialReleasePortIfAllocated:
.LFB12:
	.loc 1 110 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# serialPort, serialPort
.LBB6:
	.loc 1 111 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L18	#
.L20:
.LBB7:
	.loc 1 112 0
	movl	-12(%rbp), %eax	# i, tmp90
	movslq	%eax, %rdx	# tmp90, tmp89
	movq	%rdx, %rax	# tmp89, tmp91
	addq	%rax, %rax	# tmp91
	addq	%rdx, %rax	# tmp89, tmp91
	salq	$5, %rax	#, tmp92
	addq	$mspPorts, %rax	#, tmp93
	movq	%rax, -8(%rbp)	# tmp93, mspPort
	.loc 1 113 0
	movq	-8(%rbp), %rax	# mspPort, tmp94
	movq	(%rax), %rax	# mspPort_6->port, D.5633
	cmpq	-24(%rbp), %rax	# serialPort, D.5633
	jne	.L19	#,
	.loc 1 114 0
	movq	-8(%rbp), %rax	# mspPort, tmp95
	movq	(%rax), %rax	# mspPort_6->port, D.5633
	movq	%rax, %rdi	# D.5633,
	call	closeSerialPort	#
	.loc 1 115 0
	movq	-8(%rbp), %rax	# mspPort, tmp96
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	resetMspPort	#
.L19:
.LBE7:
	.loc 1 111 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L18:
	.loc 1 111 0 is_stmt 0 discriminator 1
	cmpl	$1, -12(%rbp)	#, i
	jle	.L20	#,
.LBE6:
	.loc 1 118 0 is_stmt 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	mspSerialReleasePortIfAllocated, .-mspSerialReleasePortIfAllocated
	.section	.text.mspSerialInit,"ax",@progbits
	.globl	mspSerialInit
	.type	mspSerialInit, @function
mspSerialInit:
.LFB13:
	.loc 1 121 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
.LBB8:
	.loc 1 122 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L22	#
.L23:
	.loc 1 123 0 discriminator 3
	movl	-4(%rbp), %eax	# i, tmp89
	movslq	%eax, %rdx	# tmp89, tmp88
	movq	%rdx, %rax	# tmp88, tmp90
	addq	%rax, %rax	# tmp90
	addq	%rdx, %rax	# tmp88, tmp90
	salq	$5, %rax	#, tmp91
	addq	$mspPorts, %rax	#, D.5634
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.5634,
	call	resetMspPort	#
	.loc 1 122 0 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L22:
	.loc 1 122 0 is_stmt 0 discriminator 1
	cmpl	$1, -4(%rbp)	#, i
	jle	.L23	#,
.LBE8:
	.loc 1 125 0 is_stmt 1
	call	mspSerialAllocatePorts	#
	.loc 1 126 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	mspSerialInit, .-mspSerialInit
	.section	.text.mspSerialChecksum,"ax",@progbits
	.type	mspSerialChecksum, @function
mspSerialChecksum:
.LFB14:
	.loc 1 129 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, %edx	# checksum, tmp89
	movl	%esi, %eax	# byte, tmp90
	movb	%dl, -4(%rbp)	# tmp89, checksum
	movb	%al, -8(%rbp)	# tmp90, byte
	.loc 1 130 0
	movzbl	-4(%rbp), %eax	# checksum, tmp91
	xorb	-8(%rbp), %al	# byte, D.5635
	.loc 1 131 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	mspSerialChecksum, .-mspSerialChecksum
	.section	.text.mspSerialChecksumBuf,"ax",@progbits
	.type	mspSerialChecksumBuf, @function
mspSerialChecksumBuf:
.LFB15:
	.loc 1 134 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, %eax	# checksum, tmp94
	movq	%rsi, -16(%rbp)	# data, data
	movl	%edx, -8(%rbp)	# len, len
	movb	%al, -4(%rbp)	# tmp94, checksum
	.loc 1 135 0
	jmp	.L27	#
.L28:
	.loc 1 136 0
	movq	-16(%rbp), %rax	# data, D.5637
	leaq	1(%rax), %rdx	#, tmp95
	movq	%rdx, -16(%rbp)	# tmp95, data
	movzbl	(%rax), %eax	# *_11, D.5638
	movzbl	%al, %edx	# D.5638, D.5636
	movzbl	-4(%rbp), %eax	# checksum, D.5636
	movl	%edx, %esi	# D.5636,
	movl	%eax, %edi	# D.5636,
	call	mspSerialChecksum	#
	movb	%al, -4(%rbp)	# tmp96, checksum
.L27:
	.loc 1 135 0
	movl	-8(%rbp), %eax	# len, D.5636
	leal	-1(%rax), %edx	#, tmp97
	movl	%edx, -8(%rbp)	# tmp97, len
	testl	%eax, %eax	# D.5636
	jg	.L28	#,
	.loc 1 139 0
	movzbl	-4(%rbp), %eax	# checksum, D.5639
	.loc 1 140 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	mspSerialChecksumBuf, .-mspSerialChecksumBuf
	.section	.text.mspSerialEncode,"ax",@progbits
	.globl	mspSerialEncode
	.type	mspSerialEncode, @function
mspSerialEncode:
.LFB16:
	.loc 1 143 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# msp, msp
	movq	%rsi, -48(%rbp)	# packet, packet
	.loc 1 143 0
	movq	%fs:40, %rax	#, tmp122
	movq	%rax, -8(%rbp)	# tmp122, D.5647
	xorl	%eax, %eax	# tmp122
	.loc 1 145 0
	movq	-40(%rbp), %rax	# msp, tmp107
	movq	(%rax), %rax	# msp_6(D)->port, D.5641
	movq	%rax, %rdi	# D.5641,
	call	serialBeginWrite	#
	.loc 1 146 0
	movq	-48(%rbp), %rax	# packet, D.5642
	movq	%rax, %rdi	# D.5642,
	call	sbufBytesRemaining	#
	movl	%eax, -20(%rbp)	# tmp108, len
	.loc 1 147 0
	movb	$36, -16(%rbp)	#, hdr
	movb	$77, -15(%rbp)	#, hdr
	movq	-48(%rbp), %rax	# packet, tmp109
	movzwl	18(%rax), %eax	# packet_9(D)->result, D.5643
	testw	%ax, %ax	# D.5643
	js	.L31	#,
	.loc 1 147 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msp, tmp110
	movl	8(%rax), %eax	# msp_6(D)->mode, D.5644
	testl	%eax, %eax	# D.5644
	jne	.L32	#,
	.loc 1 147 0 discriminator 3
	movl	$62, %eax	#, D.5640
	jmp	.L34	#
.L32:
	.loc 1 147 0 discriminator 4
	movl	$60, %eax	#, D.5640
	jmp	.L34	#
.L31:
	.loc 1 147 0 discriminator 2
	movl	$33, %eax	#, D.5640
.L34:
	.loc 1 147 0 discriminator 8
	movb	%al, -14(%rbp)	# D.5640, hdr
	movl	-20(%rbp), %eax	# len, tmp111
	movb	%al, -13(%rbp)	# D.5640, hdr
	movq	-48(%rbp), %rax	# packet, tmp112
	movzwl	16(%rax), %eax	# packet_9(D)->cmd, D.5643
	movb	%al, -12(%rbp)	# D.5640, hdr
	.loc 1 148 0 is_stmt 1 discriminator 8
	movb	$0, -21(%rbp)	#, csum
	.loc 1 149 0 discriminator 8
	movq	-40(%rbp), %rax	# msp, tmp113
	movq	(%rax), %rax	# msp_6(D)->port, D.5641
	leaq	-16(%rbp), %rcx	#, tmp114
	movl	$5, %edx	#,
	movq	%rcx, %rsi	# tmp114,
	movq	%rax, %rdi	# D.5641,
	call	serialWriteBuf	#
	.loc 1 150 0 discriminator 8
	leaq	-16(%rbp), %rax	#, D.5645
	addq	$3, %rax	#, D.5645
	movzbl	-21(%rbp), %ecx	# csum, D.5646
	movl	$2, %edx	#,
	movq	%rax, %rsi	# D.5645,
	movl	%ecx, %edi	# D.5646,
	call	mspSerialChecksumBuf	#
	movb	%al, -21(%rbp)	# tmp115, csum
	.loc 1 151 0 discriminator 8
	cmpl	$0, -20(%rbp)	#, len
	jle	.L35	#,
	.loc 1 152 0
	movq	-48(%rbp), %rax	# packet, D.5642
	movq	%rax, %rdi	# D.5642,
	call	sbufPtr	#
	movq	%rax, %rcx	#, D.5645
	movq	-40(%rbp), %rax	# msp, tmp116
	movq	(%rax), %rax	# msp_6(D)->port, D.5641
	movl	-20(%rbp), %edx	# len, tmp117
	movq	%rcx, %rsi	# D.5645,
	movq	%rax, %rdi	# D.5641,
	call	serialWriteBuf	#
	.loc 1 153 0
	movq	-48(%rbp), %rax	# packet, D.5642
	movq	%rax, %rdi	# D.5642,
	call	sbufPtr	#
	movq	%rax, %rcx	#, D.5645
	movzbl	-21(%rbp), %eax	# csum, D.5646
	movl	-20(%rbp), %edx	# len, tmp118
	movq	%rcx, %rsi	# D.5645,
	movl	%eax, %edi	# D.5646,
	call	mspSerialChecksumBuf	#
	movb	%al, -21(%rbp)	# tmp119, csum
.L35:
	.loc 1 156 0
	movzbl	-21(%rbp), %edx	# csum, D.5646
	movq	-40(%rbp), %rax	# msp, tmp120
	movq	(%rax), %rax	# msp_6(D)->port, D.5641
	movl	%edx, %esi	# D.5646,
	movq	%rax, %rdi	# D.5641,
	call	serialWrite	#
	.loc 1 157 0
	movq	-40(%rbp), %rax	# msp, tmp121
	movq	(%rax), %rax	# msp_6(D)->port, D.5641
	movq	%rax, %rdi	# D.5641,
	call	serialEndWrite	#
	.loc 1 158 0
	nop
	movq	-8(%rbp), %rax	# D.5647, tmp123
	xorq	%fs:40, %rax	#, tmp123
	je	.L36	#,
	call	__stack_chk_fail	#
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	mspSerialEncode, .-mspSerialEncode
	.section	.text.mspSerialProcessReceivedCommand,"ax",@progbits
	.type	mspSerialProcessReceivedCommand, @function
mspSerialProcessReceivedCommand:
.LFB17:
	.loc 1 161 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$384, %rsp	#,
	movq	%rdi, -376(%rbp)	# msp, msp
	.loc 1 161 0
	movq	%fs:40, %rax	#, tmp112
	movq	%rax, -8(%rbp)	# tmp112, D.5656
	xorl	%eax, %eax	# tmp112
	.loc 1 164 0
	leaq	-272(%rbp), %rax	#, tmp95
	movq	%rax, -336(%rbp)	# tmp95, message.buf.ptr
	leaq	-272(%rbp), %rax	#, tmp96
	addq	$256, %rax	#, tmp97
	movq	%rax, -328(%rbp)	# tmp97, message.buf.end
	movw	$-1, -320(%rbp)	#, message.cmd
	movw	$0, -318(%rbp)	#, message.result
	.loc 1 175 0
	movq	-376(%rbp), %rax	# msp, tmp98
	addq	$31, %rax	#, D.5650
	.loc 1 173 0
	movq	%rax, -304(%rbp)	# D.5650, command.buf.ptr
	.loc 1 176 0
	movq	-376(%rbp), %rax	# msp, tmp99
	leaq	31(%rax), %rdx	#, D.5650
	movq	-376(%rbp), %rax	# msp, tmp100
	movzbl	29(%rax), %eax	# msp_7(D)->dataSize, D.5651
	movzbl	%al, %eax	# D.5651, D.5652
	addq	%rdx, %rax	# D.5650, D.5653
	.loc 1 173 0
	movq	%rax, -296(%rbp)	# D.5653, command.buf.end
	.loc 1 178 0
	movq	-376(%rbp), %rax	# msp, tmp101
	movzbl	30(%rax), %eax	# msp_7(D)->cmdMSP, D.5651
	.loc 1 173 0
	movzbl	%al, %eax	# D.5651, D.5654
	movw	%ax, -288(%rbp)	# D.5654, command.cmd
	movw	$0, -286(%rbp)	#, command.result
	.loc 1 182 0
	leaq	-336(%rbp), %rax	#, tmp102
	movq	%rax, -352(%rbp)	# tmp102, reply
	.loc 1 184 0
	movq	-352(%rbp), %rax	# reply, tmp103
	movq	(%rax), %rax	# reply_19->buf.ptr, tmp104
	movq	%rax, -344(%rbp)	# tmp104, outBufHead
	.loc 1 185 0
	movq	-352(%rbp), %rdx	# reply, tmp105
	leaq	-304(%rbp), %rax	#, tmp106
	movq	%rdx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	call	mspProcessCommand	#
	movl	%eax, -356(%rbp)	# tmp107, status
	.loc 1 187 0
	cmpl	$0, -356(%rbp)	#, status
	je	.L38	#,
	.loc 1 191 0
	movq	-352(%rbp), %rax	# reply, D.5655
	movq	-344(%rbp), %rdx	# outBufHead, tmp108
	movq	%rdx, %rsi	# tmp108,
	movq	%rax, %rdi	# D.5655,
	call	sbufSwitchToReader	#
	.loc 1 192 0
	movq	-352(%rbp), %rdx	# reply, tmp109
	movq	-376(%rbp), %rax	# msp, tmp110
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	mspSerialEncode	#
.L38:
	.loc 1 195 0
	movq	-376(%rbp), %rax	# msp, tmp111
	movl	$0, 24(%rax)	#, msp_7(D)->c_state
	.loc 1 196 0
	nop
	movq	-8(%rbp), %rax	# D.5656, tmp113
	xorq	%fs:40, %rax	#, tmp113
	je	.L39	#,
	call	__stack_chk_fail	#
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	mspSerialProcessReceivedCommand, .-mspSerialProcessReceivedCommand
	.section	.text.mspSerialProcessReceivedByte,"ax",@progbits
	.type	mspSerialProcessReceivedByte, @function
mspSerialProcessReceivedByte:
.LFB18:
	.loc 1 218 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# msp, msp
	movl	%esi, %eax	# c, tmp109
	movb	%al, -28(%rbp)	# tmp109, c
	.loc 1 220 0
	movq	-24(%rbp), %rax	# msp, tmp110
	movl	24(%rax), %eax	# msp_11(D)->c_state, D.5659
	cmpl	$5, %eax	#, D.5659
	ja	.L41	#,
	movl	%eax, %eax	# D.5659, tmp111
	movq	.L43(,%rax,8), %rax	#, tmp112
	jmp	*%rax	# tmp112
	.section	.rodata.mspSerialProcessReceivedByte,"a",@progbits
	.align 8
	.align 4
.L43:
	.quad	.L41
	.quad	.L42
	.quad	.L44
	.quad	.L45
	.quad	.L46
	.quad	.L47
	.section	.text.mspSerialProcessReceivedByte
.L41:
	.loc 1 223 0
	cmpb	$36, -28(%rbp)	#, c
	je	.L48	#,
	.loc 1 225 0
	cmpb	$77, -28(%rbp)	#, c
	jne	.L49	#,
	.loc 1 227 0
	movq	-24(%rbp), %rax	# msp, tmp113
	movl	$1, 24(%rax)	#, msp_11(D)->c_state
	.loc 1 228 0
	movq	-24(%rbp), %rax	# msp, tmp114
	movl	$77, %esi	#,
	movq	%rax, %rdi	# tmp114,
	call	mspSerialProcessReceivedByte	#
	.loc 1 229 0
	movl	$1, %eax	#, D.5657
	jmp	.L50	#
.L49:
	.loc 1 231 0
	movl	$0, %eax	#, D.5657
	jmp	.L50	#
.L48:
	.loc 1 233 0
	movq	-24(%rbp), %rax	# msp, tmp115
	movl	$1, 24(%rax)	#, msp_11(D)->c_state
	.loc 1 234 0
	jmp	.L51	#
.L42:
	.loc 1 236 0
	cmpb	$77, -28(%rbp)	#, c
	jne	.L52	#,
	.loc 1 236 0 is_stmt 0 discriminator 1
	movl	$2, %edx	#, D.5658
	jmp	.L53	#
.L52:
	.loc 1 236 0 discriminator 2
	movl	$0, %edx	#, D.5658
.L53:
	.loc 1 236 0 discriminator 4
	movq	-24(%rbp), %rax	# msp, tmp116
	movl	%edx, 24(%rax)	# D.5658, msp_11(D)->c_state
	.loc 1 237 0 is_stmt 1 discriminator 4
	jmp	.L51	#
.L44:
	.loc 1 239 0
	movq	-24(%rbp), %rax	# msp, tmp117
	movl	$2, 24(%rax)	#, msp_11(D)->c_state
	.loc 1 240 0
	movzbl	-28(%rbp), %eax	# c, D.5660
	cmpl	$60, %eax	#, D.5660
	je	.L55	#,
	cmpl	$62, %eax	#, D.5660
	je	.L56	#,
	.loc 1 252 0
	jmp	.L58	#
.L55:
	.loc 1 242 0
	movq	-24(%rbp), %rax	# msp, tmp118
	movl	8(%rax), %eax	# msp_11(D)->mode, D.5661
	testl	%eax, %eax	# D.5661
	jne	.L65	#,
	.loc 1 243 0
	movq	-24(%rbp), %rax	# msp, tmp119
	movl	$3, 24(%rax)	#, msp_11(D)->c_state
	.loc 1 245 0
	jmp	.L65	#
.L56:
	.loc 1 247 0
	movq	-24(%rbp), %rax	# msp, tmp120
	movl	8(%rax), %eax	# msp_11(D)->mode, D.5661
	cmpl	$1, %eax	#, D.5661
	jne	.L66	#,
	.loc 1 248 0
	movq	-24(%rbp), %rax	# msp, tmp121
	movl	$3, 24(%rax)	#, msp_11(D)->c_state
	.loc 1 250 0
	jmp	.L66	#
.L65:
	.loc 1 245 0
	nop
	jmp	.L51	#
.L66:
	.loc 1 250 0
	nop
.L58:
	.loc 1 254 0 discriminator 1
	jmp	.L51	#
.L45:
	.loc 1 256 0
	cmpb	$64, -28(%rbp)	#, c
	jbe	.L60	#,
	.loc 1 257 0
	movq	-24(%rbp), %rax	# msp, tmp122
	movl	$0, 24(%rax)	#, msp_11(D)->c_state
	.loc 1 263 0
	jmp	.L51	#
.L60:
	.loc 1 259 0
	movq	-24(%rbp), %rax	# msp, tmp123
	movzbl	-28(%rbp), %edx	# c, tmp124
	movb	%dl, 29(%rax)	# tmp124, msp_11(D)->dataSize
	.loc 1 260 0
	movq	-24(%rbp), %rax	# msp, tmp125
	movb	$0, 28(%rax)	#, msp_11(D)->offset
	.loc 1 261 0
	movq	-24(%rbp), %rax	# msp, tmp126
	movl	$4, 24(%rax)	#, msp_11(D)->c_state
	.loc 1 263 0
	jmp	.L51	#
.L46:
	.loc 1 265 0
	movq	-24(%rbp), %rax	# msp, tmp127
	movzbl	-28(%rbp), %edx	# c, tmp128
	movb	%dl, 30(%rax)	# tmp128, msp_11(D)->cmdMSP
	.loc 1 266 0
	movq	-24(%rbp), %rax	# msp, tmp129
	movl	$5, 24(%rax)	#, msp_11(D)->c_state
	.loc 1 267 0
	jmp	.L51	#
.L47:
	.loc 1 269 0
	movq	-24(%rbp), %rax	# msp, tmp130
	movzbl	28(%rax), %edx	# msp_11(D)->offset, D.5662
	movq	-24(%rbp), %rax	# msp, tmp131
	movzbl	29(%rax), %eax	# msp_11(D)->dataSize, D.5662
	cmpb	%al, %dl	# D.5662, D.5662
	jnb	.L62	#,
	.loc 1 270 0
	movq	-24(%rbp), %rax	# msp, tmp132
	movzbl	28(%rax), %eax	# msp_11(D)->offset, D.5662
	leal	1(%rax), %ecx	#, D.5662
	movq	-24(%rbp), %rdx	# msp, tmp133
	movb	%cl, 28(%rdx)	# D.5662, msp_11(D)->offset
	movzbl	%al, %eax	# D.5662, D.5660
	movq	-24(%rbp), %rdx	# msp, tmp134
	cltq
	movzbl	-28(%rbp), %ecx	# c, tmp136
	movb	%cl, 31(%rdx,%rax)	# tmp136, msp_11(D)->inBuf
	.loc 1 285 0
	jmp	.L67	#
.L62:
.LBB9:
	.loc 1 272 0
	movb	$0, -1(%rbp)	#, checksum
	.loc 1 273 0
	movq	-24(%rbp), %rax	# msp, tmp137
	movzbl	29(%rax), %eax	# msp_11(D)->dataSize, D.5662
	movzbl	%al, %edx	# D.5662, D.5660
	movzbl	-1(%rbp), %eax	# checksum, D.5660
	movl	%edx, %esi	# D.5660,
	movl	%eax, %edi	# D.5660,
	call	mspSerialChecksum	#
	movb	%al, -1(%rbp)	# tmp138, checksum
	.loc 1 274 0
	movq	-24(%rbp), %rax	# msp, tmp139
	movzbl	30(%rax), %eax	# msp_11(D)->cmdMSP, D.5662
	movzbl	%al, %edx	# D.5662, D.5660
	movzbl	-1(%rbp), %eax	# checksum, D.5660
	movl	%edx, %esi	# D.5660,
	movl	%eax, %edi	# D.5660,
	call	mspSerialChecksum	#
	movb	%al, -1(%rbp)	# tmp140, checksum
	.loc 1 275 0
	movq	-24(%rbp), %rax	# msp, tmp141
	movzbl	29(%rax), %eax	# msp_11(D)->dataSize, D.5662
	movzbl	%al, %edx	# D.5662, D.5660
	movq	-24(%rbp), %rax	# msp, tmp142
	leaq	31(%rax), %rcx	#, D.5663
	movzbl	-1(%rbp), %eax	# checksum, D.5660
	movq	%rcx, %rsi	# D.5663,
	movl	%eax, %edi	# D.5660,
	call	mspSerialChecksumBuf	#
	movb	%al, -1(%rbp)	# tmp143, checksum
	.loc 1 277 0
	movzbl	-28(%rbp), %eax	# c, tmp144
	cmpb	-1(%rbp), %al	# checksum, tmp144
	jne	.L64	#,
	.loc 1 279 0
	movq	-24(%rbp), %rax	# msp, tmp145
	movl	$6, 24(%rax)	#, msp_11(D)->c_state
.LBE9:
	.loc 1 285 0
	jmp	.L67	#
.L64:
.LBB10:
	.loc 1 283 0
	movq	-24(%rbp), %rax	# msp, tmp146
	movl	$0, 24(%rax)	#, msp_11(D)->c_state
.L67:
.LBE10:
	.loc 1 285 0
	nop
.L51:
	.loc 1 287 0
	movl	$1, %eax	#, D.5657
.L50:
	.loc 1 288 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	mspSerialProcessReceivedByte, .-mspSerialProcessReceivedByte
	.section	.text.mspSerialProcess,"ax",@progbits
	.globl	mspSerialProcess
	.type	mspSerialProcess, @function
mspSerialProcess:
.LFB19:
	.loc 1 291 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$352, %rsp	#,
	.loc 1 291 0
	movq	%fs:40, %rax	#, tmp134
	movq	%rax, -8(%rbp)	# tmp134, D.5671
	xorl	%eax, %eax	# tmp134
	.loc 1 293 0
	movl	$0, -344(%rbp)	#, flag
.LBB11:
	.loc 1 295 0
	movl	$0, -340(%rbp)	#, i
	jmp	.L69	#
.L80:
.LBB12:
	.loc 1 296 0
	movl	-340(%rbp), %eax	# i, tmp102
	movslq	%eax, %rdx	# tmp102, tmp101
	movq	%rdx, %rax	# tmp101, tmp103
	addq	%rax, %rax	# tmp103
	addq	%rdx, %rax	# tmp101, tmp103
	salq	$5, %rax	#, tmp104
	addq	$mspPorts, %rax	#, tmp105
	movq	%rax, -336(%rbp)	# tmp105, msp
	.loc 1 297 0
	movq	-336(%rbp), %rax	# msp, tmp106
	movq	(%rax), %rax	# msp_18->port, D.5664
	testq	%rax, %rax	# D.5664
	je	.L82	#,
	.loc 1 301 0
	jmp	.L72	#
.L75:
.LBB13:
	.loc 1 302 0
	movl	$1, -344(%rbp)	#, flag
	.loc 1 303 0
	movq	-336(%rbp), %rax	# msp, tmp107
	movq	(%rax), %rax	# msp_18->port, D.5664
	movq	%rax, %rdi	# D.5664,
	call	serialRead	#
	movb	%al, -347(%rbp)	# tmp108, c
	.loc 1 304 0
	movzbl	-347(%rbp), %edx	# c, D.5665
	movq	-336(%rbp), %rax	# msp, tmp109
	movl	%edx, %esi	# D.5665,
	movq	%rax, %rdi	# tmp109,
	call	mspSerialProcessReceivedByte	#
	movb	%al, -346(%rbp)	# tmp110, consumed
	.loc 1 310 0
	movq	-336(%rbp), %rax	# msp, tmp111
	movl	24(%rax), %eax	# msp_18->c_state, D.5666
	cmpl	$6, %eax	#, D.5666
	jne	.L72	#,
	.loc 1 311 0
	movq	-336(%rbp), %rax	# msp, tmp112
	movl	8(%rax), %eax	# msp_18->mode, D.5667
	testl	%eax, %eax	# D.5667
	jne	.L83	#,
	.loc 1 312 0
	movq	-336(%rbp), %rax	# msp, tmp113
	movq	%rax, %rdi	# tmp113,
	call	mspSerialProcessReceivedCommand	#
	.loc 1 319 0
	jmp	.L83	#
.L72:
.LBE13:
	.loc 1 301 0
	movq	-336(%rbp), %rax	# msp, tmp114
	movq	(%rax), %rax	# msp_18->port, D.5664
	movq	%rax, %rdi	# D.5664,
	call	serialRxBytesWaiting	#
	movb	%al, -348(%rbp)	# tmp115, bytesWaiting
	cmpb	$0, -348(%rbp)	#, bytesWaiting
	jne	.L75	#,
	jmp	.L74	#
.L83:
.LBB14:
	.loc 1 319 0
	nop
.L74:
.LBE14:
	.loc 1 323 0
	cmpl	$1, -344(%rbp)	#, flag
	jne	.L76	#,
	.loc 1 326 0
	movl	$0, -344(%rbp)	#, flag
.L76:
	.loc 1 330 0
	movq	mspPostProcessFn(%rip), %rax	# mspPostProcessFn, D.5668
	testq	%rax, %rax	# D.5668
	je	.L77	#,
	.loc 1 331 0
	movq	mspPostProcessFn(%rip), %rax	# mspPostProcessFn, D.5668
	movq	-336(%rbp), %rdx	# msp, tmp116
	movq	%rdx, %rdi	# tmp116,
	call	*%rax	# D.5668
	.loc 1 332 0
	movq	$0, mspPostProcessFn(%rip)	#, mspPostProcessFn
.L77:
	.loc 1 337 0
	movq	-336(%rbp), %rax	# msp, tmp117
	movl	24(%rax), %eax	# msp_18->c_state, D.5666
	testl	%eax, %eax	# D.5666
	jne	.L78	#,
	.loc 1 337 0 is_stmt 0 discriminator 1
	movq	-336(%rbp), %rax	# msp, tmp118
	movq	16(%rax), %rax	# msp_18->commandSenderFn, D.5669
	testq	%rax, %rax	# D.5669
	je	.L78	#,
	.loc 1 337 0 discriminator 2
	cmpb	$0, -348(%rbp)	#, bytesWaiting
	jne	.L78	#,
.LBB15:
	.loc 1 339 0 is_stmt 1
	leaq	-272(%rbp), %rax	#, tmp119
	movq	%rax, -304(%rbp)	# tmp119, message.buf.ptr
	leaq	-272(%rbp), %rax	#, tmp120
	addq	$256, %rax	#, tmp121
	movq	%rax, -296(%rbp)	# tmp121, message.buf.end
	movw	$-1, -288(%rbp)	#, message.cmd
	movw	$0, -286(%rbp)	#, message.result
	.loc 1 348 0
	leaq	-304(%rbp), %rax	#, tmp122
	movq	%rax, -328(%rbp)	# tmp122, command
	.loc 1 350 0
	movq	-328(%rbp), %rax	# command, tmp123
	movq	(%rax), %rax	# command_44->buf.ptr, tmp124
	movq	%rax, -320(%rbp)	# tmp124, outBufHead
	.loc 1 352 0
	movq	-336(%rbp), %rax	# msp, tmp125
	movq	16(%rax), %rdx	# msp_18->commandSenderFn, D.5669
	movq	-328(%rbp), %rax	# command, tmp126
	movq	%rax, %rdi	# tmp126,
	movl	$0, %eax	#,
	call	*%rdx	# D.5669
	movb	%al, -345(%rbp)	# tmp127, shouldSend
	.loc 1 354 0
	cmpb	$0, -345(%rbp)	#, shouldSend
	je	.L79	#,
	.loc 1 355 0
	movq	-328(%rbp), %rax	# command, D.5670
	movq	-320(%rbp), %rdx	# outBufHead, tmp128
	movq	%rdx, %rsi	# tmp128,
	movq	%rax, %rdi	# D.5670,
	call	sbufSwitchToReader	#
	.loc 1 357 0
	movq	-328(%rbp), %rdx	# command, tmp129
	movq	-336(%rbp), %rax	# msp, tmp130
	movq	%rdx, %rsi	# tmp129,
	movq	%rax, %rdi	# tmp130,
	call	mspSerialEncode	#
.L79:
	.loc 1 360 0
	movq	-336(%rbp), %rax	# msp, tmp131
	movq	$0, 16(%rax)	#, msp_18->commandSenderFn
.L78:
.LBE15:
	.loc 1 363 0
	movq	mspPorts(%rip), %rax	# mspPorts[0].port, D.5664
	addq	$72, %rax	#, tmp132
	movq	%rax, -312(%rbp)	# tmp132, fd
	.loc 1 364 0
	movq	-312(%rbp), %rax	# fd, tmp133
	movl	(%rax), %eax	# *fd_56, D.5665
	movl	$2, %esi	#,
	movl	%eax, %edi	# D.5665,
	call	tcflush	#
	jmp	.L71	#
.L82:
	.loc 1 298 0
	nop
.L71:
.LBE12:
	.loc 1 295 0 discriminator 2
	addl	$1, -340(%rbp)	#, i
.L69:
	.loc 1 295 0 is_stmt 0 discriminator 1
	cmpl	$1, -340(%rbp)	#, i
	jle	.L80	#,
.LBE11:
	.loc 1 366 0 is_stmt 1
	nop
	movq	-8(%rbp), %rax	# D.5671, tmp135
	xorq	%fs:40, %rax	#, tmp135
	je	.L81	#,
	call	__stack_chk_fail	#
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	mspSerialProcess, .-mspSerialProcess
	.text
.Letext0:
	.file 2 "/usr/include/stdint.h"
	.file 3 "/usr/include/mraa/i2c.h"
	.file 4 "./src/main/common/streambuf.h"
	.file 5 "./src/main/config/parameter_group.h"
	.file 6 "./src/main/drivers/serial.h"
	.file 7 "./src/main/drivers/SFE_LSM9DS0.h"
	.file 8 "./src/main/msp/msp.h"
	.file 9 "./src/main/fc/fc_serial.h"
	.file 10 "./src/main/msp/msp_serial.h"
	.file 11 "./src/main/io/io_serial.h"
	.file 12 "./src/main/target/edison/target.h"
	.file 13 "./src/main/drivers/serial_uart.h"
	.file 14 "./src/main/drivers/system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xe6e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF195
	.byte	0xc
	.long	.LASF196
	.long	.LASF197
	.long	.Ldebug_ranges0+0x90
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
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF14
	.uleb128 0x6
	.byte	0x8
	.long	0x42
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x35
	.long	0xbc
	.uleb128 0x6
	.byte	0x8
	.long	0xc2
	.uleb128 0x7
	.long	.LASF198
	.uleb128 0x8
	.long	.LASF19
	.byte	0x10
	.byte	0x4
	.byte	0x19
	.long	0xec
	.uleb128 0x9
	.string	"ptr"
	.byte	0x4
	.byte	0x1a
	.long	0xec
	.byte	0
	.uleb128 0x9
	.string	"end"
	.byte	0x4
	.byte	0x1b
	.long	0xec
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x50
	.uleb128 0x3
	.long	.LASF16
	.byte	0x4
	.byte	0x1c
	.long	0xc7
	.uleb128 0x3
	.long	.LASF17
	.byte	0x5
	.byte	0x15
	.long	0x62
	.uleb128 0x3
	.long	.LASF18
	.byte	0x5
	.byte	0x26
	.long	0x113
	.uleb128 0xa
	.long	0x123
	.uleb128 0xb
	.long	0x9b
	.uleb128 0xb
	.long	0x42
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.byte	0x2d
	.long	0x141
	.uleb128 0xd
	.string	"ptr"
	.byte	0x5
	.byte	0x2e
	.long	0x9b
	.uleb128 0xd
	.string	"fn"
	.byte	0x5
	.byte	0x2f
	.long	0x141
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x108
	.uleb128 0x8
	.long	.LASF20
	.byte	0x20
	.byte	0x5
	.byte	0x28
	.long	0x190
	.uleb128 0x9
	.string	"pgn"
	.byte	0x5
	.byte	0x29
	.long	0xfd
	.byte	0
	.uleb128 0xe
	.long	.LASF21
	.byte	0x5
	.byte	0x2a
	.long	0x62
	.byte	0x2
	.uleb128 0xe
	.long	.LASF22
	.byte	0x5
	.byte	0x2b
	.long	0xec
	.byte	0x8
	.uleb128 0x9
	.string	"ptr"
	.byte	0x5
	.byte	0x2c
	.long	0x190
	.byte	0x10
	.uleb128 0xe
	.long	.LASF23
	.byte	0x5
	.byte	0x30
	.long	0x123
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xec
	.uleb128 0x3
	.long	.LASF24
	.byte	0x5
	.byte	0x31
	.long	0x147
	.uleb128 0xf
	.long	.LASF28
	.byte	0x4
	.long	0x7f
	.byte	0x6
	.byte	0x14
	.long	0x1c4
	.uleb128 0x10
	.long	.LASF25
	.byte	0x1
	.uleb128 0x10
	.long	.LASF26
	.byte	0x2
	.uleb128 0x10
	.long	.LASF27
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF28
	.byte	0x6
	.byte	0x18
	.long	0x1a1
	.uleb128 0xf
	.long	.LASF29
	.byte	0x4
	.long	0x7f
	.byte	0x6
	.byte	0x1a
	.long	0x210
	.uleb128 0x10
	.long	.LASF30
	.byte	0
	.uleb128 0x10
	.long	.LASF31
	.byte	0x1
	.uleb128 0x10
	.long	.LASF32
	.byte	0
	.uleb128 0x10
	.long	.LASF33
	.byte	0x2
	.uleb128 0x10
	.long	.LASF34
	.byte	0
	.uleb128 0x10
	.long	.LASF35
	.byte	0x4
	.uleb128 0x10
	.long	.LASF36
	.byte	0
	.uleb128 0x10
	.long	.LASF37
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF29
	.byte	0x6
	.byte	0x23
	.long	0x1cf
	.uleb128 0x3
	.long	.LASF38
	.byte	0x6
	.byte	0x25
	.long	0x226
	.uleb128 0x6
	.byte	0x8
	.long	0x22c
	.uleb128 0xa
	.long	0x237
	.uleb128 0xb
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF39
	.byte	0x48
	.byte	0x6
	.byte	0x27
	.long	0x2ec
	.uleb128 0xe
	.long	.LASF40
	.byte	0x6
	.byte	0x29
	.long	0x371
	.byte	0
	.uleb128 0xe
	.long	.LASF41
	.byte	0x6
	.byte	0x2b
	.long	0x50
	.byte	0x8
	.uleb128 0xe
	.long	.LASF42
	.byte	0x6
	.byte	0x2c
	.long	0x1c4
	.byte	0xc
	.uleb128 0xe
	.long	.LASF43
	.byte	0x6
	.byte	0x2d
	.long	0x210
	.byte	0x10
	.uleb128 0xe
	.long	.LASF44
	.byte	0x6
	.byte	0x2f
	.long	0x74
	.byte	0x14
	.uleb128 0xe
	.long	.LASF45
	.byte	0x6
	.byte	0x31
	.long	0x74
	.byte	0x18
	.uleb128 0xe
	.long	.LASF46
	.byte	0x6
	.byte	0x32
	.long	0x74
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF47
	.byte	0x6
	.byte	0x33
	.long	0x37c
	.byte	0x20
	.uleb128 0xe
	.long	.LASF48
	.byte	0x6
	.byte	0x34
	.long	0x37c
	.byte	0x28
	.uleb128 0xe
	.long	.LASF49
	.byte	0x6
	.byte	0x35
	.long	0x74
	.byte	0x30
	.uleb128 0xe
	.long	.LASF50
	.byte	0x6
	.byte	0x36
	.long	0x74
	.byte	0x34
	.uleb128 0xe
	.long	.LASF51
	.byte	0x6
	.byte	0x37
	.long	0x74
	.byte	0x38
	.uleb128 0xe
	.long	.LASF52
	.byte	0x6
	.byte	0x38
	.long	0x74
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF53
	.byte	0x6
	.byte	0x3b
	.long	0x21b
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	.LASF54
	.byte	0x50
	.byte	0x6
	.byte	0x3e
	.long	0x371
	.uleb128 0xe
	.long	.LASF55
	.byte	0x6
	.byte	0x3f
	.long	0x3a8
	.byte	0
	.uleb128 0xe
	.long	.LASF56
	.byte	0x6
	.byte	0x41
	.long	0x3bd
	.byte	0x8
	.uleb128 0xe
	.long	.LASF57
	.byte	0x6
	.byte	0x42
	.long	0x3bd
	.byte	0x10
	.uleb128 0xe
	.long	.LASF58
	.byte	0x6
	.byte	0x44
	.long	0x3bd
	.byte	0x18
	.uleb128 0xe
	.long	.LASF59
	.byte	0x6
	.byte	0x47
	.long	0x3d3
	.byte	0x20
	.uleb128 0xe
	.long	.LASF60
	.byte	0x6
	.byte	0x49
	.long	0x3ef
	.byte	0x28
	.uleb128 0xe
	.long	.LASF61
	.byte	0x6
	.byte	0x4b
	.long	0x405
	.byte	0x30
	.uleb128 0xe
	.long	.LASF62
	.byte	0x6
	.byte	0x4d
	.long	0x420
	.byte	0x38
	.uleb128 0xe
	.long	.LASF63
	.byte	0x6
	.byte	0x4f
	.long	0x431
	.byte	0x40
	.uleb128 0xe
	.long	.LASF64
	.byte	0x6
	.byte	0x50
	.long	0x431
	.byte	0x48
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x377
	.uleb128 0x11
	.long	0x2ec
	.uleb128 0x6
	.byte	0x8
	.long	0x382
	.uleb128 0x12
	.long	0x50
	.uleb128 0x3
	.long	.LASF65
	.byte	0x6
	.byte	0x3c
	.long	0x237
	.uleb128 0xa
	.long	0x3a2
	.uleb128 0xb
	.long	0x3a2
	.uleb128 0xb
	.long	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x387
	.uleb128 0x6
	.byte	0x8
	.long	0x392
	.uleb128 0x13
	.long	0x50
	.long	0x3bd
	.uleb128 0xb
	.long	0x3a2
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3ae
	.uleb128 0xa
	.long	0x3d3
	.uleb128 0xb
	.long	0x3a2
	.uleb128 0xb
	.long	0x74
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3c3
	.uleb128 0x13
	.long	0x3e8
	.long	0x3e8
	.uleb128 0xb
	.long	0x3a2
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF66
	.uleb128 0x6
	.byte	0x8
	.long	0x3d9
	.uleb128 0xa
	.long	0x405
	.uleb128 0xb
	.long	0x3a2
	.uleb128 0xb
	.long	0x1c4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3f5
	.uleb128 0xa
	.long	0x420
	.uleb128 0xb
	.long	0x3a2
	.uleb128 0xb
	.long	0x9b
	.uleb128 0xb
	.long	0x42
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x40b
	.uleb128 0xa
	.long	0x431
	.uleb128 0xb
	.long	0x3a2
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x426
	.uleb128 0xf
	.long	.LASF67
	.byte	0x4
	.long	0x7f
	.byte	0x7
	.byte	0x81
	.long	0x45a
	.uleb128 0x10
	.long	.LASF68
	.byte	0
	.uleb128 0x10
	.long	.LASF69
	.byte	0x1
	.uleb128 0x10
	.long	.LASF70
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF67
	.byte	0x7
	.byte	0x86
	.long	0x437
	.uleb128 0xf
	.long	.LASF71
	.byte	0x4
	.long	0x7f
	.byte	0x7
	.byte	0x89
	.long	0x494
	.uleb128 0x10
	.long	.LASF72
	.byte	0
	.uleb128 0x10
	.long	.LASF73
	.byte	0x1
	.uleb128 0x10
	.long	.LASF74
	.byte	0x2
	.uleb128 0x10
	.long	.LASF75
	.byte	0x3
	.uleb128 0x10
	.long	.LASF76
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF71
	.byte	0x7
	.byte	0x90
	.long	0x465
	.uleb128 0xf
	.long	.LASF77
	.byte	0x4
	.long	0x7f
	.byte	0x7
	.byte	0x93
	.long	0x4c8
	.uleb128 0x10
	.long	.LASF78
	.byte	0
	.uleb128 0x10
	.long	.LASF79
	.byte	0x1
	.uleb128 0x10
	.long	.LASF80
	.byte	0x2
	.uleb128 0x10
	.long	.LASF81
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF77
	.byte	0x7
	.byte	0x99
	.long	0x49f
	.uleb128 0x8
	.long	.LASF82
	.byte	0x40
	.byte	0x7
	.byte	0xdc
	.long	0x5ae
	.uleb128 0x9
	.string	"gx"
	.byte	0x7
	.byte	0xe2
	.long	0x30
	.byte	0
	.uleb128 0x9
	.string	"gy"
	.byte	0x7
	.byte	0xe2
	.long	0x30
	.byte	0x2
	.uleb128 0x9
	.string	"gz"
	.byte	0x7
	.byte	0xe2
	.long	0x30
	.byte	0x4
	.uleb128 0x9
	.string	"ax"
	.byte	0x7
	.byte	0xe3
	.long	0x30
	.byte	0x6
	.uleb128 0x9
	.string	"ay"
	.byte	0x7
	.byte	0xe3
	.long	0x30
	.byte	0x8
	.uleb128 0x9
	.string	"az"
	.byte	0x7
	.byte	0xe3
	.long	0x30
	.byte	0xa
	.uleb128 0x9
	.string	"mx"
	.byte	0x7
	.byte	0xe4
	.long	0x30
	.byte	0xc
	.uleb128 0x9
	.string	"my"
	.byte	0x7
	.byte	0xe4
	.long	0x30
	.byte	0xe
	.uleb128 0x9
	.string	"mz"
	.byte	0x7
	.byte	0xe4
	.long	0x30
	.byte	0x10
	.uleb128 0xe
	.long	.LASF83
	.byte	0x7
	.byte	0xe5
	.long	0x30
	.byte	0x12
	.uleb128 0xe
	.long	.LASF84
	.byte	0x7
	.byte	0xe7
	.long	0xb1
	.byte	0x18
	.uleb128 0x9
	.string	"xm"
	.byte	0x7
	.byte	0xe8
	.long	0xb1
	.byte	0x20
	.uleb128 0xe
	.long	.LASF85
	.byte	0x7
	.byte	0xec
	.long	0x45a
	.byte	0x28
	.uleb128 0xe
	.long	.LASF86
	.byte	0x7
	.byte	0xed
	.long	0x494
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF87
	.byte	0x7
	.byte	0xee
	.long	0x4c8
	.byte	0x30
	.uleb128 0xe
	.long	.LASF88
	.byte	0x7
	.byte	0xf3
	.long	0x5ae
	.byte	0x34
	.uleb128 0xe
	.long	.LASF89
	.byte	0x7
	.byte	0xf3
	.long	0x5ae
	.byte	0x38
	.uleb128 0xe
	.long	.LASF90
	.byte	0x7
	.byte	0xf3
	.long	0x5ae
	.byte	0x3c
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF91
	.uleb128 0x3
	.long	.LASF92
	.byte	0x7
	.byte	0xf5
	.long	0x4d3
	.uleb128 0x14
	.byte	0x4
	.long	0x7f
	.byte	0x9
	.byte	0x14
	.long	0x5e5
	.uleb128 0x10
	.long	.LASF93
	.byte	0
	.uleb128 0x10
	.long	.LASF94
	.byte	0x1
	.uleb128 0x10
	.long	.LASF95
	.byte	0x2
	.uleb128 0x10
	.long	.LASF96
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	.LASF97
	.byte	0x18
	.byte	0x8
	.byte	0x16
	.long	0x616
	.uleb128 0x9
	.string	"buf"
	.byte	0x8
	.byte	0x17
	.long	0xf2
	.byte	0
	.uleb128 0x9
	.string	"cmd"
	.byte	0x8
	.byte	0x18
	.long	0x30
	.byte	0x10
	.uleb128 0xe
	.long	.LASF98
	.byte	0x8
	.byte	0x19
	.long	0x30
	.byte	0x12
	.byte	0
	.uleb128 0x3
	.long	.LASF99
	.byte	0x8
	.byte	0x1a
	.long	0x5e5
	.uleb128 0x14
	.byte	0x4
	.long	0x7f
	.byte	0xa
	.byte	0x3c
	.long	0x658
	.uleb128 0x10
	.long	.LASF100
	.byte	0
	.uleb128 0x10
	.long	.LASF101
	.byte	0x1
	.uleb128 0x10
	.long	.LASF102
	.byte	0x2
	.uleb128 0x10
	.long	.LASF103
	.byte	0x3
	.uleb128 0x10
	.long	.LASF104
	.byte	0x4
	.uleb128 0x10
	.long	.LASF105
	.byte	0x5
	.uleb128 0x10
	.long	.LASF106
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.long	.LASF107
	.byte	0xa
	.byte	0x44
	.long	0x621
	.uleb128 0x3
	.long	.LASF108
	.byte	0xa
	.byte	0x46
	.long	0x66e
	.uleb128 0x6
	.byte	0x8
	.long	0x674
	.uleb128 0x15
	.long	0x3e8
	.long	0x67f
	.uleb128 0x16
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.long	0x7f
	.byte	0xa
	.byte	0x4b
	.long	0x698
	.uleb128 0x10
	.long	.LASF109
	.byte	0
	.uleb128 0x10
	.long	.LASF110
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF111
	.byte	0xa
	.byte	0x4e
	.long	0x67f
	.uleb128 0x8
	.long	.LASF112
	.byte	0x60
	.byte	0xa
	.byte	0x50
	.long	0x710
	.uleb128 0xe
	.long	.LASF113
	.byte	0xa
	.byte	0x51
	.long	0x3a2
	.byte	0
	.uleb128 0xe
	.long	.LASF42
	.byte	0xa
	.byte	0x52
	.long	0x698
	.byte	0x8
	.uleb128 0xe
	.long	.LASF114
	.byte	0xa
	.byte	0x54
	.long	0x663
	.byte	0x10
	.uleb128 0xe
	.long	.LASF115
	.byte	0xa
	.byte	0x56
	.long	0x658
	.byte	0x18
	.uleb128 0xe
	.long	.LASF116
	.byte	0xa
	.byte	0x57
	.long	0x50
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF117
	.byte	0xa
	.byte	0x58
	.long	0x50
	.byte	0x1d
	.uleb128 0xe
	.long	.LASF118
	.byte	0xa
	.byte	0x59
	.long	0x50
	.byte	0x1e
	.uleb128 0xe
	.long	.LASF119
	.byte	0xa
	.byte	0x5a
	.long	0x710
	.byte	0x1f
	.byte	0
	.uleb128 0x17
	.long	0x50
	.long	0x720
	.uleb128 0x18
	.long	0x8d
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.long	.LASF120
	.byte	0xa
	.byte	0x5c
	.long	0x6a3
	.uleb128 0x3
	.long	.LASF121
	.byte	0xa
	.byte	0x60
	.long	0x736
	.uleb128 0x6
	.byte	0x8
	.long	0x73c
	.uleb128 0xa
	.long	0x747
	.uleb128 0xb
	.long	0x747
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x720
	.uleb128 0x14
	.byte	0x4
	.long	0x7f
	.byte	0xb
	.byte	0x1a
	.long	0x79e
	.uleb128 0x10
	.long	.LASF122
	.byte	0
	.uleb128 0x10
	.long	.LASF123
	.byte	0x1
	.uleb128 0x10
	.long	.LASF124
	.byte	0x2
	.uleb128 0x10
	.long	.LASF125
	.byte	0x4
	.uleb128 0x10
	.long	.LASF126
	.byte	0x8
	.uleb128 0x10
	.long	.LASF127
	.byte	0x10
	.uleb128 0x10
	.long	.LASF128
	.byte	0x20
	.uleb128 0x10
	.long	.LASF129
	.byte	0x40
	.uleb128 0x10
	.long	.LASF130
	.byte	0x80
	.uleb128 0x19
	.long	.LASF131
	.value	0x100
	.uleb128 0x19
	.long	.LASF132
	.value	0x200
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.long	0x42
	.byte	0xb
	.byte	0x36
	.long	0x7e7
	.uleb128 0x1a
	.long	.LASF133
	.sleb128 -1
	.uleb128 0x10
	.long	.LASF134
	.byte	0
	.uleb128 0x10
	.long	.LASF135
	.byte	0x1
	.uleb128 0x10
	.long	.LASF136
	.byte	0x2
	.uleb128 0x10
	.long	.LASF137
	.byte	0x3
	.uleb128 0x10
	.long	.LASF138
	.byte	0x4
	.uleb128 0x10
	.long	.LASF139
	.byte	0x14
	.uleb128 0x10
	.long	.LASF140
	.byte	0x1e
	.uleb128 0x10
	.long	.LASF141
	.byte	0x1f
	.uleb128 0x10
	.long	.LASF142
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.long	.LASF143
	.byte	0xb
	.byte	0x41
	.long	0x79e
	.uleb128 0x8
	.long	.LASF144
	.byte	0xc
	.byte	0xb
	.byte	0x5a
	.long	0x823
	.uleb128 0xe
	.long	.LASF41
	.byte	0xb
	.byte	0x5b
	.long	0x7e7
	.byte	0
	.uleb128 0xe
	.long	.LASF145
	.byte	0xb
	.byte	0x5c
	.long	0x62
	.byte	0x4
	.uleb128 0xe
	.long	.LASF146
	.byte	0xb
	.byte	0x5d
	.long	0x823
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.long	0x50
	.long	0x833
	.uleb128 0x18
	.long	0x8d
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF147
	.byte	0xb
	.byte	0x5e
	.long	0x7f2
	.uleb128 0x8
	.long	.LASF148
	.byte	0x1c
	.byte	0xb
	.byte	0x60
	.long	0x863
	.uleb128 0xe
	.long	.LASF149
	.byte	0xb
	.byte	0x61
	.long	0x50
	.byte	0
	.uleb128 0xe
	.long	.LASF150
	.byte	0xb
	.byte	0x62
	.long	0x863
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.long	0x833
	.long	0x873
	.uleb128 0x18
	.long	0x8d
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF151
	.byte	0xb
	.byte	0x63
	.long	0x83e
	.uleb128 0x1b
	.long	.LASF170
	.byte	0x1
	.byte	0x34
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x8b8
	.uleb128 0x1c
	.long	.LASF152
	.byte	0x1
	.byte	0x34
	.long	0x747
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF153
	.byte	0x1
	.byte	0x34
	.long	0x3a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1d
	.long	.LASF161
	.byte	0x1
	.byte	0x3b
	.long	0x747
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f8
	.uleb128 0x1e
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0x3d
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF158
	.byte	0x1
	.byte	0x43
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x982
	.uleb128 0x1e
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x21
	.long	.LASF154
	.byte	0x1
	.byte	0x45
	.long	0x982
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.Ldebug_ranges0+0
	.uleb128 0x21
	.long	.LASF155
	.byte	0x1
	.byte	0x4d
	.long	0x747
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF156
	.byte	0x1
	.byte	0x54
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x21
	.long	.LASF157
	.byte	0x1
	.byte	0x57
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x21
	.long	.LASF42
	.byte	0x1
	.byte	0x58
	.long	0x698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.long	.LASF153
	.byte	0x1
	.byte	0x61
	.long	0x3a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x833
	.uleb128 0x20
	.long	.LASF159
	.byte	0x1
	.byte	0x6d
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x9f2
	.uleb128 0x1c
	.long	.LASF153
	.byte	0x1
	.byte	0x6d
	.long	0x3a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0x6f
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x21
	.long	.LASF155
	.byte	0x1
	.byte	0x70
	.long	0x747
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF160
	.byte	0x1
	.byte	0x78
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xa2e
	.uleb128 0x1e
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0x7a
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF162
	.byte	0x1
	.byte	0x80
	.long	0x50
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xa6c
	.uleb128 0x1c
	.long	.LASF163
	.byte	0x1
	.byte	0x80
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.long	.LASF164
	.byte	0x1
	.byte	0x80
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.long	.LASF165
	.byte	0x1
	.byte	0x85
	.long	0x50
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xab8
	.uleb128 0x1c
	.long	.LASF163
	.byte	0x1
	.byte	0x85
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.long	.LASF166
	.byte	0x1
	.byte	0x85
	.long	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.byte	0x85
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF167
	.byte	0x1
	.byte	0x8e
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xb1c
	.uleb128 0x24
	.string	"msp"
	.byte	0x1
	.byte	0x8e
	.long	0x747
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.long	.LASF168
	.byte	0x1
	.byte	0x8e
	.long	0xb1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.byte	0x92
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.string	"hdr"
	.byte	0x1
	.byte	0x93
	.long	0xb22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF169
	.byte	0x1
	.byte	0x94
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x616
	.uleb128 0x17
	.long	0x50
	.long	0xb32
	.uleb128 0x18
	.long	0x8d
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.long	.LASF171
	.byte	0x1
	.byte	0xa0
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xbb9
	.uleb128 0x24
	.string	"msp"
	.byte	0x1
	.byte	0xa0
	.long	0x747
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x21
	.long	.LASF172
	.byte	0x1
	.byte	0xa2
	.long	0xbb9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x21
	.long	.LASF173
	.byte	0x1
	.byte	0xa4
	.long	0x616
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x21
	.long	.LASF174
	.byte	0x1
	.byte	0xad
	.long	0x616
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x21
	.long	.LASF175
	.byte	0x1
	.byte	0xb6
	.long	0xb1c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x21
	.long	.LASF176
	.byte	0x1
	.byte	0xb8
	.long	0xec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x21
	.long	.LASF177
	.byte	0x1
	.byte	0xb9
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.byte	0
	.uleb128 0x17
	.long	0x50
	.long	0xbc9
	.uleb128 0x18
	.long	0x8d
	.byte	0xff
	.byte	0
	.uleb128 0x23
	.long	.LASF178
	.byte	0x1
	.byte	0xd9
	.long	0x3e8
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xc1a
	.uleb128 0x24
	.string	"msp"
	.byte	0x1
	.byte	0xd9
	.long	0x747
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"c"
	.byte	0x1
	.byte	0xd9
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x25
	.long	.LASF163
	.byte	0x1
	.value	0x110
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF179
	.byte	0x1
	.value	0x122
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xd34
	.uleb128 0x27
	.string	"fd"
	.byte	0x1
	.value	0x124
	.long	0xab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x25
	.long	.LASF180
	.byte	0x1
	.value	0x125
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x1e
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x127
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x1e
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x27
	.string	"msp"
	.byte	0x1
	.value	0x128
	.long	0x747
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x25
	.long	.LASF181
	.byte	0x1
	.value	0x12c
	.long	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x60
	.long	0xccf
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.value	0x12f
	.long	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -363
	.uleb128 0x25
	.long	.LASF182
	.byte	0x1
	.value	0x130
	.long	0x3e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -362
	.byte	0
	.uleb128 0x1e
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x25
	.long	.LASF172
	.byte	0x1
	.value	0x152
	.long	0xbb9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x25
	.long	.LASF173
	.byte	0x1
	.value	0x153
	.long	0x616
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x25
	.long	.LASF174
	.byte	0x1
	.value	0x15c
	.long	0xb1c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x25
	.long	.LASF176
	.byte	0x1
	.value	0x15e
	.long	0xec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x25
	.long	.LASF183
	.byte	0x1
	.value	0x160
	.long	0x3e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -361
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF184
	.byte	0xc
	.byte	0xca
	.long	0x74
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_0
	.uleb128 0x29
	.long	.LASF185
	.byte	0xc
	.byte	0xcb
	.long	0x74
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_1
	.uleb128 0x29
	.long	.LASF186
	.byte	0xc
	.byte	0xcc
	.long	0x74
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_2
	.uleb128 0x29
	.long	.LASF187
	.byte	0x5
	.byte	0x43
	.long	0xd88
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_start
	.uleb128 0x6
	.byte	0x8
	.long	0x196
	.uleb128 0x29
	.long	.LASF188
	.byte	0x5
	.byte	0x44
	.long	0xd88
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_end
	.uleb128 0x29
	.long	.LASF189
	.byte	0x5
	.byte	0x47
	.long	0xec
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_start
	.uleb128 0x29
	.long	.LASF190
	.byte	0x5
	.byte	0x48
	.long	0xec
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_end
	.uleb128 0x2a
	.string	"imu"
	.byte	0xe
	.byte	0x38
	.long	0xde2
	.uleb128 0x9
	.byte	0x3
	.quad	imu
	.uleb128 0x6
	.byte	0x8
	.long	0x5b5
	.uleb128 0x17
	.long	0x720
	.long	0xdf8
	.uleb128 0x18
	.long	0x8d
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.long	.LASF191
	.byte	0x1
	.byte	0x30
	.long	0xde8
	.uleb128 0x9
	.byte	0x3
	.quad	mspPorts
	.uleb128 0x29
	.long	.LASF192
	.byte	0x1
	.byte	0x2e
	.long	0x72b
	.uleb128 0x9
	.byte	0x3
	.quad	mspPostProcessFn
	.uleb128 0x17
	.long	0xe2d
	.long	0xe2d
	.uleb128 0x2b
	.byte	0
	.uleb128 0x11
	.long	0x74
	.uleb128 0x2c
	.long	.LASF146
	.byte	0xb
	.byte	0x33
	.long	0xe3d
	.uleb128 0x11
	.long	0xe22
	.uleb128 0x29
	.long	.LASF193
	.byte	0xb
	.byte	0x65
	.long	0x873
	.uleb128 0x9
	.byte	0x3
	.quad	serialConfig_System
	.uleb128 0x29
	.long	.LASF194
	.byte	0xd
	.byte	0x2c
	.long	0xe6c
	.uleb128 0x9
	.byte	0x3
	.quad	receiveLength
	.uleb128 0x12
	.long	0x74
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
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.long	0xcc
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.quad	.LFB13
	.quad	.LFE13-.LFB13
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
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB4
	.quad	.LBE4
	.quad	.LBB5
	.quad	.LBE5
	.quad	0
	.quad	0
	.quad	.LBB9
	.quad	.LBE9
	.quad	.LBB10
	.quad	.LBE10
	.quad	0
	.quad	0
	.quad	.LBB13
	.quad	.LBE13
	.quad	.LBB14
	.quad	.LBE14
	.quad	0
	.quad	0
	.quad	.LFB9
	.quad	.LFE9
	.quad	.LFB10
	.quad	.LFE10
	.quad	.LFB11
	.quad	.LFE11
	.quad	.LFB12
	.quad	.LFE12
	.quad	.LFB13
	.quad	.LFE13
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
	.quad	.LFB19
	.quad	.LFE19
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF176:
	.string	"outBufHead"
.LASF35:
	.string	"SERIAL_PARITY_EVEN"
.LASF132:
	.string	"FUNCTION_MSP_CLIENT"
.LASF23:
	.string	"reset"
.LASF153:
	.string	"serialPort"
.LASF158:
	.string	"mspSerialAllocatePorts"
.LASF171:
	.string	"mspSerialProcessReceivedCommand"
.LASF26:
	.string	"MODE_TX"
.LASF95:
	.string	"BAUDRATE_BLACKBOX"
.LASF163:
	.string	"checksum"
.LASF18:
	.string	"pgResetFunc"
.LASF161:
	.string	"mspPortFindFree"
.LASF64:
	.string	"endWrite"
.LASF67:
	.string	"gyro_scale"
.LASF38:
	.string	"serialReceiveCallbackPtr"
.LASF78:
	.string	"M_SCALE_2GS"
.LASF88:
	.string	"gRes"
.LASF168:
	.string	"packet"
.LASF157:
	.string	"baudRatesIndex"
.LASF46:
	.string	"txBufferSize"
.LASF13:
	.string	"long long unsigned int"
.LASF142:
	.string	"SERIAL_PORT_IDENTIFIER_MAX"
.LASF150:
	.string	"portConfigs"
.LASF86:
	.string	"aScale"
.LASF149:
	.string	"reboot_character"
.LASF186:
	.string	"U_ID_2"
.LASF189:
	.string	"__pg_resetdata_start"
.LASF3:
	.string	"int16_t"
.LASF196:
	.string	"src/main/msp/msp_serial.c"
.LASF56:
	.string	"serialTotalRxWaiting"
.LASF0:
	.string	"signed char"
.LASF109:
	.string	"MSP_MODE_SERVER"
.LASF156:
	.string	"function"
.LASF90:
	.string	"mRes"
.LASF47:
	.string	"rxBuffer"
.LASF15:
	.string	"mraa_i2c_context"
.LASF108:
	.string	"mspCommandSenderFuncPtr"
.LASF194:
	.string	"receiveLength"
.LASF2:
	.string	"long int"
.LASF28:
	.string	"portMode_t"
.LASF70:
	.string	"G_SCALE_2000DPS"
.LASF9:
	.string	"unsigned int"
.LASF58:
	.string	"serialRead"
.LASF14:
	.string	"long long int"
.LASF174:
	.string	"command"
.LASF6:
	.string	"uint16_t"
.LASF139:
	.string	"SERIAL_PORT_USB_VCP"
.LASF104:
	.string	"HEADER_CMD"
.LASF83:
	.string	"temperature"
.LASF44:
	.string	"baudRate"
.LASF82:
	.string	"LSM9DS0"
.LASF198:
	.string	"_i2c"
.LASF32:
	.string	"SERIAL_STOPBITS_1"
.LASF164:
	.string	"byte"
.LASF100:
	.string	"IDLE"
.LASF69:
	.string	"G_SCALE_500DPS"
.LASF68:
	.string	"G_SCALE_245DPS"
.LASF43:
	.string	"options"
.LASF135:
	.string	"SERIAL_PORT_UART2"
.LASF136:
	.string	"SERIAL_PORT_UART3"
.LASF159:
	.string	"mspSerialReleasePortIfAllocated"
.LASF143:
	.string	"serialPortIdentifier_e"
.LASF117:
	.string	"dataSize"
.LASF131:
	.string	"FUNCTION_TELEMETRY_MAVLINK"
.LASF62:
	.string	"writeBuf"
.LASF55:
	.string	"serialWrite"
.LASF92:
	.string	"LSM9DS0_t"
.LASF102:
	.string	"HEADER_ARROW"
.LASF195:
	.string	"GNU C99 5.4.1 20160904 -mtune=generic -march=x86-64 -g -std=gnu99 -ffunction-sections -fdata-sections -ffat-lto-objects -fstack-protector-strong"
.LASF17:
	.string	"pgn_t"
.LASF10:
	.string	"long unsigned int"
.LASF73:
	.string	"A_SCALE_4G"
.LASF192:
	.string	"mspPostProcessFn"
.LASF182:
	.string	"consumed"
.LASF193:
	.string	"serialConfig_System"
.LASF166:
	.string	"data"
.LASF21:
	.string	"size"
.LASF7:
	.string	"short unsigned int"
.LASF24:
	.string	"pgRegistry_t"
.LASF94:
	.string	"BAUDRATE_GPS"
.LASF169:
	.string	"csum"
.LASF76:
	.string	"A_SCALE_16G"
.LASF19:
	.string	"sbuf_s"
.LASF113:
	.string	"port"
.LASF16:
	.string	"sbuf_t"
.LASF146:
	.string	"baudRates"
.LASF103:
	.string	"HEADER_SIZE"
.LASF53:
	.string	"callback"
.LASF99:
	.string	"mspPacket_t"
.LASF37:
	.string	"SERIAL_BIDIR"
.LASF63:
	.string	"beginWrite"
.LASF181:
	.string	"bytesWaiting"
.LASF85:
	.string	"gScale"
.LASF140:
	.string	"SERIAL_PORT_SOFTSERIAL1"
.LASF141:
	.string	"SERIAL_PORT_SOFTSERIAL2"
.LASF188:
	.string	"__pg_registry_end"
.LASF75:
	.string	"A_SCALE_8G"
.LASF84:
	.string	"gyro"
.LASF59:
	.string	"serialSetBaudRate"
.LASF89:
	.string	"aRes"
.LASF175:
	.string	"reply"
.LASF165:
	.string	"mspSerialChecksumBuf"
.LASF11:
	.string	"sizetype"
.LASF191:
	.string	"mspPorts"
.LASF54:
	.string	"serialPortVTable"
.LASF179:
	.string	"mspSerialProcess"
.LASF22:
	.string	"address"
.LASF77:
	.string	"mag_scale"
.LASF33:
	.string	"SERIAL_STOPBITS_2"
.LASF25:
	.string	"MODE_RX"
.LASF190:
	.string	"__pg_resetdata_end"
.LASF187:
	.string	"__pg_registry_start"
.LASF49:
	.string	"rxBufferHead"
.LASF162:
	.string	"mspSerialChecksum"
.LASF184:
	.string	"U_ID_0"
.LASF134:
	.string	"SERIAL_PORT_UART1"
.LASF197:
	.string	"/home/aravind/git/cleanflight"
.LASF107:
	.string	"mspState_e"
.LASF137:
	.string	"SERIAL_PORT_UART4"
.LASF138:
	.string	"SERIAL_PORT_UART5"
.LASF29:
	.string	"portOptions_t"
.LASF124:
	.string	"FUNCTION_GPS"
.LASF172:
	.string	"outBuf"
.LASF66:
	.string	"_Bool"
.LASF36:
	.string	"SERIAL_UNIDIR"
.LASF5:
	.string	"unsigned char"
.LASF118:
	.string	"cmdMSP"
.LASF45:
	.string	"rxBufferSize"
.LASF112:
	.string	"mspPort_s"
.LASF120:
	.string	"mspPort_t"
.LASF101:
	.string	"HEADER_M"
.LASF1:
	.string	"short int"
.LASF122:
	.string	"FUNCTION_NONE"
.LASF52:
	.string	"txBufferTail"
.LASF115:
	.string	"c_state"
.LASF128:
	.string	"FUNCTION_TELEMETRY_SMARTPORT"
.LASF155:
	.string	"mspPort"
.LASF72:
	.string	"A_SCALE_2G"
.LASF148:
	.string	"serialConfig_s"
.LASF151:
	.string	"serialConfig_t"
.LASF170:
	.string	"resetMspPort"
.LASF79:
	.string	"M_SCALE_4GS"
.LASF111:
	.string	"mspPortMode_e"
.LASF144:
	.string	"serialPortConfig_s"
.LASF147:
	.string	"serialPortConfig_t"
.LASF51:
	.string	"txBufferHead"
.LASF8:
	.string	"uint32_t"
.LASF57:
	.string	"serialTotalTxFree"
.LASF180:
	.string	"flag"
.LASF20:
	.string	"pgRegistry_s"
.LASF91:
	.string	"float"
.LASF12:
	.string	"char"
.LASF96:
	.string	"BAUDRATE_TELEMETRY"
.LASF42:
	.string	"mode"
.LASF50:
	.string	"rxBufferTail"
.LASF114:
	.string	"commandSenderFn"
.LASF97:
	.string	"mspPacket_s"
.LASF27:
	.string	"MODE_RXTX"
.LASF154:
	.string	"portConfig"
.LASF87:
	.string	"mScale"
.LASF125:
	.string	"FUNCTION_TELEMETRY_FRSKY"
.LASF129:
	.string	"FUNCTION_RX_SERIAL"
.LASF145:
	.string	"functionMask"
.LASF116:
	.string	"offset"
.LASF185:
	.string	"U_ID_1"
.LASF123:
	.string	"FUNCTION_MSP_SERVER"
.LASF106:
	.string	"MESSAGE_RECEIVED"
.LASF31:
	.string	"SERIAL_INVERTED"
.LASF61:
	.string	"setMode"
.LASF41:
	.string	"identifier"
.LASF130:
	.string	"FUNCTION_BLACKBOX"
.LASF152:
	.string	"mspPortToReset"
.LASF40:
	.string	"vTable"
.LASF133:
	.string	"SERIAL_PORT_NONE"
.LASF127:
	.string	"FUNCTION_TELEMETRY_LTM"
.LASF48:
	.string	"txBuffer"
.LASF177:
	.string	"status"
.LASF30:
	.string	"SERIAL_NOT_INVERTED"
.LASF60:
	.string	"isSerialTransmitBufferEmpty"
.LASF74:
	.string	"A_SCALE_6G"
.LASF4:
	.string	"uint8_t"
.LASF71:
	.string	"accel_scale"
.LASF110:
	.string	"MSP_MODE_CLIENT"
.LASF126:
	.string	"FUNCTION_TELEMETRY_HOTT"
.LASF34:
	.string	"SERIAL_PARITY_NO"
.LASF160:
	.string	"mspSerialInit"
.LASF173:
	.string	"message"
.LASF93:
	.string	"BAUDRATE_MSP_SERVER"
.LASF105:
	.string	"HEADER_DATA"
.LASF167:
	.string	"mspSerialEncode"
.LASF178:
	.string	"mspSerialProcessReceivedByte"
.LASF98:
	.string	"result"
.LASF80:
	.string	"M_SCALE_8GS"
.LASF121:
	.string	"mspPostProcessFuncPtr"
.LASF183:
	.string	"shouldSend"
.LASF81:
	.string	"M_SCALE_12GS"
.LASF39:
	.string	"serialPort_s"
.LASF65:
	.string	"serialPort_t"
.LASF119:
	.string	"inBuf"
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
