	.file	"gyro.c"
# GNU C99 (Ubuntu 5.4.1-2ubuntu1~16.04) version 5.4.1 20160904 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.1 20160904, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed gyro.i -mtune=generic -march=x86-64 -g
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
	.comm	sensorSelectionConfig_System,3,1
	.comm	sensorAlignmentConfig_System,12,8
	.comm	sensorTrims_System,12,8
	.comm	boardAlignment_System,6,1
	.comm	gyroConfig,8,8
	.globl	gyroAlign
	.section	.bss.gyroAlign,"aw",@nobits
	.align 4
	.type	gyroAlign, @object
	.size	gyroAlign, 4
gyroAlign:
	.zero	4
	.comm	gyroADC,12,8
	.section	.bss.calibratingG,"aw",@nobits
	.align 2
	.type	calibratingG, @object
	.size	calibratingG, 2
calibratingG:
	.zero	2
	.section	.bss.gyroADCRaw,"aw",@nobits
	.align 2
	.type	gyroADCRaw, @object
	.size	gyroADCRaw, 6
gyroADCRaw:
	.zero	6
	.section	.bss.gyroZero,"aw",@nobits
	.align 8
	.type	gyroZero, @object
	.size	gyroZero, 12
gyroZero:
	.zero	12
	.section	.bss.gyroFilterState,"aw",@nobits
	.align 32
	.type	gyroFilterState, @object
	.size	gyroFilterState, 108
gyroFilterState:
	.zero	108
	.section	.bss.gyroFilterStateIsSet,"aw",@nobits
	.type	gyroFilterStateIsSet, @object
	.size	gyroFilterStateIsSet, 1
gyroFilterStateIsSet:
	.zero	1
	.globl	gyro_initialized
	.section	.bss.gyro_initialized,"aw",@nobits
	.type	gyro_initialized, @object
	.size	gyro_initialized, 1
gyro_initialized:
	.zero	1
	.section	.text.pgResetFn_gyroConfig,"ax",@progbits
	.globl	pgResetFn_gyroConfig
	.type	pgResetFn_gyroConfig, @function
pgResetFn_gyroConfig:
.LFB8:
	.file 1 "src/main/sensors/gyro.c"
	.loc 1 66 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 67 0
	movq	gyroConfig(%rip), %rax	# gyroConfig, D.4066
	movb	$0, 1(%rax)	#, _2->gyro_lpf
	.loc 1 68 0
	movq	gyroConfig(%rip), %rax	# gyroConfig, D.4066
	movw	$100, 2(%rax)	#, _4->soft_gyro_lpf_hz
	.loc 1 69 0
	movq	gyroConfig(%rip), %rax	# gyroConfig, D.4066
	movb	$32, (%rax)	#, _6->gyroMovementCalibrationThreshold
	.loc 1 70 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	pgResetFn_gyroConfig, .-pgResetFn_gyroConfig
	.section	.text.initGyroFilterCoefficients,"ax",@progbits
	.type	initGyroFilterCoefficients, @function
initGyroFilterCoefficients:
.LFB9:
	.loc 1 73 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 74 0
	movq	gyroConfig(%rip), %rax	# gyroConfig, D.4067
	movzwl	2(%rax), %eax	# _5->soft_gyro_lpf_hz, D.4068
	testw	%ax, %ax	# D.4068
	je	.L6	#,
.LBB2:
	.loc 1 76 0
	movl	$0, -4(%rbp)	#, axis
	jmp	.L4	#
.L5:
	.loc 1 77 0 discriminator 3
	movl	targetLooptime(%rip), %ecx	# targetLooptime, D.4069
	movl	-4(%rbp), %eax	# axis, tmp95
	movslq	%eax, %rdx	# tmp95, tmp94
	movq	%rdx, %rax	# tmp94, tmp96
	salq	$3, %rax	#, tmp96
	addq	%rdx, %rax	# tmp94, tmp96
	salq	$2, %rax	#, tmp97
	leaq	gyroFilterState(%rax), %rdx	#, D.4070
	movq	gyroConfig(%rip), %rax	# gyroConfig, D.4067
	movzwl	2(%rax), %eax	# _10->soft_gyro_lpf_hz, D.4068
	movzwl	%ax, %eax	# D.4068, tmp98
	pxor	%xmm0, %xmm0	# D.4071
	cvtsi2ss	%eax, %xmm0	# tmp98, D.4071
	movl	%ecx, %esi	# D.4069,
	movq	%rdx, %rdi	# D.4070,
	call	BiQuadNewLpf	#
	.loc 1 76 0 discriminator 3
	addl	$1, -4(%rbp)	#, axis
.L4:
	.loc 1 76 0 is_stmt 0 discriminator 1
	cmpl	$2, -4(%rbp)	#, axis
	jle	.L5	#,
.LBE2:
	.loc 1 79 0 is_stmt 1
	movb	$1, gyroFilterStateIsSet(%rip)	#, gyroFilterStateIsSet
.L6:
	.loc 1 81 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	initGyroFilterCoefficients, .-initGyroFilterCoefficients
	.section	.text.gyroSetCalibrationCycles,"ax",@progbits
	.globl	gyroSetCalibrationCycles
	.type	gyroSetCalibrationCycles, @function
gyroSetCalibrationCycles:
.LFB10:
	.loc 1 84 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, %eax	# calibrationCyclesRequired, tmp87
	movw	%ax, -4(%rbp)	# tmp87, calibrationCyclesRequired
	.loc 1 85 0
	movzwl	-4(%rbp), %eax	# calibrationCyclesRequired, tmp88
	movw	%ax, calibratingG(%rip)	# tmp88, calibratingG
	.loc 1 86 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	gyroSetCalibrationCycles, .-gyroSetCalibrationCycles
	.section	.text.isGyroCalibrationComplete,"ax",@progbits
	.globl	isGyroCalibrationComplete
	.type	isGyroCalibrationComplete, @function
