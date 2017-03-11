	.file	"pwm_rx.c"
# GNU C99 (Ubuntu 5.4.1-2ubuntu1~16.04) version 5.4.1 20160904 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.1 20160904, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed pwm_rx.i -mtune=generic -march=x86-64 -g
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
	.comm	pwmRxConfig_System,4,4
	.section	.bss.pwmInputPorts,"aw",@nobits
	.align 32
	.type	pwmInputPorts, @object
	.size	pwmInputPorts, 384
pwmInputPorts:
	.zero	384
	.section	.bss.captures,"aw",@nobits
	.align 16
	.type	captures, @object
	.size	captures, 24
captures:
	.zero	24
	.section	.bss.ppmFrameCount,"aw",@nobits
	.type	ppmFrameCount, @object
	.size	ppmFrameCount, 1
ppmFrameCount:
	.zero	1
	.section	.bss.lastPPMFrameCount,"aw",@nobits
	.type	lastPPMFrameCount, @object
	.size	lastPPMFrameCount, 1
lastPPMFrameCount:
	.zero	1
	.section	.bss.ppmCountShift,"aw",@nobits
	.type	ppmCountShift, @object
	.size	ppmCountShift, 1
ppmCountShift:
	.zero	1
	.comm	ppmDev,76,32
	.section	.text.isPPMDataBeingReceived,"ax",@progbits
	.globl	isPPMDataBeingReceived
	.type	isPPMDataBeingReceived, @function
isPPMDataBeingReceived:
.LFB13:
	.file 1 "src/main/drivers/pwm_rx.c"
	.loc 1 119 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 120 0
	movzbl	ppmFrameCount(%rip), %edx	# ppmFrameCount, D.5732
	movzbl	lastPPMFrameCount(%rip), %eax	# lastPPMFrameCount, D.5732
	cmpb	%al, %dl	# D.5732, D.5732
	setne	%al	#, D.5733
	.loc 1 121 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	isPPMDataBeingReceived, .-isPPMDataBeingReceived
	.section	.text.resetPPMDataReceivedState,"ax",@progbits
	.globl	resetPPMDataReceivedState
	.type	resetPPMDataReceivedState, @function
resetPPMDataReceivedState:
.LFB14:
	.loc 1 124 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 125 0
	movzbl	ppmFrameCount(%rip), %eax	# ppmFrameCount, D.5734
	movb	%al, lastPPMFrameCount(%rip)	# D.5734, lastPPMFrameCount
	.loc 1 126 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	resetPPMDataReceivedState, .-resetPPMDataReceivedState
	.section	.text.pwmRxInit,"ax",@progbits
	.globl	pwmRxInit
	.type	pwmRxInit, @function
pwmRxInit:
.LFB15:
	.loc 1 131 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 132 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	pwmRxInit, .-pwmRxInit
	.section	.bss.ppmEvents,"aw",@nobits
	.align 32
	.type	ppmEvents, @object
	.size	ppmEvents, 160
ppmEvents:
	.zero	160
	.section	.bss.ppmEventIndex,"aw",@nobits
	.type	ppmEventIndex, @object
	.size	ppmEventIndex, 1
ppmEventIndex:
	.zero	1
	.section	.text.ppmISREvent,"ax",@progbits
	.globl	ppmISREvent
	.type	ppmISREvent, @function
ppmISREvent:
.LFB16:
	.loc 1 149 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# source, source
	movl	%esi, -8(%rbp)	# capture, capture
	.loc 1 150 0
	movzbl	ppmEventIndex(%rip), %eax	# ppmEventIndex, D.5735
	movzbl	%al, %eax	# D.5735, D.5736
	addl	$1, %eax	#, D.5736
	movslq	%eax, %rcx	# D.5736, D.5737
	movabsq	$-3689348814741910323, %rdx	#, tmp98
	movq	%rcx, %rax	# D.5737, tmp105
	mulq	%rdx	# tmp98
	shrq	$4, %rdx	#, D.5737
	movq	%rdx, %rax	# D.5737, tmp99
	salq	$2, %rax	#, tmp99
	addq	%rdx, %rax	# D.5737, tmp99
	salq	$2, %rax	#, tmp100
	subq	%rax, %rcx	# tmp99, D.5737
	movq	%rcx, %rdx	# D.5737, D.5737
	movl	%edx, %eax	# D.5737, D.5735
	movb	%al, ppmEventIndex(%rip)	# D.5735, ppmEventIndex
	.loc 1 152 0
	movzbl	ppmEventIndex(%rip), %eax	# ppmEventIndex, D.5735
	movzbl	%al, %eax	# D.5735, D.5736
	cltq
	movl	-4(%rbp), %edx	# source, tmp102
	movl	%edx, ppmEvents(,%rax,8)	# tmp102, ppmEvents[_10].source
	.loc 1 153 0
	movzbl	ppmEventIndex(%rip), %eax	# ppmEventIndex, D.5735
	movzbl	%al, %eax	# D.5735, D.5736
	cltq
	movl	-8(%rbp), %edx	# capture, tmp104
	movl	%edx, ppmEvents+4(,%rax,8)	# tmp104, ppmEvents[_14].capture
	.loc 1 154 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	ppmISREvent, .-ppmISREvent
	.section	.text.ppmInit,"ax",@progbits
	.type	ppmInit, @function
ppmInit:
.LFB17:
	.loc 1 160 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 161 0
	movb	$0, ppmDev(%rip)	#, ppmDev.pulseIndex
	.loc 1 162 0
	movl	$0, ppmDev+4(%rip)	#, ppmDev.currentCapture
	.loc 1 163 0
	movl	$0, ppmDev+8(%rip)	#, ppmDev.currentTime
	.loc 1 164 0
	movl	$0, ppmDev+12(%rip)	#, ppmDev.deltaTime
	.loc 1 165 0
	movl	$0, ppmDev+64(%rip)	#, ppmDev.largeCounter
	.loc 1 166 0
	movb	$-1, ppmDev+68(%rip)	#, ppmDev.numChannels
	.loc 1 167 0
	movb	$-1, ppmDev+69(%rip)	#, ppmDev.numChannelsPrevFrame
	.loc 1 168 0
	movb	$0, ppmDev+70(%rip)	#, ppmDev.stableFramesSeenCount
	.loc 1 169 0
	movb	$0, ppmDev+71(%rip)	#, ppmDev.tracking
	.loc 1 170 0
	movb	$0, ppmDev+72(%rip)	#, ppmDev.overflowed
	.loc 1 171 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ppmInit, .-ppmInit
	.section	.text.ppmOverflowCallback,"ax",@progbits
	.type	ppmOverflowCallback, @function
ppmOverflowCallback:
.LFB18:
	.loc 1 174 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# cbRec, cbRec
	movl	%esi, %eax	# capture, tmp92
	movw	%ax, -12(%rbp)	# tmp92, capture
	.loc 1 176 0
	movzwl	-12(%rbp), %eax	# capture, D.5738
	movl	%eax, %esi	# D.5738,
	movl	$0, %edi	#,
	call	ppmISREvent	#
	.loc 1 178 0
	movl	ppmDev+64(%rip), %edx	# ppmDev.largeCounter, D.5738
	movzwl	-12(%rbp), %eax	# capture, D.5738
	addl	%edx, %eax	# D.5738, D.5738
	addl	$1, %eax	#, D.5738
	movl	%eax, ppmDev+64(%rip)	# D.5738, ppmDev.largeCounter
	.loc 1 179 0
	cmpw	$-1, -12(%rbp)	#, capture
	jne	.L9	#,
	.loc 1 180 0
	movb	$1, ppmDev+72(%rip)	#, ppmDev.overflowed
.L9:
	.loc 1 183 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	ppmOverflowCallback, .-ppmOverflowCallback
	.section	.text.ppmEdgeCallback,"ax",@progbits
	.type	ppmEdgeCallback, @function
ppmEdgeCallback:
.LFB19:
	.loc 1 186 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# cbRec, cbRec
	movl	%esi, %eax	# capture, tmp158
	movw	%ax, -28(%rbp)	# tmp158, capture
	.loc 1 188 0
	movzwl	-28(%rbp), %eax	# capture, D.5740
	movl	%eax, %esi	# D.5740,
	movl	$1, %edi	#,
	call	ppmISREvent	#
	.loc 1 192 0
	movl	ppmDev+8(%rip), %eax	# ppmDev.currentTime, tmp159
	movl	%eax, -8(%rbp)	# tmp159, previousTime
	.loc 1 193 0
	movl	ppmDev+4(%rip), %eax	# ppmDev.currentCapture, tmp160
	movl	%eax, -4(%rbp)	# tmp160, previousCapture
	.loc 1 196 0
	movzwl	-28(%rbp), %eax	# capture, tmp161
	movl	%eax, -12(%rbp)	# tmp161, currentTime
	.loc 1 199 0
	movl	ppmDev+64(%rip), %eax	# ppmDev.largeCounter, D.5740
	addl	%eax, -12(%rbp)	# D.5740, currentTime
	.loc 1 201 0
	movzwl	-28(%rbp), %eax	# capture, D.5740
	cmpl	-4(%rbp), %eax	# previousCapture, D.5740
	jnb	.L11	#,
	.loc 1 202 0
	movzbl	ppmDev+72(%rip), %eax	# ppmDev.overflowed, D.5741
	testb	%al, %al	# D.5741
	je	.L11	#,
	.loc 1 203 0
	addl	$65536, -12(%rbp)	#, currentTime