isGyroCalibrationComplete:
.LFB11:
	.loc 1 89 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 90 0
	movzwl	calibratingG(%rip), %eax	# calibratingG, D.4072
	testw	%ax, %ax	# D.4072
	sete	%al	#, D.4073
	.loc 1 91 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	isGyroCalibrationComplete, .-isGyroCalibrationComplete
	.section	.text.isOnFinalGyroCalibrationCycle,"ax",@progbits
	.type	isOnFinalGyroCalibrationCycle, @function
isOnFinalGyroCalibrationCycle:
.LFB12:
	.loc 1 94 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 95 0
	movzwl	calibratingG(%rip), %eax	# calibratingG, D.4074
	cmpw	$1, %ax	#, D.4074
	sete	%al	#, D.4075
	.loc 1 96 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	isOnFinalGyroCalibrationCycle, .-isOnFinalGyroCalibrationCycle
	.section	.text.isOnFirstGyroCalibrationCycle,"ax",@progbits
	.type	isOnFirstGyroCalibrationCycle, @function
isOnFirstGyroCalibrationCycle:
.LFB13:
	.loc 1 99 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 100 0
	movzwl	calibratingG(%rip), %eax	# calibratingG, D.4076
	cmpw	$1000, %ax	#, D.4076
	sete	%al	#, D.4077
	.loc 1 101 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	isOnFirstGyroCalibrationCycle, .-isOnFirstGyroCalibrationCycle
	.section	.text.performAcclerationCalibration,"ax",@progbits
	.type	performAcclerationCalibration, @function
performAcclerationCalibration:
.LFB14:
	.loc 1 104 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, %eax	# gyroMovementCalibrationThreshold, tmp105
	movb	%al, -20(%rbp)	# tmp105, gyroMovementCalibrationThreshold
.LBB3:
	.loc 1 108 0
	movl	$0, -8(%rbp)	#, axis
	jmp	.L15	#
.L21:
	.loc 1 111 0
	call	isOnFirstGyroCalibrationCycle	#
	testb	%al, %al	# D.4078
	je	.L16	#,
	.loc 1 112 0
	movl	-8(%rbp), %eax	# axis, tmp107
	cltq
	movl	$0, g.3941(,%rax,4)	#, g
	.loc 1 113 0
	movl	-8(%rbp), %eax	# axis, tmp109
	movslq	%eax, %rdx	# tmp109, tmp108
	movq	%rdx, %rax	# tmp108, tmp110
	salq	$2, %rax	#, tmp110
	addq	%rdx, %rax	# tmp108, tmp110
	salq	$2, %rax	#, tmp111
	addq	$var.3942, %rax	#, D.4079
	movq	%rax, %rdi	# D.4079,
	call	devClear	#
.L16:
	.loc 1 117 0
	movl	-8(%rbp), %eax	# axis, tmp113
	cltq
	movl	g.3941(,%rax,4), %edx	# g, D.4080
	movl	-8(%rbp), %eax	# axis, tmp115
	cltq
	movl	gyroADC(,%rax,4), %eax	# gyroADC, D.4080
	addl	%eax, %edx	# D.4080, D.4080
	movl	-8(%rbp), %eax	# axis, tmp117
	cltq
	movl	%edx, g.3941(,%rax,4)	# D.4080, g
	.loc 1 118 0
	movl	-8(%rbp), %eax	# axis, tmp119
	cltq
	movl	gyroADC(,%rax,4), %eax	# gyroADC, D.4080
	pxor	%xmm0, %xmm0	# D.4081
	cvtsi2ss	%eax, %xmm0	# D.4080, D.4081
	movl	-8(%rbp), %eax	# axis, tmp121
	movslq	%eax, %rdx	# tmp121, tmp120
	movq	%rdx, %rax	# tmp120, tmp122
	salq	$2, %rax	#, tmp122
	addq	%rdx, %rax	# tmp120, tmp122
	salq	$2, %rax	#, tmp123
	addq	$var.3942, %rax	#, D.4079
	movq	%rax, %rdi	# D.4079,
	call	devPush	#
	.loc 1 121 0
	movl	-8(%rbp), %eax	# axis, tmp125
	cltq
	movl	$0, gyroADC(,%rax,4)	#, gyroADC
	.loc 1 122 0
	movl	-8(%rbp), %eax	# axis, tmp127
	cltq
	movl	$0, gyroZero(,%rax,4)	#, gyroZero
	.loc 1 124 0
	call	isOnFinalGyroCalibrationCycle	#
	testb	%al, %al	# D.4078
	je	.L17	#,
.LBB4:
	.loc 1 125 0
	movl	-8(%rbp), %eax	# axis, tmp129
	movslq	%eax, %rdx	# tmp129, tmp128
	movq	%rdx, %rax	# tmp128, tmp130
	salq	$2, %rax	#, tmp130
	addq	%rdx, %rax	# tmp128, tmp130
	salq	$2, %rax	#, tmp131
	addq	$var.3942, %rax	#, D.4079
	movq	%rax, %rdi	# D.4079,
	call	devStandardDeviation	#
	movd	%xmm0, %eax	#, tmp132
	movl	%eax, -4(%rbp)	# tmp132, dev
	.loc 1 127 0
	cmpb	$0, -20(%rbp)	#, gyroMovementCalibrationThreshold
	je	.L18	#,
	.loc 1 127 0 is_stmt 0 discriminator 1
	movzbl	-20(%rbp), %eax	# gyroMovementCalibrationThreshold, D.4080
	pxor	%xmm0, %xmm0	# D.4081
	cvtsi2ss	%eax, %xmm0	# D.4080, D.4081
	movss	-4(%rbp), %xmm1	# dev, tmp133
	ucomiss	%xmm0, %xmm1	# D.4081, tmp133
	jbe	.L18	#,
	.loc 1 128 0 is_stmt 1
	movl	$1000, %edi	#,
	call	gyroSetCalibrationCycles	#
	.loc 1 129 0
	jmp	.L14	#
.L18:
	.loc 1 131 0
	movl	-8(%rbp), %eax	# axis, tmp135
	cltq
	movl	g.3941(,%rax,4), %eax	# g, D.4080
	leal	500(%rax), %ecx	#, D.4080
	movl	$274877907, %edx	#, tmp137
	movl	%ecx, %eax	# D.4080, tmp142
	imull	%edx	# tmp137
	sarl	$6, %edx	#, tmp138
	movl	%ecx, %eax	# D.4080, tmp139
	sarl	$31, %eax	#, tmp139
	subl	%eax, %edx	# tmp139, D.4080
	movl	-8(%rbp), %eax	# axis, tmp141
	cltq
	movl	%edx, gyroZero(,%rax,4)	# D.4080, gyroZero
.L17:
.LBE4:
	.loc 1 108 0 discriminator 2
	addl	$1, -8(%rbp)	#, axis
.L15:
	.loc 1 108 0 is_stmt 0 discriminator 1
	cmpl	$2, -8(%rbp)	#, axis
	jle	.L21	#,
.LBE3:
	.loc 1 135 0 is_stmt 1
	call	isOnFinalGyroCalibrationCycle	#
	testb	%al, %al	# D.4078
	je	.L22	#,
	.loc 1 136 0
	movl	$1, %edi	#,
	call	beeper	#
.L22:
	.loc 1 138 0
	movzwl	calibratingG(%rip), %eax	# calibratingG, D.4082
	subl	$1, %eax	#, D.4082
	movw	%ax, calibratingG(%rip)	# D.4082, calibratingG
.L14:
	.loc 1 139 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	performAcclerationCalibration, .-performAcclerationCalibration
	.section	.text.applyGyroZero,"ax",@progbits
	.type	applyGyroZero, @function
applyGyroZero:
.LFB15:
	.loc 1 142 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
.LBB5:
	.loc 1 143 0
	movl	$0, -4(%rbp)	#, axis
	jmp	.L25	#
.L26:
	.loc 1 144 0 discriminator 3
	movl	-4(%rbp), %eax	# axis, tmp91
	cltq
	movl	gyroADC(,%rax,4), %edx	# gyroADC, D.4083
	movl	-4(%rbp), %eax	# axis, tmp93
	cltq
	movl	gyroZero(,%rax,4), %eax	# gyroZero, D.4083
	subl	%eax, %edx	# D.4083, D.4083
	movl	-4(%rbp), %eax	# axis, tmp95
	cltq
	movl	%edx, gyroADC(,%rax,4)	# D.4083, gyroADC
	.loc 1 143 0 discriminator 3
	addl	$1, -4(%rbp)	#, axis
.L25:
	.loc 1 143 0 is_stmt 0 discriminator 1
	cmpl	$2, -4(%rbp)	#, axis
	jle	.L26	#,
.LBE5:
	.loc 1 146 0 is_stmt 1
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	applyGyroZero, .-applyGyroZero
	.section	.text.gyroUpdate,"ax",@progbits
	.globl	gyroUpdate
	.type	gyroUpdate, @function
gyroUpdate:
.LFB16:
	.loc 1 149 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 151 0
	movzbl	gyro_initialized(%rip), %eax	# gyro_initialized, D.4084
	xorl	$1, %eax	#, D.4084
	testb	%al, %al	# D.4084
	je	.L28	#,
	.loc 1 154 0
	movb	$1, gyro_initialized(%rip)	#, gyro_initialized
.L28:
	.loc 1 156 0
	movq	gyro+8(%rip), %rax	# gyro.read, D.4085
	movl	$gyroADCRaw, %edi	#,
	call	*%rax	# D.4085
	xorl	$1, %eax	#, D.4084
	testb	%al, %al	# D.4084
	jne	.L38	#,
.LBB6:
	.loc 1 160 0
	movl	$0, -8(%rbp)	#, axis
	jmp	.L31	#
.L32:
	.loc 1 161 0 discriminator 3
	movl	-8(%rbp), %eax	# axis, tmp113
	cltq
	movzwl	gyroADCRaw(%rax,%rax), %eax	# gyroADCRaw, D.4086
	movswl	%ax, %edx	# D.4086, D.4087
	movl	-8(%rbp), %eax	# axis, tmp115
	cltq
	movl	%edx, gyroADC(,%rax,4)	# D.4087, gyroADC
	.loc 1 160 0 discriminator 3
	addl	$1, -8(%rbp)	#, axis
.L31:
	.loc 1 160 0 is_stmt 0 discriminator 1
	cmpl	$2, -8(%rbp)	#, axis
	jle	.L32	#,
.LBE6:
	.loc 1 165 0 is_stmt 1
	movl	gyroAlign(%rip), %eax	# gyroAlign, D.4088
	movzbl	%al, %eax	# D.4089, D.4087
	movl	%eax, %edx	# D.4087,
	movl	$gyroADC, %esi	#,
	movl	$gyroADC, %edi	#,
	call	alignSensors	#
	.loc 1 167 0
	movq	gyroConfig(%rip), %rax	# gyroConfig, D.4090
	movzwl	2(%rax), %eax	# _27->soft_gyro_lpf_hz, D.4091
	testw	%ax, %ax	# D.4091
	je	.L33	#,
	.loc 1 168 0
	movzbl	gyroFilterStateIsSet(%rip), %eax	# gyroFilterStateIsSet, D.4084
	xorl	$1, %eax	#, D.4084
	testb	%al, %al	# D.4084
	je	.L34	#,
	.loc 1 169 0
	call	initGyroFilterCoefficients	#
.L34:
.LBB7:
	.loc 1 171 0
	movl	$0, -4(%rbp)	#, axis
	jmp	.L35	#