.L11:
	.loc 1 208 0
	movzbl	ppmCountShift(%rip), %eax	# ppmCountShift, D.5742
	movzbl	%al, %eax	# D.5742, D.5743
	movl	%eax, %ecx	# D.5743, tmp198
	shrl	%cl, -12(%rbp)	# tmp198, currentTime
	.loc 1 211 0
	movl	-12(%rbp), %eax	# currentTime, tmp162
	cmpl	-8(%rbp), %eax	# previousTime, tmp162
	jbe	.L12	#,
	.loc 1 212 0
	movzbl	ppmDev+72(%rip), %eax	# ppmDev.overflowed, D.5741
	testb	%al, %al	# D.5741
	je	.L13	#,
	.loc 1 212 0 is_stmt 0 discriminator 1
	movzbl	ppmCountShift(%rip), %eax	# ppmCountShift, D.5742
	movzbl	%al, %eax	# D.5742, D.5743
	movl	$65536, %edx	#, tmp163
	movl	%eax, %ecx	# D.5743, tmp200
	sarl	%cl, %edx	# tmp200, D.5743
	movl	%edx, %eax	# D.5743, D.5743
	movl	%eax, %edx	# D.5743, D.5739
	jmp	.L14	#
.L13:
	.loc 1 212 0 discriminator 2
	movl	$0, %edx	#, D.5739
.L14:
	.loc 1 212 0 discriminator 4
	movl	-8(%rbp), %eax	# previousTime, tmp164
	addl	%eax, %edx	# tmp164, D.5740
	movl	-12(%rbp), %eax	# currentTime, tmp165
	subl	%edx, %eax	# D.5740, D.5740
	movl	%eax, ppmDev+12(%rip)	# D.5740, ppmDev.deltaTime
	jmp	.L15	#
.L12:
	.loc 1 214 0 is_stmt 1
	movzbl	ppmCountShift(%rip), %eax	# ppmCountShift, D.5742
	movzbl	%al, %eax	# D.5742, D.5743
	movl	$65536, %edx	#, tmp166
	movl	%eax, %ecx	# D.5743, tmp202
	sarl	%cl, %edx	# tmp202, D.5743
	movl	%edx, %eax	# D.5743, D.5743
	movl	%eax, %edx	# D.5743, D.5740
	movl	-12(%rbp), %eax	# currentTime, tmp167
	addl	%edx, %eax	# D.5740, D.5740
	subl	-8(%rbp), %eax	# previousTime, D.5740
	movl	%eax, ppmDev+12(%rip)	# D.5740, ppmDev.deltaTime
.L15:
	.loc 1 217 0
	movb	$0, ppmDev+72(%rip)	#, ppmDev.overflowed
	.loc 1 221 0
	movl	-12(%rbp), %eax	# currentTime, tmp168
	movl	%eax, ppmDev+8(%rip)	# tmp168, ppmDev.currentTime
	.loc 1 222 0
	movzwl	-28(%rbp), %eax	# capture, D.5740
	movl	%eax, ppmDev+4(%rip)	# D.5740, ppmDev.currentCapture
	.loc 1 228 0
	movzbl	deltaIndex.5447(%rip), %eax	# deltaIndex, D.5742
	movzbl	%al, %eax	# D.5742, D.5743
	leal	1(%rax), %ecx	#, D.5743
	movl	$1717986919, %edx	#, tmp170
	movl	%ecx, %eax	# D.5743, tmp196
	imull	%edx	# tmp170
	sarl	$3, %edx	#, tmp171
	movl	%ecx, %eax	# D.5743, tmp172
	sarl	$31, %eax	#, tmp172
	subl	%eax, %edx	# tmp172, D.5743
	movl	%edx, %eax	# D.5743, tmp173
	sall	$2, %eax	#, tmp173
	addl	%edx, %eax	# D.5743, tmp173
	sall	$2, %eax	#, tmp174
	subl	%eax, %ecx	# tmp173, D.5743
	movl	%ecx, %edx	# D.5743, D.5743
	movl	%edx, %eax	# D.5743, D.5742
	movb	%al, deltaIndex.5447(%rip)	# D.5742, deltaIndex
	.loc 1 229 0
	movzbl	deltaIndex.5447(%rip), %eax	# deltaIndex, D.5742
	movzbl	%al, %eax	# D.5742, D.5743
	movl	ppmDev+12(%rip), %edx	# ppmDev.deltaTime, D.5740
	cltq
	movl	%edx, deltaTimes.5446(,%rax,4)	# D.5740, deltaTimes
	.loc 1 238 0
	movzbl	captureIndex.5449(%rip), %eax	# captureIndex, D.5742
	movzbl	%al, %eax	# D.5742, D.5743
	leal	1(%rax), %ecx	#, D.5743
	movl	$1717986919, %edx	#, tmp177
	movl	%ecx, %eax	# D.5743, tmp197
	imull	%edx	# tmp177
	sarl	$3, %edx	#, tmp178
	movl	%ecx, %eax	# D.5743, tmp179
	sarl	$31, %eax	#, tmp179
	subl	%eax, %edx	# tmp179, D.5743
	movl	%edx, %eax	# D.5743, tmp180
	sall	$2, %eax	#, tmp180
	addl	%edx, %eax	# D.5743, tmp180
	sall	$2, %eax	#, tmp181
	subl	%eax, %ecx	# tmp180, D.5743
	movl	%ecx, %edx	# D.5743, D.5743
	movl	%edx, %eax	# D.5743, D.5742
	movb	%al, captureIndex.5449(%rip)	# D.5742, captureIndex
	.loc 1 239 0
	movzbl	captureIndex.5449(%rip), %eax	# captureIndex, D.5742
	movzbl	%al, %eax	# D.5742, D.5743
	movzwl	-28(%rbp), %edx	# capture, D.5740
	cltq
	movl	%edx, captureTimes.5448(,%rax,4)	# D.5740, captureTimes
	.loc 1 244 0
	movl	ppmDev+12(%rip), %eax	# ppmDev.deltaTime, D.5740
	cmpl	$2700, %eax	#, D.5740
	jbe	.L16	#,
	.loc 1 245 0
	movzbl	ppmDev(%rip), %eax	# ppmDev.pulseIndex, D.5742
	movzbl	%al, %edx	# D.5742, D.5743
	movzbl	ppmDev+69(%rip), %eax	# ppmDev.numChannelsPrevFrame, D.5744
	movsbl	%al, %eax	# D.5744, D.5743
	cmpl	%eax, %edx	# D.5743, D.5743
	jne	.L17	#,
	.loc 1 246 0
	movzbl	ppmDev(%rip), %eax	# ppmDev.pulseIndex, D.5742
	cmpb	$3, %al	#, D.5742
	jbe	.L17	#,
	.loc 1 247 0
	movzbl	ppmDev(%rip), %eax	# ppmDev.pulseIndex, D.5742
	cmpb	$12, %al	#, D.5742
	ja	.L17	#,
	.loc 1 250 0
	movzbl	ppmDev+70(%rip), %eax	# ppmDev.stableFramesSeenCount, D.5742
	cmpb	$24, %al	#, D.5742
	ja	.L18	#,
	.loc 1 251 0
	movzbl	ppmDev+70(%rip), %eax	# ppmDev.stableFramesSeenCount, D.5742
	addl	$1, %eax	#, D.5742
	movb	%al, ppmDev+70(%rip)	# D.5742, ppmDev.stableFramesSeenCount
	.loc 1 250 0
	jmp	.L20	#
.L18:
	.loc 1 253 0
	movzbl	ppmDev(%rip), %eax	# ppmDev.pulseIndex, D.5742
	movb	%al, ppmDev+68(%rip)	# D.5744, ppmDev.numChannels
	.loc 1 250 0
	jmp	.L20	#
.L17:
	.loc 1 256 0
	movb	$0, ppmDev+70(%rip)	#, ppmDev.stableFramesSeenCount
.L20:
	.loc 1 260 0
	movzbl	ppmDev(%rip), %eax	# ppmDev.pulseIndex, D.5742
	movzbl	%al, %edx	# D.5742, D.5743
	movzbl	ppmDev+68(%rip), %eax	# ppmDev.numChannels, D.5744
	movsbl	%al, %eax	# D.5744, D.5743
	cmpl	%eax, %edx	# D.5743, D.5743
	jne	.L21	#,
	.loc 1 260 0 is_stmt 0 discriminator 1
	movzbl	ppmDev+71(%rip), %eax	# ppmDev.tracking, D.5741
	testb	%al, %al	# D.5741
	je	.L21	#,
	.loc 1 262 0 is_stmt 1
	movl	$0, -16(%rbp)	#, i
	jmp	.L22	#
.L23:
	.loc 1 263 0 discriminator 3
	movl	-16(%rbp), %eax	# i, tmp184
	cltq
	addq	$4, %rax	#, tmp185
	movl	ppmDev(,%rax,4), %eax	# ppmDev.captures, D.5740
	movl	%eax, %edx	# D.5740, D.5745
	movl	-16(%rbp), %eax	# i, tmp187
	cltq
	movw	%dx, captures(%rax,%rax)	# D.5745, captures
	.loc 1 262 0 discriminator 3
	addl	$1, -16(%rbp)	#, i
.L22:
	.loc 1 262 0 is_stmt 0 discriminator 1
	movzbl	ppmDev+68(%rip), %eax	# ppmDev.numChannels, D.5744
	movsbl	%al, %eax	# D.5744, D.5743
	cmpl	-16(%rbp), %eax	# i, D.5743
	jg	.L23	#,
	.loc 1 265 0 is_stmt 1
	movzbl	ppmDev+68(%rip), %eax	# ppmDev.numChannels, D.5744
	movsbl	%al, %eax	# D.5744, tmp188
	movl	%eax, -16(%rbp)	# tmp188, i
	jmp	.L24	#
.L25:
	.loc 1 266 0 discriminator 3
	movl	-16(%rbp), %eax	# i, tmp190
	cltq
	movw	$0, captures(%rax,%rax)	#, captures
	.loc 1 265 0 discriminator 3
	addl	$1, -16(%rbp)	#, i
.L24:
	.loc 1 265 0 is_stmt 0 discriminator 1
	cmpl	$11, -16(%rbp)	#, i
	jle	.L25	#,
	.loc 1 268 0 is_stmt 1
	movzbl	ppmFrameCount(%rip), %eax	# ppmFrameCount, D.5742
	addl	$1, %eax	#, D.5742
	movb	%al, ppmFrameCount(%rip)	# D.5742, ppmFrameCount