.L36:
	.loc 1 172 0 discriminator 3
	movl	-4(%rbp), %eax	# axis, tmp117
	movslq	%eax, %rdx	# tmp117, tmp116
	movq	%rdx, %rax	# tmp116, tmp118
	salq	$3, %rax	#, tmp118
	addq	%rdx, %rax	# tmp116, tmp118
	salq	$2, %rax	#, tmp119
	leaq	gyroFilterState(%rax), %rdx	#, D.4092
	movl	-4(%rbp), %eax	# axis, tmp121
	cltq
	movl	gyroADC(,%rax,4), %eax	# gyroADC, D.4087
	pxor	%xmm0, %xmm0	# D.4093
	cvtsi2ss	%eax, %xmm0	# D.4087, D.4093
	movq	%rdx, %rdi	# D.4092,
	call	applyBiQuadFilter	#
	call	lrintf	#
	movl	%eax, %edx	# D.4094, D.4087
	movl	-4(%rbp), %eax	# axis, tmp123
	cltq
	movl	%edx, gyroADC(,%rax,4)	# D.4087, gyroADC
	.loc 1 171 0 discriminator 3
	addl	$1, -4(%rbp)	#, axis
.L35:
	.loc 1 171 0 is_stmt 0 discriminator 1
	cmpl	$2, -4(%rbp)	#, axis
	jle	.L36	#,
.L33:
.LBE7:
	.loc 1 176 0 is_stmt 1
	call	isGyroCalibrationComplete	#
	xorl	$1, %eax	#, D.4084
	testb	%al, %al	# D.4084
	je	.L37	#,
	.loc 1 177 0
	movq	gyroConfig(%rip), %rax	# gyroConfig, D.4090
	movzbl	(%rax), %eax	# _46->gyroMovementCalibrationThreshold, D.4089
	movzbl	%al, %eax	# D.4089, D.4087
	movl	%eax, %edi	# D.4087,
	call	performAcclerationCalibration	#
.L37:
	.loc 1 180 0
	call	applyGyroZero	#
	jmp	.L27	#
.L38:
	.loc 1 157 0
	nop
.L27:
	.loc 1 182 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	gyroUpdate, .-gyroUpdate
	.section	.bss.g.3941,"aw",@nobits
	.align 8
	.type	g.3941, @object
	.size	g.3941, 12
g.3941:
	.zero	12
	.section	.bss.var.3942,"aw",@nobits
	.align 32
	.type	var.3942, @object
	.size	var.3942, 60
var.3942:
	.zero	60
	.text