.L21:
	.loc 1 271 0
	movb	$1, ppmDev+71(%rip)	#, ppmDev.tracking
	.loc 1 272 0
	movzbl	ppmDev(%rip), %eax	# ppmDev.pulseIndex, D.5742
	movb	%al, ppmDev+69(%rip)	# D.5744, ppmDev.numChannelsPrevFrame
	.loc 1 273 0
	movb	$0, ppmDev(%rip)	#, ppmDev.pulseIndex
	.loc 1 292 0
	jmp	.L30	#
.L16:
	.loc 1 277 0
	movzbl	ppmDev+71(%rip), %eax	# ppmDev.tracking, D.5741
	testb	%al, %al	# D.5741
	je	.L30	#,
	.loc 1 279 0
	movl	ppmDev+12(%rip), %eax	# ppmDev.deltaTime, D.5740
	cmpl	$750, %eax	#, D.5740
	jbe	.L27	#,
	.loc 1 280 0
	movl	ppmDev+12(%rip), %eax	# ppmDev.deltaTime, D.5740
	cmpl	$2249, %eax	#, D.5740
	ja	.L27	#,
	.loc 1 281 0
	movzbl	ppmDev(%rip), %eax	# ppmDev.pulseIndex, D.5742
	cmpb	$11, %al	#, D.5742
	ja	.L27	#,
	.loc 1 282 0
	movzbl	ppmDev(%rip), %eax	# ppmDev.pulseIndex, D.5742
	movzbl	%al, %edx	# D.5742, D.5743
	movl	ppmDev+12(%rip), %eax	# ppmDev.deltaTime, D.5740
	movslq	%edx, %rdx	# D.5743, tmp191
	addq	$4, %rdx	#, tmp192
	movl	%eax, ppmDev(,%rdx,4)	# D.5740, ppmDev.captures
	.loc 1 283 0
	movzbl	ppmDev(%rip), %eax	# ppmDev.pulseIndex, D.5742
	addl	$1, %eax	#, D.5742
	movb	%al, ppmDev(%rip)	# D.5742, ppmDev.pulseIndex
	.loc 1 292 0
	jmp	.L30	#
.L27:
	.loc 1 286 0
	movb	$0, ppmDev+71(%rip)	#, ppmDev.tracking
	.loc 1 287 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L28	#
.L29:
	.loc 1 288 0 discriminator 3
	movl	-16(%rbp), %eax	# i, tmp194
	cltq
	addq	$4, %rax	#, tmp195
	movl	$0, ppmDev(,%rax,4)	#, ppmDev.captures
	.loc 1 287 0 discriminator 3
	addl	$1, -16(%rbp)	#, i
.L28:
	.loc 1 287 0 is_stmt 0 discriminator 1
	cmpl	$11, -16(%rbp)	#, i
	jle	.L29	#,
.L30:
	.loc 1 292 0 is_stmt 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	ppmEdgeCallback, .-ppmEdgeCallback
	.section	.text.isPWMDataBeingReceived,"ax",@progbits
	.globl	isPWMDataBeingReceived
	.type	isPWMDataBeingReceived, @function
isPWMDataBeingReceived:
.LFB20:
	.loc 1 297 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 299 0
	movl	$0, -4(%rbp)	#, channel
	jmp	.L32	#
.L35:
	.loc 1 300 0
	movl	-4(%rbp), %eax	# channel, tmp91
	cltq
	movzwl	captures(%rax,%rax), %eax	# captures, D.5747
	testw	%ax, %ax	# D.5747
	je	.L33	#,
	.loc 1 301 0
	movl	$1, %eax	#, D.5746
	jmp	.L34	#
.L33:
	.loc 1 299 0 discriminator 2
	addl	$1, -4(%rbp)	#, channel
.L32:
	.loc 1 299 0 is_stmt 0 discriminator 1
	cmpl	$11, -4(%rbp)	#, channel
	jle	.L35	#,
	.loc 1 304 0 is_stmt 1
	movl	$0, %eax	#, D.5746
.L34:
	.loc 1 305 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	isPWMDataBeingReceived, .-isPWMDataBeingReceived
	.section	.text.pwmOverflowCallback,"ax",@progbits
	.type	pwmOverflowCallback, @function
pwmOverflowCallback:
.LFB21:
	.loc 1 308 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# cbRec, cbRec
	movl	%esi, %eax	# capture, tmp93
	movw	%ax, -28(%rbp)	# tmp93, capture
.LBB2:
	.loc 1 310 0
	movq	-24(%rbp), %rax	# cbRec, tmp94
	movq	%rax, -16(%rbp)	# tmp94, __mptr
	movq	-16(%rbp), %rax	# __mptr, tmp95
	subq	$32, %rax	#, D.5748
.LBE2:
	movq	%rax, -8(%rbp)	# D.5748, pwmInputPort
	.loc 1 312 0
	movq	-8(%rbp), %rax	# pwmInputPort, tmp96
	movzbl	12(%rax), %eax	# pwmInputPort_5->missedEvents, D.5749
	leal	1(%rax), %edx	#, D.5749
	movq	-8(%rbp), %rax	# pwmInputPort, tmp97
	movb	%dl, 12(%rax)	# D.5749, pwmInputPort_5->missedEvents
	movq	-8(%rbp), %rax	# pwmInputPort, tmp98
	movzbl	12(%rax), %eax	# pwmInputPort_5->missedEvents, D.5749
	cmpb	$10, %al	#, D.5749
	jbe	.L38	#,
	.loc 1 313 0
	movq	-8(%rbp), %rax	# pwmInputPort, tmp99
	movzbl	4(%rax), %eax	# pwmInputPort_5->channel, D.5749
	movzbl	%al, %eax	# D.5749, D.5750
	cltq
	movw	$0, captures(%rax,%rax)	#, captures
	.loc 1 314 0
	movq	-8(%rbp), %rax	# pwmInputPort, tmp101
	movb	$0, 12(%rax)	#, pwmInputPort_5->missedEvents
.L38:
	.loc 1 316 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	pwmOverflowCallback, .-pwmOverflowCallback
	.section	.text.pwmEdgeCallback,"ax",@progbits
	.type	pwmEdgeCallback, @function
pwmEdgeCallback:
.LFB22:
	.loc 1 319 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# cbRec, cbRec
	movl	%esi, %eax	# capture, tmp101
	movw	%ax, -44(%rbp)	# tmp101, capture
.LBB3:
	.loc 1 320 0
	movq	-40(%rbp), %rax	# cbRec, tmp102
	movq	%rax, -24(%rbp)	# tmp102, __mptr
	movq	-24(%rbp), %rax	# __mptr, tmp103
	subq	$24, %rax	#, D.5751
.LBE3:
	movq	%rax, -16(%rbp)	# D.5751, pwmInputPort
	.loc 1 321 0
	movq	-16(%rbp), %rax	# pwmInputPort, tmp104
	movq	16(%rax), %rax	# pwmInputPort_5->timerHardware, tmp105
	movq	%rax, -8(%rbp)	# tmp105, timerHardwarePtr
	.loc 1 323 0
	movq	-16(%rbp), %rax	# pwmInputPort, tmp106
	movzbl	5(%rax), %eax	# pwmInputPort_5->state, D.5752
	testb	%al, %al	# D.5752
	jne	.L40	#,
	.loc 1 324 0
	movq	-16(%rbp), %rax	# pwmInputPort, tmp107
	movzwl	-44(%rbp), %edx	# capture, tmp108
	movw	%dx, 6(%rax)	# tmp108, pwmInputPort_5->rise
	.loc 1 325 0
	movq	-16(%rbp), %rax	# pwmInputPort, tmp109
	movb	$1, 5(%rax)	#, pwmInputPort_5->state
	.loc 1 327 0
	movq	-8(%rbp), %rax	# timerHardwarePtr, tmp110
	movzbl	(%rax), %eax	# timerHardwarePtr_7->channel, D.5752
	movzbl	%al, %ecx	# D.5752, D.5753
	movq	-8(%rbp), %rax	# timerHardwarePtr, tmp111
	movq	8(%rax), %rax	# timerHardwarePtr_7->tim, D.5754
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.5753,
	movq	%rax, %rdi	# D.5754,
	call	pwmICConfig	#
	.loc 1 341 0
	jmp	.L42	#
.L40:
	.loc 1 329 0
	movq	-16(%rbp), %rax	# pwmInputPort, tmp112
	movzwl	-44(%rbp), %edx	# capture, tmp113
	movw	%dx, 8(%rax)	# tmp113, pwmInputPort_5->fall
	.loc 1 332 0
	movq	-16(%rbp), %rax	# pwmInputPort, tmp114
	movzwl	8(%rax), %edx	# pwmInputPort_5->fall, D.5755
	movq	-16(%rbp), %rax	# pwmInputPort, tmp115
	movzwl	6(%rax), %eax	# pwmInputPort_5->rise, D.5755
	subl	%eax, %edx	# D.5755, D.5755
	movq	-16(%rbp), %rax	# pwmInputPort, tmp116
	movw	%dx, 10(%rax)	# D.5755, pwmInputPort_5->capture
	.loc 1 333 0
	movq	-16(%rbp), %rax	# pwmInputPort, tmp117
	movzbl	4(%rax), %eax	# pwmInputPort_5->channel, D.5752
	movzbl	%al, %ecx	# D.5752, D.5753
	movq	-16(%rbp), %rax	# pwmInputPort, tmp118
	movzwl	10(%rax), %edx	# pwmInputPort_5->capture, D.5755
	movslq	%ecx, %rax	# D.5753, tmp119
	movw	%dx, captures(%rax,%rax)	# D.5755, captures
	.loc 1 336 0
	movq	-16(%rbp), %rax	# pwmInputPort, tmp120
	movb	$0, 5(%rax)	#, pwmInputPort_5->state
	.loc 1 338 0
	movq	-8(%rbp), %rax	# timerHardwarePtr, tmp121
	movzbl	(%rax), %eax	# timerHardwarePtr_7->channel, D.5752
	movzbl	%al, %ecx	# D.5752, D.5753
	movq	-8(%rbp), %rax	# timerHardwarePtr, tmp122
	movq	8(%rax), %rax	# timerHardwarePtr_7->tim, D.5754
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.5753,
	movq	%rax, %rdi	# D.5754,
	call	pwmICConfig	#
	.loc 1 339 0
	movq	-16(%rbp), %rax	# pwmInputPort, tmp123
	movb	$0, 12(%rax)	#, pwmInputPort_5->missedEvents
.L42:
	.loc 1 341 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	pwmEdgeCallback, .-pwmEdgeCallback
	.section	.text.pwmGPIOConfig,"ax",@progbits
	.type	pwmGPIOConfig, @function
pwmGPIOConfig:
.LFB23:
	.loc 1 344 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# gpio, gpio
	movl	%esi, -44(%rbp)	# pin, pin
	movl	%edx, -48(%rbp)	# mode, mode
	.loc 1 344 0
	movq	%fs:40, %rax	#, tmp91
	movq	%rax, -8(%rbp)	# tmp91, D.5758
	xorl	%eax, %eax	# tmp91
	.loc 1 347 0
	movl	-44(%rbp), %eax	# pin, tmp89
	movw	%ax, -32(%rbp)	# D.5756, cfg.pin
	.loc 1 348 0
	movl	-48(%rbp), %eax	# mode, D.5757
	movl	%eax, -16(%rbp)	# D.5757, cfg.mode
	.loc 1 349 0
	movl	$2, -12(%rbp)	#, cfg.speed
	.loc 1 350 0
	leaq	-32(%rbp), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	gpioInit	#
	.loc 1 351 0
	nop
	movq	-8(%rbp), %rax	# D.5758, tmp92
	xorq	%fs:40, %rax	#, tmp92
	je	.L44	#,
	call	__stack_chk_fail	#
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	pwmGPIOConfig, .-pwmGPIOConfig
	.section	.text.pwmICConfig,"ax",@progbits
	.globl	pwmICConfig
	.type	pwmICConfig, @function
pwmICConfig:
.LFB24:
	.loc 1 354 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# tim, tim
	movl	%esi, %ecx	# channel, tmp87
	movl	%edx, %eax	# polarity, tmp88
	movb	%cl, -12(%rbp)	# tmp87, channel
	movw	%ax, -16(%rbp)	# tmp88, polarity
	.loc 1 370 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	pwmICConfig, .-pwmICConfig
	.section	.text.pwmInConfig,"ax",@progbits
	.globl	pwmInConfig
	.type	pwmInConfig, @function
pwmInConfig:
.LFB25:
	.loc 1 373 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# timerHardwarePtr, timerHardwarePtr
	movl	%esi, %eax	# channel, tmp99
	movb	%al, -28(%rbp)	# tmp99, channel
	.loc 1 374 0
	movzbl	-28(%rbp), %eax	# channel, D.5761
	movslq	%eax, %rdx	# D.5761, tmp100
	movq	%rdx, %rax	# tmp100, tmp101
	addq	%rax, %rax	# tmp101
	addq	%rdx, %rax	# tmp100, tmp101
	salq	$4, %rax	#, tmp102
	addq	$pwmInputPorts, %rax	#, tmp103
	movq	%rax, -8(%rbp)	# tmp103, self
	.loc 1 376 0
	movq	-8(%rbp), %rax	# self, tmp104
	movb	$0, 5(%rax)	#, self_3->state
	.loc 1 377 0
	movq	-8(%rbp), %rax	# self, tmp105
	movb	$0, 12(%rax)	#, self_3->missedEvents
	.loc 1 378 0
	movq	-8(%rbp), %rax	# self, tmp106
	movzbl	-28(%rbp), %edx	# channel, tmp107
	movb	%dl, 4(%rax)	# tmp107, self_3->channel
	.loc 1 379 0
	movq	-8(%rbp), %rax	# self, tmp108
	movl	$1, (%rax)	#, self_3->mode
	.loc 1 380 0
	movq	-8(%rbp), %rax	# self, tmp109
	movq	-24(%rbp), %rdx	# timerHardwarePtr, tmp110
	movq	%rdx, 16(%rax)	# tmp110, self_3->timerHardware
	.loc 1 382 0
	movq	-24(%rbp), %rax	# timerHardwarePtr, tmp111
	movq	16(%rax), %rax	# timerHardwarePtr_9(D)->gpio, D.5762
	movl	16(%rax), %eax	# _11->mode, D.5761
	movl	%eax, %edx	# D.5761, D.5763
	movq	-24(%rbp), %rax	# timerHardwarePtr, tmp112
	movq	16(%rax), %rax	# timerHardwarePtr_9(D)->gpio, D.5762
	movzwl	(%rax), %eax	# _14->pin, D.5764
	movzwl	%ax, %ecx	# D.5764, D.5765
	movq	-24(%rbp), %rax	# timerHardwarePtr, tmp113
	movq	16(%rax), %rax	# timerHardwarePtr_9(D)->gpio, D.5762
	movl	%ecx, %esi	# D.5765,
	movq	%rax, %rdi	# D.5762,
	call	pwmGPIOConfig	#
	.loc 1 384 0
	movq	-24(%rbp), %rax	# timerHardwarePtr, tmp114
	movzbl	(%rax), %eax	# timerHardwarePtr_9(D)->channel, D.5766
	movzbl	%al, %ecx	# D.5766, D.5761
	movq	-24(%rbp), %rax	# timerHardwarePtr, tmp115
	movq	8(%rax), %rax	# timerHardwarePtr_9(D)->tim, D.5767
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.5761,
	movq	%rax, %rdi	# D.5767,
	call	pwmICConfig	#
	.loc 1 387 0
	movl	$65536, %edi	#,
	call	period_to_freq	#
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movl	$pwmEdgeCallback, %edi	#,
	call	start_timer	#
	.loc 1 392 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	pwmInConfig, .-pwmInConfig
	.section	.text.ppmAvoidPWMTimerClash,"ax",@progbits
	.globl	ppmAvoidPWMTimerClash
	.type	ppmAvoidPWMTimerClash, @function
ppmAvoidPWMTimerClash:
.LFB26:
	.loc 1 398 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# timerHardwarePtr, timerHardwarePtr
	movq	%rsi, -16(%rbp)	# sharedPwmTimer, sharedPwmTimer
	.loc 1 399 0
	movq	-8(%rbp), %rax	# timerHardwarePtr, tmp88
	movq	8(%rax), %rax	# timerHardwarePtr_3(D)->tim, D.5769
	cmpq	-16(%rbp), %rax	# sharedPwmTimer, D.5769
	jne	.L49	#,
	.loc 1 400 0
	movb	$3, ppmCountShift(%rip)	#, ppmCountShift
.L49:
	.loc 1 402 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	ppmAvoidPWMTimerClash, .-ppmAvoidPWMTimerClash
	.section	.text.ppmInConfig,"ax",@progbits
	.globl	ppmInConfig
	.type	ppmInConfig, @function
ppmInConfig:
.LFB27:
	.loc 1 405 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# timerHardwarePtr, timerHardwarePtr
	.loc 1 406 0
	call	ppmInit	#
	.loc 1 408 0
	movq	$pwmInputPorts, -8(%rbp)	#, self
	.loc 1 410 0
	movq	-8(%rbp), %rax	# self, tmp98
	movl	$0, (%rax)	#, self_3->mode
	.loc 1 411 0
	movq	-8(%rbp), %rax	# self, tmp99
	movq	-24(%rbp), %rdx	# timerHardwarePtr, tmp100
	movq	%rdx, 16(%rax)	# tmp100, self_3->timerHardware
	.loc 1 413 0
	movq	-24(%rbp), %rax	# timerHardwarePtr, tmp101
	movq	16(%rax), %rax	# timerHardwarePtr_5(D)->gpio, D.5770
	movl	16(%rax), %eax	# _7->mode, D.5771
	movl	%eax, %edx	# D.5771, D.5772
	movq	-24(%rbp), %rax	# timerHardwarePtr, tmp102
	movq	16(%rax), %rax	# timerHardwarePtr_5(D)->gpio, D.5770
	movzwl	(%rax), %eax	# _10->pin, D.5773
	movzwl	%ax, %ecx	# D.5773, D.5774
	movq	-24(%rbp), %rax	# timerHardwarePtr, tmp103
	movq	16(%rax), %rax	# timerHardwarePtr_5(D)->gpio, D.5770
	movl	%ecx, %esi	# D.5774,
	movq	%rax, %rdi	# D.5770,
	call	pwmGPIOConfig	#
	.loc 1 415 0
	movq	-24(%rbp), %rax	# timerHardwarePtr, tmp104
	movzbl	(%rax), %eax	# timerHardwarePtr_5(D)->channel, D.5775
	movzbl	%al, %ecx	# D.5775, D.5771
	movq	-24(%rbp), %rax	# timerHardwarePtr, tmp105
	movq	8(%rax), %rax	# timerHardwarePtr_5(D)->tim, D.5776
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.5771,
	movq	%rax, %rdi	# D.5776,
	call	pwmICConfig	#
	.loc 1 418 0
	movl	$65536, %edi	#,
	call	period_to_freq	#
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movl	$ppmEdgeCallback, %edi	#,
	call	start_timer	#
	.loc 1 424 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	ppmInConfig, .-ppmInConfig
	.section	.text.ppmRead,"ax",@progbits
	.globl	ppmRead
	.type	ppmRead, @function