.Letext0:
	.file 2 "/usr/include/stdint.h"
	.file 3 "./src/main/common/maths.h"
	.file 4 "./src/main/common/filter.h"
	.file 5 "./src/main/config/parameter_group.h"
	.file 6 "./src/main/drivers/sensor.h"
	.file 7 "./src/main/drivers/accgyro.h"
	.file 8 "./src/main/sensors/sensors.h"
	.file 9 "./src/main/io/beeper.h"
	.file 10 "./src/main/sensors/boardalignment.h"
	.file 11 "./src/main/sensors/gyro.h"
	.file 12 "./src/main/target/edison/target.h"
	.file 13 "./src/main/drivers/gyro_sync.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x963
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF134
	.byte	0xc
	.long	.LASF135
	.long	.LASF136
	.long	.Ldebug_ranges0+0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0x25
	.long	0x4c
	.uleb128 0x5
	.long	.LASF10
	.byte	0x2
	.byte	0x26
	.long	0x53
	.uleb128 0x5
	.long	.LASF11
	.byte	0x2
	.byte	0x30
	.long	0x30
	.uleb128 0x5
	.long	.LASF12
	.byte	0x2
	.byte	0x31
	.long	0x37
	.uleb128 0x5
	.long	.LASF13
	.byte	0x2
	.byte	0x33
	.long	0x3e
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF14
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF15
	.uleb128 0x6
	.long	.LASF21
	.byte	0x14
	.byte	0x3
	.byte	0x25
	.long	0xff
	.uleb128 0x7
	.long	.LASF16
	.byte	0x3
	.byte	0x27
	.long	0xa8
	.byte	0
	.uleb128 0x7
	.long	.LASF17
	.byte	0x3
	.byte	0x27
	.long	0xa8
	.byte	0x4
	.uleb128 0x7
	.long	.LASF18
	.byte	0x3
	.byte	0x27
	.long	0xa8
	.byte	0x8
	.uleb128 0x7
	.long	.LASF19
	.byte	0x3
	.byte	0x27
	.long	0xa8
	.byte	0xc
	.uleb128 0x8
	.string	"m_n"
	.byte	0x3
	.byte	0x28
	.long	0x53
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF20
	.byte	0x3
	.byte	0x29
	.long	0xb6
	.uleb128 0x6
	.long	.LASF22
	.byte	0x24
	.byte	0x4
	.byte	0x1b
	.long	0x17a
	.uleb128 0x8
	.string	"b0"
	.byte	0x4
	.byte	0x1c
	.long	0xa8
	.byte	0
	.uleb128 0x8
	.string	"b1"
	.byte	0x4
	.byte	0x1c
	.long	0xa8
	.byte	0x4
	.uleb128 0x8
	.string	"b2"
	.byte	0x4
	.byte	0x1c
	.long	0xa8
	.byte	0x8
	.uleb128 0x8
	.string	"a1"
	.byte	0x4
	.byte	0x1c
	.long	0xa8
	.byte	0xc
	.uleb128 0x8
	.string	"a2"
	.byte	0x4
	.byte	0x1c
	.long	0xa8
	.byte	0x10
	.uleb128 0x8
	.string	"x1"
	.byte	0x4
	.byte	0x1d
	.long	0xa8
	.byte	0x14
	.uleb128 0x8
	.string	"x2"
	.byte	0x4
	.byte	0x1d
	.long	0xa8
	.byte	0x18
	.uleb128 0x8
	.string	"y1"
	.byte	0x4
	.byte	0x1d
	.long	0xa8
	.byte	0x1c
	.uleb128 0x8
	.string	"y2"
	.byte	0x4
	.byte	0x1d
	.long	0xa8
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.long	.LASF23
	.byte	0x4
	.byte	0x1e
	.long	0x10a
	.uleb128 0x5
	.long	.LASF24
	.byte	0x5
	.byte	0x15
	.long	0x92
	.uleb128 0x5
	.long	.LASF25
	.byte	0x5
	.byte	0x26
	.long	0x19b
	.uleb128 0x9
	.long	0x1ab
	.uleb128 0xa
	.long	0x68
	.uleb128 0xa
	.long	0x53
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.byte	0x2d
	.long	0x1c9
	.uleb128 0xc
	.string	"ptr"
	.byte	0x5
	.byte	0x2e
	.long	0x68
	.uleb128 0xc
	.string	"fn"
	.byte	0x5
	.byte	0x2f
	.long	0x1c9
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x190
	.uleb128 0x6
	.long	.LASF26
	.byte	0x20
	.byte	0x5
	.byte	0x28
	.long	0x218
	.uleb128 0x8
	.string	"pgn"
	.byte	0x5
	.byte	0x29
	.long	0x185
	.byte	0
	.uleb128 0x7
	.long	.LASF27
	.byte	0x5
	.byte	0x2a
	.long	0x92
	.byte	0x2
	.uleb128 0x7
	.long	.LASF28
	.byte	0x5
	.byte	0x2b
	.long	0x218
	.byte	0x8
	.uleb128 0x8
	.string	"ptr"
	.byte	0x5
	.byte	0x2c
	.long	0x21e
	.byte	0x10
	.uleb128 0x7
	.long	.LASF29
	.byte	0x5
	.byte	0x30
	.long	0x1ab
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x87
	.uleb128 0xd
	.byte	0x8
	.long	0x218
	.uleb128 0x5
	.long	.LASF30
	.byte	0x5
	.byte	0x31
	.long	0x1cf
	.uleb128 0xd
	.byte	0x8
	.long	0x235
	.uleb128 0xe
	.long	0x23a
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF31
	.uleb128 0x5
	.long	.LASF32
	.byte	0x6
	.byte	0x15
	.long	0x24c
	.uleb128 0xd
	.byte	0x8
	.long	0x252
	.uleb128 0xf
	.long	0x23a
	.long	0x261
	.uleb128 0xa
	.long	0x261
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x71
	.uleb128 0x5
	.long	.LASF33
	.byte	0x6
	.byte	0x19
	.long	0x272
	.uleb128 0xd
	.byte	0x8
	.long	0x278
	.uleb128 0x9
	.long	0x283
	.uleb128 0xa
	.long	0x87
	.byte	0
	.uleb128 0x5
	.long	.LASF34
	.byte	0x6
	.byte	0x1a
	.long	0x22f
	.uleb128 0x6
	.long	.LASF35
	.byte	0x28
	.byte	0x7
	.byte	0x1f
	.long	0x2d7
	.uleb128 0x7
	.long	.LASF36
	.byte	0x7
	.byte	0x20
	.long	0x267
	.byte	0
	.uleb128 0x7
	.long	.LASF37
	.byte	0x7
	.byte	0x21
	.long	0x241
	.byte	0x8
	.uleb128 0x7
	.long	.LASF38
	.byte	0x7
	.byte	0x22
	.long	0x241
	.byte	0x10
	.uleb128 0x7
	.long	.LASF39
	.byte	0x7
	.byte	0x23
	.long	0x283
	.byte	0x18
	.uleb128 0x7
	.long	.LASF40
	.byte	0x7
	.byte	0x24
	.long	0xa8
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.long	.LASF41
	.byte	0x7
	.byte	0x25
	.long	0x28e
	.uleb128 0x10
	.byte	0x4
	.long	0x3e
	.byte	0x8
	.byte	0x15
	.long	0x307
	.uleb128 0x11
	.long	.LASF42
	.byte	0
	.uleb128 0x11
	.long	.LASF43
	.byte	0x1
	.uleb128 0x11
	.long	.LASF44
	.byte	0x2
	.uleb128 0x11
	.long	.LASF45
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF46
	.byte	0x6
	.byte	0x8
	.byte	0x20
	.long	0x338
	.uleb128 0x7
	.long	.LASF47
	.byte	0x8
	.byte	0x21
	.long	0x71
	.byte	0
	.uleb128 0x7
	.long	.LASF48
	.byte	0x8
	.byte	0x22
	.long	0x71
	.byte	0x2
	.uleb128 0x8
	.string	"yaw"
	.byte	0x8
	.byte	0x23
	.long	0x71
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF49
	.byte	0x8
	.byte	0x24
	.long	0x307
	.uleb128 0x12
	.long	.LASF137
	.byte	0x6
	.byte	0x8
	.byte	0x26
	.long	0x366
	.uleb128 0xc
	.string	"raw"
	.byte	0x8
	.byte	0x27
	.long	0x366
	.uleb128 0x13
	.long	.LASF50
	.byte	0x8
	.byte	0x28
	.long	0x338
	.byte	0
	.uleb128 0x14
	.long	0x71
	.long	0x376
	.uleb128 0x15
	.long	0x61
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF51
	.byte	0x8
	.byte	0x29
	.long	0x343
	.uleb128 0x10
	.byte	0x4
	.long	0x3e
	.byte	0x8
	.byte	0x39
	.long	0x3c4
	.uleb128 0x11
	.long	.LASF52
	.byte	0
	.uleb128 0x11
	.long	.LASF53
	.byte	0x1
	.uleb128 0x11
	.long	.LASF54
	.byte	0x2
	.uleb128 0x11
	.long	.LASF55
	.byte	0x3
	.uleb128 0x11
	.long	.LASF56
	.byte	0x4
	.uleb128 0x11
	.long	.LASF57
	.byte	0x5
	.uleb128 0x11
	.long	.LASF58
	.byte	0x6
	.uleb128 0x11
	.long	.LASF59
	.byte	0x7
	.uleb128 0x11
	.long	.LASF60
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF61
	.byte	0x8
	.byte	0x43
	.long	0x381
	.uleb128 0x6
	.long	.LASF62
	.byte	0xc
	.byte	0x8
	.byte	0x45
	.long	0x400
	.uleb128 0x7
	.long	.LASF63
	.byte	0x8
	.byte	0x46
	.long	0x3c4
	.byte	0
	.uleb128 0x7
	.long	.LASF64
	.byte	0x8
	.byte	0x47
	.long	0x3c4
	.byte	0x4
	.uleb128 0x7
	.long	.LASF65
	.byte	0x8
	.byte	0x48
	.long	0x3c4
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF66
	.byte	0x8
	.byte	0x49
	.long	0x3cf
	.uleb128 0x6
	.long	.LASF67
	.byte	0x3
	.byte	0x8
	.byte	0x4b
	.long	0x43c
	.uleb128 0x7
	.long	.LASF68
	.byte	0x8
	.byte	0x4c
	.long	0x87
	.byte	0
	.uleb128 0x7
	.long	.LASF69
	.byte	0x8
	.byte	0x4d
	.long	0x87
	.byte	0x1
	.uleb128 0x7
	.long	.LASF70
	.byte	0x8
	.byte	0x4e
	.long	0x87
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF71
	.byte	0x8
	.byte	0x4f
	.long	0x40b
	.uleb128 0x6
	.long	.LASF72
	.byte	0xc
	.byte	0x8
	.byte	0x51
	.long	0x46c
	.uleb128 0x7
	.long	.LASF73
	.byte	0x8
	.byte	0x52
	.long	0x376
	.byte	0
	.uleb128 0x7
	.long	.LASF74
	.byte	0x8
	.byte	0x53
	.long	0x376
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF75
	.byte	0x8
	.byte	0x54
	.long	0x447
	.uleb128 0x10
	.byte	0x4
	.long	0x3e
	.byte	0x9
	.byte	0x14
	.long	0x4ea
	.uleb128 0x11
	.long	.LASF76
	.byte	0
	.uleb128 0x11
	.long	.LASF77
	.byte	0x1
	.uleb128 0x11
	.long	.LASF78
	.byte	0x2
	.uleb128 0x11
	.long	.LASF79
	.byte	0x3
	.uleb128 0x11
	.long	.LASF80
	.byte	0x4
	.uleb128 0x11
	.long	.LASF81
	.byte	0x5
	.uleb128 0x11
	.long	.LASF82
	.byte	0x6
	.uleb128 0x11
	.long	.LASF83
	.byte	0x7
	.uleb128 0x11
	.long	.LASF84
	.byte	0x8
	.uleb128 0x11
	.long	.LASF85
	.byte	0x9
	.uleb128 0x11
	.long	.LASF86
	.byte	0xa
	.uleb128 0x11
	.long	.LASF87
	.byte	0xb
	.uleb128 0x11
	.long	.LASF88
	.byte	0xc
	.uleb128 0x11
	.long	.LASF89
	.byte	0xd
	.uleb128 0x11
	.long	.LASF90
	.byte	0xe
	.uleb128 0x11
	.long	.LASF91
	.byte	0xf
	.uleb128 0x11
	.long	.LASF92
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF93
	.byte	0x6
	.byte	0xa
	.byte	0x14
	.long	0x51b
	.uleb128 0x7
	.long	.LASF94
	.byte	0xa
	.byte	0x15
	.long	0x71
	.byte	0
	.uleb128 0x7
	.long	.LASF95
	.byte	0xa
	.byte	0x16
	.long	0x71
	.byte	0x2
	.uleb128 0x7
	.long	.LASF96
	.byte	0xa
	.byte	0x17
	.long	0x71
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF97
	.byte	0xa
	.byte	0x18
	.long	0x4ea
	.uleb128 0x6
	.long	.LASF98
	.byte	0x4
	.byte	0xb
	.byte	0x25
	.long	0x557
	.uleb128 0x7
	.long	.LASF99
	.byte	0xb
	.byte	0x26
	.long	0x87
	.byte	0
	.uleb128 0x7
	.long	.LASF100
	.byte	0xb
	.byte	0x27
	.long	0x87
	.byte	0x1
	.uleb128 0x7
	.long	.LASF101
	.byte	0xb
	.byte	0x28
	.long	0x92
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF102
	.byte	0xb
	.byte	0x29
	.long	0x526
	.uleb128 0x16
	.long	.LASF138
	.byte	0x1
	.byte	0x41
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.long	.LASF105
	.byte	0x1
	.byte	0x48
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b9
	.uleb128 0x18
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x19
	.long	.LASF108
	.byte	0x1
	.byte	0x4c
	.long	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x1
	.byte	0x53
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e5
	.uleb128 0x1b
	.long	.LASF107
	.byte	0x1
	.byte	0x53
	.long	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF139
	.byte	0x1
	.byte	0x58
	.long	0x23a
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.long	.LASF103
	.byte	0x1
	.byte	0x5d
	.long	0x23a
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.long	.LASF104
	.byte	0x1
	.byte	0x62
	.long	0x23a
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.long	.LASF106
	.byte	0x1
	.byte	0x67
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d0
	.uleb128 0x1b
	.long	.LASF99
	.byte	0x1
	.byte	0x67
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.string	"g"
	.byte	0x1
	.byte	0x69
	.long	0x6d0
	.uleb128 0x9
	.byte	0x3
	.quad	g.3941
	.uleb128 0x1e
	.string	"var"
	.byte	0x1
	.byte	0x6a
	.long	0x6e0
	.uleb128 0x9
	.byte	0x3
	.quad	var.3942
	.uleb128 0x18
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x19
	.long	.LASF108
	.byte	0x1
	.byte	0x6c
	.long	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1e
	.string	"dev"
	.byte	0x1
	.byte	0x7d
	.long	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x7c
	.long	0x6e0
	.uleb128 0x15
	.long	0x61
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.long	0xff
	.long	0x6f0
	.uleb128 0x15
	.long	0x61
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.long	.LASF109
	.byte	0x1
	.byte	0x8d
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x72e
	.uleb128 0x18
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x19
	.long	.LASF108
	.byte	0x1
	.byte	0x8f
	.long	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF111
	.byte	0x1
	.byte	0x94
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x790
	.uleb128 0x21
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x76f
	.uleb128 0x19
	.long	.LASF108
	.byte	0x1
	.byte	0xa0
	.long	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x19
	.long	.LASF108
	.byte	0x1
	.byte	0xab
	.long	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF112
	.byte	0x1
	.byte	0x35
	.long	0x92
	.uleb128 0x9
	.byte	0x3
	.quad	calibratingG
	.uleb128 0x19
	.long	.LASF113
	.byte	0x1
	.byte	0x36
	.long	0x366
	.uleb128 0x9
	.byte	0x3
	.quad	gyroADCRaw
	.uleb128 0x19
	.long	.LASF114
	.byte	0x1
	.byte	0x37
	.long	0x6d0
	.uleb128 0x9
	.byte	0x3
	.quad	gyroZero
	.uleb128 0x14
	.long	0x17a
	.long	0x7df
	.uleb128 0x15
	.long	0x61
	.byte	0x2
	.byte	0
	.uleb128 0x19
	.long	.LASF115
	.byte	0x1
	.byte	0x39
	.long	0x7cf
	.uleb128 0x9
	.byte	0x3
	.quad	gyroFilterState
	.uleb128 0x19
	.long	.LASF116
	.byte	0x1
	.byte	0x3a
	.long	0x23a
	.uleb128 0x9
	.byte	0x3
	.quad	gyroFilterStateIsSet
	.uleb128 0x22
	.long	.LASF117
	.byte	0xc
	.byte	0xca
	.long	0x9d
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_0
	.uleb128 0x22
	.long	.LASF118
	.byte	0xc
	.byte	0xcb
	.long	0x9d
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_1
	.uleb128 0x22
	.long	.LASF119
	.byte	0xc
	.byte	0xcc
	.long	0x9d
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_2
	.uleb128 0x22
	.long	.LASF120
	.byte	0x5
	.byte	0x43
	.long	0x85d
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_start
	.uleb128 0xd
	.byte	0x8
	.long	0x224
	.uleb128 0x22
	.long	.LASF121
	.byte	0x5
	.byte	0x44
	.long	0x85d
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_end
	.uleb128 0x22
	.long	.LASF122
	.byte	0x5
	.byte	0x47
	.long	0x218
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_start
	.uleb128 0x22
	.long	.LASF123
	.byte	0x5
	.byte	0x48
	.long	0x218
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_end
	.uleb128 0x23
	.long	.LASF124
	.byte	0xd
	.byte	0x14
	.long	0x9d
	.uleb128 0x22
	.long	.LASF125
	.byte	0x8
	.byte	0x56
	.long	0x43c
	.uleb128 0x9
	.byte	0x3
	.quad	sensorSelectionConfig_System
	.uleb128 0x22
	.long	.LASF126
	.byte	0x8
	.byte	0x57
	.long	0x400
	.uleb128 0x9
	.byte	0x3
	.quad	sensorAlignmentConfig_System
	.uleb128 0x22
	.long	.LASF127
	.byte	0x8
	.byte	0x58
	.long	0x46c
	.uleb128 0x9
	.byte	0x3
	.quad	sensorTrims_System
	.uleb128 0x22
	.long	.LASF128
	.byte	0xa
	.byte	0x1a
	.long	0x51b
	.uleb128 0x9
	.byte	0x3
	.quad	boardAlignment_System
	.uleb128 0x23
	.long	.LASF129
	.byte	0x1
	.byte	0x2f
	.long	0x2d7
	.uleb128 0x22
	.long	.LASF130
	.byte	0x1
	.byte	0x30
	.long	0x3c4
	.uleb128 0x9
	.byte	0x3
	.quad	gyroAlign
	.uleb128 0x22
	.long	.LASF131
	.byte	0x1
	.byte	0x32
	.long	0x6d0
	.uleb128 0x9
	.byte	0x3
	.quad	gyroADC
	.uleb128 0x22
	.long	.LASF132
	.byte	0xb
	.byte	0x2b
	.long	0x94b
	.uleb128 0x9
	.byte	0x3
	.quad	gyroConfig
	.uleb128 0xd
	.byte	0x8
	.long	0x557
	.uleb128 0x22
	.long	.LASF133
	.byte	0x1
	.byte	0x3c
	.long	0x23a
	.uleb128 0x9
	.byte	0x3
	.quad	gyro_initialized
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.long	0xac
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB8
	.quad	.LFE8-.LFB8
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
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LFB8
	.quad	.LFE8
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
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF105:
	.string	"initGyroFilterCoefficients"
.LASF113:
	.string	"gyroADCRaw"
.LASF123:
	.string	"__pg_resetdata_end"
.LASF38:
	.string	"temperature"
.LASF88:
	.string	"BEEPER_ACC_CALIBRATION"
.LASF133:
	.string	"gyro_initialized"
.LASF69:
	.string	"mag_hardware"
.LASF3:
	.string	"unsigned int"
.LASF48:
	.string	"pitch"
.LASF124:
	.string	"targetLooptime"
.LASF51:
	.string	"flightDynamicsTrims_t"
.LASF137:
	.string	"flightDynamicsTrims_u"
.LASF87:
	.string	"BEEPER_DISARM_REPEAT"
.LASF84:
	.string	"BEEPER_BAT_LOW"
.LASF72:
	.string	"sensorTrims_s"
.LASF75:
	.string	"sensorTrims_t"
.LASF63:
	.string	"gyro_align"
.LASF139:
	.string	"isGyroCalibrationComplete"
.LASF118:
	.string	"U_ID_1"
.LASF119:
	.string	"U_ID_2"
.LASF13:
	.string	"uint32_t"
.LASF82:
	.string	"BEEPER_ARMING_GPS_FIX"
.LASF125:
	.string	"sensorSelectionConfig_System"
.LASF14:
	.string	"float"