ppmRead:
.LFB28:
	.loc 1 427 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, %eax	# channel, tmp90
	movb	%al, -4(%rbp)	# tmp90, channel
	.loc 1 428 0
	movzbl	-4(%rbp), %eax	# channel, D.5778
	cltq
	movzwl	captures(%rax,%rax), %eax	# captures, D.5779
	.loc 1 429 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	ppmRead, .-ppmRead
	.section	.text.pwmRead,"ax",@progbits
	.globl	pwmRead
	.type	pwmRead, @function
pwmRead:
.LFB29:
	.loc 1 432 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, %eax	# channel, tmp90
	movb	%al, -4(%rbp)	# tmp90, channel
	.loc 1 433 0
	movzbl	-4(%rbp), %eax	# channel, D.5780
	cltq
	movzwl	captures(%rax,%rax), %eax	# captures, D.5781
	.loc 1 434 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	pwmRead, .-pwmRead
	.section	.text.period_to_freq,"ax",@progbits
	.globl	period_to_freq
	.type	period_to_freq, @function
period_to_freq:
.LFB30:
	.loc 1 436 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# period, period
	.loc 1 437 0
	movl	$1000000, %eax	#, tmp92
	movl	$0, %edx	#, tmp91
	divl	-4(%rbp)	# period
	movl	%eax, %eax	# D.5782, tmp93
	testq	%rax, %rax	# tmp93
	js	.L56	#,
	pxor	%xmm0, %xmm0	# D.5783
	cvtsi2ssq	%rax, %xmm0	# tmp93, D.5783
	jmp	.L58	#
.L56:
	movq	%rax, %rdx	# tmp93, tmp95
	shrq	%rdx	# tmp95
	andl	$1, %eax	#, tmp96
	orq	%rax, %rdx	# tmp96, tmp95
	pxor	%xmm0, %xmm0	# tmp94
	cvtsi2ssq	%rdx, %xmm0	# tmp95, tmp94
	addss	%xmm0, %xmm0	# tmp94, D.5783
.L58:
	.loc 1 438 0 discriminator 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	period_to_freq, .-period_to_freq
	.section	.text.freq_to_period,"ax",@progbits
	.globl	freq_to_period
	.type	freq_to_period, @function
freq_to_period:
.LFB31:
	.loc 1 441 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)	# freq, freq
	.loc 1 442 0
	movss	.LC0(%rip), %xmm0	#, tmp90
	divss	-4(%rbp), %xmm0	# freq, D.5784
	cvttss2siq	%xmm0, %rax	# D.5784, tmp91
	.loc 1 443 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	freq_to_period, .-freq_to_period
	.section	.bss.deltaIndex.5447,"aw",@nobits
	.type	deltaIndex.5447, @object
	.size	deltaIndex.5447, 1
deltaIndex.5447:
	.zero	1
	.section	.bss.deltaTimes.5446,"aw",@nobits
	.align 32
	.type	deltaTimes.5446, @object
	.size	deltaTimes.5446, 80
deltaTimes.5446:
	.zero	80
	.section	.bss.captureIndex.5449,"aw",@nobits
	.type	captureIndex.5449, @object
	.size	captureIndex.5449, 1
captureIndex.5449:
	.zero	1
	.section	.bss.captureTimes.5448,"aw",@nobits
	.align 32
	.type	captureTimes.5448, @object
	.size	captureTimes.5448, 80
captureTimes.5448:
	.zero	80
	.section	.rodata
	.align 4
.LC0:
	.long	1232348160
	.text
.Letext0:
	.file 2 "/usr/include/stdint.h"
	.file 3 "./src/main/config/parameter_group.h"
	.file 4 "/usr/include/mraa/gpio.h"
	.file 5 "/usr/include/mraa/i2c.h"
	.file 6 "./src/main/drivers/SFE_LSM9DS0.h"
	.file 7 "src/main/drivers/gpio.h"
	.file 8 "./src/main/drivers/timer_setup.h"
	.file 9 "src/main/drivers/pwm_rx.h"
	.file 10 "./src/main/target/edison/target.h"
	.file 11 "src/main/drivers/system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd97
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF162
	.byte	0xc
	.long	.LASF163
	.long	.LASF164
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
	.uleb128 0x2
	.long	.LASF4
	.byte	0x2
	.byte	0x26
	.long	0x58
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.long	.LASF6
	.byte	0x2
	.byte	0x30
	.long	0x71
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF8
	.byte	0x2
	.byte	0x31
	.long	0x83
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.long	.LASF10
	.byte	0x2
	.byte	0x33
	.long	0x95
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0x2
	.long	.LASF17
	.byte	0x3
	.byte	0x15
	.long	0x78
	.uleb128 0x2
	.long	.LASF18
	.byte	0x3
	.byte	0x26
	.long	0xd7
	.uleb128 0x6
	.long	0xe7
	.uleb128 0x7
	.long	0xaa
	.uleb128 0x7
	.long	0x58
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x3
	.byte	0x2d
	.long	0x105
	.uleb128 0x9
	.string	"ptr"
	.byte	0x3
	.byte	0x2e
	.long	0xaa
	.uleb128 0x9
	.string	"fn"
	.byte	0x3
	.byte	0x2f
	.long	0x105
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0xcc
	.uleb128 0xb
	.long	.LASF42
	.byte	0x20
	.byte	0x3
	.byte	0x28
	.long	0x154
	.uleb128 0xc
	.string	"pgn"
	.byte	0x3
	.byte	0x29
	.long	0xc1
	.byte	0
	.uleb128 0xd
	.long	.LASF19
	.byte	0x3
	.byte	0x2a
	.long	0x78
	.byte	0x2
	.uleb128 0xd
	.long	.LASF20
	.byte	0x3
	.byte	0x2b
	.long	0x154
	.byte	0x8
	.uleb128 0xc
	.string	"ptr"
	.byte	0x3
	.byte	0x2c
	.long	0x15a
	.byte	0x10
	.uleb128 0xd
	.long	.LASF21
	.byte	0x3
	.byte	0x30
	.long	0xe7
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x66
	.uleb128 0xa
	.byte	0x8
	.long	0x154
	.uleb128 0x2
	.long	.LASF22
	.byte	0x3
	.byte	0x31
	.long	0x10b
	.uleb128 0x2
	.long	.LASF23
	.byte	0x4
	.byte	0x37
	.long	0x176
	.uleb128 0xa
	.byte	0x8
	.long	0x17c
	.uleb128 0xe
	.long	.LASF25
	.uleb128 0x2
	.long	.LASF24
	.byte	0x5
	.byte	0x35
	.long	0x18c
	.uleb128 0xa
	.byte	0x8
	.long	0x192
	.uleb128 0xe
	.long	.LASF26
	.uleb128 0xf
	.long	.LASF30
	.byte	0x4
	.long	0x95
	.byte	0x6
	.byte	0x81
	.long	0x1ba
	.uleb128 0x10
	.long	.LASF27
	.byte	0
	.uleb128 0x10
	.long	.LASF28
	.byte	0x1
	.uleb128 0x10
	.long	.LASF29
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF30
	.byte	0x6
	.byte	0x86
	.long	0x197
	.uleb128 0xf
	.long	.LASF31
	.byte	0x4
	.long	0x95
	.byte	0x6
	.byte	0x89
	.long	0x1f4
	.uleb128 0x10
	.long	.LASF32
	.byte	0
	.uleb128 0x10
	.long	.LASF33
	.byte	0x1
	.uleb128 0x10
	.long	.LASF34
	.byte	0x2
	.uleb128 0x10
	.long	.LASF35
	.byte	0x3
	.uleb128 0x10
	.long	.LASF36
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF31
	.byte	0x6
	.byte	0x90
	.long	0x1c5
	.uleb128 0xf
	.long	.LASF37
	.byte	0x4
	.long	0x95
	.byte	0x6
	.byte	0x93
	.long	0x228
	.uleb128 0x10
	.long	.LASF38
	.byte	0
	.uleb128 0x10
	.long	.LASF39
	.byte	0x1
	.uleb128 0x10
	.long	.LASF40
	.byte	0x2
	.uleb128 0x10
	.long	.LASF41
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF37
	.byte	0x6
	.byte	0x99
	.long	0x1ff
	.uleb128 0xb
	.long	.LASF43
	.byte	0x40
	.byte	0x6
	.byte	0xdc
	.long	0x30e
	.uleb128 0xc
	.string	"gx"
	.byte	0x6
	.byte	0xe2
	.long	0x3b
	.byte	0
	.uleb128 0xc
	.string	"gy"
	.byte	0x6
	.byte	0xe2
	.long	0x3b
	.byte	0x2
	.uleb128 0xc
	.string	"gz"
	.byte	0x6
	.byte	0xe2
	.long	0x3b
	.byte	0x4
	.uleb128 0xc
	.string	"ax"
	.byte	0x6
	.byte	0xe3
	.long	0x3b
	.byte	0x6
	.uleb128 0xc
	.string	"ay"
	.byte	0x6
	.byte	0xe3
	.long	0x3b
	.byte	0x8
	.uleb128 0xc
	.string	"az"
	.byte	0x6
	.byte	0xe3
	.long	0x3b
	.byte	0xa
	.uleb128 0xc
	.string	"mx"
	.byte	0x6
	.byte	0xe4
	.long	0x3b
	.byte	0xc
	.uleb128 0xc
	.string	"my"
	.byte	0x6
	.byte	0xe4
	.long	0x3b
	.byte	0xe
	.uleb128 0xc
	.string	"mz"
	.byte	0x6
	.byte	0xe4
	.long	0x3b
	.byte	0x10
	.uleb128 0xd
	.long	.LASF44
	.byte	0x6
	.byte	0xe5
	.long	0x3b
	.byte	0x12
	.uleb128 0xd
	.long	.LASF45
	.byte	0x6
	.byte	0xe7
	.long	0x181
	.byte	0x18
	.uleb128 0xc
	.string	"xm"
	.byte	0x6
	.byte	0xe8
	.long	0x181
	.byte	0x20
	.uleb128 0xd
	.long	.LASF46
	.byte	0x6
	.byte	0xec
	.long	0x1ba
	.byte	0x28
	.uleb128 0xd
	.long	.LASF47
	.byte	0x6
	.byte	0xed
	.long	0x1f4
	.byte	0x2c
	.uleb128 0xd
	.long	.LASF48
	.byte	0x6
	.byte	0xee
	.long	0x228
	.byte	0x30
	.uleb128 0xd
	.long	.LASF49
	.byte	0x6
	.byte	0xf3
	.long	0x30e
	.byte	0x34
	.uleb128 0xd
	.long	.LASF50
	.byte	0x6
	.byte	0xf3
	.long	0x30e
	.byte	0x38
	.uleb128 0xd
	.long	.LASF51
	.byte	0x6
	.byte	0xf3
	.long	0x30e
	.byte	0x3c
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF52
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0xf5
	.long	0x233
	.uleb128 0x11
	.byte	0x4
	.long	0x95
	.byte	0x7
	.byte	0x4e
	.long	0x33e
	.uleb128 0x12
	.string	"In"
	.byte	0
	.uleb128 0x12
	.string	"Out"
	.byte	0x1
	.uleb128 0x12
	.string	"PWM"
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x7
	.byte	0x52
	.long	0x320
	.uleb128 0x11
	.byte	0x4
	.long	0x95
	.byte	0x7
	.byte	0x56
	.long	0x368
	.uleb128 0x10
	.long	.LASF55
	.byte	0x1
	.uleb128 0x10
	.long	.LASF56
	.byte	0x2
	.uleb128 0x10
	.long	.LASF57
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	.LASF58
	.byte	0x18
	.byte	0x7
	.byte	0x79
	.long	0x3a5
	.uleb128 0xc
	.string	"pin"
	.byte	0x7
	.byte	0x7b
	.long	0x78
	.byte	0
	.uleb128 0xd
	.long	.LASF59
	.byte	0x7
	.byte	0x7c
	.long	0x16b
	.byte	0x8
	.uleb128 0xd
	.long	.LASF60
	.byte	0x7
	.byte	0x7d
	.long	0x58
	.byte	0x10
	.uleb128 0xd
	.long	.LASF61
	.byte	0x7
	.byte	0x7e
	.long	0x58
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x7
	.byte	0x7f
	.long	0x368
	.uleb128 0x13
	.byte	0
	.byte	0x8
	.byte	0x12
	.uleb128 0x2
	.long	.LASF63
	.byte	0x8
	.byte	0x12
	.long	0x3b0
	.uleb128 0x14
	.byte	0x18
	.byte	0x8
	.byte	0x15
	.long	0x3ec
	.uleb128 0xd
	.long	.LASF64
	.byte	0x8
	.byte	0x16
	.long	0x66
	.byte	0
	.uleb128 0xc
	.string	"tim"
	.byte	0x8
	.byte	0x17
	.long	0x3ec
	.byte	0x8
	.uleb128 0xd
	.long	.LASF65
	.byte	0x8
	.byte	0x18
	.long	0x3f2
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x3b4
	.uleb128 0xa
	.byte	0x8
	.long	0x3a5
	.uleb128 0x2
	.long	.LASF66
	.byte	0x8
	.byte	0x19
	.long	0x3bf
	.uleb128 0x2
	.long	.LASF67
	.byte	0x8
	.byte	0x1c
	.long	0x78
	.uleb128 0x2
	.long	.LASF68
	.byte	0x8
	.byte	0x21
	.long	0x419
	.uleb128 0x6
	.long	0x429
	.uleb128 0x7
	.long	0x429
	.uleb128 0x7
	.long	0x78
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x42f
	.uleb128 0xb
	.long	.LASF69
	.byte	0x8
	.byte	0x8
	.byte	0x24
	.long	0x447
	.uleb128 0xc
	.string	"fn"
	.byte	0x8
	.byte	0x25
	.long	0x48c
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF70
	.byte	0x8
	.byte	0x22
	.long	0x452
	.uleb128 0x6
	.long	0x462
	.uleb128 0x7
	.long	0x462
	.uleb128 0x7
	.long	0x78
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x468
	.uleb128 0xb
	.long	.LASF71
	.byte	0x10
	.byte	0x8
	.byte	0x28
	.long	0x48c
	.uleb128 0xc
	.string	"fn"
	.byte	0x8
	.byte	0x29
	.long	0x49d
	.byte	0
	.uleb128 0xd
	.long	.LASF72
	.byte	0x8
	.byte	0x2a
	.long	0x462
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x40e
	.uleb128 0x2
	.long	.LASF73
	.byte	0x8
	.byte	0x26
	.long	0x42f
	.uleb128 0xa
	.byte	0x8
	.long	0x447
	.uleb128 0x2
	.long	.LASF74
	.byte	0x8
	.byte	0x2b
	.long	0x468
	.uleb128 0xa
	.byte	0x8
	.long	0x492
	.uleb128 0x11
	.byte	0x4
	.long	0x95
	.byte	0x8
	.byte	0x3b
	.long	0x4cd
	.uleb128 0x10
	.long	.LASF75
	.byte	0
	.uleb128 0x10
	.long	.LASF76
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.long	0x95
	.byte	0x9
	.byte	0x14
	.long	0x4e6
	.uleb128 0x10
	.long	.LASF77
	.byte	0
	.uleb128 0x10
	.long	.LASF78
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF79
	.byte	0x9
	.byte	0x17
	.long	0x4cd
	.uleb128 0xb
	.long	.LASF80
	.byte	0x4
	.byte	0x9
	.byte	0x19
	.long	0x50a
	.uleb128 0xd
	.long	.LASF81
	.byte	0x9
	.byte	0x1a
	.long	0x4e6
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF82
	.byte	0x9
	.byte	0x1b
	.long	0x4f1
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF83
	.uleb128 0xa
	.byte	0x8
	.long	0x522
	.uleb128 0x15
	.long	0x3f8
	.uleb128 0x11
	.byte	0x4
	.long	0x95
	.byte	0x1
	.byte	0x3a
	.long	0x540
	.uleb128 0x10
	.long	.LASF84
	.byte	0
	.uleb128 0x10
	.long	.LASF85
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF86
	.byte	0x1
	.byte	0x3d
	.long	0x527
	.uleb128 0x14
	.byte	0x30
	.byte	0x1
	.byte	0x3f
	.long	0x5cc
	.uleb128 0xd
	.long	.LASF60
	.byte	0x1
	.byte	0x40
	.long	0x540
	.byte	0
	.uleb128 0xd
	.long	.LASF64
	.byte	0x1
	.byte	0x41
	.long	0x66
	.byte	0x4
	.uleb128 0xd
	.long	.LASF87
	.byte	0x1
	.byte	0x43
	.long	0x66
	.byte	0x5
	.uleb128 0xd
	.long	.LASF88
	.byte	0x1
	.byte	0x44
	.long	0x403
	.byte	0x6
	.uleb128 0xd
	.long	.LASF89
	.byte	0x1
	.byte	0x45
	.long	0x403
	.byte	0x8
	.uleb128 0xd
	.long	.LASF90
	.byte	0x1
	.byte	0x46
	.long	0x403
	.byte	0xa
	.uleb128 0xd
	.long	.LASF91
	.byte	0x1
	.byte	0x48
	.long	0x66
	.byte	0xc
	.uleb128 0xd
	.long	.LASF92
	.byte	0x1
	.byte	0x4a
	.long	0x51c
	.byte	0x10
	.uleb128 0xd
	.long	.LASF93
	.byte	0x1
	.byte	0x4b
	.long	0x492
	.byte	0x18
	.uleb128 0xd
	.long	.LASF94
	.byte	0x1
	.byte	0x4c
	.long	0x4a3
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF95
	.byte	0x1
	.byte	0x4d
	.long	0x54b
	.uleb128 0xb
	.long	.LASF96
	.byte	0x4c
	.byte	0x1
	.byte	0x5b
	.long	0x668
	.uleb128 0xd
	.long	.LASF97
	.byte	0x1
	.byte	0x5c
	.long	0x66
	.byte	0
	.uleb128 0xd
	.long	.LASF98
	.byte	0x1
	.byte	0x5e
	.long	0x8a
	.byte	0x4
	.uleb128 0xd
	.long	.LASF99
	.byte	0x1
	.byte	0x5f
	.long	0x8a
	.byte	0x8
	.uleb128 0xd
	.long	.LASF100
	.byte	0x1
	.byte	0x60
	.long	0x8a
	.byte	0xc
	.uleb128 0xd
	.long	.LASF101
	.byte	0x1
	.byte	0x61
	.long	0x668
	.byte	0x10
	.uleb128 0xd
	.long	.LASF102
	.byte	0x1
	.byte	0x62
	.long	0x8a
	.byte	0x40
	.uleb128 0xd
	.long	.LASF103
	.byte	0x1
	.byte	0x63
	.long	0x29
	.byte	0x44
	.uleb128 0xd
	.long	.LASF104
	.byte	0x1
	.byte	0x64
	.long	0x29
	.byte	0x45
	.uleb128 0xd
	.long	.LASF105
	.byte	0x1
	.byte	0x65
	.long	0x66
	.byte	0x46
	.uleb128 0xd
	.long	.LASF106
	.byte	0x1
	.byte	0x67
	.long	0x515
	.byte	0x47
	.uleb128 0xd
	.long	.LASF107
	.byte	0x1
	.byte	0x68
	.long	0x515
	.byte	0x48
	.byte	0
	.uleb128 0x16
	.long	0x8a
	.long	0x678
	.uleb128 0x17
	.long	0xa3
	.byte	0xb
	.byte	0
	.uleb128 0x2
	.long	.LASF108
	.byte	0x1
	.byte	0x69
	.long	0x5d7
	.uleb128 0x11
	.byte	0x4
	.long	0x95
	.byte	0x1
	.byte	0x87
	.long	0x69c
	.uleb128 0x10
	.long	.LASF109
	.byte	0
	.uleb128 0x10
	.long	.LASF110
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF111
	.byte	0x1
	.byte	0x8a
	.long	0x683
	.uleb128 0xb
	.long	.LASF112
	.byte	0x8
	.byte	0x1
	.byte	0x8c
	.long	0x6cc
	.uleb128 0xd
	.long	.LASF113
	.byte	0x1
	.byte	0x8d
	.long	0x69c
	.byte	0
	.uleb128 0xd
	.long	.LASF90
	.byte	0x1
	.byte	0x8e
	.long	0x8a
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF114
	.byte	0x1
	.byte	0x8f
	.long	0x6a7
	.uleb128 0x18
	.long	.LASF165
	.byte	0x1
	.byte	0x76
	.long	0x515
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.long	.LASF115
	.byte	0x1
	.byte	0x7b
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.long	.LASF116
	.byte	0x1
	.byte	0x82
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.long	.LASF132
	.byte	0x1
	.byte	0x94
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x760
	.uleb128 0x1b
	.long	.LASF113
	.byte	0x1
	.byte	0x94
	.long	0x69c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.long	.LASF90
	.byte	0x1
	.byte	0x94
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF166
	.byte	0x1
	.byte	0x9f
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.long	.LASF118
	.byte	0x1
	.byte	0xad
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x7b3
	.uleb128 0x1b
	.long	.LASF117
	.byte	0x1
	.byte	0xad
	.long	0x7b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.long	.LASF90
	.byte	0x1
	.byte	0xad
	.long	0x403
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x4a3
	.uleb128 0x1d
	.long	.LASF119
	.byte	0x1
	.byte	0xb9
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x87d
	.uleb128 0x1b
	.long	.LASF117
	.byte	0x1
	.byte	0xb9
	.long	0x4ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF90
	.byte	0x1
	.byte	0xb9
	.long	0x403
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0xbe
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF120
	.byte	0x1
	.byte	0xc0
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF121
	.byte	0x1
	.byte	0xc1
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.long	.LASF99
	.byte	0x1
	.byte	0xc4
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.long	.LASF122
	.byte	0x1
	.byte	0xe1
	.long	0x87d
	.uleb128 0x9
	.byte	0x3
	.quad	deltaTimes.5446
	.uleb128 0x1f
	.long	.LASF123
	.byte	0x1
	.byte	0xe2
	.long	0x66
	.uleb128 0x9
	.byte	0x3
	.quad	deltaIndex.5447
	.uleb128 0x1f
	.long	.LASF124
	.byte	0x1
	.byte	0xeb
	.long	0x87d
	.uleb128 0x9
	.byte	0x3
	.quad	captureTimes.5448
	.uleb128 0x1f
	.long	.LASF125
	.byte	0x1
	.byte	0xec
	.long	0x66
	.uleb128 0x9
	.byte	0x3
	.quad	captureIndex.5449
	.byte	0
	.uleb128 0x16
	.long	0x8a
	.long	0x88d
	.uleb128 0x17
	.long	0xa3
	.byte	0x13
	.byte	0
	.uleb128 0x20
	.long	.LASF140
	.byte	0x1
	.value	0x128
	.long	0x515
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x8bf
	.uleb128 0x21
	.long	.LASF64
	.byte	0x1
	.value	0x12a
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.long	.LASF126
	.byte	0x1
	.value	0x133
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x92c
	.uleb128 0x23
	.long	.LASF117
	.byte	0x1
	.value	0x133
	.long	0x7b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF90
	.byte	0x1
	.value	0x133
	.long	0x403
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.long	.LASF127
	.byte	0x1
	.value	0x136
	.long	0x92c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x21
	.long	.LASF128
	.byte	0x1
	.value	0x136
	.long	0x932
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x5cc
	.uleb128 0xa
	.byte	0x8
	.long	0x938
	.uleb128 0x15
	.long	0x4a3
	.uleb128 0x25
	.long	.LASF129
	.byte	0x1
	.value	0x13e
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x9b9
	.uleb128 0x23
	.long	.LASF117
	.byte	0x1
	.value	0x13e
	.long	0x4ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF90
	.byte	0x1
	.value	0x13e
	.long	0x403
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.long	.LASF127
	.byte	0x1
	.value	0x140
	.long	0x92c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF130
	.byte	0x1
	.value	0x141
	.long	0x51c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x21
	.long	.LASF128
	.byte	0x1
	.value	0x140
	.long	0x9b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x9bf
	.uleb128 0x15
	.long	0x492
	.uleb128 0x25
	.long	.LASF131
	.byte	0x1
	.value	0x157
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xa1f
	.uleb128 0x23
	.long	.LASF65
	.byte	0x1
	.value	0x157
	.long	0x3f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"pin"
	.byte	0x1
	.value	0x157
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.long	.LASF60
	.byte	0x1
	.value	0x157
	.long	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"cfg"
	.byte	0x1
	.value	0x159
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x28
	.long	.LASF133
	.byte	0x1
	.value	0x161
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xa6b
	.uleb128 0x26
	.string	"tim"
	.byte	0x1
	.value	0x161
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF64
	.byte	0x1
	.value	0x161
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.long	.LASF134
	.byte	0x1
	.value	0x161
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x29
	.long	.LASF135
	.byte	0x1
	.value	0x174
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0xab7
	.uleb128 0x23
	.long	.LASF130
	.byte	0x1
	.value	0x174
	.long	0x51c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF64
	.byte	0x1
	.value	0x174
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.long	.LASF136
	.byte	0x1
	.value	0x176
	.long	0x92c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF137
	.byte	0x1
	.value	0x18d
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0xaf4
	.uleb128 0x23
	.long	.LASF130
	.byte	0x1
	.value	0x18d
	.long	0x51c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF138
	.byte	0x1
	.value	0x18d
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x29
	.long	.LASF139
	.byte	0x1
	.value	0x194
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0xb31
	.uleb128 0x23
	.long	.LASF130
	.byte	0x1
	.value	0x194
	.long	0x51c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF136
	.byte	0x1
	.value	0x198
	.long	0x92c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF141
	.byte	0x1
	.value	0x1aa
	.long	0x78
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0xb63
	.uleb128 0x23
	.long	.LASF64
	.byte	0x1
	.value	0x1aa
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.long	.LASF142
	.byte	0x1
	.value	0x1af
	.long	0x78
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0xb95
	.uleb128 0x23
	.long	.LASF64
	.byte	0x1
	.value	0x1af
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.long	.LASF143
	.byte	0x1
	.value	0x1b3
	.long	0x30e
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0xbc7
	.uleb128 0x23
	.long	.LASF144
	.byte	0x1
	.value	0x1b3
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.long	.LASF145
	.byte	0x1
	.value	0x1b8
	.long	0x8a
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0xbf9
	.uleb128 0x23
	.long	.LASF146
	.byte	0x1
	.value	0x1b8
	.long	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.long	0x5cc
	.long	0xc09
	.uleb128 0x17
	.long	0xa3
	.byte	0x7
	.byte	0
	.uleb128 0x1f
	.long	.LASF147
	.byte	0x1
	.byte	0x4f
	.long	0xbf9
	.uleb128 0x9
	.byte	0x3
	.quad	pwmInputPorts
	.uleb128 0x16
	.long	0x78
	.long	0xc2e
	.uleb128 0x17
	.long	0xa3
	.byte	0xb
	.byte	0
	.uleb128 0x1f
	.long	.LASF101
	.byte	0x1
	.byte	0x51
	.long	0xc1e
	.uleb128 0x9
	.byte	0x3
	.quad	captures
	.uleb128 0x1f
	.long	.LASF148
	.byte	0x1
	.byte	0x57
	.long	0x66
	.uleb128 0x9
	.byte	0x3
	.quad	ppmFrameCount
	.uleb128 0x1f
	.long	.LASF149
	.byte	0x1
	.byte	0x58
	.long	0x66
	.uleb128 0x9
	.byte	0x3
	.quad	lastPPMFrameCount
	.uleb128 0x1f
	.long	.LASF150
	.byte	0x1
	.byte	0x59
	.long	0x66
	.uleb128 0x9
	.byte	0x3
	.quad	ppmCountShift
	.uleb128 0x16
	.long	0x6cc
	.long	0xc92
	.uleb128 0x17
	.long	0xa3
	.byte	0x13
	.byte	0
	.uleb128 0x1f
	.long	.LASF151
	.byte	0x1
	.byte	0x91
	.long	0xc82
	.uleb128 0x9
	.byte	0x3
	.quad	ppmEvents
	.uleb128 0x1f
	.long	.LASF152
	.byte	0x1
	.byte	0x92
	.long	0x66
	.uleb128 0x9
	.byte	0x3
	.quad	ppmEventIndex
	.uleb128 0x2a
	.long	.LASF153
	.byte	0xa
	.byte	0xca
	.long	0x8a
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_0
	.uleb128 0x2a
	.long	.LASF154
	.byte	0xa
	.byte	0xcb
	.long	0x8a
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_1
	.uleb128 0x2a
	.long	.LASF155
	.byte	0xa
	.byte	0xcc
	.long	0x8a
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_2
	.uleb128 0x2a
	.long	.LASF156
	.byte	0x3
	.byte	0x43
	.long	0xd10
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_start
	.uleb128 0xa
	.byte	0x8
	.long	0x160
	.uleb128 0x2a
	.long	.LASF157
	.byte	0x3
	.byte	0x44
	.long	0xd10
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_end
	.uleb128 0x2a
	.long	.LASF158
	.byte	0x3
	.byte	0x47
	.long	0x154
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_start
	.uleb128 0x2a
	.long	.LASF159
	.byte	0x3
	.byte	0x48
	.long	0x154
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_end
	.uleb128 0x2b
	.string	"imu"
	.byte	0xb
	.byte	0x38
	.long	0xd6a
	.uleb128 0x9
	.byte	0x3
	.quad	imu
	.uleb128 0xa
	.byte	0x8
	.long	0x315
	.uleb128 0x2a
	.long	.LASF160
	.byte	0x9
	.byte	0x1d
	.long	0x50a
	.uleb128 0x9
	.byte	0x3
	.quad	pwmRxConfig_System
	.uleb128 0x2a
	.long	.LASF161
	.byte	0x1
	.byte	0x6b
	.long	0x678
	.uleb128 0x9
	.byte	0x3
	.quad	ppmDev
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x26
	.uleb128 0x5
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.long	0x14c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
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
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.quad	.LFB20
	.quad	.LFE20
	.quad	.LFB21
	.quad	.LFE21
	.quad	.LFB22
	.quad	.LFE22
	.quad	.LFB23
	.quad	.LFE23
	.quad	.LFB24
	.quad	.LFE24
	.quad	.LFB25
	.quad	.LFE25
	.quad	.LFB26
	.quad	.LFE26
	.quad	.LFB27
	.quad	.LFE27
	.quad	.LFB28
	.quad	.LFE28
	.quad	.LFB29
	.quad	.LFE29
	.quad	.LFB30
	.quad	.LFE30
	.quad	.LFB31
	.quad	.LFE31
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF149:
	.string	"lastPPMFrameCount"