.LASF23:
	.string	"biquad_t"
.LASF81:
	.string	"BEEPER_ARMING"
.LASF86:
	.string	"BEEPER_RX_SET"
.LASF9:
	.string	"int16_t"
.LASF127:
	.string	"sensorTrims_System"
.LASF45:
	.string	"SENSOR_INDEX_MAG"
.LASF91:
	.string	"BEEPER_MULTI_BEEPS"
.LASF60:
	.string	"CW270_DEG_FLIP"
.LASF76:
	.string	"BEEPER_SILENCE"
.LASF94:
	.string	"rollDegrees"
.LASF24:
	.string	"pgn_t"
.LASF93:
	.string	"boardAlignment_s"
.LASF97:
	.string	"boardAlignment_t"
.LASF98:
	.string	"gyroConfig_s"
.LASF102:
	.string	"gyroConfig_t"
.LASF31:
	.string	"_Bool"
.LASF112:
	.string	"calibratingG"
.LASF26:
	.string	"pgRegistry_s"
.LASF30:
	.string	"pgRegistry_t"
.LASF122:
	.string	"__pg_resetdata_start"
.LASF21:
	.string	"stdev_s"
.LASF20:
	.string	"stdev_t"
.LASF44:
	.string	"SENSOR_INDEX_BARO"