.LASF21:
	.string	"reset"
.LASF69:
	.string	"timerCCHandlerRec_s"
.LASF66:
	.string	"timerHardware_t"
.LASF106:
	.string	"tracking"
.LASF18:
	.string	"pgResetFunc"
.LASF38:
	.string	"M_SCALE_2GS"
.LASF62:
	.string	"GPIO_TypeDef"
.LASF63:
	.string	"TIM_TypeDef"
.LASF144:
	.string	"period"
.LASF115:
	.string	"resetPPMDataReceivedState"
.LASF16:
	.string	"long long unsigned int"
.LASF55:
	.string	"Speed_10MHz"
.LASF72:
	.string	"next"
.LASF47:
	.string	"aScale"
.LASF97:
	.string	"pulseIndex"
.LASF89:
	.string	"fall"
.LASF56:
	.string	"Speed_2MHz"
.LASF127:
	.string	"pwmInputPort"
.LASF1:
	.string	"int16_t"
.LASF15:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF146:
	.string	"freq"
.LASF78:
	.string	"INPUT_FILTERING_ENABLED"
.LASF71:
	.string	"timerOvrHandlerRec_s"
.LASF125:
	.string	"captureIndex"
.LASF160:
	.string	"pwmRxConfig_System"
.LASF51:
	.string	"mRes"