.LASF70:
	.string	"baro_hardware"
.LASF58:
	.string	"CW90_DEG_FLIP"
.LASF8:
	.string	"char"
.LASF130:
	.string	"gyroAlign"
.LASF115:
	.string	"gyroFilterState"
.LASF57:
	.string	"CW0_DEG_FLIP"
.LASF47:
	.string	"roll"
.LASF108:
	.string	"axis"
.LASF11:
	.string	"uint8_t"
.LASF120:
	.string	"__pg_registry_start"
.LASF33:
	.string	"sensorGyroInitFuncPtr"
.LASF104:
	.string	"isOnFirstGyroCalibrationCycle"
.LASF49:
	.string	"flightDynamicsTrims_def_t"
.LASF68:
	.string	"acc_hardware"
.LASF135:
	.string	"src/main/sensors/gyro.c"
.LASF65:
	.string	"mag_align"
.LASF67:
	.string	"sensorSelectionConfig_s"
.LASF71:
	.string	"sensorSelectionConfig_t"
.LASF40:
	.string	"scale"
.LASF27:
	.string	"size"
.LASF54:
	.string	"CW90_DEG"
.LASF136:
	.string	"/home/aravind/git/cleanflight"
.LASF129:
	.string	"gyro"
.LASF64:
	.string	"acc_align"
.LASF50:
	.string	"values"
.LASF73:
	.string	"accZero"
.LASF121:
	.string	"__pg_registry_end"
.LASF43:
	.string	"SENSOR_INDEX_ACC"
.LASF132:
	.string	"gyroConfig"
.LASF114:
	.string	"gyroZero"
.LASF12:
	.string	"uint16_t"
.LASF116:
	.string	"gyroFilterStateIsSet"
.LASF107:
	.string	"calibrationCyclesRequired"
.LASF134:
	.string	"GNU C99 5.4.1 20160904 -mtune=generic -march=x86-64 -g -std=gnu99 -ffunction-sections -fdata-sections -ffat-lto-objects -fstack-protector-strong"
.LASF138:
	.string	"pgResetFn_gyroConfig"
.LASF79:
	.string	"BEEPER_RX_LOST"
.LASF110:
	.string	"gyroSetCalibrationCycles"
.LASF17:
	.string	"m_newM"
.LASF5:
	.string	"short int"
.LASF109:
	.string	"applyGyroZero"
.LASF74:
	.string	"magZero"
.LASF6:
	.string	"long int"
.LASF77:
	.string	"BEEPER_GYRO_CALIBRATED"
.LASF96:
	.string	"yawDegrees"
.LASF126:
	.string	"sensorAlignmentConfig_System"
.LASF106:
	.string	"performAcclerationCalibration"
.LASF99:
	.string	"gyroMovementCalibrationThreshold"
.LASF56:
	.string	"CW270_DEG"
.LASF95:
	.string	"pitchDegrees"
.LASF78:
	.string	"BEEPER_RX_LOST_LANDING"
.LASF29:
	.string	"reset"
.LASF61:
	.string	"sensor_align_e"
.LASF37:
	.string	"read"
.LASF100:
	.string	"gyro_lpf"
.LASF42:
	.string	"SENSOR_INDEX_GYRO"
.LASF36:
	.string	"init"
.LASF34:
	.string	"sensorIsDataReadyFuncPtr"
.LASF7:
	.string	"sizetype"
.LASF0:
	.string	"long unsigned int"
.LASF28:
	.string	"address"
.LASF55:
	.string	"CW180_DEG"
.LASF10:
	.string	"int32_t"
.LASF46:
	.string	"int16_flightDynamicsTrims_s"
.LASF19:
	.string	"m_newS"
.LASF89:
	.string	"BEEPER_ACC_CALIBRATION_FAIL"
.LASF59:
	.string	"CW180_DEG_FLIP"
.LASF85:
	.string	"BEEPER_GPS_STATUS"
.LASF131:
	.string	"gyroADC"
.LASF1:
	.string	"unsigned char"
.LASF35:
	.string	"gyro_s"
.LASF41:
	.string	"gyro_t"
.LASF117:
	.string	"U_ID_0"
.LASF103:
	.string	"isOnFinalGyroCalibrationCycle"
.LASF39:
	.string	"isDataReady"
.LASF92:
	.string	"BEEPER_ARMED"
.LASF16:
	.string	"m_oldM"
.LASF4:
	.string	"signed char"
.LASF18:
	.string	"m_oldS"
.LASF2:
	.string	"short unsigned int"
.LASF22:
	.string	"biquad_s"
.LASF111:
	.string	"gyroUpdate"
.LASF32:
	.string	"sensorReadFuncPtr"
.LASF15:
	.string	"double"
.LASF83:
	.string	"BEEPER_BAT_CRIT_LOW"
.LASF80:
	.string	"BEEPER_DISARMING"
.LASF62:
	.string	"sensorAlignmentConfig_s"
.LASF66:
	.string	"sensorAlignmentConfig_t"
.LASF90:
	.string	"BEEPER_READY_BEEP"
.LASF52:
	.string	"ALIGN_DEFAULT"
.LASF101:
	.string	"soft_gyro_lpf_hz"
.LASF53:
	.string	"CW0_DEG"
.LASF128:
	.string	"boardAlignment_System"
.LASF25:
	.string	"pgResetFunc"
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