.LASF24:
	.string	"mraa_i2c_context"
.LASF140:
	.string	"isPWMDataBeingReceived"
.LASF87:
	.string	"state"
.LASF5:
	.string	"long int"
.LASF85:
	.string	"INPUT_MODE_PWM"
.LASF100:
	.string	"deltaTime"
.LASF29:
	.string	"G_SCALE_2000DPS"
.LASF155:
	.string	"U_ID_2"
.LASF34:
	.string	"A_SCALE_6G"
.LASF75:
	.string	"ONE_SHOT"
.LASF112:
	.string	"ppmISREvent_s"
.LASF102:
	.string	"largeCounter"
.LASF8:
	.string	"uint16_t"
.LASF44:
	.string	"temperature"
.LASF138:
	.string	"sharedPwmTimer"
.LASF43:
	.string	"LSM9DS0"
.LASF132:
	.string	"ppmISREvent"
.LASF136:
	.string	"self"
.LASF114:
	.string	"ppmISREvent_t"
.LASF79:
	.string	"inputFilteringMode_e"
.LASF84:
	.string	"INPUT_MODE_PPM"
.LASF27:
	.string	"G_SCALE_245DPS"
.LASF130:
	.string	"timerHardwarePtr"
.LASF120:
	.string	"previousTime"
.LASF124:
	.string	"captureTimes"
.LASF110:
	.string	"SOURCE_EDGE"
.LASF11:
	.string	"unsigned int"
.LASF53:
	.string	"LSM9DS0_t"
.LASF93:
	.string	"edgeCb"
.LASF162:
	.string	"GNU C99 5.4.1 20160904 -mtune=generic -march=x86-64 -g -std=gnu99 -ffunction-sections -fdata-sections -ffat-lto-objects -fstack-protector-strong"
.LASF17:
	.string	"pgn_t"
.LASF118:
	.string	"ppmOverflowCallback"
.LASF12:
	.string	"long unsigned int"
.LASF23:
	.string	"mraa_gpio_context"
.LASF33:
	.string	"A_SCALE_4G"
.LASF126:
	.string	"pwmOverflowCallback"
.LASF92:
	.string	"timerHardware"
.LASF19:
	.string	"size"
.LASF9:
	.string	"short unsigned int"
.LASF95:
	.string	"pwmInputPort_t"
.LASF119:
	.string	"ppmEdgeCallback"
.LASF36:
	.string	"A_SCALE_16G"
.LASF111:
	.string	"eventSource_e"
.LASF91:
	.string	"missedEvents"
.LASF107:
	.string	"overflowed"
.LASF147:
	.string	"pwmInputPorts"
.LASF103:
	.string	"numChannels"
.LASF98:
	.string	"currentCapture"
.LASF166:
	.string	"ppmInit"
.LASF49:
	.string	"gRes"
.LASF142:
	.string	"pwmRead"
.LASF90:
	.string	"capture"
.LASF46:
	.string	"gScale"
.LASF158:
	.string	"__pg_resetdata_start"
.LASF116:
	.string	"pwmRxInit"
.LASF157:
	.string	"__pg_registry_end"
.LASF35:
	.string	"A_SCALE_8G"
.LASF45:
	.string	"gyro"
.LASF50:
	.string	"aRes"
.LASF113:
	.string	"source"
.LASF13:
	.string	"sizetype"
.LASF30:
	.string	"gyro_scale"
.LASF82:
	.string	"pwmRxConfig_t"
.LASF20:
	.string	"address"
.LASF73:
	.string	"timerCCHandlerRec_t"
.LASF128:
	.string	"__mptr"
.LASF26:
	.string	"_i2c"
.LASF104:
	.string	"numChannelsPrevFrame"
.LASF117:
	.string	"cbRec"
.LASF122:
	.string	"deltaTimes"
.LASF121:
	.string	"previousCapture"
.LASF135:
	.string	"pwmInConfig"
.LASF28:
	.string	"G_SCALE_500DPS"
.LASF159:
	.string	"__pg_resetdata_end"
.LASF156:
	.string	"__pg_registry_start"
.LASF88:
	.string	"rise"
.LASF153:
	.string	"U_ID_0"
.LASF154:
	.string	"U_ID_1"
.LASF164:
	.string	"/home/aravind/git/cleanflight"
.LASF52:
	.string	"float"
.LASF133:
	.string	"pwmICConfig"
.LASF151:
	.string	"ppmEvents"
.LASF57:
	.string	"Speed_50MHz"
.LASF83:
	.string	"_Bool"
.LASF4:
	.string	"int32_t"
.LASF7:
	.string	"unsigned char"
.LASF101:
	.string	"captures"
.LASF129:
	.string	"pwmEdgeCallback"
.LASF3:
	.string	"short int"
.LASF74:
	.string	"timerOvrHandlerRec_t"
.LASF32:
	.string	"A_SCALE_2G"
.LASF131:
	.string	"pwmGPIOConfig"
.LASF39:
	.string	"M_SCALE_4GS"
.LASF64:
	.string	"channel"
.LASF123:
	.string	"deltaIndex"
.LASF165:
	.string	"isPPMDataBeingReceived"
.LASF137:
	.string	"ppmAvoidPWMTimerClash"
.LASF10:
	.string	"uint32_t"
.LASF77:
	.string	"INPUT_FILTERING_DISABLED"
.LASF134:
	.string	"polarity"
.LASF81:
	.string	"inputFilteringMode"
.LASF42:
	.string	"pgRegistry_s"
.LASF22:
	.string	"pgRegistry_t"
.LASF14:
	.string	"char"
.LASF60:
	.string	"mode"
.LASF67:
	.string	"captureCompare_t"
.LASF150:
	.string	"ppmCountShift"
.LASF68:
	.string	"timerCCHandlerCallback"
.LASF76:
	.string	"PERIODIC"
.LASF48:
	.string	"mScale"
.LASF96:
	.string	"ppmDevice_s"
.LASF108:
	.string	"ppmDevice_t"
.LASF163:
	.string	"src/main/drivers/pwm_rx.c"
.LASF54:
	.string	"GPIO_Mode"
.LASF59:
	.string	"context"
.LASF99:
	.string	"currentTime"
.LASF0:
	.string	"int8_t"
.LASF139:
	.string	"ppmInConfig"
.LASF58:
	.string	"GPIO_TypeDef_s"
.LASF145:
	.string	"freq_to_period"
.LASF143:
	.string	"period_to_freq"
.LASF148:
	.string	"ppmFrameCount"
.LASF37:
	.string	"mag_scale"
.LASF80:
	.string	"pwmRxConfig_s"
.LASF152:
	.string	"ppmEventIndex"
.LASF6:
	.string	"uint8_t"
.LASF109:
	.string	"SOURCE_OVERFLOW"
.LASF70:
	.string	"timerOvrHandlerCallback"
.LASF65:
	.string	"gpio"
.LASF31:
	.string	"accel_scale"
.LASF61:
	.string	"speed"
.LASF94:
	.string	"overflowCb"
.LASF161:
	.string	"ppmDev"
.LASF25:
	.string	"_gpio"
.LASF86:
	.string	"pwmInputMode_t"
.LASF40:
	.string	"M_SCALE_8GS"
.LASF41:
	.string	"M_SCALE_12GS"
.LASF141:
	.string	"ppmRead"
.LASF105:
	.string	"stableFramesSeenCount"
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
