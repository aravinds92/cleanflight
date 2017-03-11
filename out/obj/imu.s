	.file	"imu.c"
# GNU C99 (Ubuntu 5.4.1-2ubuntu1~16.04) version 5.4.1 20160904 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.1 20160904, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed imu.i -mtune=generic -march=x86-64 -g
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
	.comm	profileSelection_System,1,1
	.comm	imu,8,8
	.comm	sensorSelectionConfig_System,3,1
	.comm	sensorAlignmentConfig_System,12,8
	.comm	sensorTrims_System,12,8
	.comm	gyroConfig,8,8
	.comm	accelerometerConfig,8,8
	.comm	mixerConfig_System,6,2
	.comm	motor3DConfig_System,6,2
	.comm	imuConfig,8,8
	.comm	throttleCorrectionConfig,8,8
	.comm	gpsConfig_System,16,16
	.comm	accSmooth,6,2
	.comm	accSum,12,8
	.globl	accTimeSum
	.section	.bss.accTimeSum,"aw",@nobits
	.align 4
	.type	accTimeSum, @object
	.size	accTimeSum, 4
accTimeSum:
	.zero	4
	.globl	accSumCount
	.section	.bss.accSumCount,"aw",@nobits
	.align 4
	.type	accSumCount, @object
	.size	accSumCount, 4
accSumCount:
	.zero	4
	.comm	accVelScale,4,4
	.comm	throttleAngleScale,4,4
	.comm	fc_acc,4,4
	.globl	smallAngleCosZ
	.section	.bss.smallAngleCosZ,"aw",@nobits
	.align 4
	.type	smallAngleCosZ, @object
	.size	smallAngleCosZ, 4
smallAngleCosZ:
	.zero	4
	.globl	lastUpdate
	.section	.bss.lastUpdate,"aw",@nobits
	.align 2
	.type	lastUpdate, @object
	.size	lastUpdate, 2
lastUpdate:
	.zero	2
	.globl	deltat
	.section	.bss.deltat,"aw",@nobits
	.align 4
	.type	deltat, @object
	.size	deltat, 4
deltat:
	.zero	4
	.globl	now
	.section	.bss.now,"aw",@nobits
	.align 2
	.type	now, @object
	.size	now, 2
now:
	.zero	2
	.section	.bss.isAccelUpdatedAtLeastOnce,"aw",@nobits
	.type	isAccelUpdatedAtLeastOnce, @object
	.size	isAccelUpdatedAtLeastOnce, 1
isAccelUpdatedAtLeastOnce:
	.zero	1
	.section	.bss.imuRuntimeConfig,"aw",@nobits
	.align 8
	.type	imuRuntimeConfig, @object
	.size	imuRuntimeConfig, 8
imuRuntimeConfig:
	.zero	8
	.section	.bss.accDeadband,"aw",@nobits
	.align 8
	.type	accDeadband, @object
	.size	accDeadband, 8
accDeadband:
	.zero	8
	.globl	runtimeConfig_initialized
	.section	.bss.runtimeConfig_initialized,"aw",@nobits
	.type	runtimeConfig_initialized, @object
	.size	runtimeConfig_initialized, 1
runtimeConfig_initialized:
	.zero	1
	.comm	imuConfig_System,12,8
	.globl	imuConfig_Registry
	.section	.pg_registry,"a",@progbits
	.align 8
	.type	imuConfig_Registry, @object
	.size	imuConfig_Registry, 32
imuConfig_Registry:
# pgn:
	.value	22
# size:
	.value	12
# address:
	.zero	4
	.quad	imuConfig_System
# ptr:
	.quad	0
# reset:
# ptr:
	.quad	pgResetTemplate_imuConfig
	.section	.bss.throttleCorrectionConfig_Storage,"aw",@nobits
	.align 8
	.type	throttleCorrectionConfig_Storage, @object
	.size	throttleCorrectionConfig_Storage, 12
throttleCorrectionConfig_Storage:
	.zero	12
	.comm	throttleCorrectionConfig_ProfileCurrent,8,8
	.globl	throttleCorrectionConfig_Registry
	.section	.pg_registry
	.align 8
	.type	throttleCorrectionConfig_Registry, @object
	.size	throttleCorrectionConfig_Registry, 32
throttleCorrectionConfig_Registry:
# pgn:
	.value	39
# size:
	.value	-32764
# address:
	.zero	4
	.quad	throttleCorrectionConfig_Storage
# ptr:
	.quad	throttleCorrectionConfig_ProfileCurrent
# reset:
# ptr:
	.quad	pgResetTemplate_throttleCorrectionConfig
	.globl	pgResetTemplate_imuConfig
	.section	.pg_resetdata,"a",@progbits
	.align 2
	.type	pgResetTemplate_imuConfig, @object
	.size	pgResetTemplate_imuConfig, 12
pgResetTemplate_imuConfig:
# looptime:
	.value	2000
# gyroSync:
	.byte	1
# gyroSyncDenominator:
	.byte	1
# dcm_kp:
	.value	2500
# small_angle:
	.zero	2
	.byte	25
# max_angle_inclination:
	.zero	1
	.value	500
	.globl	pgResetTemplate_throttleCorrectionConfig
	.align 2
	.type	pgResetTemplate_throttleCorrectionConfig, @object
	.size	pgResetTemplate_throttleCorrectionConfig, 4
pgResetTemplate_throttleCorrectionConfig:
# throttle_correction_angle:
	.value	800
# throttle_correction_value:
	.byte	0
	.zero	1
	.section	.data.q0,"aw",@progbits
	.align 4
	.type	q0, @object
	.size	q0, 4
q0:
	.long	1065353216
	.section	.bss.q1,"aw",@nobits
	.align 4
	.type	q1, @object
	.size	q1, 4
q1:
	.zero	4
	.section	.bss.q2,"aw",@nobits
	.align 4
	.type	q2, @object
	.size	q2, 4
q2:
	.zero	4
	.section	.bss.q3,"aw",@nobits
	.align 4
	.type	q3, @object
	.size	q3, 4
q3:
	.zero	4
	.globl	q
	.section	.data.q,"aw",@progbits
	.align 16
	.type	q, @object
	.size	q, 16
q:
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.section	.bss.rMat,"aw",@nobits
	.align 32
	.type	rMat, @object
	.size	rMat, 36
rMat:
	.zero	36
	.globl	attitude
	.section	.bss.attitude,"aw",@nobits
	.align 2
	.type	attitude, @object
	.size	attitude, 6
attitude:
	.zero	6
	.section	.bss.gyroScale,"aw",@nobits
	.align 4
	.type	gyroScale, @object
	.size	gyroScale, 4
gyroScale:
	.zero	4
	.section	.text.imuComputeRotationMatrix,"ax",@progbits
	.type	imuComputeRotationMatrix, @function
imuComputeRotationMatrix:
.LFB17:
	.file 1 "src/main/flight/imu.c"
	.loc 1 124 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 125 0
	movss	q1(%rip), %xmm1	# q1, D.7843
	movss	q1(%rip), %xmm0	# q1, D.7843
	mulss	%xmm1, %xmm0	# D.7843, tmp129
	movss	%xmm0, -36(%rbp)	# tmp129, q1q1
	.loc 1 126 0
	movss	q2(%rip), %xmm1	# q2, D.7843
	movss	q2(%rip), %xmm0	# q2, D.7843
	mulss	%xmm1, %xmm0	# D.7843, tmp130
	movss	%xmm0, -32(%rbp)	# tmp130, q2q2
	.loc 1 127 0
	movss	q3(%rip), %xmm1	# q3, D.7843
	movss	q3(%rip), %xmm0	# q3, D.7843
	mulss	%xmm1, %xmm0	# D.7843, tmp131
	movss	%xmm0, -28(%rbp)	# tmp131, q3q3
	.loc 1 129 0
	movss	q0(%rip), %xmm1	# q0, D.7843
	movss	q1(%rip), %xmm0	# q1, D.7843
	mulss	%xmm1, %xmm0	# D.7843, tmp132
	movss	%xmm0, -24(%rbp)	# tmp132, q0q1
	.loc 1 130 0
	movss	q0(%rip), %xmm1	# q0, D.7843
	movss	q2(%rip), %xmm0	# q2, D.7843
	mulss	%xmm1, %xmm0	# D.7843, tmp133
	movss	%xmm0, -20(%rbp)	# tmp133, q0q2
	.loc 1 131 0
	movss	q0(%rip), %xmm1	# q0, D.7843
	movss	q3(%rip), %xmm0	# q3, D.7843
	mulss	%xmm1, %xmm0	# D.7843, tmp134
	movss	%xmm0, -16(%rbp)	# tmp134, q0q3
	.loc 1 132 0
	movss	q1(%rip), %xmm1	# q1, D.7843
	movss	q2(%rip), %xmm0	# q2, D.7843
	mulss	%xmm1, %xmm0	# D.7843, tmp135
	movss	%xmm0, -12(%rbp)	# tmp135, q1q2
	.loc 1 133 0
	movss	q1(%rip), %xmm1	# q1, D.7843
	movss	q3(%rip), %xmm0	# q3, D.7843
	mulss	%xmm1, %xmm0	# D.7843, tmp136
	movss	%xmm0, -8(%rbp)	# tmp136, q1q3
	.loc 1 134 0
	movss	q2(%rip), %xmm1	# q2, D.7843
	movss	q3(%rip), %xmm0	# q3, D.7843
	mulss	%xmm1, %xmm0	# D.7843, tmp137
	movss	%xmm0, -4(%rbp)	# tmp137, q2q3
	.loc 1 136 0
	movss	-32(%rbp), %xmm0	# q2q2, tmp138
	addss	%xmm0, %xmm0	# tmp138, D.7843
	movss	.LC0(%rip), %xmm1	#, tmp139
	subss	%xmm0, %xmm1	# D.7843, D.7843
	movss	-28(%rbp), %xmm0	# q3q3, tmp140
	addss	%xmm0, %xmm0	# tmp140, D.7843
	subss	%xmm0, %xmm1	# D.7843, D.7843
	movaps	%xmm1, %xmm0	# D.7843, D.7843
	movss	%xmm0, rMat(%rip)	# D.7843, rMat
	.loc 1 137 0
	movss	-12(%rbp), %xmm0	# q1q2, tmp141
	subss	-16(%rbp), %xmm0	# q0q3, D.7843
	addss	%xmm0, %xmm0	# D.7843, D.7843
	movss	%xmm0, rMat+4(%rip)	# D.7843, rMat
	.loc 1 138 0
	movss	-8(%rbp), %xmm0	# q1q3, tmp142
	addss	-20(%rbp), %xmm0	# q0q2, D.7843
	addss	%xmm0, %xmm0	# D.7843, D.7843
	movss	%xmm0, rMat+8(%rip)	# D.7843, rMat
	.loc 1 140 0
	movss	-12(%rbp), %xmm0	# q1q2, tmp143
	addss	-16(%rbp), %xmm0	# q0q3, D.7843
	addss	%xmm0, %xmm0	# D.7843, D.7843
	movss	%xmm0, rMat+12(%rip)	# D.7843, rMat
	.loc 1 141 0
	movss	-36(%rbp), %xmm0	# q1q1, tmp144
	addss	%xmm0, %xmm0	# tmp144, D.7843
	movss	.LC0(%rip), %xmm1	#, tmp145
	subss	%xmm0, %xmm1	# D.7843, D.7843
	movss	-28(%rbp), %xmm0	# q3q3, tmp146
	addss	%xmm0, %xmm0	# tmp146, D.7843
	subss	%xmm0, %xmm1	# D.7843, D.7843
	movaps	%xmm1, %xmm0	# D.7843, D.7843
	movss	%xmm0, rMat+16(%rip)	# D.7843, rMat
	.loc 1 142 0
	movss	-4(%rbp), %xmm0	# q2q3, tmp147
	subss	-24(%rbp), %xmm0	# q0q1, D.7843
	addss	%xmm0, %xmm0	# D.7843, D.7843
	movss	%xmm0, rMat+20(%rip)	# D.7843, rMat
	.loc 1 144 0
	movss	-8(%rbp), %xmm0	# q1q3, tmp148
	subss	-20(%rbp), %xmm0	# q0q2, D.7843
	addss	%xmm0, %xmm0	# D.7843, D.7843
	movss	%xmm0, rMat+24(%rip)	# D.7843, rMat
	.loc 1 145 0
	movss	-4(%rbp), %xmm0	# q2q3, tmp149
	addss	-24(%rbp), %xmm0	# q0q1, D.7843
	addss	%xmm0, %xmm0	# D.7843, D.7843
	movss	%xmm0, rMat+28(%rip)	# D.7843, rMat
	.loc 1 146 0
	movss	-36(%rbp), %xmm0	# q1q1, tmp150
	addss	%xmm0, %xmm0	# tmp150, D.7843
	movss	.LC0(%rip), %xmm1	#, tmp151
	subss	%xmm0, %xmm1	# D.7843, D.7843
	movss	-32(%rbp), %xmm0	# q2q2, tmp152
	addss	%xmm0, %xmm0	# tmp152, D.7843
	subss	%xmm0, %xmm1	# D.7843, D.7843
	movaps	%xmm1, %xmm0	# D.7843, D.7843
	movss	%xmm0, rMat+32(%rip)	# D.7843, rMat
	.loc 1 147 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	imuComputeRotationMatrix, .-imuComputeRotationMatrix
	.section	.text.imuConfigure,"ax",@progbits
	.globl	imuConfigure
	.type	imuConfigure, @function
imuConfigure:
.LFB18:
	.loc 1 155 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# initialImuRuntimeConfig, initialImuRuntimeConfig
	movq	%rsi, -16(%rbp)	# initialAccDeadband, initialAccDeadband
	movss	%xmm0, -20(%rbp)	# accz_lpf_cutoff, accz_lpf_cutoff
	movl	%edx, %eax	# throttle_correction_angle, tmp92
	movw	%ax, -24(%rbp)	# tmp92, throttle_correction_angle
	.loc 1 156 0
	movzbl	runtimeConfig_initialized(%rip), %eax	# runtimeConfig_initialized, D.7844
	xorl	$1, %eax	#, D.7844
	testb	%al, %al	# D.7844
	je	.L3	#,
	.loc 1 159 0
	movb	$1, runtimeConfig_initialized(%rip)	#, runtimeConfig_initialized
.L3:
	.loc 1 161 0
	movq	-8(%rbp), %rax	# initialImuRuntimeConfig, tmp93
	movq	%rax, imuRuntimeConfig(%rip)	# tmp93, imuRuntimeConfig
	.loc 1 162 0
	movq	-16(%rbp), %rax	# initialAccDeadband, tmp94
	movq	%rax, accDeadband(%rip)	# tmp94, accDeadband
	.loc 1 163 0
	movl	-20(%rbp), %eax	# accz_lpf_cutoff, tmp95
	movl	%eax, -28(%rbp)	# tmp95, %sfp
	movss	-28(%rbp), %xmm0	# %sfp,
	call	calculateAccZLowPassFilterRCTimeConstant	#
	movd	%xmm0, %eax	#, D.7845
	movl	%eax, fc_acc(%rip)	# D.7845, fc_acc
	.loc 1 164 0
	movzwl	-24(%rbp), %eax	# throttle_correction_angle, D.7846
	movl	%eax, %edi	# D.7846,
	call	calculateThrottleAngleScale	#
	movd	%xmm0, %eax	#, D.7845
	movl	%eax, throttleAngleScale(%rip)	# D.7845, throttleAngleScale
	.loc 1 165 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	imuConfigure, .-imuConfigure
	.section	.text.imuInit,"ax",@progbits
	.globl	imuInit
	.type	imuInit, @function
imuInit:
.LFB19:
	.loc 1 168 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 169 0
	movq	imuRuntimeConfig(%rip), %rax	# imuRuntimeConfig, D.7848
	movzbl	12(%rax), %eax	# _2->small_angle, D.7849
	movzbl	%al, %eax	# D.7849, D.7850
	movl	%eax, %edi	# D.7850,
	call	degreesToRadians	#
	call	cosf	#
	movd	%xmm0, %eax	#, D.7851
	movl	%eax, smallAngleCosZ(%rip)	# D.7851, smallAngleCosZ
	.loc 1 170 0
	movss	gyro+32(%rip), %xmm1	# gyro.scale, D.7851
	movss	.LC1(%rip), %xmm0	#, tmp99
	mulss	%xmm1, %xmm0	# D.7851, D.7851
	movss	%xmm0, gyroScale(%rip)	# D.7851, gyroScale
	.loc 1 171 0
	movzwl	acc+16(%rip), %eax	# acc.acc_1G, D.7852
	movzwl	%ax, %eax	# D.7852, D.7850
	pxor	%xmm0, %xmm0	# D.7851
	cvtsi2ss	%eax, %xmm0	# D.7850, D.7851
	movss	.LC2(%rip), %xmm1	#, tmp100
	divss	%xmm0, %xmm1	# D.7851, D.7851
	movaps	%xmm1, %xmm0	# D.7851, D.7851
	movss	.LC3(%rip), %xmm1	#, tmp101
	divss	%xmm1, %xmm0	# tmp101, D.7851
	movss	%xmm0, accVelScale(%rip)	# D.7851, accVelScale
	.loc 1 173 0
	call	imuComputeRotationMatrix	#
	.loc 1 174 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	imuInit, .-imuInit
	.section	.text.calculateThrottleAngleScale,"ax",@progbits
	.globl	calculateThrottleAngleScale
	.type	calculateThrottleAngleScale, @function
calculateThrottleAngleScale:
.LFB20:
	.loc 1 177 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, %eax	# throttle_correction_angle, tmp92
	movw	%ax, -4(%rbp)	# tmp92, throttle_correction_angle
	.loc 1 178 0
	movzwl	-4(%rbp), %eax	# throttle_correction_angle, D.7853
	pxor	%xmm0, %xmm0	# D.7854
	cvtsi2ss	%eax, %xmm0	# D.7853, D.7854
	movss	.LC4(%rip), %xmm1	#, tmp93
	divss	%xmm0, %xmm1	# D.7854, D.7854
	movaps	%xmm1, %xmm0	# D.7854, D.7854
	movss	.LC5(%rip), %xmm1	#, tmp94
	mulss	%xmm1, %xmm0	# tmp94, D.7854
	.loc 1 179 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	calculateThrottleAngleScale, .-calculateThrottleAngleScale
	.section	.text.calculateAccZLowPassFilterRCTimeConstant,"ax",@progbits
	.globl	calculateAccZLowPassFilterRCTimeConstant
	.type	calculateAccZLowPassFilterRCTimeConstant, @function
calculateAccZLowPassFilterRCTimeConstant:
.LFB21:
	.loc 1 185 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)	# accz_lpf_cutoff, accz_lpf_cutoff
	.loc 1 186 0
	movss	-4(%rbp), %xmm1	# accz_lpf_cutoff, tmp90
	movss	.LC6(%rip), %xmm0	#, tmp91
	mulss	%xmm1, %xmm0	# tmp90, D.7855
	movss	.LC7(%rip), %xmm1	#, tmp92
	divss	%xmm0, %xmm1	# D.7855, D.7855
	movaps	%xmm1, %xmm0	# D.7855, D.7855
	.loc 1 187 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	calculateAccZLowPassFilterRCTimeConstant, .-calculateAccZLowPassFilterRCTimeConstant
	.section	.text.imuResetAccelerationSum,"ax",@progbits
	.globl	imuResetAccelerationSum
	.type	imuResetAccelerationSum, @function
imuResetAccelerationSum:
.LFB22:
	.loc 1 190 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 191 0
	movl	$0, accSum(%rip)	#, accSum
	.loc 1 192 0
	movl	$0, accSum+4(%rip)	#, accSum
	.loc 1 193 0
	movl	$0, accSum+8(%rip)	#, accSum
	.loc 1 194 0
	movl	$0, accSumCount(%rip)	#, accSumCount
	.loc 1 195 0
	movl	$0, accTimeSum(%rip)	#, accTimeSum
	.loc 1 196 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	imuResetAccelerationSum, .-imuResetAccelerationSum
	.section	.text.imuTransformVectorBodyToEarth,"ax",@progbits
	.globl	imuTransformVectorBodyToEarth
	.type	imuTransformVectorBodyToEarth, @function
imuTransformVectorBodyToEarth:
.LFB23:
	.loc 1 199 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# v, v
	.loc 1 203 0
	movss	rMat(%rip), %xmm1	# rMat, D.7856
	movq	-24(%rbp), %rax	# v, tmp118
	movss	(%rax), %xmm0	# v_3(D)->V.X, D.7856
	mulss	%xmm0, %xmm1	# D.7856, D.7856
	movss	rMat+4(%rip), %xmm2	# rMat, D.7856
	movq	-24(%rbp), %rax	# v, tmp119
	movss	4(%rax), %xmm0	# v_3(D)->V.Y, D.7856
	mulss	%xmm2, %xmm0	# D.7856, D.7856
	addss	%xmm0, %xmm1	# D.7856, D.7856
	movss	rMat+8(%rip), %xmm2	# rMat, D.7856
	movq	-24(%rbp), %rax	# v, tmp120
	movss	8(%rax), %xmm0	# v_3(D)->V.Z, D.7856
	mulss	%xmm2, %xmm0	# D.7856, D.7856
	addss	%xmm1, %xmm0	# D.7856, tmp121
	movss	%xmm0, -12(%rbp)	# tmp121, x
	.loc 1 204 0
	movss	rMat+12(%rip), %xmm1	# rMat, D.7856
	movq	-24(%rbp), %rax	# v, tmp122
	movss	(%rax), %xmm0	# v_3(D)->V.X, D.7856
	mulss	%xmm0, %xmm1	# D.7856, D.7856
	movss	rMat+16(%rip), %xmm2	# rMat, D.7856
	movq	-24(%rbp), %rax	# v, tmp123
	movss	4(%rax), %xmm0	# v_3(D)->V.Y, D.7856
	mulss	%xmm2, %xmm0	# D.7856, D.7856
	addss	%xmm0, %xmm1	# D.7856, D.7856
	movss	rMat+20(%rip), %xmm2	# rMat, D.7856
	movq	-24(%rbp), %rax	# v, tmp124
	movss	8(%rax), %xmm0	# v_3(D)->V.Z, D.7856
	mulss	%xmm2, %xmm0	# D.7856, D.7856
	addss	%xmm1, %xmm0	# D.7856, tmp125
	movss	%xmm0, -8(%rbp)	# tmp125, y
	.loc 1 205 0
	movss	rMat+24(%rip), %xmm1	# rMat, D.7856
	movq	-24(%rbp), %rax	# v, tmp126
	movss	(%rax), %xmm0	# v_3(D)->V.X, D.7856
	mulss	%xmm0, %xmm1	# D.7856, D.7856
	movss	rMat+28(%rip), %xmm2	# rMat, D.7856
	movq	-24(%rbp), %rax	# v, tmp127
	movss	4(%rax), %xmm0	# v_3(D)->V.Y, D.7856
	mulss	%xmm2, %xmm0	# D.7856, D.7856
	addss	%xmm0, %xmm1	# D.7856, D.7856
	movss	rMat+32(%rip), %xmm2	# rMat, D.7856
	movq	-24(%rbp), %rax	# v, tmp128
	movss	8(%rax), %xmm0	# v_3(D)->V.Z, D.7856
	mulss	%xmm2, %xmm0	# D.7856, D.7856
	addss	%xmm1, %xmm0	# D.7856, tmp129
	movss	%xmm0, -4(%rbp)	# tmp129, z
	.loc 1 207 0
	movq	-24(%rbp), %rax	# v, tmp130
	movss	-12(%rbp), %xmm0	# x, tmp131
	movss	%xmm0, (%rax)	# tmp131, v_3(D)->V.X
	.loc 1 208 0
	movss	-8(%rbp), %xmm1	# y, tmp132
	movss	.LC8(%rip), %xmm0	#, tmp133
	xorps	%xmm1, %xmm0	# tmp132, D.7856
	movq	-24(%rbp), %rax	# v, tmp134
	movss	%xmm0, 4(%rax)	# D.7856, v_3(D)->V.Y
	.loc 1 209 0
	movq	-24(%rbp), %rax	# v, tmp135
	movss	-4(%rbp), %xmm0	# z, tmp136
	movss	%xmm0, 8(%rax)	# tmp136, v_3(D)->V.Z
	.loc 1 210 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	imuTransformVectorBodyToEarth, .-imuTransformVectorBodyToEarth
	.section	.text.imuCalculateAcceleration,"ax",@progbits
	.globl	imuCalculateAcceleration
	.type	imuCalculateAcceleration, @function
imuCalculateAcceleration:
.LFB24:
	.loc 1 214 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)	# deltaT, deltaT
	.loc 1 214 0
	movq	%fs:40, %rax	#, tmp176
	movq	%rax, -24(%rbp)	# tmp176, D.7866
	xorl	%eax, %eax	# tmp176
	.loc 1 221 0
	movl	-68(%rbp), %eax	# deltaT, tmp158
	testq	%rax, %rax	# tmp158
	js	.L12	#,
	pxor	%xmm0, %xmm0	# D.7857
	cvtsi2ssq	%rax, %xmm0	# tmp158, D.7857
	jmp	.L13	#
.L12:
	movq	%rax, %rdx	# tmp158, tmp160
	shrq	%rdx	# tmp160
	andl	$1, %eax	#, tmp161
	orq	%rax, %rdx	# tmp161, tmp160
	pxor	%xmm0, %xmm0	# tmp159
	cvtsi2ssq	%rdx, %xmm0	# tmp160, tmp159
	addss	%xmm0, %xmm0	# tmp159, D.7857
.L13:
	movss	.LC9(%rip), %xmm1	#, tmp163
	mulss	%xmm1, %xmm0	# tmp163, tmp162
	movss	%xmm0, -52(%rbp)	# tmp162, dT
	.loc 1 223 0
	movzwl	accSmooth(%rip), %eax	# accSmooth, D.7858
	cwtl
	pxor	%xmm0, %xmm0	# D.7857
	cvtsi2ss	%eax, %xmm0	# tmp164, D.7857
	movss	%xmm0, -48(%rbp)	# D.7857, accel_ned.V.X
	.loc 1 224 0
	movzwl	accSmooth+2(%rip), %eax	# accSmooth, D.7858
	cwtl
	pxor	%xmm0, %xmm0	# D.7857
	cvtsi2ss	%eax, %xmm0	# tmp165, D.7857
	movss	%xmm0, -44(%rbp)	# D.7857, accel_ned.V.Y
	.loc 1 225 0
	movzwl	accSmooth+4(%rip), %eax	# accSmooth, D.7858
	cwtl
	pxor	%xmm0, %xmm0	# D.7857
	cvtsi2ss	%eax, %xmm0	# tmp166, D.7857
	movss	%xmm0, -40(%rbp)	# D.7857, accel_ned.V.Z
	.loc 1 227 0
	leaq	-48(%rbp), %rax	#, tmp167
	movq	%rax, %rdi	# tmp167,
	call	imuTransformVectorBodyToEarth	#
	.loc 1 229 0
	movq	imuRuntimeConfig(%rip), %rax	# imuRuntimeConfig, D.7859
	movzbl	1(%rax), %eax	# _17->acc_unarmedcal, D.7860
	cmpb	$1, %al	#, D.7860
	jne	.L14	#,
	.loc 1 230 0
	movzbl	armingFlags(%rip), %eax	# armingFlags, D.7860
	movzbl	%al, %eax	# D.7860, D.7861
	andl	$4, %eax	#, D.7861
	testl	%eax, %eax	# D.7861
	jne	.L15	#,
	.loc 1 231 0
	movl	accZoffset.6763(%rip), %edx	# accZoffset, D.7861
	movl	accZoffset.6763(%rip), %eax	# accZoffset, D.7861
	leal	63(%rax), %ecx	#, tmp169
	testl	%eax, %eax	# tmp168
	cmovs	%ecx, %eax	# tmp169,, tmp168
	sarl	$6, %eax	#, tmp170
	subl	%eax, %edx	# D.7861, D.7861
	movl	%edx, %eax	# D.7861, D.7861
	movl	%eax, accZoffset.6763(%rip)	# D.7861, accZoffset
	.loc 1 232 0
	movl	accZoffset.6763(%rip), %eax	# accZoffset, D.7861
	pxor	%xmm0, %xmm0	# D.7857
	cvtsi2ss	%eax, %xmm0	# D.7861, D.7857
	movss	-40(%rbp), %xmm1	# accel_ned.V.Z, D.7857
	addss	%xmm1, %xmm0	# D.7857, D.7857
	cvttss2si	%xmm0, %eax	# D.7857, D.7861
	movl	%eax, accZoffset.6763(%rip)	# D.7861, accZoffset
.L15:
	.loc 1 234 0
	movss	-40(%rbp), %xmm1	# accel_ned.V.Z, D.7857
	movl	accZoffset.6763(%rip), %eax	# accZoffset, D.7861
	leal	63(%rax), %edx	#, tmp172
	testl	%eax, %eax	# tmp171
	cmovs	%edx, %eax	# tmp172,, tmp171
	sarl	$6, %eax	#, tmp173
	pxor	%xmm0, %xmm0	# D.7857
	cvtsi2ss	%eax, %xmm0	# D.7861, D.7857
	subss	%xmm0, %xmm1	# D.7857, D.7857
	movaps	%xmm1, %xmm0	# D.7857, D.7857
	movss	%xmm0, -40(%rbp)	# D.7857, accel_ned.V.Z
	jmp	.L16	#
.L14:
	.loc 1 236 0
	movss	-40(%rbp), %xmm1	# accel_ned.V.Z, D.7857
	movzwl	acc+16(%rip), %eax	# acc.acc_1G, D.7862
	movzwl	%ax, %eax	# D.7862, D.7861
	pxor	%xmm0, %xmm0	# D.7857
	cvtsi2ss	%eax, %xmm0	# D.7861, D.7857
	subss	%xmm0, %xmm1	# D.7857, D.7857
	movaps	%xmm1, %xmm0	# D.7857, D.7857
	movss	%xmm0, -40(%rbp)	# D.7857, accel_ned.V.Z
.L16:
	.loc 1 238 0
	movss	fc_acc(%rip), %xmm0	# fc_acc, D.7857
	addss	-52(%rbp), %xmm0	# dT, D.7857
	movss	-52(%rbp), %xmm1	# dT, tmp174
	divss	%xmm0, %xmm1	# D.7857, D.7857
	movss	-40(%rbp), %xmm0	# accel_ned.V.Z, D.7857
	movss	accz_smooth.6764(%rip), %xmm2	# accz_smooth, D.7857
	subss	%xmm2, %xmm0	# D.7857, D.7857
	mulss	%xmm1, %xmm0	# D.7857, D.7857
	movss	accz_smooth.6764(%rip), %xmm1	# accz_smooth, D.7857
	addss	%xmm1, %xmm0	# D.7857, D.7857
	movss	%xmm0, accz_smooth.6764(%rip)	# D.7857, accz_smooth
	.loc 1 241 0
	movq	accDeadband(%rip), %rax	# accDeadband, D.7863
	movzbl	(%rax), %eax	# _55->xy, D.7860
	movzbl	%al, %ebx	# D.7860, D.7861
	movl	-48(%rbp), %eax	# accel_ned.V.X, D.7857
	movl	%eax, -72(%rbp)	# D.7857, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	lrintf	#
	movl	%ebx, %esi	# D.7861,
	movl	%eax, %edi	# D.7861,
	call	applyDeadband	#
	movl	%eax, %edx	#, D.7861
	movl	accSum(%rip), %eax	# accSum, D.7861
	addl	%edx, %eax	# D.7861, D.7861
	movl	%eax, accSum(%rip)	# D.7861, accSum
	.loc 1 242 0
	movq	accDeadband(%rip), %rax	# accDeadband, D.7863
	movzbl	(%rax), %eax	# _67->xy, D.7860
	movzbl	%al, %ebx	# D.7860, D.7861
	movl	-44(%rbp), %eax	# accel_ned.V.Y, D.7857
	movl	%eax, -72(%rbp)	# D.7857, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	lrintf	#
	movl	%ebx, %esi	# D.7861,
	movl	%eax, %edi	# D.7861,
	call	applyDeadband	#
	movl	%eax, %edx	#, D.7861
	movl	accSum+4(%rip), %eax	# accSum, D.7861
	addl	%edx, %eax	# D.7861, D.7861
	movl	%eax, accSum+4(%rip)	# D.7861, accSum
	.loc 1 243 0
	movq	accDeadband(%rip), %rax	# accDeadband, D.7863
	movzbl	1(%rax), %eax	# _79->z, D.7860
	movzbl	%al, %ebx	# D.7860, D.7861
	movl	accz_smooth.6764(%rip), %eax	# accz_smooth, D.7857
	movl	%eax, -72(%rbp)	# D.7857, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	lrintf	#
	movl	%ebx, %esi	# D.7861,
	movl	%eax, %edi	# D.7861,
	call	applyDeadband	#
	movl	%eax, %edx	#, D.7861
	movl	accSum+8(%rip), %eax	# accSum, D.7861
	addl	%edx, %eax	# D.7861, D.7861
	movl	%eax, accSum+8(%rip)	# D.7861, accSum
	.loc 1 246 0
	movl	accTimeSum(%rip), %edx	# accTimeSum, D.7865
	movl	-68(%rbp), %eax	# deltaT, tmp175
	addl	%edx, %eax	# D.7865, D.7865
	movl	%eax, accTimeSum(%rip)	# D.7865, accTimeSum
	.loc 1 247 0
	movl	accSumCount(%rip), %eax	# accSumCount, D.7861
	addl	$1, %eax	#, D.7861
	movl	%eax, accSumCount(%rip)	# D.7861, accSumCount
	.loc 1 248 0
	nop
	movq	-24(%rbp), %rax	# D.7866, tmp177
	xorq	%fs:40, %rax	#, tmp177
	je	.L17	#,
	call	__stack_chk_fail	#
.L17:
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	imuCalculateAcceleration, .-imuCalculateAcceleration
	.section	.text.invSqrt,"ax",@progbits
	.type	invSqrt, @function
invSqrt:
.LFB25:
	.loc 1 251 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movss	%xmm0, -4(%rbp)	# x, x
	.loc 1 252 0
	movl	-4(%rbp), %eax	# x, tmp90
	movl	%eax, -8(%rbp)	# tmp90, %sfp
	movss	-8(%rbp), %xmm0	# %sfp,
	call	sqrtf	#
	movaps	%xmm0, %xmm1	#, D.7869
	movss	.LC0(%rip), %xmm0	#, tmp91
	divss	%xmm1, %xmm0	# D.7869, D.7869
	.loc 1 253 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	invSqrt, .-invSqrt
	.section	.text.imuUseFastGains,"ax",@progbits
	.type	imuUseFastGains, @function
imuUseFastGains:
.LFB26:
	.loc 1 256 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 257 0
	movzbl	armingFlags(%rip), %eax	# armingFlags, D.7871
	movzbl	%al, %eax	# D.7871, D.7870
	andl	$4, %eax	#, D.7870
	testl	%eax, %eax	# D.7870
	jne	.L21	#,
	.loc 1 257 0 is_stmt 0 discriminator 1
	call	millis	#
	cmpq	$19999, %rax	#, D.7872
	ja	.L21	#,
	.loc 1 257 0 discriminator 3
	movl	$1, %eax	#, D.7870
	jmp	.L22	#
.L21:
	.loc 1 257 0 discriminator 4
	movl	$0, %eax	#, D.7870
.L22:
	.loc 1 257 0 discriminator 6
	andl	$1, %eax	#, D.7873
	.loc 1 258 0 is_stmt 1 discriminator 6
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	imuUseFastGains, .-imuUseFastGains
	.section	.text.imuGetPGainScaleFactor,"ax",@progbits
	.type	imuGetPGainScaleFactor, @function
imuGetPGainScaleFactor:
.LFB27:
	.loc 1 261 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 262 0
	call	imuUseFastGains	#
	testb	%al, %al	# D.7875
	je	.L25	#,
	.loc 1 263 0
	movss	.LC10(%rip), %xmm0	#, D.7874
	jmp	.L26	#
.L25:
	.loc 1 266 0
	movss	.LC0(%rip), %xmm0	#, D.7874
.L26:
	.loc 1 268 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	imuGetPGainScaleFactor, .-imuGetPGainScaleFactor
	.section	.text.imuMahonyAHRSupdate,"ax",@progbits
	.type	imuMahonyAHRSupdate, @function
imuMahonyAHRSupdate:
.LFB28:
	.loc 1 274 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movss	%xmm0, -68(%rbp)	# dt, dt
	movss	%xmm1, -72(%rbp)	# gx, gx
	movss	%xmm2, -76(%rbp)	# gy, gy
	movss	%xmm3, -80(%rbp)	# gz, gz
	movss	%xmm4, -88(%rbp)	# ax, ax
	movss	%xmm5, -92(%rbp)	# ay, ay
	movss	%xmm6, -96(%rbp)	# az, az
	movl	%esi, %ecx	# useMag, tmp227
	movss	%xmm7, -104(%rbp)	# mx, mx
	movl	%edx, %eax	# useYaw, tmp228
	movb	%dil, -84(%rbp)	# tmp226, useAcc
	movb	%cl, -100(%rbp)	# tmp227, useMag
	movb	%al, -108(%rbp)	# tmp228, useYaw
	.loc 1 278 0
	pxor	%xmm0, %xmm0	# tmp229
	movss	%xmm0, -56(%rbp)	# tmp229, ex
	pxor	%xmm0, %xmm0	# tmp230
	movss	%xmm0, -52(%rbp)	# tmp230, ey
	pxor	%xmm0, %xmm0	# tmp231
	movss	%xmm0, -48(%rbp)	# tmp231, ez
	.loc 1 282 0
	movss	-72(%rbp), %xmm0	# gx, tmp232
	movaps	%xmm0, %xmm1	# tmp232, D.7876
	mulss	-72(%rbp), %xmm1	# gx, D.7876
	movss	-76(%rbp), %xmm0	# gy, tmp233
	mulss	-76(%rbp), %xmm0	# gy, D.7876
	addss	%xmm0, %xmm1	# D.7876, D.7876
	movss	-80(%rbp), %xmm0	# gz, tmp234
	mulss	-80(%rbp), %xmm0	# gz, D.7876
	addss	%xmm1, %xmm0	# D.7876, D.7876
	call	sqrtf	#
	movd	%xmm0, %eax	#, tmp235
	movl	%eax, -44(%rbp)	# tmp235, spin_rate
	.loc 1 285 0
	cmpb	$0, -108(%rbp)	#, useYaw
	je	.L28	#,
	.loc 1 286 0
	jmp	.L29	#
.L30:
	.loc 1 286 0 is_stmt 0 discriminator 2
	movss	32(%rbp), %xmm0	# yawError, tmp237
	movss	.LC12(%rip), %xmm1	#, tmp238
	subss	%xmm1, %xmm0	# tmp238, tmp236
	movss	%xmm0, 32(%rbp)	# tmp236, yawError
.L29:
	.loc 1 286 0 discriminator 1
	movss	32(%rbp), %xmm0	# yawError, tmp239
	ucomiss	.LC6(%rip), %xmm0	#, tmp239
	ja	.L30	#,
	.loc 1 287 0 is_stmt 1
	jmp	.L31	#
.L32:
	.loc 1 287 0 is_stmt 0 discriminator 2
	movss	32(%rbp), %xmm1	# yawError, tmp241
	movss	.LC12(%rip), %xmm0	#, tmp242
	addss	%xmm1, %xmm0	# tmp241, tmp240
	movss	%xmm0, 32(%rbp)	# tmp240, yawError
.L31:
	.loc 1 287 0 discriminator 1
	movss	.LC13(%rip), %xmm0	#, tmp243
	ucomiss	32(%rbp), %xmm0	# yawError, tmp243
	ja	.L32	#,
	.loc 1 289 0 is_stmt 1
	movss	32(%rbp), %xmm0	# yawError, tmp244
	movss	.LC14(%rip), %xmm1	#, tmp245
	divss	%xmm1, %xmm0	# tmp245, D.7876
	call	sinf	#
	movaps	%xmm0, %xmm1	#, D.7876
	movss	-48(%rbp), %xmm0	# ez, tmp247
	addss	%xmm1, %xmm0	# D.7876, tmp246
	movss	%xmm0, -48(%rbp)	# tmp246, ez
.L28:
	.loc 1 293 0
	movss	-104(%rbp), %xmm0	# mx, tmp248
	movaps	%xmm0, %xmm1	# tmp248, D.7876
	mulss	-104(%rbp), %xmm1	# mx, D.7876
	movss	16(%rbp), %xmm0	# my, tmp249
	mulss	16(%rbp), %xmm0	# my, D.7876
	addss	%xmm0, %xmm1	# D.7876, D.7876
	movss	24(%rbp), %xmm0	# mz, tmp250
	mulss	24(%rbp), %xmm0	# mz, D.7876
	addss	%xmm1, %xmm0	# D.7876, tmp251
	movss	%xmm0, -40(%rbp)	# tmp251, recipNorm
	.loc 1 294 0
	cmpb	$0, -100(%rbp)	#, useMag
	je	.L33	#,
	.loc 1 294 0 is_stmt 0 discriminator 1
	movss	-40(%rbp), %xmm0	# recipNorm, tmp252
	ucomiss	.LC15(%rip), %xmm0	#, tmp252
	jbe	.L33	#,
.LBB2:
	.loc 1 296 0 is_stmt 1
	movl	-40(%rbp), %eax	# recipNorm, tmp253
	movl	%eax, -112(%rbp)	# tmp253, %sfp
	movss	-112(%rbp), %xmm0	# %sfp,
	call	invSqrt	#
	movd	%xmm0, %eax	#, tmp254
	movl	%eax, -40(%rbp)	# tmp254, recipNorm
	.loc 1 297 0
	movss	-104(%rbp), %xmm0	# mx, tmp256
	mulss	-40(%rbp), %xmm0	# recipNorm, tmp255
	movss	%xmm0, -104(%rbp)	# tmp255, mx
	.loc 1 298 0
	movss	16(%rbp), %xmm0	# my, tmp258
	mulss	-40(%rbp), %xmm0	# recipNorm, tmp257
	movss	%xmm0, 16(%rbp)	# tmp257, my
	.loc 1 299 0
	movss	24(%rbp), %xmm0	# mz, tmp260
	mulss	-40(%rbp), %xmm0	# recipNorm, tmp259
	movss	%xmm0, 24(%rbp)	# tmp259, mz
	.loc 1 306 0
	movss	rMat(%rip), %xmm0	# rMat, D.7876
	movaps	%xmm0, %xmm1	# D.7876, D.7876
	mulss	-104(%rbp), %xmm1	# mx, D.7876
	movss	rMat+4(%rip), %xmm0	# rMat, D.7876
	mulss	16(%rbp), %xmm0	# my, D.7876
	addss	%xmm0, %xmm1	# D.7876, D.7876
	movss	rMat+8(%rip), %xmm0	# rMat, D.7876
	mulss	24(%rbp), %xmm0	# mz, D.7876
	addss	%xmm1, %xmm0	# D.7876, tmp261
	movss	%xmm0, -36(%rbp)	# tmp261, hx
	.loc 1 307 0
	movss	rMat+12(%rip), %xmm0	# rMat, D.7876
	movaps	%xmm0, %xmm1	# D.7876, D.7876
	mulss	-104(%rbp), %xmm1	# mx, D.7876
	movss	rMat+16(%rip), %xmm0	# rMat, D.7876
	mulss	16(%rbp), %xmm0	# my, D.7876
	addss	%xmm0, %xmm1	# D.7876, D.7876
	movss	rMat+20(%rip), %xmm0	# rMat, D.7876
	mulss	24(%rbp), %xmm0	# mz, D.7876
	addss	%xmm1, %xmm0	# D.7876, tmp262
	movss	%xmm0, -32(%rbp)	# tmp262, hy
	.loc 1 308 0
	movss	-36(%rbp), %xmm0	# hx, tmp263
	movaps	%xmm0, %xmm1	# tmp263, D.7876
	mulss	-36(%rbp), %xmm1	# hx, D.7876
	movss	-32(%rbp), %xmm0	# hy, tmp264
	mulss	-32(%rbp), %xmm0	# hy, D.7876
	addss	%xmm1, %xmm0	# D.7876, D.7876
	call	sqrtf	#
	movd	%xmm0, %eax	#, tmp265
	movl	%eax, -28(%rbp)	# tmp265, bx
	.loc 1 311 0
	movss	-32(%rbp), %xmm0	# hy, tmp266
	mulss	-28(%rbp), %xmm0	# bx, D.7876
	movss	.LC8(%rip), %xmm1	#, tmp268
	xorps	%xmm1, %xmm0	# tmp268, tmp267
	movss	%xmm0, -24(%rbp)	# tmp267, ez_ef
	.loc 1 314 0
	movss	rMat+24(%rip), %xmm0	# rMat, D.7876
	mulss	-24(%rbp), %xmm0	# ez_ef, D.7876
	movss	-56(%rbp), %xmm1	# ex, tmp270
	addss	%xmm1, %xmm0	# tmp270, tmp269
	movss	%xmm0, -56(%rbp)	# tmp269, ex
	.loc 1 315 0
	movss	rMat+28(%rip), %xmm0	# rMat, D.7876
	mulss	-24(%rbp), %xmm0	# ez_ef, D.7876
	movss	-52(%rbp), %xmm1	# ey, tmp272
	addss	%xmm1, %xmm0	# tmp272, tmp271
	movss	%xmm0, -52(%rbp)	# tmp271, ey
	.loc 1 316 0
	movss	rMat+32(%rip), %xmm0	# rMat, D.7876
	mulss	-24(%rbp), %xmm0	# ez_ef, D.7876
	movss	-48(%rbp), %xmm1	# ez, tmp274
	addss	%xmm1, %xmm0	# tmp274, tmp273
	movss	%xmm0, -48(%rbp)	# tmp273, ez
.L33:
.LBE2:
	.loc 1 320 0
	movss	-88(%rbp), %xmm0	# ax, tmp275
	movaps	%xmm0, %xmm1	# tmp275, D.7876
	mulss	-88(%rbp), %xmm1	# ax, D.7876
	movss	-92(%rbp), %xmm0	# ay, tmp276
	mulss	-92(%rbp), %xmm0	# ay, D.7876
	addss	%xmm0, %xmm1	# D.7876, D.7876
	movss	-96(%rbp), %xmm0	# az, tmp277
	mulss	-96(%rbp), %xmm0	# az, D.7876
	addss	%xmm1, %xmm0	# D.7876, tmp278
	movss	%xmm0, -40(%rbp)	# tmp278, recipNorm
	.loc 1 321 0
	cmpb	$0, -84(%rbp)	#, useAcc
	je	.L35	#,
	.loc 1 321 0 is_stmt 0 discriminator 1
	movss	-40(%rbp), %xmm0	# recipNorm, tmp279
	ucomiss	.LC15(%rip), %xmm0	#, tmp279
	jbe	.L35	#,
	.loc 1 323 0 is_stmt 1
	movl	-40(%rbp), %eax	# recipNorm, tmp280
	movl	%eax, -112(%rbp)	# tmp280, %sfp
	movss	-112(%rbp), %xmm0	# %sfp,
	call	invSqrt	#
	movd	%xmm0, %eax	#, tmp281
	movl	%eax, -40(%rbp)	# tmp281, recipNorm
	.loc 1 324 0
	movss	-88(%rbp), %xmm0	# ax, tmp283
	mulss	-40(%rbp), %xmm0	# recipNorm, tmp282
	movss	%xmm0, -88(%rbp)	# tmp282, ax
	.loc 1 325 0
	movss	-92(%rbp), %xmm0	# ay, tmp285
	mulss	-40(%rbp), %xmm0	# recipNorm, tmp284
	movss	%xmm0, -92(%rbp)	# tmp284, ay
	.loc 1 326 0
	movss	-96(%rbp), %xmm0	# az, tmp287
	mulss	-40(%rbp), %xmm0	# recipNorm, tmp286
	movss	%xmm0, -96(%rbp)	# tmp286, az
	.loc 1 329 0
	movss	rMat+32(%rip), %xmm0	# rMat, D.7876
	mulss	-92(%rbp), %xmm0	# ay, D.7876
	movss	rMat+28(%rip), %xmm1	# rMat, D.7876
	mulss	-96(%rbp), %xmm1	# az, D.7876
	subss	%xmm1, %xmm0	# D.7876, D.7876
	movss	-56(%rbp), %xmm1	# ex, tmp289
	addss	%xmm1, %xmm0	# tmp289, tmp288
	movss	%xmm0, -56(%rbp)	# tmp288, ex
	.loc 1 330 0
	movss	rMat+24(%rip), %xmm0	# rMat, D.7876
	mulss	-96(%rbp), %xmm0	# az, D.7876
	movss	rMat+32(%rip), %xmm1	# rMat, D.7876
	mulss	-88(%rbp), %xmm1	# ax, D.7876
	subss	%xmm1, %xmm0	# D.7876, D.7876
	movss	-52(%rbp), %xmm1	# ey, tmp291
	addss	%xmm1, %xmm0	# tmp291, tmp290
	movss	%xmm0, -52(%rbp)	# tmp290, ey
	.loc 1 331 0
	movss	rMat+28(%rip), %xmm0	# rMat, D.7876
	mulss	-88(%rbp), %xmm0	# ax, D.7876
	movss	rMat+24(%rip), %xmm1	# rMat, D.7876
	mulss	-92(%rbp), %xmm1	# ay, D.7876
	subss	%xmm1, %xmm0	# D.7876, D.7876
	movss	-48(%rbp), %xmm1	# ez, tmp293
	addss	%xmm1, %xmm0	# tmp293, tmp292
	movss	%xmm0, -48(%rbp)	# tmp292, ez
.L35:
	.loc 1 335 0
	movq	imuRuntimeConfig(%rip), %rax	# imuRuntimeConfig, D.7877
	movss	4(%rax), %xmm0	# _113->dcm_ki, D.7876
	pxor	%xmm1, %xmm1	# tmp294
	ucomiss	%xmm1, %xmm0	# tmp294, D.7876
	jbe	.L46	#,
	.loc 1 337 0
	movss	.LC16(%rip), %xmm0	#, tmp295
	ucomiss	-44(%rbp), %xmm0	# spin_rate, tmp295
	jbe	.L41	#,
.LBB3:
	.loc 1 338 0
	movq	imuRuntimeConfig(%rip), %rax	# imuRuntimeConfig, D.7877
	movss	4(%rax), %xmm0	# _115->dcm_ki, tmp296
	movss	%xmm0, -20(%rbp)	# tmp296, dcmKiGain
	.loc 1 339 0
	movss	-20(%rbp), %xmm0	# dcmKiGain, tmp297
	mulss	-56(%rbp), %xmm0	# ex, D.7876
	mulss	-68(%rbp), %xmm0	# dt, D.7876
	movss	integralFBx.6792(%rip), %xmm1	# integralFBx, D.7876
	addss	%xmm1, %xmm0	# D.7876, D.7876
	movss	%xmm0, integralFBx.6792(%rip)	# D.7876, integralFBx
	.loc 1 340 0
	movss	-20(%rbp), %xmm0	# dcmKiGain, tmp298
	mulss	-52(%rbp), %xmm0	# ey, D.7876
	mulss	-68(%rbp), %xmm0	# dt, D.7876
	movss	integralFBy.6793(%rip), %xmm1	# integralFBy, D.7876
	addss	%xmm1, %xmm0	# D.7876, D.7876
	movss	%xmm0, integralFBy.6793(%rip)	# D.7876, integralFBy
	.loc 1 341 0
	movss	-20(%rbp), %xmm0	# dcmKiGain, tmp299
	mulss	-48(%rbp), %xmm0	# ez, D.7876
	mulss	-68(%rbp), %xmm0	# dt, D.7876
	movss	integralFBz.6794(%rip), %xmm1	# integralFBz, D.7876
	addss	%xmm1, %xmm0	# D.7876, D.7876
	movss	%xmm0, integralFBz.6794(%rip)	# D.7876, integralFBz
	jmp	.L41	#
.L46:
.LBE3:
	.loc 1 345 0
	pxor	%xmm0, %xmm0	# tmp300
	movss	%xmm0, integralFBx.6792(%rip)	# tmp300, integralFBx
	.loc 1 346 0
	pxor	%xmm0, %xmm0	# tmp301
	movss	%xmm0, integralFBy.6793(%rip)	# tmp301, integralFBy
	.loc 1 347 0
	pxor	%xmm0, %xmm0	# tmp302
	movss	%xmm0, integralFBz.6794(%rip)	# tmp302, integralFBz
.L41:
	.loc 1 351 0
	movq	imuRuntimeConfig(%rip), %rax	# imuRuntimeConfig, D.7877
	movss	8(%rax), %xmm3	# _136->dcm_kp, D.7876
	movss	%xmm3, -112(%rbp)	# D.7876, %sfp
	call	imuGetPGainScaleFactor	#
	mulss	-112(%rbp), %xmm0	# %sfp, tmp303
	movss	%xmm0, -16(%rbp)	# tmp303, dcmKpGain
	.loc 1 354 0
	movss	-16(%rbp), %xmm0	# dcmKpGain, tmp304
	mulss	-56(%rbp), %xmm0	# ex, D.7876
	movss	integralFBx.6792(%rip), %xmm1	# integralFBx, D.7876
	addss	%xmm1, %xmm0	# D.7876, D.7876
	movss	-72(%rbp), %xmm1	# gx, tmp306
	addss	%xmm1, %xmm0	# tmp306, tmp305
	movss	%xmm0, -72(%rbp)	# tmp305, gx
	.loc 1 355 0
	movss	-16(%rbp), %xmm0	# dcmKpGain, tmp307
	mulss	-52(%rbp), %xmm0	# ey, D.7876
	movss	integralFBy.6793(%rip), %xmm1	# integralFBy, D.7876
	addss	%xmm1, %xmm0	# D.7876, D.7876
	movss	-76(%rbp), %xmm1	# gy, tmp309
	addss	%xmm1, %xmm0	# tmp309, tmp308
	movss	%xmm0, -76(%rbp)	# tmp308, gy
	.loc 1 356 0
	movss	-16(%rbp), %xmm0	# dcmKpGain, tmp310
	mulss	-48(%rbp), %xmm0	# ez, D.7876
	movss	integralFBz.6794(%rip), %xmm1	# integralFBz, D.7876
	addss	%xmm1, %xmm0	# D.7876, D.7876
	movss	-80(%rbp), %xmm1	# gz, tmp312
	addss	%xmm1, %xmm0	# tmp312, tmp311
	movss	%xmm0, -80(%rbp)	# tmp311, gz
	.loc 1 359 0
	movss	-68(%rbp), %xmm1	# dt, tmp313
	movss	.LC7(%rip), %xmm0	#, tmp314
	mulss	%xmm1, %xmm0	# tmp313, D.7876
	movss	-72(%rbp), %xmm1	# gx, tmp316
	mulss	%xmm1, %xmm0	# tmp316, tmp315
	movss	%xmm0, -72(%rbp)	# tmp315, gx
	.loc 1 360 0
	movss	-68(%rbp), %xmm1	# dt, tmp317
	movss	.LC7(%rip), %xmm0	#, tmp318
	mulss	%xmm1, %xmm0	# tmp317, D.7876
	movss	-76(%rbp), %xmm1	# gy, tmp320
	mulss	%xmm1, %xmm0	# tmp320, tmp319
	movss	%xmm0, -76(%rbp)	# tmp319, gy
	.loc 1 361 0
	movss	-68(%rbp), %xmm1	# dt, tmp321
	movss	.LC7(%rip), %xmm0	#, tmp322
	mulss	%xmm1, %xmm0	# tmp321, D.7876
	movss	-80(%rbp), %xmm1	# gz, tmp324
	mulss	%xmm1, %xmm0	# tmp324, tmp323
	movss	%xmm0, -80(%rbp)	# tmp323, gz
	.loc 1 363 0
	movss	q0(%rip), %xmm0	# q0, tmp325
	movss	%xmm0, -12(%rbp)	# tmp325, qa
	.loc 1 364 0
	movss	q1(%rip), %xmm0	# q1, tmp326
	movss	%xmm0, -8(%rbp)	# tmp326, qb
	.loc 1 365 0
	movss	q2(%rip), %xmm0	# q2, tmp327
	movss	%xmm0, -4(%rbp)	# tmp327, qc
	.loc 1 366 0
	movss	-8(%rbp), %xmm1	# qb, tmp328
	movss	.LC8(%rip), %xmm0	#, tmp329
	xorps	%xmm1, %xmm0	# tmp328, D.7876
	mulss	-72(%rbp), %xmm0	# gx, D.7876
	movss	-4(%rbp), %xmm1	# qc, tmp330
	mulss	-76(%rbp), %xmm1	# gy, D.7876
	subss	%xmm1, %xmm0	# D.7876, D.7876
	movss	q3(%rip), %xmm1	# q3, D.7876
	mulss	-80(%rbp), %xmm1	# gz, D.7876
	subss	%xmm1, %xmm0	# D.7876, D.7876
	movss	q0(%rip), %xmm1	# q0, D.7876
	addss	%xmm1, %xmm0	# D.7876, D.7876
	movss	%xmm0, q0(%rip)	# D.7876, q0
	.loc 1 367 0
	movss	-12(%rbp), %xmm0	# qa, tmp331
	movaps	%xmm0, %xmm1	# tmp331, D.7876
	mulss	-72(%rbp), %xmm1	# gx, D.7876
	movss	-4(%rbp), %xmm0	# qc, tmp332
	mulss	-80(%rbp), %xmm0	# gz, D.7876
	addss	%xmm1, %xmm0	# D.7876, D.7876
	movss	q3(%rip), %xmm1	# q3, D.7876
	mulss	-76(%rbp), %xmm1	# gy, D.7876
	subss	%xmm1, %xmm0	# D.7876, D.7876
	movss	q1(%rip), %xmm1	# q1, D.7876
	addss	%xmm1, %xmm0	# D.7876, D.7876
	movss	%xmm0, q1(%rip)	# D.7876, q1
	.loc 1 368 0
	movss	-12(%rbp), %xmm0	# qa, tmp333
	mulss	-76(%rbp), %xmm0	# gy, D.7876
	movss	-8(%rbp), %xmm1	# qb, tmp334
	mulss	-80(%rbp), %xmm1	# gz, D.7876
	subss	%xmm1, %xmm0	# D.7876, D.7876
	movaps	%xmm0, %xmm1	# D.7876, D.7876
	movss	q3(%rip), %xmm0	# q3, D.7876
	mulss	-72(%rbp), %xmm0	# gx, D.7876
	addss	%xmm1, %xmm0	# D.7876, D.7876
	movss	q2(%rip), %xmm1	# q2, D.7876
	addss	%xmm1, %xmm0	# D.7876, D.7876
	movss	%xmm0, q2(%rip)	# D.7876, q2
	.loc 1 369 0
	movss	-12(%rbp), %xmm0	# qa, tmp335
	movaps	%xmm0, %xmm1	# tmp335, D.7876
	mulss	-80(%rbp), %xmm1	# gz, D.7876
	movss	-8(%rbp), %xmm0	# qb, tmp336
	mulss	-76(%rbp), %xmm0	# gy, D.7876
	addss	%xmm1, %xmm0	# D.7876, D.7876
	movss	-4(%rbp), %xmm1	# qc, tmp337
	mulss	-72(%rbp), %xmm1	# gx, D.7876
	subss	%xmm1, %xmm0	# D.7876, D.7876
	movss	q3(%rip), %xmm1	# q3, D.7876
	addss	%xmm1, %xmm0	# D.7876, D.7876
	movss	%xmm0, q3(%rip)	# D.7876, q3
	.loc 1 372 0
	movss	q0(%rip), %xmm1	# q0, D.7876
	movss	q0(%rip), %xmm0	# q0, D.7876
	mulss	%xmm0, %xmm1	# D.7876, D.7876
	movss	q1(%rip), %xmm2	# q1, D.7876
	movss	q1(%rip), %xmm0	# q1, D.7876
	mulss	%xmm2, %xmm0	# D.7876, D.7876
	addss	%xmm0, %xmm1	# D.7876, D.7876
	movss	q2(%rip), %xmm2	# q2, D.7876
	movss	q2(%rip), %xmm0	# q2, D.7876
	mulss	%xmm2, %xmm0	# D.7876, D.7876
	addss	%xmm0, %xmm1	# D.7876, D.7876
	movss	q3(%rip), %xmm2	# q3, D.7876
	movss	q3(%rip), %xmm0	# q3, D.7876
	mulss	%xmm2, %xmm0	# D.7876, D.7876
	addss	%xmm1, %xmm0	# D.7876, D.7876
	call	invSqrt	#
	movd	%xmm0, %eax	#, tmp338
	movl	%eax, -40(%rbp)	# tmp338, recipNorm
	.loc 1 373 0
	movss	q0(%rip), %xmm0	# q0, D.7876
	mulss	-40(%rbp), %xmm0	# recipNorm, D.7876
	movss	%xmm0, q0(%rip)	# D.7876, q0
	.loc 1 374 0
	movss	q1(%rip), %xmm0	# q1, D.7876
	mulss	-40(%rbp), %xmm0	# recipNorm, D.7876
	movss	%xmm0, q1(%rip)	# D.7876, q1
	.loc 1 375 0
	movss	q2(%rip), %xmm0	# q2, D.7876
	mulss	-40(%rbp), %xmm0	# recipNorm, D.7876
	movss	%xmm0, q2(%rip)	# D.7876, q2
	.loc 1 376 0
	movss	q3(%rip), %xmm0	# q3, D.7876
	mulss	-40(%rbp), %xmm0	# recipNorm, D.7876
	movss	%xmm0, q3(%rip)	# D.7876, q3
	.loc 1 379 0
	call	imuComputeRotationMatrix	#
	.loc 1 380 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	imuMahonyAHRSupdate, .-imuMahonyAHRSupdate
	.section	.text.imuUpdateEulerAngles,"ax",@progbits
	.type	imuUpdateEulerAngles, @function
imuUpdateEulerAngles:
.LFB29:
	.loc 1 383 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 386 0
	movss	rMat+32(%rip), %xmm0	# rMat, D.7878
	movl	rMat+28(%rip), %eax	# rMat, D.7878
	movaps	%xmm0, %xmm1	# D.7878,
	movl	%eax, -4(%rbp)	# D.7878, %sfp
	movss	-4(%rbp), %xmm0	# %sfp,
	call	atan2f	#
	movaps	%xmm0, %xmm1	#, D.7878
	movss	.LC5(%rip), %xmm0	#, tmp120
	mulss	%xmm1, %xmm0	# D.7878, D.7878
	call	lrintf	#
	movw	%ax, attitude(%rip)	# D.7880, attitude.values.roll
	.loc 1 387 0
	movss	rMat+24(%rip), %xmm1	# rMat, D.7878
	movss	.LC8(%rip), %xmm0	#, tmp121
	xorps	%xmm1, %xmm0	# D.7878, D.7878
	call	acosf	#
	movaps	%xmm0, %xmm1	#, D.7878
	movss	.LC17(%rip), %xmm0	#, tmp122
	subss	%xmm1, %xmm0	# D.7878, D.7878
	movss	.LC5(%rip), %xmm1	#, tmp123
	mulss	%xmm1, %xmm0	# tmp123, D.7878
	call	lrintf	#
	movw	%ax, attitude+2(%rip)	# D.7880, attitude.values.pitch
	.loc 1 388 0
	movss	rMat(%rip), %xmm0	# rMat, D.7878
	movl	rMat+12(%rip), %eax	# rMat, D.7878
	movaps	%xmm0, %xmm1	# D.7878,
	movl	%eax, -4(%rbp)	# D.7878, %sfp
	movss	-4(%rbp), %xmm0	# %sfp,
	call	atan2f	#
	movaps	%xmm0, %xmm1	#, D.7878
	movss	.LC8(%rip), %xmm0	#, tmp124
	xorps	%xmm1, %xmm0	# D.7878, D.7878
	movss	.LC5(%rip), %xmm1	#, tmp125
	mulss	%xmm1, %xmm0	# tmp125, D.7878
	movss	magneticDeclination(%rip), %xmm1	# magneticDeclination, D.7878
	addss	%xmm1, %xmm0	# D.7878, D.7878
	call	lrintf	#
	movw	%ax, attitude+4(%rip)	# D.7880, attitude.values.yaw
	.loc 1 390 0
	movzwl	attitude+4(%rip), %eax	# attitude.values.yaw, D.7880
	testw	%ax, %ax	# D.7880
	jns	.L48	#,
	.loc 1 391 0
	movzwl	attitude+4(%rip), %eax	# attitude.values.yaw, D.7880
	addw	$3600, %ax	#, D.7881
	movw	%ax, attitude+4(%rip)	# D.7880, attitude.values.yaw
.L48:
	.loc 1 394 0
	movss	rMat+32(%rip), %xmm0	# rMat, D.7878
	movss	smallAngleCosZ(%rip), %xmm1	# smallAngleCosZ, D.7878
	ucomiss	%xmm1, %xmm0	# D.7878, D.7878
	jbe	.L53	#,
	.loc 1 395 0
	movzbl	stateFlags(%rip), %eax	# stateFlags, D.7882
	orl	$8, %eax	#, D.7882
	movb	%al, stateFlags(%rip)	# D.7882, stateFlags
	.loc 1 399 0
	jmp	.L54	#
.L53:
	.loc 1 397 0
	movzbl	stateFlags(%rip), %eax	# stateFlags, D.7882
	andl	$-9, %eax	#, D.7882
	movb	%al, stateFlags(%rip)	# D.7882, stateFlags
.L54:
	.loc 1 399 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	imuUpdateEulerAngles, .-imuUpdateEulerAngles
	.section	.text.imuIsAircraftArmable,"ax",@progbits
	.globl	imuIsAircraftArmable
	.type	imuIsAircraftArmable, @function
imuIsAircraftArmable:
.LFB30:
	.loc 1 402 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, %eax	# arming_angle, tmp92
	movb	%al, -20(%rbp)	# tmp92, arming_angle
	.loc 1 405 0
	movzbl	-20(%rbp), %eax	# arming_angle, D.7883
	movl	%eax, %edi	# D.7883,
	call	degreesToRadians	#
	call	cosf	#
	movd	%xmm0, %eax	#, tmp93
	movl	%eax, -4(%rbp)	# tmp93, armingAngleCosZ
	.loc 1 407 0
	movss	rMat+32(%rip), %xmm0	# rMat, D.7884
	ucomiss	-4(%rbp), %xmm0	# armingAngleCosZ, D.7884
	seta	%al	#, D.7885
	.loc 1 408 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	imuIsAircraftArmable, .-imuIsAircraftArmable
	.section	.text.imuIsAccelerometerHealthy,"ax",@progbits
	.type	imuIsAccelerometerHealthy, @function
imuIsAccelerometerHealthy:
.LFB31:
	.loc 1 411 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 413 0
	movl	$0, -4(%rbp)	#, accMagnitude
	.loc 1 415 0
	movl	$0, -8(%rbp)	#, axis
	jmp	.L58	#
.L59:
	.loc 1 416 0 discriminator 3
	movl	-8(%rbp), %eax	# axis, tmp103
	cltq
	movzwl	accSmooth(%rax,%rax), %eax	# accSmooth, D.7888
	movswl	%ax, %edx	# D.7888, D.7887
	movl	-8(%rbp), %eax	# axis, tmp105
	cltq
	movzwl	accSmooth(%rax,%rax), %eax	# accSmooth, D.7888
	cwtl
	imull	%edx, %eax	# D.7887, D.7887
	addl	%eax, -4(%rbp)	# D.7887, accMagnitude
	.loc 1 415 0 discriminator 3
	addl	$1, -8(%rbp)	#, axis
.L58:
	.loc 1 415 0 is_stmt 0 discriminator 1
	cmpl	$2, -8(%rbp)	#, axis
	jle	.L59	#,
	.loc 1 418 0 is_stmt 1
	movzwl	acc+16(%rip), %eax	# acc.acc_1G, D.7889
	testw	%ax, %ax	# D.7889
	je	.L60	#,
	.loc 1 420 0
	movl	-4(%rbp), %eax	# accMagnitude, tmp106
	imull	$100, %eax, %eax	#, tmp106, D.7887
	movzwl	acc+16(%rip), %edx	# acc.acc_1G, D.7889
	movzwl	%dx, %ecx	# D.7889, D.7887
	movzwl	acc+16(%rip), %edx	# acc.acc_1G, D.7889
	movzwl	%dx, %edx	# D.7889, D.7887
	movl	%edx, %esi	# D.7887, D.7887
	imull	%ecx, %esi	# D.7887, D.7887
	cltd
	idivl	%esi	# D.7887
	movl	%eax, -4(%rbp)	# tmp107, accMagnitude
	.loc 1 421 0
	cmpl	$81, -4(%rbp)	#, accMagnitude
	jle	.L61	#,
	.loc 1 421 0 is_stmt 0 discriminator 1
	cmpl	$120, -4(%rbp)	#, accMagnitude
	jg	.L61	#,
	.loc 1 421 0 discriminator 3
	movl	$1, %eax	#, D.7887
	jmp	.L62	#
.L61:
	.loc 1 421 0 discriminator 4
	movl	$0, %eax	#, D.7887
.L62:
	.loc 1 421 0 discriminator 6
	andl	$1, %eax	#, D.7886
	jmp	.L63	#
.L60:
	.loc 1 424 0 is_stmt 1
	movl	$1, %eax	#, D.7886
.L63:
	.loc 1 427 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	imuIsAccelerometerHealthy, .-imuIsAccelerometerHealthy
	.section	.text.isMagnetometerHealthy,"ax",@progbits
	.type	isMagnetometerHealthy, @function
isMagnetometerHealthy:
.LFB32:
	.loc 1 431 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 432 0
	movl	magADC(%rip), %eax	# magADC, D.7890
	testl	%eax, %eax	# D.7890
	je	.L65	#,
	.loc 1 432 0 is_stmt 0 discriminator 1
	movl	magADC+4(%rip), %eax	# magADC, D.7890
	testl	%eax, %eax	# D.7890
	je	.L65	#,
	.loc 1 432 0 discriminator 3
	movl	magADC+8(%rip), %eax	# magADC, D.7890
	testl	%eax, %eax	# D.7890
	je	.L65	#,
	.loc 1 432 0 discriminator 5
	movl	$1, %eax	#, D.7890
	jmp	.L66	#
.L65:
	.loc 1 432 0 discriminator 6
	movl	$0, %eax	#, D.7890
.L66:
	.loc 1 432 0 discriminator 8
	andl	$1, %eax	#, D.7891
	.loc 1 433 0 is_stmt 1 discriminator 8
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	isMagnetometerHealthy, .-isMagnetometerHealthy
	.section	.text.imuCalculateEstimatedAttitude,"ax",@progbits
	.type	imuCalculateEstimatedAttitude, @function
imuCalculateEstimatedAttitude:
.LFB33:
	.loc 1 437 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	.loc 1 440 0
	pxor	%xmm0, %xmm0	# tmp138
	movss	%xmm0, -44(%rbp)	# tmp138, rawYawError
	.loc 1 442 0
	movb	$0, -51(%rbp)	#, useAcc
	.loc 1 443 0
	movb	$0, -50(%rbp)	#, useMag
	.loc 1 444 0
	movb	$0, -49(%rbp)	#, useYaw
	.loc 1 446 0
	call	micros	#
	movl	%eax, -40(%rbp)	# D.7892, currentTime
	.loc 1 447 0
	movl	previousIMUUpdateTime.6839(%rip), %eax	# previousIMUUpdateTime, D.7893
	movl	-40(%rbp), %edx	# currentTime, tmp142
	subl	%eax, %edx	# D.7893, tmp141
	movl	%edx, %eax	# tmp141, tmp141
	movl	%eax, -36(%rbp)	# tmp141, deltaT
	.loc 1 448 0
	movl	-40(%rbp), %eax	# currentTime, tmp143
	movl	%eax, previousIMUUpdateTime.6839(%rip)	# tmp143, previousIMUUpdateTime
	.loc 1 451 0
	movl	$0, -48(%rbp)	#, axis
	jmp	.L69	#
.L74:
	.loc 1 452 0
	movq	imuRuntimeConfig(%rip), %rax	# imuRuntimeConfig, D.7894
	movzbl	(%rax), %eax	# _19->acc_cut_hz, D.7895
	testb	%al, %al	# D.7895
	je	.L70	#,
	.loc 1 453 0
	movl	-36(%rbp), %eax	# deltaT, tmp144
	testq	%rax, %rax	# tmp144
	js	.L71	#,
	pxor	%xmm0, %xmm0	# D.7896
	cvtsi2ssq	%rax, %xmm0	# tmp144, D.7896
	jmp	.L72	#
.L71:
	movq	%rax, %rdx	# tmp144, tmp146
	shrq	%rdx	# tmp146
	andl	$1, %eax	#, tmp147
	orq	%rax, %rdx	# tmp147, tmp146
	pxor	%xmm0, %xmm0	# tmp145
	cvtsi2ssq	%rdx, %xmm0	# tmp146, tmp145
	addss	%xmm0, %xmm0	# tmp145, D.7896
.L72:
	movss	.LC9(%rip), %xmm1	#, tmp148
	mulss	%xmm0, %xmm1	# D.7896, D.7896
	movq	imuRuntimeConfig(%rip), %rax	# imuRuntimeConfig, D.7894
	movzbl	(%rax), %eax	# _23->acc_cut_hz, D.7895
	movzbl	%al, %ecx	# D.7895, D.7897
	movl	-48(%rbp), %eax	# axis, tmp150
	cltq
	movl	accADC(,%rax,4), %eax	# accADC, D.7897
	pxor	%xmm0, %xmm0	# D.7896
	cvtsi2ss	%eax, %xmm0	# D.7897, D.7896
	movl	-48(%rbp), %eax	# axis, tmp152
	movslq	%eax, %rdx	# tmp152, tmp151
	movq	%rdx, %rax	# tmp151, tmp153
	addq	%rax, %rax	# tmp153
	addq	%rdx, %rax	# tmp151, tmp153
	salq	$2, %rax	#, tmp154
	addq	$accLPFState.6838, %rax	#, D.7898
	movl	%ecx, %esi	# D.7897,
	movq	%rax, %rdi	# D.7898,
	call	pt1FilterApply4	#
	cvttss2si	%xmm0, %eax	# D.7896, tmp155
	movl	%eax, %edx	# tmp155, D.7899
	movl	-48(%rbp), %eax	# axis, tmp157
	cltq
	movw	%dx, accSmooth(%rax,%rax)	# D.7899, accSmooth
	jmp	.L73	#
.L70:
	.loc 1 455 0
	movl	-48(%rbp), %eax	# axis, tmp159
	cltq
	movl	accADC(,%rax,4), %eax	# accADC, D.7897
	movl	%eax, %edx	# D.7897, D.7899
	movl	-48(%rbp), %eax	# axis, tmp161
	cltq
	movw	%dx, accSmooth(%rax,%rax)	# D.7899, accSmooth
.L73:
	.loc 1 451 0 discriminator 2
	addl	$1, -48(%rbp)	#, axis
.L69:
	.loc 1 451 0 is_stmt 0 discriminator 1
	cmpl	$2, -48(%rbp)	#, axis
	jle	.L74	#,
	.loc 1 459 0 is_stmt 1
	call	imuIsAccelerometerHealthy	#
	testb	%al, %al	# D.7900
	je	.L75	#,
	.loc 1 460 0
	movb	$1, -51(%rbp)	#, useAcc
.L75:
	.loc 1 464 0
	movl	$8, %edi	#,
	call	sensors	#
	testb	%al, %al	# D.7900
	je	.L76	#,
	.loc 1 464 0 is_stmt 0 discriminator 1
	call	isMagnetometerHealthy	#
	testb	%al, %al	# D.7900
	je	.L76	#,
	.loc 1 465 0 is_stmt 1
	movb	$1, -50(%rbp)	#, useMag
.L76:
	.loc 1 477 0
	movzbl	-49(%rbp), %r13d	# useYaw, D.7897
	.loc 1 480 0
	movl	magADC+8(%rip), %eax	# magADC, D.7897
	.loc 1 477 0
	pxor	%xmm2, %xmm2	# D.7896
	cvtsi2ss	%eax, %xmm2	# D.7897, D.7896
	movss	%xmm2, -68(%rbp)	# D.7896, %sfp
	.loc 1 480 0
	movl	magADC+4(%rip), %eax	# magADC, D.7897
	.loc 1 477 0
	pxor	%xmm3, %xmm3	# D.7896
	cvtsi2ss	%eax, %xmm3	# D.7897, D.7896
	movss	%xmm3, -72(%rbp)	# D.7896, %sfp
	.loc 1 480 0
	movl	magADC(%rip), %eax	# magADC, D.7897
	.loc 1 477 0
	pxor	%xmm4, %xmm4	# D.7896
	cvtsi2ss	%eax, %xmm4	# D.7897, D.7896
	movss	%xmm4, -76(%rbp)	# D.7896, %sfp
	movzbl	-50(%rbp), %r12d	# useMag, D.7897
	.loc 1 479 0
	movzwl	accSmooth+4(%rip), %eax	# accSmooth, D.7899
	.loc 1 477 0
	cwtl
	pxor	%xmm5, %xmm5	# D.7896
	cvtsi2ss	%eax, %xmm5	# tmp162, D.7896
	movss	%xmm5, -80(%rbp)	# D.7896, %sfp
	.loc 1 479 0
	movzwl	accSmooth+2(%rip), %eax	# accSmooth, D.7899
	.loc 1 477 0
	cwtl
	pxor	%xmm6, %xmm6	# D.7896
	cvtsi2ss	%eax, %xmm6	# tmp163, D.7896
	movss	%xmm6, -84(%rbp)	# D.7896, %sfp
	.loc 1 479 0
	movzwl	accSmooth(%rip), %eax	# accSmooth, D.7899
	.loc 1 477 0
	cwtl
	pxor	%xmm7, %xmm7	# D.7896
	cvtsi2ss	%eax, %xmm7	# tmp164, D.7896
	movss	%xmm7, -88(%rbp)	# D.7896, %sfp
	movzbl	-51(%rbp), %ebx	# useAcc, D.7897
	.loc 1 478 0
	movl	gyroADC+8(%rip), %eax	# gyroADC, D.7897
	.loc 1 477 0
	movswl	%ax, %edx	# D.7899, D.7897
	movq	imu(%rip), %rax	# imu, D.7901
	movl	%edx, %esi	# D.7897,
	movq	%rax, %rdi	# D.7901,
	call	calcGyro	#
	movss	%xmm0, -92(%rbp)	#, %sfp
	.loc 1 478 0
	movl	gyroADC+4(%rip), %eax	# gyroADC, D.7897
	.loc 1 477 0
	movswl	%ax, %edx	# D.7899, D.7897
	movq	imu(%rip), %rax	# imu, D.7901
	movl	%edx, %esi	# D.7897,
	movq	%rax, %rdi	# D.7901,
	call	calcGyro	#
	movss	%xmm0, -96(%rbp)	#, %sfp
	.loc 1 478 0
	movl	gyroADC(%rip), %eax	# gyroADC, D.7897
	.loc 1 477 0
	movswl	%ax, %edx	# D.7899, D.7897
	movq	imu(%rip), %rax	# imu, D.7901
	movl	%edx, %esi	# D.7897,
	movq	%rax, %rdi	# D.7901,
	call	calcGyro	#
	movaps	%xmm0, %xmm8	#, D.7896
	movl	-36(%rbp), %eax	# deltaT, tmp165
	testq	%rax, %rax	# tmp165
	js	.L77	#,
	pxor	%xmm0, %xmm0	# D.7896
	cvtsi2ssq	%rax, %xmm0	# tmp165, D.7896
	jmp	.L78	#
.L77:
	movq	%rax, %rdx	# tmp165, tmp167
	shrq	%rdx	# tmp167
	andl	$1, %eax	#, tmp168
	orq	%rax, %rdx	# tmp168, tmp167
	pxor	%xmm0, %xmm0	# tmp166
	cvtsi2ssq	%rdx, %xmm0	# tmp167, tmp166
	addss	%xmm0, %xmm0	# tmp166, D.7896
.L78:
	movss	.LC9(%rip), %xmm1	#, tmp169
	mulss	%xmm1, %xmm0	# tmp169, D.7896
	subq	$8, %rsp	#,
	movss	-44(%rbp), %xmm1	# rawYawError, tmp170
	leaq	-8(%rsp), %rsp	#,
	movss	%xmm1, (%rsp)	# tmp170,
	movss	-68(%rbp), %xmm2	# %sfp, D.7896
	leaq	-8(%rsp), %rsp	#,
	movss	%xmm2, (%rsp)	# D.7896,
	movss	-72(%rbp), %xmm3	# %sfp, D.7896
	leaq	-8(%rsp), %rsp	#,
	movss	%xmm3, (%rsp)	# D.7896,
	movl	%r13d, %edx	# D.7897,
	movss	-76(%rbp), %xmm7	# %sfp,
	movl	%r12d, %esi	# D.7897,
	movss	-80(%rbp), %xmm6	# %sfp,
	movss	-84(%rbp), %xmm5	# %sfp,
	movss	-88(%rbp), %xmm4	# %sfp,
	movl	%ebx, %edi	# D.7897,
	movss	-92(%rbp), %xmm3	# %sfp,
	movss	-96(%rbp), %xmm2	# %sfp,
	movaps	%xmm8, %xmm1	# D.7896,
	call	imuMahonyAHRSupdate	#
	addq	$32, %rsp	#,
	.loc 1 483 0
	call	imuUpdateEulerAngles	#
	.loc 1 485 0
	movl	-36(%rbp), %eax	# deltaT, tmp171
	movl	%eax, %edi	# tmp171,
	call	imuCalculateAcceleration	#
	.loc 1 486 0
	nop
	.loc 1 487 0
	leaq	-24(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	imuCalculateEstimatedAttitude, .-imuCalculateEstimatedAttitude
	.section	.text.imuUpdateAccelerometer,"ax",@progbits
	.globl	imuUpdateAccelerometer
	.type	imuUpdateAccelerometer, @function
imuUpdateAccelerometer:
.LFB34:
	.loc 1 490 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# accelerometerTrims, accelerometerTrims
	.loc 1 492 0
	movq	-8(%rbp), %rax	# accelerometerTrims, tmp87
	movq	%rax, %rdi	# tmp87,
	call	updateAccelerationReadings	#
	.loc 1 494 0
	movb	$1, isAccelUpdatedAtLeastOnce(%rip)	#, isAccelUpdatedAtLeastOnce
	.loc 1 495 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	imuUpdateAccelerometer, .-imuUpdateAccelerometer
	.section	.text.imuUpdateGyroAndAttitude,"ax",@progbits
	.globl	imuUpdateGyroAndAttitude
	.type	imuUpdateGyroAndAttitude, @function
imuUpdateGyroAndAttitude:
.LFB35:
	.loc 1 498 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 499 0
	call	gyroUpdate	#
	.loc 1 501 0
	call	micros	#
	movw	%ax, now(%rip)	# D.7903, now
	.loc 1 502 0
	movzwl	now(%rip), %eax	# now, D.7903
	movzwl	%ax, %edx	# D.7903, D.7904
	movzwl	lastUpdate(%rip), %eax	# lastUpdate, D.7903
	movzwl	%ax, %eax	# D.7903, D.7904
	subl	%eax, %edx	# D.7904, D.7904
	movl	%edx, %eax	# D.7904, D.7904
	pxor	%xmm0, %xmm0	# D.7905
	cvtsi2ss	%eax, %xmm0	# D.7904, D.7905
	movss	.LC18(%rip), %xmm1	#, tmp99
	divss	%xmm1, %xmm0	# tmp99, D.7905
	movss	%xmm0, deltat(%rip)	# D.7905, deltat
	.loc 1 503 0
	movzwl	now(%rip), %eax	# now, D.7903
	movw	%ax, lastUpdate(%rip)	# D.7903, lastUpdate
	.loc 1 507 0
	movl	$2, %edi	#,
	call	sensors	#
	testb	%al, %al	# D.7906
	je	.L82	#,
	.loc 1 507 0 is_stmt 0 discriminator 1
	movzbl	isAccelUpdatedAtLeastOnce(%rip), %eax	# isAccelUpdatedAtLeastOnce, D.7906
	testb	%al, %al	# D.7906
	je	.L82	#,
	.loc 1 509 0 is_stmt 1
	call	calculateAttitude	#
	jmp	.L83	#
.L82:
	.loc 1 512 0
	movl	$0, accADC(%rip)	#, accADC
	.loc 1 513 0
	movl	$0, accADC+4(%rip)	#, accADC
	.loc 1 514 0
	movl	$0, accADC+8(%rip)	#, accADC
.L83:
	.loc 1 516 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	imuUpdateGyroAndAttitude, .-imuUpdateGyroAndAttitude
	.section	.text.getCosTiltAngle,"ax",@progbits
	.globl	getCosTiltAngle
	.type	getCosTiltAngle, @function
getCosTiltAngle:
.LFB36:
	.loc 1 519 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 520 0
	movss	rMat+32(%rip), %xmm0	# rMat, D.7907
	.loc 1 521 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	getCosTiltAngle, .-getCosTiltAngle
	.section	.text.calculateThrottleAngleCorrection,"ax",@progbits
	.globl	calculateThrottleAngleCorrection
	.type	calculateThrottleAngleCorrection, @function
calculateThrottleAngleCorrection:
.LFB37:
	.loc 1 524 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, %eax	# throttle_correction_value, tmp102
	movb	%al, -20(%rbp)	# tmp102, throttle_correction_value
	.loc 1 530 0
	movss	rMat+32(%rip), %xmm1	# rMat, D.7909
	movss	.LC19(%rip), %xmm0	#, tmp103
	ucomiss	%xmm1, %xmm0	# D.7909, tmp103
	jb	.L92	#,
	.loc 1 531 0
	movl	$0, %eax	#, D.7908
	jmp	.L89	#
.L92:
	.loc 1 533 0
	movl	rMat+32(%rip), %eax	# rMat, D.7909
	movl	%eax, -24(%rbp)	# D.7909, %sfp
	movss	-24(%rbp), %xmm0	# %sfp,
	call	acosf	#
	movaps	%xmm0, %xmm1	#, D.7909
	movss	throttleAngleScale(%rip), %xmm0	# throttleAngleScale, D.7909
	mulss	%xmm1, %xmm0	# D.7909, D.7909
	call	lrintf	#
	movl	%eax, -4(%rbp)	# D.7910, angle
	.loc 1 534 0
	cmpl	$900, -4(%rbp)	#, angle
	jle	.L90	#,
	.loc 1 535 0
	movl	$900, -4(%rbp)	#, angle
.L90:
	.loc 1 536 0
	movzbl	-20(%rbp), %eax	# throttle_correction_value, D.7911
	pxor	%xmm2, %xmm2	# D.7909
	cvtsi2ss	%eax, %xmm2	# D.7911, D.7909
	movss	%xmm2, -24(%rbp)	# D.7909, %sfp
	pxor	%xmm0, %xmm0	# D.7909
	cvtsi2ss	-4(%rbp), %xmm0	# angle, D.7909
	movss	.LC20(%rip), %xmm1	#, tmp104
	divss	%xmm1, %xmm0	# tmp104, D.7909
	call	sinf	#
	mulss	-24(%rbp), %xmm0	# %sfp, D.7909
	call	lrintf	#
.L89:
	.loc 1 537 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	calculateThrottleAngleCorrection, .-calculateThrottleAngleCorrection
	.section	.text.MadgwickQuaternionUpdate,"ax",@progbits
	.globl	MadgwickQuaternionUpdate
	.type	MadgwickQuaternionUpdate, @function
MadgwickQuaternionUpdate:
.LFB38:
	.loc 1 540 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$192, %rsp	#,
	movss	%xmm0, -164(%rbp)	# ax, ax
	movss	%xmm1, -168(%rbp)	# ay, ay
	movss	%xmm2, -172(%rbp)	# az, az
	movss	%xmm3, -176(%rbp)	# gx, gx
	movss	%xmm4, -180(%rbp)	# gy, gy
	movss	%xmm5, -184(%rbp)	# gz, gz
	movss	%xmm6, -188(%rbp)	# mx, mx
	movss	%xmm7, -192(%rbp)	# my, my
	.loc 1 541 0
	movss	q(%rip), %xmm0	# q, tmp408
	movss	%xmm0, -156(%rbp)	# tmp408, qa
	movss	q+4(%rip), %xmm0	# q, tmp409
	movss	%xmm0, -152(%rbp)	# tmp409, qb
	movss	q+8(%rip), %xmm0	# q, tmp410
	movss	%xmm0, -148(%rbp)	# tmp410, qc
	movss	q+12(%rip), %xmm0	# q, tmp411
	movss	%xmm0, -144(%rbp)	# tmp411, qd
	.loc 1 554 0
	movss	-156(%rbp), %xmm0	# qa, tmp412
	addss	%xmm0, %xmm0	# tmp412, tmp413
	movss	%xmm0, -140(%rbp)	# tmp413, _2q1
	.loc 1 555 0
	movss	-152(%rbp), %xmm0	# qb, tmp414
	addss	%xmm0, %xmm0	# tmp414, tmp415
	movss	%xmm0, -136(%rbp)	# tmp415, _2q2
	.loc 1 556 0
	movss	-148(%rbp), %xmm0	# qc, tmp416
	addss	%xmm0, %xmm0	# tmp416, tmp417
	movss	%xmm0, -132(%rbp)	# tmp417, _2q3
	.loc 1 557 0
	movss	-144(%rbp), %xmm0	# qd, tmp418
	addss	%xmm0, %xmm0	# tmp418, tmp419
	movss	%xmm0, -128(%rbp)	# tmp419, _2q4
	.loc 1 558 0
	movss	-156(%rbp), %xmm0	# qa, tmp420
	addss	%xmm0, %xmm0	# tmp420, D.7912
	mulss	-148(%rbp), %xmm0	# qc, tmp421
	movss	%xmm0, -124(%rbp)	# tmp421, _2q1q3
	.loc 1 559 0
	movss	-148(%rbp), %xmm0	# qc, tmp422
	addss	%xmm0, %xmm0	# tmp422, D.7912
	mulss	-144(%rbp), %xmm0	# qd, tmp423
	movss	%xmm0, -120(%rbp)	# tmp423, _2q3q4
	.loc 1 560 0
	movss	-156(%rbp), %xmm0	# qa, tmp425
	mulss	-156(%rbp), %xmm0	# qa, tmp424
	movss	%xmm0, -116(%rbp)	# tmp424, q1q1
	.loc 1 561 0
	movss	-156(%rbp), %xmm0	# qa, tmp427
	mulss	-152(%rbp), %xmm0	# qb, tmp426
	movss	%xmm0, -112(%rbp)	# tmp426, q1q2
	.loc 1 562 0
	movss	-156(%rbp), %xmm0	# qa, tmp429
	mulss	-148(%rbp), %xmm0	# qc, tmp428
	movss	%xmm0, -108(%rbp)	# tmp428, q1q3
	.loc 1 563 0
	movss	-156(%rbp), %xmm0	# qa, tmp431
	mulss	-144(%rbp), %xmm0	# qd, tmp430
	movss	%xmm0, -104(%rbp)	# tmp430, q1q4
	.loc 1 564 0
	movss	-152(%rbp), %xmm0	# qb, tmp433
	mulss	-152(%rbp), %xmm0	# qb, tmp432
	movss	%xmm0, -100(%rbp)	# tmp432, q2q2
	.loc 1 565 0
	movss	-152(%rbp), %xmm0	# qb, tmp435
	mulss	-148(%rbp), %xmm0	# qc, tmp434
	movss	%xmm0, -96(%rbp)	# tmp434, q2q3
	.loc 1 566 0
	movss	-152(%rbp), %xmm0	# qb, tmp437
	mulss	-144(%rbp), %xmm0	# qd, tmp436
	movss	%xmm0, -92(%rbp)	# tmp436, q2q4
	.loc 1 567 0
	movss	-148(%rbp), %xmm0	# qc, tmp439
	mulss	-148(%rbp), %xmm0	# qc, tmp438
	movss	%xmm0, -88(%rbp)	# tmp438, q3q3
	.loc 1 568 0
	movss	-148(%rbp), %xmm0	# qc, tmp441
	mulss	-144(%rbp), %xmm0	# qd, tmp440
	movss	%xmm0, -84(%rbp)	# tmp440, q3q4
	.loc 1 569 0
	movss	-144(%rbp), %xmm0	# qd, tmp443
	mulss	-144(%rbp), %xmm0	# qd, tmp442
	movss	%xmm0, -80(%rbp)	# tmp442, q4q4
	.loc 1 575 0
	movss	-164(%rbp), %xmm0	# ax, tmp444
	movaps	%xmm0, %xmm1	# tmp444, D.7912
	mulss	-164(%rbp), %xmm1	# ax, D.7912
	movss	-168(%rbp), %xmm0	# ay, tmp445
	mulss	-168(%rbp), %xmm0	# ay, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-172(%rbp), %xmm0	# az, tmp446
	mulss	-172(%rbp), %xmm0	# az, D.7912
	addss	%xmm1, %xmm0	# D.7912, D.7912
	cvtss2sd	%xmm0, %xmm0	# D.7912, D.7913
	call	sqrt	#
	cvtsd2ss	%xmm0, %xmm4	# D.7913, tmp648
	movss	%xmm4, -76(%rbp)	# tmp648, norm
	.loc 1 576 0
	pxor	%xmm0, %xmm0	# tmp447
	ucomiss	-76(%rbp), %xmm0	# norm, tmp447
	jp	.L94	#,
	pxor	%xmm0, %xmm0	# tmp448
	ucomiss	-76(%rbp), %xmm0	# norm, tmp448
	je	.L99	#,
.L94:
	.loc 1 577 0
	movss	.LC0(%rip), %xmm0	#, tmp450
	divss	-76(%rbp), %xmm0	# norm, tmp449
	movss	%xmm0, -76(%rbp)	# tmp449, norm
	.loc 1 578 0
	movss	-164(%rbp), %xmm0	# ax, tmp452
	mulss	-76(%rbp), %xmm0	# norm, tmp451
	movss	%xmm0, -164(%rbp)	# tmp451, ax
	.loc 1 579 0
	movss	-168(%rbp), %xmm0	# ay, tmp454
	mulss	-76(%rbp), %xmm0	# norm, tmp453
	movss	%xmm0, -168(%rbp)	# tmp453, ay
	.loc 1 580 0
	movss	-172(%rbp), %xmm0	# az, tmp456
	mulss	-76(%rbp), %xmm0	# norm, tmp455
	movss	%xmm0, -172(%rbp)	# tmp455, az
	.loc 1 583 0
	movss	-188(%rbp), %xmm0	# mx, tmp457
	movaps	%xmm0, %xmm1	# tmp457, D.7912
	mulss	-188(%rbp), %xmm1	# mx, D.7912
	movss	-192(%rbp), %xmm0	# my, tmp458
	mulss	-192(%rbp), %xmm0	# my, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	16(%rbp), %xmm0	# mz, tmp459
	mulss	16(%rbp), %xmm0	# mz, D.7912
	addss	%xmm1, %xmm0	# D.7912, D.7912
	cvtss2sd	%xmm0, %xmm0	# D.7912, D.7913
	call	sqrt	#
	cvtsd2ss	%xmm0, %xmm5	# D.7913, tmp650
	movss	%xmm5, -76(%rbp)	# tmp650, norm
	.loc 1 584 0
	pxor	%xmm0, %xmm0	# tmp460
	ucomiss	-76(%rbp), %xmm0	# norm, tmp460
	jp	.L97	#,
	pxor	%xmm0, %xmm0	# tmp461
	ucomiss	-76(%rbp), %xmm0	# norm, tmp461
	je	.L100	#,
.L97:
	.loc 1 585 0
	movss	.LC0(%rip), %xmm0	#, tmp463
	divss	-76(%rbp), %xmm0	# norm, tmp462
	movss	%xmm0, -76(%rbp)	# tmp462, norm
	.loc 1 586 0
	movss	-188(%rbp), %xmm0	# mx, tmp465
	mulss	-76(%rbp), %xmm0	# norm, tmp464
	movss	%xmm0, -188(%rbp)	# tmp464, mx
	.loc 1 587 0
	movss	-192(%rbp), %xmm0	# my, tmp467
	mulss	-76(%rbp), %xmm0	# norm, tmp466
	movss	%xmm0, -192(%rbp)	# tmp466, my
	.loc 1 588 0
	movss	16(%rbp), %xmm0	# mz, tmp469
	mulss	-76(%rbp), %xmm0	# norm, tmp468
	movss	%xmm0, 16(%rbp)	# tmp468, mz
	.loc 1 591 0
	movss	-156(%rbp), %xmm0	# qa, tmp470
	addss	%xmm0, %xmm0	# tmp470, D.7912
	mulss	-188(%rbp), %xmm0	# mx, tmp471
	movss	%xmm0, -72(%rbp)	# tmp471, _2q1mx
	.loc 1 592 0
	movss	-156(%rbp), %xmm0	# qa, tmp472
	addss	%xmm0, %xmm0	# tmp472, D.7912
	mulss	-192(%rbp), %xmm0	# my, tmp473
	movss	%xmm0, -68(%rbp)	# tmp473, _2q1my
	.loc 1 593 0
	movss	-156(%rbp), %xmm0	# qa, tmp474
	addss	%xmm0, %xmm0	# tmp474, D.7912
	mulss	16(%rbp), %xmm0	# mz, tmp475
	movss	%xmm0, -64(%rbp)	# tmp475, _2q1mz
	.loc 1 594 0
	movss	-152(%rbp), %xmm0	# qb, tmp476
	addss	%xmm0, %xmm0	# tmp476, D.7912
	mulss	-188(%rbp), %xmm0	# mx, tmp477
	movss	%xmm0, -60(%rbp)	# tmp477, _2q2mx
	.loc 1 595 0
	movss	-188(%rbp), %xmm0	# mx, tmp478
	mulss	-116(%rbp), %xmm0	# q1q1, D.7912
	movss	-68(%rbp), %xmm1	# _2q1my, tmp479
	mulss	-144(%rbp), %xmm1	# qd, D.7912
	subss	%xmm1, %xmm0	# D.7912, D.7912
	movaps	%xmm0, %xmm1	# D.7912, D.7912
	movss	-64(%rbp), %xmm0	# _2q1mz, tmp480
	mulss	-148(%rbp), %xmm0	# qc, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-188(%rbp), %xmm0	# mx, tmp481
	mulss	-100(%rbp), %xmm0	# q2q2, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-136(%rbp), %xmm0	# _2q2, tmp482
	mulss	-192(%rbp), %xmm0	# my, D.7912
	mulss	-148(%rbp), %xmm0	# qc, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-136(%rbp), %xmm0	# _2q2, tmp483
	mulss	16(%rbp), %xmm0	# mz, D.7912
	mulss	-144(%rbp), %xmm0	# qd, D.7912
	addss	%xmm1, %xmm0	# D.7912, D.7912
	movss	-188(%rbp), %xmm1	# mx, tmp484
	mulss	-88(%rbp), %xmm1	# q3q3, D.7912
	subss	%xmm1, %xmm0	# D.7912, D.7912
	movss	-188(%rbp), %xmm1	# mx, tmp485
	mulss	-80(%rbp), %xmm1	# q4q4, D.7912
	subss	%xmm1, %xmm0	# D.7912, tmp486
	movss	%xmm0, -56(%rbp)	# tmp486, hx
	.loc 1 596 0
	movss	-72(%rbp), %xmm0	# _2q1mx, tmp487
	movaps	%xmm0, %xmm1	# tmp487, D.7912
	mulss	-144(%rbp), %xmm1	# qd, D.7912
	movss	-192(%rbp), %xmm0	# my, tmp488
	mulss	-116(%rbp), %xmm0	# q1q1, D.7912
	addss	%xmm1, %xmm0	# D.7912, D.7912
	movss	-64(%rbp), %xmm1	# _2q1mz, tmp489
	mulss	-152(%rbp), %xmm1	# qb, D.7912
	subss	%xmm1, %xmm0	# D.7912, D.7912
	movaps	%xmm0, %xmm1	# D.7912, D.7912
	movss	-60(%rbp), %xmm0	# _2q2mx, tmp490
	mulss	-148(%rbp), %xmm0	# qc, D.7912
	addss	%xmm1, %xmm0	# D.7912, D.7912
	movss	-192(%rbp), %xmm1	# my, tmp491
	mulss	-100(%rbp), %xmm1	# q2q2, D.7912
	subss	%xmm1, %xmm0	# D.7912, D.7912
	movaps	%xmm0, %xmm1	# D.7912, D.7912
	movss	-192(%rbp), %xmm0	# my, tmp492
	mulss	-88(%rbp), %xmm0	# q3q3, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-132(%rbp), %xmm0	# _2q3, tmp493
	mulss	16(%rbp), %xmm0	# mz, D.7912
	mulss	-144(%rbp), %xmm0	# qd, D.7912
	addss	%xmm1, %xmm0	# D.7912, D.7912
	movss	-192(%rbp), %xmm1	# my, tmp494
	mulss	-80(%rbp), %xmm1	# q4q4, D.7912
	subss	%xmm1, %xmm0	# D.7912, tmp495
	movss	%xmm0, -52(%rbp)	# tmp495, hy
	.loc 1 597 0
	movss	-56(%rbp), %xmm0	# hx, tmp496
	movaps	%xmm0, %xmm1	# tmp496, D.7912
	mulss	-56(%rbp), %xmm1	# hx, D.7912
	movss	-52(%rbp), %xmm0	# hy, tmp497
	mulss	-52(%rbp), %xmm0	# hy, D.7912
	addss	%xmm1, %xmm0	# D.7912, D.7912
	cvtss2sd	%xmm0, %xmm0	# D.7912, D.7913
	call	sqrt	#
	cvtsd2ss	%xmm0, %xmm6	# D.7913, tmp656
	movss	%xmm6, -48(%rbp)	# tmp656, _2bx
	.loc 1 598 0
	movss	-72(%rbp), %xmm1	# _2q1mx, tmp498
	movss	.LC8(%rip), %xmm0	#, tmp499
	xorps	%xmm1, %xmm0	# tmp498, D.7912
	movaps	%xmm0, %xmm1	# D.7912, D.7912
	mulss	-148(%rbp), %xmm1	# qc, D.7912
	movss	-68(%rbp), %xmm0	# _2q1my, tmp500
	mulss	-152(%rbp), %xmm0	# qb, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	16(%rbp), %xmm0	# mz, tmp501
	mulss	-116(%rbp), %xmm0	# q1q1, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-60(%rbp), %xmm0	# _2q2mx, tmp502
	mulss	-144(%rbp), %xmm0	# qd, D.7912
	addss	%xmm1, %xmm0	# D.7912, D.7912
	movss	16(%rbp), %xmm1	# mz, tmp503
	mulss	-100(%rbp), %xmm1	# q2q2, D.7912
	subss	%xmm1, %xmm0	# D.7912, D.7912
	movaps	%xmm0, %xmm1	# D.7912, D.7912
	movss	-132(%rbp), %xmm0	# _2q3, tmp504
	mulss	-192(%rbp), %xmm0	# my, D.7912
	mulss	-144(%rbp), %xmm0	# qd, D.7912
	addss	%xmm1, %xmm0	# D.7912, D.7912
	movss	16(%rbp), %xmm1	# mz, tmp505
	mulss	-88(%rbp), %xmm1	# q3q3, D.7912
	subss	%xmm1, %xmm0	# D.7912, D.7912
	movaps	%xmm0, %xmm1	# D.7912, D.7912
	movss	16(%rbp), %xmm0	# mz, tmp506
	mulss	-80(%rbp), %xmm0	# q4q4, D.7912
	addss	%xmm1, %xmm0	# D.7912, tmp507
	movss	%xmm0, -44(%rbp)	# tmp507, _2bz
	.loc 1 599 0
	movss	-48(%rbp), %xmm0	# _2bx, tmp508
	addss	%xmm0, %xmm0	# tmp508, tmp509
	movss	%xmm0, -40(%rbp)	# tmp509, _4bx
	.loc 1 600 0
	movss	-44(%rbp), %xmm0	# _2bz, tmp510
	addss	%xmm0, %xmm0	# tmp510, tmp511
	movss	%xmm0, -36(%rbp)	# tmp511, _4bz
	.loc 1 603 0
	movss	-132(%rbp), %xmm1	# _2q3, tmp512
	movss	.LC8(%rip), %xmm0	#, tmp513
	xorps	%xmm0, %xmm1	# tmp513, D.7912
	movss	-92(%rbp), %xmm0	# q2q4, tmp514
	addss	%xmm0, %xmm0	# tmp514, D.7912
	subss	-124(%rbp), %xmm0	# _2q1q3, D.7912
	subss	-164(%rbp), %xmm0	# ax, D.7912
	mulss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-112(%rbp), %xmm0	# q1q2, tmp515
	addss	%xmm0, %xmm0	# tmp515, D.7912
	addss	-120(%rbp), %xmm0	# _2q3q4, D.7912
	subss	-168(%rbp), %xmm0	# ay, D.7912
	mulss	-136(%rbp), %xmm0	# _2q2, D.7912
	addss	%xmm1, %xmm0	# D.7912, D.7912
	movss	-44(%rbp), %xmm1	# _2bz, tmp516
	movaps	%xmm1, %xmm2	# tmp516, D.7912
	mulss	-148(%rbp), %xmm2	# qc, D.7912
	movss	.LC7(%rip), %xmm1	#, tmp517
	subss	-88(%rbp), %xmm1	# q3q3, D.7912
	subss	-80(%rbp), %xmm1	# q4q4, D.7912
	movaps	%xmm1, %xmm3	# D.7912, D.7912
	mulss	-48(%rbp), %xmm3	# _2bx, D.7912
	movss	-92(%rbp), %xmm1	# q2q4, tmp518
	subss	-108(%rbp), %xmm1	# q1q3, D.7912
	mulss	-44(%rbp), %xmm1	# _2bz, D.7912
	addss	%xmm3, %xmm1	# D.7912, D.7912
	subss	-188(%rbp), %xmm1	# mx, D.7912
	mulss	%xmm2, %xmm1	# D.7912, D.7912
	subss	%xmm1, %xmm0	# D.7912, D.7912
	movaps	%xmm0, %xmm1	# D.7912, D.7912
	movss	-48(%rbp), %xmm2	# _2bx, tmp519
	movss	.LC8(%rip), %xmm0	#, tmp520
	xorps	%xmm2, %xmm0	# tmp519, D.7912
	movaps	%xmm0, %xmm2	# D.7912, D.7912
	mulss	-144(%rbp), %xmm2	# qd, D.7912
	movss	-44(%rbp), %xmm0	# _2bz, tmp521
	mulss	-152(%rbp), %xmm0	# qb, D.7912
	addss	%xmm0, %xmm2	# D.7912, D.7912
	movss	-96(%rbp), %xmm0	# q2q3, tmp522
	subss	-104(%rbp), %xmm0	# q1q4, D.7912
	movaps	%xmm0, %xmm3	# D.7912, D.7912
	mulss	-48(%rbp), %xmm3	# _2bx, D.7912
	movss	-112(%rbp), %xmm0	# q1q2, tmp523
	addss	-84(%rbp), %xmm0	# q3q4, D.7912
	mulss	-44(%rbp), %xmm0	# _2bz, D.7912
	addss	%xmm3, %xmm0	# D.7912, D.7912
	subss	-192(%rbp), %xmm0	# my, D.7912
	mulss	%xmm2, %xmm0	# D.7912, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-48(%rbp), %xmm0	# _2bx, tmp524
	movaps	%xmm0, %xmm2	# tmp524, D.7912
	mulss	-148(%rbp), %xmm2	# qc, D.7912
	movss	-108(%rbp), %xmm0	# q1q3, tmp525
	addss	-92(%rbp), %xmm0	# q2q4, D.7912
	movaps	%xmm0, %xmm3	# D.7912, D.7912
	mulss	-48(%rbp), %xmm3	# _2bx, D.7912
	movss	.LC7(%rip), %xmm0	#, tmp526
	subss	-100(%rbp), %xmm0	# q2q2, D.7912
	subss	-88(%rbp), %xmm0	# q3q3, D.7912
	mulss	-44(%rbp), %xmm0	# _2bz, D.7912
	addss	%xmm3, %xmm0	# D.7912, D.7912
	subss	16(%rbp), %xmm0	# mz, D.7912
	mulss	%xmm2, %xmm0	# D.7912, D.7912
	addss	%xmm1, %xmm0	# D.7912, tmp527
	movss	%xmm0, -32(%rbp)	# tmp527, s1
	.loc 1 604 0
	movss	-92(%rbp), %xmm0	# q2q4, tmp528
	addss	%xmm0, %xmm0	# tmp528, D.7912
	subss	-124(%rbp), %xmm0	# _2q1q3, D.7912
	subss	-164(%rbp), %xmm0	# ax, D.7912
	movaps	%xmm0, %xmm1	# D.7912, D.7912
	mulss	-128(%rbp), %xmm1	# _2q4, D.7912
	movss	-112(%rbp), %xmm0	# q1q2, tmp529
	addss	%xmm0, %xmm0	# tmp529, D.7912
	addss	-120(%rbp), %xmm0	# _2q3q4, D.7912
	subss	-168(%rbp), %xmm0	# ay, D.7912
	mulss	-140(%rbp), %xmm0	# _2q1, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-152(%rbp), %xmm2	# qb, tmp530
	movss	.LC21(%rip), %xmm0	#, tmp531
	movaps	%xmm2, %xmm3	# tmp530, D.7912
	mulss	%xmm0, %xmm3	# tmp531, D.7912
	movss	-100(%rbp), %xmm0	# q2q2, tmp532
	addss	%xmm0, %xmm0	# tmp532, D.7912
	movss	.LC0(%rip), %xmm2	#, tmp533
	subss	%xmm0, %xmm2	# D.7912, D.7912
	movss	-88(%rbp), %xmm0	# q3q3, tmp534
	addss	%xmm0, %xmm0	# tmp534, D.7912
	subss	%xmm0, %xmm2	# D.7912, D.7912
	movaps	%xmm2, %xmm0	# D.7912, D.7912
	subss	-172(%rbp), %xmm0	# az, D.7912
	mulss	%xmm3, %xmm0	# D.7912, D.7912
	subss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-44(%rbp), %xmm0	# _2bz, tmp535
	movaps	%xmm0, %xmm2	# tmp535, D.7912
	mulss	-144(%rbp), %xmm2	# qd, D.7912
	movss	.LC7(%rip), %xmm0	#, tmp536
	subss	-88(%rbp), %xmm0	# q3q3, D.7912
	subss	-80(%rbp), %xmm0	# q4q4, D.7912
	movaps	%xmm0, %xmm3	# D.7912, D.7912
	mulss	-48(%rbp), %xmm3	# _2bx, D.7912
	movss	-92(%rbp), %xmm0	# q2q4, tmp537
	subss	-108(%rbp), %xmm0	# q1q3, D.7912
	mulss	-44(%rbp), %xmm0	# _2bz, D.7912
	addss	%xmm3, %xmm0	# D.7912, D.7912
	subss	-188(%rbp), %xmm0	# mx, D.7912
	mulss	%xmm2, %xmm0	# D.7912, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-48(%rbp), %xmm0	# _2bx, tmp538
	movaps	%xmm0, %xmm2	# tmp538, D.7912
	mulss	-148(%rbp), %xmm2	# qc, D.7912
	movss	-44(%rbp), %xmm0	# _2bz, tmp539
	mulss	-156(%rbp), %xmm0	# qa, D.7912
	addss	%xmm0, %xmm2	# D.7912, D.7912
	movss	-96(%rbp), %xmm0	# q2q3, tmp540
	subss	-104(%rbp), %xmm0	# q1q4, D.7912
	movaps	%xmm0, %xmm3	# D.7912, D.7912
	mulss	-48(%rbp), %xmm3	# _2bx, D.7912
	movss	-112(%rbp), %xmm0	# q1q2, tmp541
	addss	-84(%rbp), %xmm0	# q3q4, D.7912
	mulss	-44(%rbp), %xmm0	# _2bz, D.7912
	addss	%xmm3, %xmm0	# D.7912, D.7912
	subss	-192(%rbp), %xmm0	# my, D.7912
	mulss	%xmm2, %xmm0	# D.7912, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-48(%rbp), %xmm0	# _2bx, tmp542
	mulss	-144(%rbp), %xmm0	# qd, D.7912
	movss	-36(%rbp), %xmm2	# _4bz, tmp543
	mulss	-152(%rbp), %xmm2	# qb, D.7912
	subss	%xmm2, %xmm0	# D.7912, D.7912
	movaps	%xmm0, %xmm2	# D.7912, D.7912
	movss	-108(%rbp), %xmm0	# q1q3, tmp544
	addss	-92(%rbp), %xmm0	# q2q4, D.7912
	movaps	%xmm0, %xmm3	# D.7912, D.7912
	mulss	-48(%rbp), %xmm3	# _2bx, D.7912
	movss	.LC7(%rip), %xmm0	#, tmp545
	subss	-100(%rbp), %xmm0	# q2q2, D.7912
	subss	-88(%rbp), %xmm0	# q3q3, D.7912
	mulss	-44(%rbp), %xmm0	# _2bz, D.7912
	addss	%xmm3, %xmm0	# D.7912, D.7912
	subss	16(%rbp), %xmm0	# mz, D.7912
	mulss	%xmm2, %xmm0	# D.7912, D.7912
	addss	%xmm1, %xmm0	# D.7912, tmp546
	movss	%xmm0, -28(%rbp)	# tmp546, s2
	.loc 1 605 0
	movss	-140(%rbp), %xmm1	# _2q1, tmp547
	movss	.LC8(%rip), %xmm0	#, tmp548
	xorps	%xmm0, %xmm1	# tmp548, D.7912
	movss	-92(%rbp), %xmm0	# q2q4, tmp549
	addss	%xmm0, %xmm0	# tmp549, D.7912
	subss	-124(%rbp), %xmm0	# _2q1q3, D.7912
	subss	-164(%rbp), %xmm0	# ax, D.7912
	mulss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-112(%rbp), %xmm0	# q1q2, tmp550
	addss	%xmm0, %xmm0	# tmp550, D.7912
	addss	-120(%rbp), %xmm0	# _2q3q4, D.7912
	subss	-168(%rbp), %xmm0	# ay, D.7912
	mulss	-128(%rbp), %xmm0	# _2q4, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-148(%rbp), %xmm2	# qc, tmp551
	movss	.LC21(%rip), %xmm0	#, tmp552
	movaps	%xmm2, %xmm3	# tmp551, D.7912
	mulss	%xmm0, %xmm3	# tmp552, D.7912
	movss	-100(%rbp), %xmm0	# q2q2, tmp553
	addss	%xmm0, %xmm0	# tmp553, D.7912
	movss	.LC0(%rip), %xmm2	#, tmp554
	subss	%xmm0, %xmm2	# D.7912, D.7912
	movss	-88(%rbp), %xmm0	# q3q3, tmp555
	addss	%xmm0, %xmm0	# tmp555, D.7912
	subss	%xmm0, %xmm2	# D.7912, D.7912
	movaps	%xmm2, %xmm0	# D.7912, D.7912
	subss	-172(%rbp), %xmm0	# az, D.7912
	mulss	%xmm3, %xmm0	# D.7912, D.7912
	subss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-40(%rbp), %xmm2	# _4bx, tmp556
	movss	.LC8(%rip), %xmm0	#, tmp557
	xorps	%xmm2, %xmm0	# tmp556, D.7912
	mulss	-148(%rbp), %xmm0	# qc, D.7912
	movss	-44(%rbp), %xmm2	# _2bz, tmp558
	mulss	-156(%rbp), %xmm2	# qa, D.7912
	subss	%xmm2, %xmm0	# D.7912, D.7912
	movaps	%xmm0, %xmm2	# D.7912, D.7912
	movss	.LC7(%rip), %xmm0	#, tmp559
	subss	-88(%rbp), %xmm0	# q3q3, D.7912
	subss	-80(%rbp), %xmm0	# q4q4, D.7912
	movaps	%xmm0, %xmm3	# D.7912, D.7912
	mulss	-48(%rbp), %xmm3	# _2bx, D.7912
	movss	-92(%rbp), %xmm0	# q2q4, tmp560
	subss	-108(%rbp), %xmm0	# q1q3, D.7912
	mulss	-44(%rbp), %xmm0	# _2bz, D.7912
	addss	%xmm3, %xmm0	# D.7912, D.7912
	subss	-188(%rbp), %xmm0	# mx, D.7912
	mulss	%xmm2, %xmm0	# D.7912, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-48(%rbp), %xmm0	# _2bx, tmp561
	movaps	%xmm0, %xmm2	# tmp561, D.7912
	mulss	-152(%rbp), %xmm2	# qb, D.7912
	movss	-44(%rbp), %xmm0	# _2bz, tmp562
	mulss	-144(%rbp), %xmm0	# qd, D.7912
	addss	%xmm0, %xmm2	# D.7912, D.7912
	movss	-96(%rbp), %xmm0	# q2q3, tmp563
	subss	-104(%rbp), %xmm0	# q1q4, D.7912
	movaps	%xmm0, %xmm3	# D.7912, D.7912
	mulss	-48(%rbp), %xmm3	# _2bx, D.7912
	movss	-112(%rbp), %xmm0	# q1q2, tmp564
	addss	-84(%rbp), %xmm0	# q3q4, D.7912
	mulss	-44(%rbp), %xmm0	# _2bz, D.7912
	addss	%xmm3, %xmm0	# D.7912, D.7912
	subss	-192(%rbp), %xmm0	# my, D.7912
	mulss	%xmm2, %xmm0	# D.7912, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-48(%rbp), %xmm0	# _2bx, tmp565
	mulss	-156(%rbp), %xmm0	# qa, D.7912
	movss	-36(%rbp), %xmm2	# _4bz, tmp566
	mulss	-148(%rbp), %xmm2	# qc, D.7912
	subss	%xmm2, %xmm0	# D.7912, D.7912
	movaps	%xmm0, %xmm2	# D.7912, D.7912
	movss	-108(%rbp), %xmm0	# q1q3, tmp567
	addss	-92(%rbp), %xmm0	# q2q4, D.7912
	movaps	%xmm0, %xmm3	# D.7912, D.7912
	mulss	-48(%rbp), %xmm3	# _2bx, D.7912
	movss	.LC7(%rip), %xmm0	#, tmp568
	subss	-100(%rbp), %xmm0	# q2q2, D.7912
	subss	-88(%rbp), %xmm0	# q3q3, D.7912
	mulss	-44(%rbp), %xmm0	# _2bz, D.7912
	addss	%xmm3, %xmm0	# D.7912, D.7912
	subss	16(%rbp), %xmm0	# mz, D.7912
	mulss	%xmm2, %xmm0	# D.7912, D.7912
	addss	%xmm1, %xmm0	# D.7912, tmp569
	movss	%xmm0, -24(%rbp)	# tmp569, s3
	.loc 1 606 0
	movss	-92(%rbp), %xmm0	# q2q4, tmp570
	addss	%xmm0, %xmm0	# tmp570, D.7912
	subss	-124(%rbp), %xmm0	# _2q1q3, D.7912
	subss	-164(%rbp), %xmm0	# ax, D.7912
	movaps	%xmm0, %xmm1	# D.7912, D.7912
	mulss	-136(%rbp), %xmm1	# _2q2, D.7912
	movss	-112(%rbp), %xmm0	# q1q2, tmp571
	addss	%xmm0, %xmm0	# tmp571, D.7912
	addss	-120(%rbp), %xmm0	# _2q3q4, D.7912
	subss	-168(%rbp), %xmm0	# ay, D.7912
	mulss	-132(%rbp), %xmm0	# _2q3, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-40(%rbp), %xmm2	# _4bx, tmp572
	movss	.LC8(%rip), %xmm0	#, tmp573
	xorps	%xmm2, %xmm0	# tmp572, D.7912
	movaps	%xmm0, %xmm2	# D.7912, D.7912
	mulss	-144(%rbp), %xmm2	# qd, D.7912
	movss	-44(%rbp), %xmm0	# _2bz, tmp574
	mulss	-152(%rbp), %xmm0	# qb, D.7912
	addss	%xmm0, %xmm2	# D.7912, D.7912
	movss	.LC7(%rip), %xmm0	#, tmp575
	subss	-88(%rbp), %xmm0	# q3q3, D.7912
	subss	-80(%rbp), %xmm0	# q4q4, D.7912
	movaps	%xmm0, %xmm3	# D.7912, D.7912
	mulss	-48(%rbp), %xmm3	# _2bx, D.7912
	movss	-92(%rbp), %xmm0	# q2q4, tmp576
	subss	-108(%rbp), %xmm0	# q1q3, D.7912
	mulss	-44(%rbp), %xmm0	# _2bz, D.7912
	addss	%xmm3, %xmm0	# D.7912, D.7912
	subss	-188(%rbp), %xmm0	# mx, D.7912
	mulss	%xmm2, %xmm0	# D.7912, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-48(%rbp), %xmm2	# _2bx, tmp577
	movss	.LC8(%rip), %xmm0	#, tmp578
	xorps	%xmm2, %xmm0	# tmp577, D.7912
	movaps	%xmm0, %xmm2	# D.7912, D.7912
	mulss	-156(%rbp), %xmm2	# qa, D.7912
	movss	-44(%rbp), %xmm0	# _2bz, tmp579
	mulss	-148(%rbp), %xmm0	# qc, D.7912
	addss	%xmm0, %xmm2	# D.7912, D.7912
	movss	-96(%rbp), %xmm0	# q2q3, tmp580
	subss	-104(%rbp), %xmm0	# q1q4, D.7912
	movaps	%xmm0, %xmm3	# D.7912, D.7912
	mulss	-48(%rbp), %xmm3	# _2bx, D.7912
	movss	-112(%rbp), %xmm0	# q1q2, tmp581
	addss	-84(%rbp), %xmm0	# q3q4, D.7912
	mulss	-44(%rbp), %xmm0	# _2bz, D.7912
	addss	%xmm3, %xmm0	# D.7912, D.7912
	subss	-192(%rbp), %xmm0	# my, D.7912
	mulss	%xmm2, %xmm0	# D.7912, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-48(%rbp), %xmm0	# _2bx, tmp582
	movaps	%xmm0, %xmm2	# tmp582, D.7912
	mulss	-152(%rbp), %xmm2	# qb, D.7912
	movss	-108(%rbp), %xmm0	# q1q3, tmp583
	addss	-92(%rbp), %xmm0	# q2q4, D.7912
	movaps	%xmm0, %xmm3	# D.7912, D.7912
	mulss	-48(%rbp), %xmm3	# _2bx, D.7912
	movss	.LC7(%rip), %xmm0	#, tmp584
	subss	-100(%rbp), %xmm0	# q2q2, D.7912
	subss	-88(%rbp), %xmm0	# q3q3, D.7912
	mulss	-44(%rbp), %xmm0	# _2bz, D.7912
	addss	%xmm3, %xmm0	# D.7912, D.7912
	subss	16(%rbp), %xmm0	# mz, D.7912
	mulss	%xmm2, %xmm0	# D.7912, D.7912
	addss	%xmm1, %xmm0	# D.7912, tmp585
	movss	%xmm0, -20(%rbp)	# tmp585, s4
	.loc 1 607 0
	movss	-32(%rbp), %xmm0	# s1, tmp586
	movaps	%xmm0, %xmm1	# tmp586, D.7912
	mulss	-32(%rbp), %xmm1	# s1, D.7912
	movss	-28(%rbp), %xmm0	# s2, tmp587
	mulss	-28(%rbp), %xmm0	# s2, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-24(%rbp), %xmm0	# s3, tmp588
	mulss	-24(%rbp), %xmm0	# s3, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-20(%rbp), %xmm0	# s4, tmp589
	mulss	-20(%rbp), %xmm0	# s4, D.7912
	addss	%xmm1, %xmm0	# D.7912, D.7912
	cvtss2sd	%xmm0, %xmm0	# D.7912, D.7913
	call	sqrt	#
	cvtsd2ss	%xmm0, %xmm7	# D.7913, tmp692
	movss	%xmm7, -76(%rbp)	# tmp692, norm
	.loc 1 608 0
	movss	.LC0(%rip), %xmm0	#, tmp591
	divss	-76(%rbp), %xmm0	# norm, tmp590
	movss	%xmm0, -76(%rbp)	# tmp590, norm
	.loc 1 609 0
	movss	-32(%rbp), %xmm0	# s1, tmp593
	mulss	-76(%rbp), %xmm0	# norm, tmp592
	movss	%xmm0, -32(%rbp)	# tmp592, s1
	.loc 1 610 0
	movss	-28(%rbp), %xmm0	# s2, tmp595
	mulss	-76(%rbp), %xmm0	# norm, tmp594
	movss	%xmm0, -28(%rbp)	# tmp594, s2
	.loc 1 611 0
	movss	-24(%rbp), %xmm0	# s3, tmp597
	mulss	-76(%rbp), %xmm0	# norm, tmp596
	movss	%xmm0, -24(%rbp)	# tmp596, s3
	.loc 1 612 0
	movss	-20(%rbp), %xmm0	# s4, tmp599
	mulss	-76(%rbp), %xmm0	# norm, tmp598
	movss	%xmm0, -20(%rbp)	# tmp598, s4
	.loc 1 615 0
	movss	-152(%rbp), %xmm1	# qb, tmp600
	movss	.LC8(%rip), %xmm0	#, tmp601
	xorps	%xmm1, %xmm0	# tmp600, D.7912
	mulss	-176(%rbp), %xmm0	# gx, D.7912
	movss	-148(%rbp), %xmm1	# qc, tmp602
	mulss	-180(%rbp), %xmm1	# gy, D.7912
	subss	%xmm1, %xmm0	# D.7912, D.7912
	movss	-144(%rbp), %xmm1	# qd, tmp603
	mulss	-184(%rbp), %xmm1	# gz, D.7912
	subss	%xmm1, %xmm0	# D.7912, D.7912
	movss	.LC7(%rip), %xmm1	#, tmp604
	mulss	%xmm1, %xmm0	# tmp604, D.7912
	movss	-32(%rbp), %xmm2	# s1, tmp605
	movss	.LC22(%rip), %xmm1	#, tmp606
	mulss	%xmm2, %xmm1	# tmp605, D.7912
	subss	%xmm1, %xmm0	# D.7912, tmp607
	movss	%xmm0, -16(%rbp)	# tmp607, qDot1
	.loc 1 616 0
	movss	-156(%rbp), %xmm0	# qa, tmp608
	movaps	%xmm0, %xmm1	# tmp608, D.7912
	mulss	-176(%rbp), %xmm1	# gx, D.7912
	movss	-148(%rbp), %xmm0	# qc, tmp609
	mulss	-184(%rbp), %xmm0	# gz, D.7912
	addss	%xmm1, %xmm0	# D.7912, D.7912
	movss	-144(%rbp), %xmm1	# qd, tmp610
	mulss	-180(%rbp), %xmm1	# gy, D.7912
	subss	%xmm1, %xmm0	# D.7912, D.7912
	movss	.LC7(%rip), %xmm1	#, tmp611
	mulss	%xmm1, %xmm0	# tmp611, D.7912
	movss	-28(%rbp), %xmm2	# s2, tmp612
	movss	.LC22(%rip), %xmm1	#, tmp613
	mulss	%xmm2, %xmm1	# tmp612, D.7912
	subss	%xmm1, %xmm0	# D.7912, tmp614
	movss	%xmm0, -12(%rbp)	# tmp614, qDot2
	.loc 1 617 0
	movss	-156(%rbp), %xmm0	# qa, tmp615
	mulss	-180(%rbp), %xmm0	# gy, D.7912
	movss	-152(%rbp), %xmm1	# qb, tmp616
	mulss	-184(%rbp), %xmm1	# gz, D.7912
	subss	%xmm1, %xmm0	# D.7912, D.7912
	movaps	%xmm0, %xmm1	# D.7912, D.7912
	movss	-144(%rbp), %xmm0	# qd, tmp617
	mulss	-176(%rbp), %xmm0	# gx, D.7912
	addss	%xmm1, %xmm0	# D.7912, D.7912
	movss	.LC7(%rip), %xmm1	#, tmp618
	mulss	%xmm1, %xmm0	# tmp618, D.7912
	movss	-24(%rbp), %xmm2	# s3, tmp619
	movss	.LC22(%rip), %xmm1	#, tmp620
	mulss	%xmm2, %xmm1	# tmp619, D.7912
	subss	%xmm1, %xmm0	# D.7912, tmp621
	movss	%xmm0, -8(%rbp)	# tmp621, qDot3
	.loc 1 618 0
	movss	-156(%rbp), %xmm0	# qa, tmp622
	movaps	%xmm0, %xmm1	# tmp622, D.7912
	mulss	-184(%rbp), %xmm1	# gz, D.7912
	movss	-152(%rbp), %xmm0	# qb, tmp623
	mulss	-180(%rbp), %xmm0	# gy, D.7912
	addss	%xmm1, %xmm0	# D.7912, D.7912
	movss	-148(%rbp), %xmm1	# qc, tmp624
	mulss	-176(%rbp), %xmm1	# gx, D.7912
	subss	%xmm1, %xmm0	# D.7912, D.7912
	movss	.LC7(%rip), %xmm1	#, tmp625
	mulss	%xmm1, %xmm0	# tmp625, D.7912
	movss	-20(%rbp), %xmm2	# s4, tmp626
	movss	.LC22(%rip), %xmm1	#, tmp627
	mulss	%xmm2, %xmm1	# tmp626, D.7912
	subss	%xmm1, %xmm0	# D.7912, tmp628
	movss	%xmm0, -4(%rbp)	# tmp628, qDot4
	.loc 1 621 0
	movss	deltat(%rip), %xmm0	# deltat, D.7912
	mulss	-16(%rbp), %xmm0	# qDot1, D.7912
	movss	-156(%rbp), %xmm1	# qa, tmp630
	addss	%xmm1, %xmm0	# tmp630, tmp629
	movss	%xmm0, -156(%rbp)	# tmp629, qa
	.loc 1 622 0
	movss	deltat(%rip), %xmm0	# deltat, D.7912
	mulss	-12(%rbp), %xmm0	# qDot2, D.7912
	movss	-152(%rbp), %xmm1	# qb, tmp632
	addss	%xmm1, %xmm0	# tmp632, tmp631
	movss	%xmm0, -152(%rbp)	# tmp631, qb
	.loc 1 623 0
	movss	deltat(%rip), %xmm0	# deltat, D.7912
	mulss	-8(%rbp), %xmm0	# qDot3, D.7912
	movss	-148(%rbp), %xmm1	# qc, tmp634
	addss	%xmm1, %xmm0	# tmp634, tmp633
	movss	%xmm0, -148(%rbp)	# tmp633, qc
	.loc 1 624 0
	movss	deltat(%rip), %xmm0	# deltat, D.7912
	mulss	-4(%rbp), %xmm0	# qDot4, D.7912
	movss	-144(%rbp), %xmm1	# qd, tmp636
	addss	%xmm1, %xmm0	# tmp636, tmp635
	movss	%xmm0, -144(%rbp)	# tmp635, qd
	.loc 1 625 0
	movss	-156(%rbp), %xmm0	# qa, tmp637
	movaps	%xmm0, %xmm1	# tmp637, D.7912
	mulss	-156(%rbp), %xmm1	# qa, D.7912
	movss	-152(%rbp), %xmm0	# qb, tmp638
	mulss	-152(%rbp), %xmm0	# qb, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-148(%rbp), %xmm0	# qc, tmp639
	mulss	-148(%rbp), %xmm0	# qc, D.7912
	addss	%xmm0, %xmm1	# D.7912, D.7912
	movss	-144(%rbp), %xmm0	# qd, tmp640
	mulss	-144(%rbp), %xmm0	# qd, D.7912
	addss	%xmm1, %xmm0	# D.7912, D.7912
	cvtss2sd	%xmm0, %xmm0	# D.7912, D.7913
	call	sqrt	#
	cvtsd2ss	%xmm0, %xmm4	# D.7913, tmp697
	movss	%xmm4, -76(%rbp)	# tmp697, norm
	.loc 1 626 0
	movss	.LC0(%rip), %xmm0	#, tmp642
	divss	-76(%rbp), %xmm0	# norm, tmp641
	movss	%xmm0, -76(%rbp)	# tmp641, norm
	.loc 1 627 0
	movss	-156(%rbp), %xmm0	# qa, tmp643
	mulss	-76(%rbp), %xmm0	# norm, D.7912
	movss	%xmm0, q(%rip)	# D.7912, q
	.loc 1 628 0
	movss	-152(%rbp), %xmm0	# qb, tmp644
	mulss	-76(%rbp), %xmm0	# norm, D.7912
	movss	%xmm0, q+4(%rip)	# D.7912, q
	.loc 1 629 0
	movss	-148(%rbp), %xmm0	# qc, tmp645
	mulss	-76(%rbp), %xmm0	# norm, D.7912
	movss	%xmm0, q+8(%rip)	# D.7912, q
	.loc 1 630 0
	movss	-144(%rbp), %xmm0	# qd, tmp646
	mulss	-76(%rbp), %xmm0	# norm, D.7912
	movss	%xmm0, q+12(%rip)	# D.7912, q
	.loc 1 632 0
	movss	q(%rip), %xmm0	# q, D.7912
	movss	%xmm0, q0(%rip)	# D.7912, q0
	.loc 1 633 0
	movss	q+4(%rip), %xmm0	# q, D.7912
	movss	%xmm0, q1(%rip)	# D.7912, q1
	.loc 1 634 0
	movss	q+8(%rip), %xmm0	# q, D.7912
	movss	%xmm0, q2(%rip)	# D.7912, q2
	.loc 1 635 0
	movss	q+12(%rip), %xmm0	# q, D.7912
	movss	%xmm0, q3(%rip)	# D.7912, q3
	.loc 1 637 0
	call	imuComputeRotationMatrix	#
	jmp	.L93	#
.L99:
	.loc 1 576 0
	nop
	jmp	.L93	#
.L100:
	.loc 1 584 0
	nop
.L93:
	.loc 1 638 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	MadgwickQuaternionUpdate, .-MadgwickQuaternionUpdate
	.section	.text.calculateAttitude,"ax",@progbits
	.globl	calculateAttitude
	.type	calculateAttitude, @function
calculateAttitude:
.LFB39:
	.loc 1 643 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	.loc 1 646 0
	movq	imu(%rip), %rax	# imu, D.7914
	movzwl	6(%rax), %eax	# _2->ax, D.7915
	movswl	%ax, %edx	# D.7915, D.7916
	movq	imu(%rip), %rax	# imu, D.7914
	movl	%edx, %esi	# D.7916,
	movq	%rax, %rdi	# D.7914,
	call	calcAccel	#
	movd	%xmm0, %eax	#, tmp131
	movl	%eax, -36(%rbp)	# tmp131, ax
	.loc 1 647 0
	movq	imu(%rip), %rax	# imu, D.7914
	movzwl	8(%rax), %eax	# _8->ay, D.7915
	movswl	%ax, %edx	# D.7915, D.7916
	movq	imu(%rip), %rax	# imu, D.7914
	movl	%edx, %esi	# D.7916,
	movq	%rax, %rdi	# D.7914,
	call	calcAccel	#
	movd	%xmm0, %eax	#, tmp132
	movl	%eax, -32(%rbp)	# tmp132, ay
	.loc 1 648 0
	movq	imu(%rip), %rax	# imu, D.7914
	movzwl	10(%rax), %eax	# _14->az, D.7915
	movswl	%ax, %edx	# D.7915, D.7916
	movq	imu(%rip), %rax	# imu, D.7914
	movl	%edx, %esi	# D.7916,
	movq	%rax, %rdi	# D.7914,
	call	calcAccel	#
	movd	%xmm0, %eax	#, tmp133
	movl	%eax, -28(%rbp)	# tmp133, az
	.loc 1 650 0
	movq	imu(%rip), %rax	# imu, D.7914
	movzwl	12(%rax), %eax	# _20->mx, D.7915
	movswl	%ax, %edx	# D.7915, D.7916
	movq	imu(%rip), %rax	# imu, D.7914
	movl	%edx, %esi	# D.7916,
	movq	%rax, %rdi	# D.7914,
	call	calcMag	#
	movd	%xmm0, %eax	#, tmp134
	movl	%eax, -24(%rbp)	# tmp134, mx
	.loc 1 651 0
	movq	imu(%rip), %rax	# imu, D.7914
	movzwl	14(%rax), %eax	# _26->my, D.7915
	movswl	%ax, %edx	# D.7915, D.7916
	movq	imu(%rip), %rax	# imu, D.7914
	movl	%edx, %esi	# D.7916,
	movq	%rax, %rdi	# D.7914,
	call	calcMag	#
	movd	%xmm0, %eax	#, tmp135
	movl	%eax, -20(%rbp)	# tmp135, my
	.loc 1 652 0
	movq	imu(%rip), %rax	# imu, D.7914
	movzwl	16(%rax), %eax	# _32->mz, D.7915
	movswl	%ax, %edx	# D.7915, D.7916
	movq	imu(%rip), %rax	# imu, D.7914
	movl	%edx, %esi	# D.7916,
	movq	%rax, %rdi	# D.7914,
	call	calcMag	#
	movd	%xmm0, %eax	#, tmp136
	movl	%eax, -16(%rbp)	# tmp136, mz
	.loc 1 654 0
	movq	imu(%rip), %rax	# imu, D.7914
	movzwl	(%rax), %eax	# _38->gx, D.7915
	movswl	%ax, %edx	# D.7915, D.7916
	movq	imu(%rip), %rax	# imu, D.7914
	movl	%edx, %esi	# D.7916,
	movq	%rax, %rdi	# D.7914,
	call	calcGyro	#
	movd	%xmm0, %eax	#, tmp137
	movl	%eax, -12(%rbp)	# tmp137, gx
	.loc 1 655 0
	movq	imu(%rip), %rax	# imu, D.7914
	movzwl	2(%rax), %eax	# _44->gy, D.7915
	movswl	%ax, %edx	# D.7915, D.7916
	movq	imu(%rip), %rax	# imu, D.7914
	movl	%edx, %esi	# D.7916,
	movq	%rax, %rdi	# D.7914,
	call	calcGyro	#
	movd	%xmm0, %eax	#, tmp138
	movl	%eax, -8(%rbp)	# tmp138, gy
	.loc 1 656 0
	movq	imu(%rip), %rax	# imu, D.7914
	movzwl	4(%rax), %eax	# _50->gz, D.7915
	movswl	%ax, %edx	# D.7915, D.7916
	movq	imu(%rip), %rax	# imu, D.7914
	movl	%edx, %esi	# D.7916,
	movq	%rax, %rdi	# D.7914,
	call	calcGyro	#
	movd	%xmm0, %eax	#, tmp139
	movl	%eax, -4(%rbp)	# tmp139, gz
	.loc 1 658 0
	movss	-4(%rbp), %xmm1	# gz, tmp140
	movss	.LC6(%rip), %xmm0	#, tmp141
	mulss	%xmm1, %xmm0	# tmp140, D.7917
	movss	.LC23(%rip), %xmm1	#, tmp142
	movaps	%xmm0, %xmm3	# D.7917, D.7917
	divss	%xmm1, %xmm3	# tmp142, D.7917
	movss	-8(%rbp), %xmm1	# gy, tmp143
	movss	.LC6(%rip), %xmm0	#, tmp144
	mulss	%xmm1, %xmm0	# tmp143, D.7917
	movss	.LC23(%rip), %xmm1	#, tmp145
	movaps	%xmm0, %xmm2	# D.7917, D.7917
	divss	%xmm1, %xmm2	# tmp145, D.7917
	movss	-12(%rbp), %xmm1	# gx, tmp146
	movss	.LC6(%rip), %xmm0	#, tmp147
	mulss	%xmm1, %xmm0	# tmp146, D.7917
	movss	.LC23(%rip), %xmm1	#, tmp148
	divss	%xmm1, %xmm0	# tmp148, D.7917
	movaps	%xmm0, %xmm1	# D.7917, D.7917
	movss	-20(%rbp), %xmm5	# my, tmp149
	movss	-24(%rbp), %xmm4	# mx, tmp150
	movss	-28(%rbp), %xmm9	# az, tmp151
	movss	-32(%rbp), %xmm8	# ay, tmp152
	movl	-36(%rbp), %eax	# ax, tmp153
	subq	$8, %rsp	#,
	movss	-16(%rbp), %xmm0	# mz, tmp154
	leaq	-8(%rsp), %rsp	#,
	movss	%xmm0, (%rsp)	# tmp154,
	movaps	%xmm5, %xmm7	# tmp149,
	movaps	%xmm4, %xmm6	# tmp150,
	movaps	%xmm3, %xmm5	# D.7917,
	movaps	%xmm2, %xmm4	# D.7917,
	movaps	%xmm1, %xmm3	# D.7917,
	movaps	%xmm9, %xmm2	# tmp151,
	movaps	%xmm8, %xmm1	# tmp152,
	movl	%eax, -52(%rbp)	# tmp153, %sfp
	movss	-52(%rbp), %xmm0	# %sfp,
	call	MadgwickQuaternionUpdate	#
	addq	$16, %rsp	#,
	.loc 1 660 0
	call	imuUpdateEulerAngles	#
	.loc 1 662 0
	movss	deltat(%rip), %xmm0	# deltat, D.7917
	cvttss2siq	%xmm0, %rax	# D.7917, tmp155
	movl	%eax, %edi	# D.7918,
	call	imuCalculateAcceleration	#
	.loc 1 676 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	calculateAttitude, .-calculateAttitude
	.section	.bss.accZoffset.6763,"aw",@nobits
	.align 4
	.type	accZoffset.6763, @object
	.size	accZoffset.6763, 4
accZoffset.6763:
	.zero	4
	.section	.bss.accz_smooth.6764,"aw",@nobits
	.align 4
	.type	accz_smooth.6764, @object
	.size	accz_smooth.6764, 4
accz_smooth.6764:
	.zero	4
	.section	.bss.integralFBx.6792,"aw",@nobits
	.align 4
	.type	integralFBx.6792, @object
	.size	integralFBx.6792, 4
integralFBx.6792:
	.zero	4
	.section	.bss.integralFBy.6793,"aw",@nobits
	.align 4
	.type	integralFBy.6793, @object
	.size	integralFBy.6793, 4
integralFBy.6793:
	.zero	4
	.section	.bss.integralFBz.6794,"aw",@nobits
	.align 4
	.type	integralFBz.6794, @object
	.size	integralFBz.6794, 4
integralFBz.6794:
	.zero	4
	.section	.bss.previousIMUUpdateTime.6839,"aw",@nobits
	.align 4
	.type	previousIMUUpdateTime.6839, @object
	.size	previousIMUUpdateTime.6839, 4
previousIMUUpdateTime.6839:
	.zero	4
	.section	.bss.accLPFState.6838,"aw",@nobits
	.align 32
	.type	accLPFState.6838, @object
	.size	accLPFState.6838, 36
accLPFState.6838:
	.zero	36
	.section	.rodata
	.align 4
.LC0:
	.long	1065353216
	.align 4
.LC1:
	.long	1016003125
	.align 4
.LC2:
	.long	1092413450
	.align 4
.LC3:
	.long	1176256512
	.align 4
.LC4:
	.long	1147207680
	.align 4
.LC5:
	.long	1141849420
	.align 4
.LC6:
	.long	1078530011
	.align 4
.LC7:
	.long	1056964608
	.align 16
.LC8:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC9:
	.long	897988541
	.align 4
.LC10:
	.long	1092616192
	.align 4
.LC12:
	.long	1086918619
	.align 4
.LC13:
	.long	3226013659
	.align 4
.LC14:
	.long	1073741824
	.align 4
.LC15:
	.long	1008981770
	.align 4
.LC16:
	.long	1057360530
	.align 4
.LC17:
	.long	1070141403
	.align 4
.LC18:
	.long	1232348160
	.align 4
.LC19:
	.long	1014350479
	.align 4
.LC20:
	.long	1152431855
	.align 4
.LC21:
	.long	1082130432
	.align 4
.LC22:
	.long	1025758986
	.align 4
.LC23:
	.long	1127481344
	.text
.Letext0:
	.file 2 "/usr/include/stdint.h"
	.file 3 "./src/main/common/maths.h"
	.file 4 "./src/main/common/axis.h"
	.file 5 "./src/main/common/filter.h"
	.file 6 "./src/main/config/parameter_group.h"
	.file 7 "./src/main/config/profile.h"
	.file 8 "/usr/include/mraa/i2c.h"
	.file 9 "./src/main/drivers/SFE_LSM9DS0.h"
	.file 10 "./src/main/drivers/sensor.h"
	.file 11 "./src/main/drivers/accgyro.h"
	.file 12 "./src/main/sensors/sensors.h"
	.file 13 "./src/main/sensors/gyro.h"
	.file 14 "./src/main/sensors/compass.h"
	.file 15 "./src/main/sensors/acceleration.h"
	.file 16 "./src/main/flight/mixer.h"
	.file 17 "./src/main/flight/pid.h"
	.file 18 "./src/main/flight/imu.h"
	.file 19 "./src/main/io/gps.h"
	.file 20 "./src/main/fc/runtime_config.h"
	.file 21 "./src/main/target/edison/target.h"
	.file 22 "./src/main/drivers/system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1c93
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF359
	.byte	0xc
	.long	.LASF360
	.long	.LASF361
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF15
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF16
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF17
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF18
	.uleb128 0x6
	.long	.LASF25
	.byte	0xc
	.byte	0x3
	.byte	0x2c
	.long	0xfa
	.uleb128 0x7
	.string	"X"
	.byte	0x3
	.byte	0x2d
	.long	0xb1
	.byte	0
	.uleb128 0x7
	.string	"Y"
	.byte	0x3
	.byte	0x2e
	.long	0xb1
	.byte	0x4
	.uleb128 0x7
	.string	"Z"
	.byte	0x3
	.byte	0x2f
	.long	0xb1
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF19
	.byte	0x3
	.byte	0x30
	.long	0xcf
	.uleb128 0x8
	.byte	0xc
	.byte	0x3
	.byte	0x32
	.long	0x120
	.uleb128 0x9
	.string	"A"
	.byte	0x3
	.byte	0x33
	.long	0x120
	.uleb128 0x9
	.string	"V"
	.byte	0x3
	.byte	0x34
	.long	0xfa
	.byte	0
	.uleb128 0xa
	.long	0xb1
	.long	0x130
	.uleb128 0xb
	.long	0xa3
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF20
	.byte	0x3
	.byte	0x35
	.long	0x105
	.uleb128 0xc
	.byte	0x4
	.long	0x95
	.byte	0x4
	.byte	0x14
	.long	0x154
	.uleb128 0xd
	.string	"X"
	.byte	0
	.uleb128 0xd
	.string	"Y"
	.byte	0x1
	.uleb128 0xd
	.string	"Z"
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x95
	.byte	0x4
	.byte	0x1d
	.long	0x179
	.uleb128 0xe
	.long	.LASF21
	.byte	0
	.uleb128 0xe
	.long	.LASF22
	.byte	0x1
	.uleb128 0xe
	.long	.LASF23
	.byte	0x2
	.uleb128 0xe
	.long	.LASF24
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF26
	.byte	0xc
	.byte	0x5
	.byte	0x14
	.long	0x1a8
	.uleb128 0xf
	.long	.LASF27
	.byte	0x5
	.byte	0x15
	.long	0xb1
	.byte	0
	.uleb128 0x7
	.string	"RC"
	.byte	0x5
	.byte	0x16
	.long	0xb1
	.byte	0x4
	.uleb128 0x7
	.string	"dT"
	.byte	0x5
	.byte	0x17
	.long	0xb1
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF28
	.byte	0x5
	.byte	0x18
	.long	0x179
	.uleb128 0x2
	.long	.LASF29
	.byte	0x6
	.byte	0x15
	.long	0x78
	.uleb128 0xc
	.byte	0x4
	.long	0x95
	.byte	0x6
	.byte	0x1d
	.long	0x1ed
	.uleb128 0x10
	.long	.LASF30
	.value	0xfff
	.uleb128 0x10
	.long	.LASF31
	.value	0xf000
	.uleb128 0x10
	.long	.LASF32
	.value	0xfff
	.uleb128 0xe
	.long	.LASF33
	.byte	0
	.uleb128 0x10
	.long	.LASF34
	.value	0x8000
	.byte	0
	.uleb128 0x2
	.long	.LASF35
	.byte	0x6
	.byte	0x26
	.long	0x1f8
	.uleb128 0x11
	.long	0x208
	.uleb128 0x12
	.long	0xbf
	.uleb128 0x12
	.long	0x58
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x6
	.byte	0x2d
	.long	0x226
	.uleb128 0x9
	.string	"ptr"
	.byte	0x6
	.byte	0x2e
	.long	0xbf
	.uleb128 0x9
	.string	"fn"
	.byte	0x6
	.byte	0x2f
	.long	0x226
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.long	0x1ed
	.uleb128 0x6
	.long	.LASF36
	.byte	0x20
	.byte	0x6
	.byte	0x28
	.long	0x275
	.uleb128 0x7
	.string	"pgn"
	.byte	0x6
	.byte	0x29
	.long	0x1b3
	.byte	0
	.uleb128 0xf
	.long	.LASF37
	.byte	0x6
	.byte	0x2a
	.long	0x78
	.byte	0x2
	.uleb128 0xf
	.long	.LASF38
	.byte	0x6
	.byte	0x2b
	.long	0x275
	.byte	0x8
	.uleb128 0x7
	.string	"ptr"
	.byte	0x6
	.byte	0x2c
	.long	0x27b
	.byte	0x10
	.uleb128 0xf
	.long	.LASF39
	.byte	0x6
	.byte	0x30
	.long	0x208
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.long	0x66
	.uleb128 0x13
	.byte	0x8
	.long	0x275
	.uleb128 0x2
	.long	.LASF40
	.byte	0x6
	.byte	0x31
	.long	0x22c
	.uleb128 0x6
	.long	.LASF41
	.byte	0x1
	.byte	0x7
	.byte	0x16
	.long	0x2a5
	.uleb128 0xf
	.long	.LASF42
	.byte	0x7
	.byte	0x17
	.long	0x66
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x7
	.byte	0x18
	.long	0x28c
	.uleb128 0x2
	.long	.LASF44
	.byte	0x8
	.byte	0x35
	.long	0x2bb
	.uleb128 0x13
	.byte	0x8
	.long	0x2c1
	.uleb128 0x14
	.long	.LASF362
	.uleb128 0x15
	.long	.LASF48
	.byte	0x4
	.long	0x95
	.byte	0x9
	.byte	0x81
	.long	0x2e9
	.uleb128 0xe
	.long	.LASF45
	.byte	0
	.uleb128 0xe
	.long	.LASF46
	.byte	0x1
	.uleb128 0xe
	.long	.LASF47
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x9
	.byte	0x86
	.long	0x2c6
	.uleb128 0x15
	.long	.LASF49
	.byte	0x4
	.long	0x95
	.byte	0x9
	.byte	0x89
	.long	0x323
	.uleb128 0xe
	.long	.LASF50
	.byte	0
	.uleb128 0xe
	.long	.LASF51
	.byte	0x1
	.uleb128 0xe
	.long	.LASF52
	.byte	0x2
	.uleb128 0xe
	.long	.LASF53
	.byte	0x3
	.uleb128 0xe
	.long	.LASF54
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x9
	.byte	0x90
	.long	0x2f4
	.uleb128 0x15
	.long	.LASF55
	.byte	0x4
	.long	0x95
	.byte	0x9
	.byte	0x93
	.long	0x357
	.uleb128 0xe
	.long	.LASF56
	.byte	0
	.uleb128 0xe
	.long	.LASF57
	.byte	0x1
	.uleb128 0xe
	.long	.LASF58
	.byte	0x2
	.uleb128 0xe
	.long	.LASF59
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF55
	.byte	0x9
	.byte	0x99
	.long	0x32e
	.uleb128 0x6
	.long	.LASF60
	.byte	0x40
	.byte	0x9
	.byte	0xdc
	.long	0x43d
	.uleb128 0x7
	.string	"gx"
	.byte	0x9
	.byte	0xe2
	.long	0x3b
	.byte	0
	.uleb128 0x7
	.string	"gy"
	.byte	0x9
	.byte	0xe2
	.long	0x3b
	.byte	0x2
	.uleb128 0x7
	.string	"gz"
	.byte	0x9
	.byte	0xe2
	.long	0x3b
	.byte	0x4
	.uleb128 0x7
	.string	"ax"
	.byte	0x9
	.byte	0xe3
	.long	0x3b
	.byte	0x6
	.uleb128 0x7
	.string	"ay"
	.byte	0x9
	.byte	0xe3
	.long	0x3b
	.byte	0x8
	.uleb128 0x7
	.string	"az"
	.byte	0x9
	.byte	0xe3
	.long	0x3b
	.byte	0xa
	.uleb128 0x7
	.string	"mx"
	.byte	0x9
	.byte	0xe4
	.long	0x3b
	.byte	0xc
	.uleb128 0x7
	.string	"my"
	.byte	0x9
	.byte	0xe4
	.long	0x3b
	.byte	0xe
	.uleb128 0x7
	.string	"mz"
	.byte	0x9
	.byte	0xe4
	.long	0x3b
	.byte	0x10
	.uleb128 0xf
	.long	.LASF61
	.byte	0x9
	.byte	0xe5
	.long	0x3b
	.byte	0x12
	.uleb128 0xf
	.long	.LASF62
	.byte	0x9
	.byte	0xe7
	.long	0x2b0
	.byte	0x18
	.uleb128 0x7
	.string	"xm"
	.byte	0x9
	.byte	0xe8
	.long	0x2b0
	.byte	0x20
	.uleb128 0xf
	.long	.LASF63
	.byte	0x9
	.byte	0xec
	.long	0x2e9
	.byte	0x28
	.uleb128 0xf
	.long	.LASF64
	.byte	0x9
	.byte	0xed
	.long	0x323
	.byte	0x2c
	.uleb128 0xf
	.long	.LASF65
	.byte	0x9
	.byte	0xee
	.long	0x357
	.byte	0x30
	.uleb128 0xf
	.long	.LASF66
	.byte	0x9
	.byte	0xf3
	.long	0xb1
	.byte	0x34
	.uleb128 0xf
	.long	.LASF67
	.byte	0x9
	.byte	0xf3
	.long	0xb1
	.byte	0x38
	.uleb128 0xf
	.long	.LASF68
	.byte	0x9
	.byte	0xf3
	.long	0xb1
	.byte	0x3c
	.byte	0
	.uleb128 0x2
	.long	.LASF69
	.byte	0x9
	.byte	0xf5
	.long	0x362
	.uleb128 0x13
	.byte	0x8
	.long	0x44e
	.uleb128 0x16
	.long	0x453
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF70
	.uleb128 0x2
	.long	.LASF71
	.byte	0xa
	.byte	0x15
	.long	0x465
	.uleb128 0x13
	.byte	0x8
	.long	0x46b
	.uleb128 0x17
	.long	0x453
	.long	0x47a
	.uleb128 0x12
	.long	0x47a
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.long	0x3b
	.uleb128 0x2
	.long	.LASF72
	.byte	0xa
	.byte	0x18
	.long	0x48b
	.uleb128 0x13
	.byte	0x8
	.long	0x491
	.uleb128 0x18
	.uleb128 0x2
	.long	.LASF73
	.byte	0xa
	.byte	0x19
	.long	0x49d
	.uleb128 0x13
	.byte	0x8
	.long	0x4a3
	.uleb128 0x11
	.long	0x4ae
	.uleb128 0x12
	.long	0x66
	.byte	0
	.uleb128 0x2
	.long	.LASF74
	.byte	0xa
	.byte	0x1a
	.long	0x448
	.uleb128 0x6
	.long	.LASF75
	.byte	0x28
	.byte	0xb
	.byte	0x1f
	.long	0x502
	.uleb128 0xf
	.long	.LASF76
	.byte	0xb
	.byte	0x20
	.long	0x492
	.byte	0
	.uleb128 0xf
	.long	.LASF77
	.byte	0xb
	.byte	0x21
	.long	0x45a
	.byte	0x8
	.uleb128 0xf
	.long	.LASF61
	.byte	0xb
	.byte	0x22
	.long	0x45a
	.byte	0x10
	.uleb128 0xf
	.long	.LASF78
	.byte	0xb
	.byte	0x23
	.long	0x4ae
	.byte	0x18
	.uleb128 0xf
	.long	.LASF79
	.byte	0xb
	.byte	0x24
	.long	0xb1
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF80
	.byte	0xb
	.byte	0x25
	.long	0x4b9
	.uleb128 0x6
	.long	.LASF81
	.byte	0x18
	.byte	0xb
	.byte	0x27
	.long	0x54a
	.uleb128 0xf
	.long	.LASF76
	.byte	0xb
	.byte	0x28
	.long	0x480
	.byte	0
	.uleb128 0xf
	.long	.LASF77
	.byte	0xb
	.byte	0x29
	.long	0x45a
	.byte	0x8
	.uleb128 0xf
	.long	.LASF82
	.byte	0xb
	.byte	0x2a
	.long	0x78
	.byte	0x10
	.uleb128 0xf
	.long	.LASF83
	.byte	0xb
	.byte	0x2b
	.long	0xaa
	.byte	0x12
	.byte	0
	.uleb128 0x2
	.long	.LASF84
	.byte	0xb
	.byte	0x2c
	.long	0x50d
	.uleb128 0xc
	.byte	0x4
	.long	0x95
	.byte	0xc
	.byte	0x15
	.long	0x57a
	.uleb128 0xe
	.long	.LASF85
	.byte	0
	.uleb128 0xe
	.long	.LASF86
	.byte	0x1
	.uleb128 0xe
	.long	.LASF87
	.byte	0x2
	.uleb128 0xe
	.long	.LASF88
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF89
	.byte	0x6
	.byte	0xc
	.byte	0x20
	.long	0x5ab
	.uleb128 0xf
	.long	.LASF90
	.byte	0xc
	.byte	0x21
	.long	0x3b
	.byte	0
	.uleb128 0xf
	.long	.LASF91
	.byte	0xc
	.byte	0x22
	.long	0x3b
	.byte	0x2
	.uleb128 0x7
	.string	"yaw"
	.byte	0xc
	.byte	0x23
	.long	0x3b
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF92
	.byte	0xc
	.byte	0x24
	.long	0x57a
	.uleb128 0x19
	.long	.LASF136
	.byte	0x6
	.byte	0xc
	.byte	0x26
	.long	0x5d9
	.uleb128 0x9
	.string	"raw"
	.byte	0xc
	.byte	0x27
	.long	0x5d9
	.uleb128 0x1a
	.long	.LASF93
	.byte	0xc
	.byte	0x28
	.long	0x5ab
	.byte	0
	.uleb128 0xa
	.long	0x3b
	.long	0x5e9
	.uleb128 0xb
	.long	0xa3
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF94
	.byte	0xc
	.byte	0x29
	.long	0x5b6
	.uleb128 0xc
	.byte	0x4
	.long	0x95
	.byte	0xc
	.byte	0x2f
	.long	0x62b
	.uleb128 0xe
	.long	.LASF95
	.byte	0x1
	.uleb128 0xe
	.long	.LASF96
	.byte	0x2
	.uleb128 0xe
	.long	.LASF97
	.byte	0x4
	.uleb128 0xe
	.long	.LASF98
	.byte	0x8
	.uleb128 0xe
	.long	.LASF99
	.byte	0x10
	.uleb128 0xe
	.long	.LASF100
	.byte	0x20
	.uleb128 0xe
	.long	.LASF101
	.byte	0x40
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x95
	.byte	0xc
	.byte	0x39
	.long	0x66e
	.uleb128 0xe
	.long	.LASF102
	.byte	0
	.uleb128 0xe
	.long	.LASF103
	.byte	0x1
	.uleb128 0xe
	.long	.LASF104
	.byte	0x2
	.uleb128 0xe
	.long	.LASF105
	.byte	0x3
	.uleb128 0xe
	.long	.LASF106
	.byte	0x4
	.uleb128 0xe
	.long	.LASF107
	.byte	0x5
	.uleb128 0xe
	.long	.LASF108
	.byte	0x6
	.uleb128 0xe
	.long	.LASF109
	.byte	0x7
	.uleb128 0xe
	.long	.LASF110
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF111
	.byte	0xc
	.byte	0x43
	.long	0x62b
	.uleb128 0x6
	.long	.LASF112
	.byte	0xc
	.byte	0xc
	.byte	0x45
	.long	0x6aa
	.uleb128 0xf
	.long	.LASF113
	.byte	0xc
	.byte	0x46
	.long	0x66e
	.byte	0
	.uleb128 0xf
	.long	.LASF114
	.byte	0xc
	.byte	0x47
	.long	0x66e
	.byte	0x4
	.uleb128 0xf
	.long	.LASF115
	.byte	0xc
	.byte	0x48
	.long	0x66e
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF116
	.byte	0xc
	.byte	0x49
	.long	0x679
	.uleb128 0x6
	.long	.LASF117
	.byte	0x3
	.byte	0xc
	.byte	0x4b
	.long	0x6e6
	.uleb128 0xf
	.long	.LASF118
	.byte	0xc
	.byte	0x4c
	.long	0x66
	.byte	0
	.uleb128 0xf
	.long	.LASF119
	.byte	0xc
	.byte	0x4d
	.long	0x66
	.byte	0x1
	.uleb128 0xf
	.long	.LASF120
	.byte	0xc
	.byte	0x4e
	.long	0x66
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF121
	.byte	0xc
	.byte	0x4f
	.long	0x6b5
	.uleb128 0x6
	.long	.LASF122
	.byte	0xc
	.byte	0xc
	.byte	0x51
	.long	0x716
	.uleb128 0xf
	.long	.LASF123
	.byte	0xc
	.byte	0x52
	.long	0x5e9
	.byte	0
	.uleb128 0xf
	.long	.LASF124
	.byte	0xc
	.byte	0x53
	.long	0x5e9
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF125
	.byte	0xc
	.byte	0x54
	.long	0x6f1
	.uleb128 0x6
	.long	.LASF126
	.byte	0x4
	.byte	0xd
	.byte	0x25
	.long	0x752
	.uleb128 0xf
	.long	.LASF127
	.byte	0xd
	.byte	0x26
	.long	0x66
	.byte	0
	.uleb128 0xf
	.long	.LASF128
	.byte	0xd
	.byte	0x27
	.long	0x66
	.byte	0x1
	.uleb128 0xf
	.long	.LASF129
	.byte	0xd
	.byte	0x28
	.long	0x78
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF130
	.byte	0xd
	.byte	0x29
	.long	0x721
	.uleb128 0x6
	.long	.LASF131
	.byte	0x2
	.byte	0xe
	.byte	0x20
	.long	0x776
	.uleb128 0xf
	.long	.LASF132
	.byte	0xe
	.byte	0x21
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF133
	.byte	0xe
	.byte	0x23
	.long	0x75d
	.uleb128 0x6
	.long	.LASF134
	.byte	0x4
	.byte	0xf
	.byte	0x2b
	.long	0x7a6
	.uleb128 0xf
	.long	.LASF90
	.byte	0xf
	.byte	0x2c
	.long	0x3b
	.byte	0
	.uleb128 0xf
	.long	.LASF91
	.byte	0xf
	.byte	0x2d
	.long	0x3b
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF135
	.byte	0xf
	.byte	0x2e
	.long	0x781
	.uleb128 0x19
	.long	.LASF137
	.byte	0x4
	.byte	0xf
	.byte	0x30
	.long	0x7d4
	.uleb128 0x9
	.string	"raw"
	.byte	0xf
	.byte	0x31
	.long	0x7d4
	.uleb128 0x1a
	.long	.LASF93
	.byte	0xf
	.byte	0x32
	.long	0x7a6
	.byte	0
	.uleb128 0xa
	.long	0x3b
	.long	0x7e4
	.uleb128 0xb
	.long	0xa3
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF138
	.byte	0xf
	.byte	0x33
	.long	0x7b1
	.uleb128 0x6
	.long	.LASF139
	.byte	0x2
	.byte	0xf
	.byte	0x35
	.long	0x811
	.uleb128 0x7
	.string	"xy"
	.byte	0xf
	.byte	0x36
	.long	0x66
	.byte	0
	.uleb128 0x7
	.string	"z"
	.byte	0xf
	.byte	0x37
	.long	0x66
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF140
	.byte	0xf
	.byte	0x38
	.long	0x7ef
	.uleb128 0x6
	.long	.LASF141
	.byte	0x10
	.byte	0xf
	.byte	0x3a
	.long	0x865
	.uleb128 0xf
	.long	.LASF142
	.byte	0xf
	.byte	0x3b
	.long	0x7e4
	.byte	0
	.uleb128 0xf
	.long	.LASF143
	.byte	0xf
	.byte	0x3e
	.long	0x66
	.byte	0x4
	.uleb128 0xf
	.long	.LASF144
	.byte	0xf
	.byte	0x3f
	.long	0xb1
	.byte	0x8
	.uleb128 0xf
	.long	.LASF145
	.byte	0xf
	.byte	0x40
	.long	0x811
	.byte	0xc
	.uleb128 0xf
	.long	.LASF146
	.byte	0xf
	.byte	0x41
	.long	0x66
	.byte	0xe
	.byte	0
	.uleb128 0x2
	.long	.LASF147
	.byte	0xf
	.byte	0x42
	.long	0x81c
	.uleb128 0x6
	.long	.LASF148
	.byte	0x10
	.byte	0x10
	.byte	0x40
	.long	0x8ad
	.uleb128 0xf
	.long	.LASF149
	.byte	0x10
	.byte	0x41
	.long	0xb1
	.byte	0
	.uleb128 0xf
	.long	.LASF90
	.byte	0x10
	.byte	0x42
	.long	0xb1
	.byte	0x4
	.uleb128 0xf
	.long	.LASF91
	.byte	0x10
	.byte	0x43
	.long	0xb1
	.byte	0x8
	.uleb128 0x7
	.string	"yaw"
	.byte	0x10
	.byte	0x44
	.long	0xb1
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF150
	.byte	0x10
	.byte	0x45
	.long	0x870
	.uleb128 0x6
	.long	.LASF151
	.byte	0x6
	.byte	0x10
	.byte	0x50
	.long	0x8f5
	.uleb128 0xf
	.long	.LASF152
	.byte	0x10
	.byte	0x51
	.long	0x66
	.byte	0
	.uleb128 0xf
	.long	.LASF153
	.byte	0x10
	.byte	0x52
	.long	0x66
	.byte	0x1
	.uleb128 0xf
	.long	.LASF154
	.byte	0x10
	.byte	0x53
	.long	0x29
	.byte	0x2
	.uleb128 0xf
	.long	.LASF155
	.byte	0x10
	.byte	0x54
	.long	0x78
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF156
	.byte	0x10
	.byte	0x5a
	.long	0x8b8
	.uleb128 0x6
	.long	.LASF157
	.byte	0x6
	.byte	0x10
	.byte	0x5e
	.long	0x931
	.uleb128 0xf
	.long	.LASF158
	.byte	0x10
	.byte	0x5f
	.long	0x78
	.byte	0
	.uleb128 0xf
	.long	.LASF159
	.byte	0x10
	.byte	0x60
	.long	0x78
	.byte	0x2
	.uleb128 0xf
	.long	.LASF160
	.byte	0x10
	.byte	0x61
	.long	0x78
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF161
	.byte	0x10
	.byte	0x62
	.long	0x900
	.uleb128 0xc
	.byte	0x4
	.long	0x95
	.byte	0x11
	.byte	0x1c
	.long	0x98b
	.uleb128 0xe
	.long	.LASF162
	.byte	0
	.uleb128 0xe
	.long	.LASF163
	.byte	0x1
	.uleb128 0xe
	.long	.LASF164
	.byte	0x2
	.uleb128 0xe
	.long	.LASF165
	.byte	0x3
	.uleb128 0xe
	.long	.LASF166
	.byte	0x4
	.uleb128 0xe
	.long	.LASF167
	.byte	0x5
	.uleb128 0xe
	.long	.LASF168
	.byte	0x6
	.uleb128 0xe
	.long	.LASF169
	.byte	0x7
	.uleb128 0xe
	.long	.LASF170
	.byte	0x8
	.uleb128 0xe
	.long	.LASF171
	.byte	0x9
	.uleb128 0xe
	.long	.LASF172
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.long	.LASF173
	.byte	0x2a
	.byte	0x11
	.byte	0x3d
	.long	0xa0d
	.uleb128 0x7
	.string	"P8"
	.byte	0x11
	.byte	0x3e
	.long	0xa0d
	.byte	0
	.uleb128 0x7
	.string	"I8"
	.byte	0x11
	.byte	0x3f
	.long	0xa0d
	.byte	0xa
	.uleb128 0x7
	.string	"D8"
	.byte	0x11
	.byte	0x40
	.long	0xa0d
	.byte	0x14
	.uleb128 0xf
	.long	.LASF174
	.byte	0x11
	.byte	0x41
	.long	0x66
	.byte	0x1e
	.uleb128 0xf
	.long	.LASF175
	.byte	0x11
	.byte	0x42
	.long	0x78
	.byte	0x20
	.uleb128 0xf
	.long	.LASF176
	.byte	0x11
	.byte	0x43
	.long	0x78
	.byte	0x22
	.uleb128 0xf
	.long	.LASF177
	.byte	0x11
	.byte	0x44
	.long	0x78
	.byte	0x24
	.uleb128 0xf
	.long	.LASF178
	.byte	0x11
	.byte	0x45
	.long	0x66
	.byte	0x26
	.uleb128 0xf
	.long	.LASF179
	.byte	0x11
	.byte	0x46
	.long	0x66
	.byte	0x27
	.uleb128 0xf
	.long	.LASF180
	.byte	0x11
	.byte	0x47
	.long	0x66
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.long	0x66
	.long	0xa1d
	.uleb128 0xb
	.long	0xa3
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.long	.LASF181
	.byte	0x11
	.byte	0x48
	.long	0x98b
	.uleb128 0x1b
	.byte	0x6
	.byte	0x12
	.byte	0x25
	.long	0xa55
	.uleb128 0xf
	.long	.LASF90
	.byte	0x12
	.byte	0x27
	.long	0x3b
	.byte	0
	.uleb128 0xf
	.long	.LASF91
	.byte	0x12
	.byte	0x28
	.long	0x3b
	.byte	0x2
	.uleb128 0x7
	.string	"yaw"
	.byte	0x12
	.byte	0x29
	.long	0x3b
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x6
	.byte	0x12
	.byte	0x23
	.long	0xa74
	.uleb128 0x9
	.string	"raw"
	.byte	0x12
	.byte	0x24
	.long	0x5d9
	.uleb128 0x1a
	.long	.LASF93
	.byte	0x12
	.byte	0x2a
	.long	0xa28
	.byte	0
	.uleb128 0x2
	.long	.LASF182
	.byte	0x12
	.byte	0x2b
	.long	0xa55
	.uleb128 0x6
	.long	.LASF183
	.byte	0xc
	.byte	0x12
	.byte	0x2f
	.long	0xae0
	.uleb128 0xf
	.long	.LASF184
	.byte	0x12
	.byte	0x31
	.long	0x78
	.byte	0
	.uleb128 0xf
	.long	.LASF185
	.byte	0x12
	.byte	0x32
	.long	0x66
	.byte	0x2
	.uleb128 0xf
	.long	.LASF186
	.byte	0x12
	.byte	0x33
	.long	0x66
	.byte	0x3
	.uleb128 0xf
	.long	.LASF187
	.byte	0x12
	.byte	0x34
	.long	0x78
	.byte	0x4
	.uleb128 0xf
	.long	.LASF188
	.byte	0x12
	.byte	0x35
	.long	0x78
	.byte	0x6
	.uleb128 0xf
	.long	.LASF189
	.byte	0x12
	.byte	0x36
	.long	0x66
	.byte	0x8
	.uleb128 0xf
	.long	.LASF190
	.byte	0x12
	.byte	0x37
	.long	0x78
	.byte	0xa
	.byte	0
	.uleb128 0x2
	.long	.LASF191
	.byte	0x12
	.byte	0x38
	.long	0xa7f
	.uleb128 0x6
	.long	.LASF192
	.byte	0x4
	.byte	0x12
	.byte	0x3c
	.long	0xb10
	.uleb128 0xf
	.long	.LASF193
	.byte	0x12
	.byte	0x3d
	.long	0x78
	.byte	0
	.uleb128 0xf
	.long	.LASF194
	.byte	0x12
	.byte	0x3e
	.long	0x66
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF195
	.byte	0x12
	.byte	0x3f
	.long	0xaeb
	.uleb128 0x6
	.long	.LASF196
	.byte	0x10
	.byte	0x12
	.byte	0x44
	.long	0xb64
	.uleb128 0xf
	.long	.LASF143
	.byte	0x12
	.byte	0x45
	.long	0x66
	.byte	0
	.uleb128 0xf
	.long	.LASF146
	.byte	0x12
	.byte	0x46
	.long	0x66
	.byte	0x1
	.uleb128 0xf
	.long	.LASF188
	.byte	0x12
	.byte	0x47
	.long	0xb1
	.byte	0x4
	.uleb128 0xf
	.long	.LASF187
	.byte	0x12
	.byte	0x48
	.long	0xb1
	.byte	0x8
	.uleb128 0xf
	.long	.LASF189
	.byte	0x12
	.byte	0x49
	.long	0x66
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF197
	.byte	0x12
	.byte	0x4a
	.long	0xb1b
	.uleb128 0xc
	.byte	0x4
	.long	0x95
	.byte	0x13
	.byte	0x19
	.long	0xb88
	.uleb128 0xe
	.long	.LASF198
	.byte	0
	.uleb128 0xe
	.long	.LASF199
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF200
	.byte	0x13
	.byte	0x1c
	.long	0xb6f
	.uleb128 0xc
	.byte	0x4
	.long	0x95
	.byte	0x13
	.byte	0x20
	.long	0xbbe
	.uleb128 0xe
	.long	.LASF201
	.byte	0
	.uleb128 0xe
	.long	.LASF202
	.byte	0x1
	.uleb128 0xe
	.long	.LASF203
	.byte	0x2
	.uleb128 0xe
	.long	.LASF204
	.byte	0x3
	.uleb128 0xe
	.long	.LASF205
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF206
	.byte	0x13
	.byte	0x26
	.long	0xb93
	.uleb128 0xc
	.byte	0x4
	.long	0x95
	.byte	0x13
	.byte	0x32
	.long	0xbe2
	.uleb128 0xe
	.long	.LASF207
	.byte	0
	.uleb128 0xe
	.long	.LASF208
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF209
	.byte	0x13
	.byte	0x35
	.long	0xbc9
	.uleb128 0xc
	.byte	0x4
	.long	0x95
	.byte	0x13
	.byte	0x37
	.long	0xc06
	.uleb128 0xe
	.long	.LASF210
	.byte	0
	.uleb128 0xe
	.long	.LASF211
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF212
	.byte	0x13
	.byte	0x3a
	.long	0xbed
	.uleb128 0x6
	.long	.LASF213
	.byte	0x10
	.byte	0x13
	.byte	0x3e
	.long	0xc4e
	.uleb128 0xf
	.long	.LASF214
	.byte	0x13
	.byte	0x3f
	.long	0xb88
	.byte	0
	.uleb128 0xf
	.long	.LASF215
	.byte	0x13
	.byte	0x40
	.long	0xbbe
	.byte	0x4
	.uleb128 0xf
	.long	.LASF216
	.byte	0x13
	.byte	0x41
	.long	0xbe2
	.byte	0x8
	.uleb128 0xf
	.long	.LASF217
	.byte	0x13
	.byte	0x42
	.long	0xc06
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF218
	.byte	0x13
	.byte	0x43
	.long	0xc11
	.uleb128 0xc
	.byte	0x4
	.long	0x95
	.byte	0x14
	.byte	0x15
	.long	0xc78
	.uleb128 0xe
	.long	.LASF219
	.byte	0x1
	.uleb128 0xe
	.long	.LASF220
	.byte	0x2
	.uleb128 0xe
	.long	.LASF221
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x95
	.byte	0x14
	.byte	0x3e
	.long	0xca9
	.uleb128 0xe
	.long	.LASF222
	.byte	0x1
	.uleb128 0xe
	.long	.LASF223
	.byte	0x2
	.uleb128 0xe
	.long	.LASF224
	.byte	0x4
	.uleb128 0xe
	.long	.LASF225
	.byte	0x8
	.uleb128 0xe
	.long	.LASF226
	.byte	0x10
	.uleb128 0xe
	.long	.LASF227
	.byte	0x20
	.byte	0
	.uleb128 0x1c
	.long	.LASF252
	.byte	0x1
	.byte	0x7b
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xd45
	.uleb128 0x1d
	.long	.LASF228
	.byte	0x1
	.byte	0x7d
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.long	.LASF229
	.byte	0x1
	.byte	0x7e
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF230
	.byte	0x1
	.byte	0x7f
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.long	.LASF231
	.byte	0x1
	.byte	0x81
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF232
	.byte	0x1
	.byte	0x82
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.long	.LASF233
	.byte	0x1
	.byte	0x83
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.long	.LASF234
	.byte	0x1
	.byte	0x84
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.long	.LASF235
	.byte	0x1
	.byte	0x85
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.long	.LASF236
	.byte	0x1
	.byte	0x86
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.long	.LASF243
	.byte	0x1
	.byte	0x95
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xd9b
	.uleb128 0x1f
	.long	.LASF237
	.byte	0x1
	.byte	0x96
	.long	0xd9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF238
	.byte	0x1
	.byte	0x97
	.long	0xda1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF144
	.byte	0x1
	.byte	0x98
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.long	.LASF193
	.byte	0x1
	.byte	0x99
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.long	0xb64
	.uleb128 0x13
	.byte	0x8
	.long	0x811
	.uleb128 0x20
	.long	.LASF241
	.byte	0x1
	.byte	0xa7
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.long	.LASF239
	.byte	0x1
	.byte	0xb0
	.long	0xb1
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xdf0
	.uleb128 0x1f
	.long	.LASF193
	.byte	0x1
	.byte	0xb0
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.long	.LASF240
	.byte	0x1
	.byte	0xb8
	.long	0xb1
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xe20
	.uleb128 0x1f
	.long	.LASF144
	.byte	0x1
	.byte	0xb8
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.long	.LASF242
	.byte	0x1
	.byte	0xbd
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.long	.LASF244
	.byte	0x1
	.byte	0xc6
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xe87
	.uleb128 0x24
	.string	"v"
	.byte	0x1
	.byte	0xc6
	.long	0xe87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.byte	0xc8
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.byte	0xc8
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"z"
	.byte	0x1
	.byte	0xc8
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.long	0x130
	.uleb128 0x1e
	.long	.LASF245
	.byte	0x1
	.byte	0xd5
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xf00
	.uleb128 0x1f
	.long	.LASF246
	.byte	0x1
	.byte	0xd5
	.long	0x8a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1d
	.long	.LASF247
	.byte	0x1
	.byte	0xd7
	.long	0x4d
	.uleb128 0x9
	.byte	0x3
	.quad	accZoffset.6763
	.uleb128 0x1d
	.long	.LASF248
	.byte	0x1
	.byte	0xd8
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	accz_smooth.6764
	.uleb128 0x25
	.string	"dT"
	.byte	0x1
	.byte	0xd9
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1d
	.long	.LASF249
	.byte	0x1
	.byte	0xda
	.long	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x26
	.long	.LASF270
	.byte	0x1
	.byte	0xfa
	.long	0xb1
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0xf2e
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.byte	0xfa
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.long	.LASF250
	.byte	0x1
	.byte	0xff
	.long	0x453
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF251
	.byte	0x1
	.value	0x104
	.long	0xb1
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.long	.LASF253
	.byte	0x1
	.value	0x10e
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x1190
	.uleb128 0x2a
	.string	"dt"
	.byte	0x1
	.value	0x10e
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.string	"gx"
	.byte	0x1
	.value	0x10e
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.string	"gy"
	.byte	0x1
	.value	0x10e
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2a
	.string	"gz"
	.byte	0x1
	.value	0x10e
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF254
	.byte	0x1
	.value	0x10f
	.long	0x453
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2a
	.string	"ax"
	.byte	0x1
	.value	0x10f
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.string	"ay"
	.byte	0x1
	.value	0x10f
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2a
	.string	"az"
	.byte	0x1
	.value	0x10f
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.long	.LASF255
	.byte	0x1
	.value	0x110
	.long	0x453
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2a
	.string	"mx"
	.byte	0x1
	.value	0x110
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.string	"my"
	.byte	0x1
	.value	0x110
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"mz"
	.byte	0x1
	.value	0x110
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.long	.LASF256
	.byte	0x1
	.value	0x111
	.long	0x453
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.long	.LASF257
	.byte	0x1
	.value	0x111
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.long	.LASF258
	.byte	0x1
	.value	0x113
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	integralFBx.6792
	.uleb128 0x2c
	.long	.LASF259
	.byte	0x1
	.value	0x113
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	integralFBy.6793
	.uleb128 0x2c
	.long	.LASF260
	.byte	0x1
	.value	0x113
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	integralFBz.6794
	.uleb128 0x2c
	.long	.LASF261
	.byte	0x1
	.value	0x114
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"hx"
	.byte	0x1
	.value	0x115
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"hy"
	.byte	0x1
	.value	0x115
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"bx"
	.byte	0x1
	.value	0x115
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"ex"
	.byte	0x1
	.value	0x116
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"ey"
	.byte	0x1
	.value	0x116
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.string	"ez"
	.byte	0x1
	.value	0x116
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"qa"
	.byte	0x1
	.value	0x117
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"qb"
	.byte	0x1
	.value	0x117
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"qc"
	.byte	0x1
	.value	0x117
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF262
	.byte	0x1
	.value	0x11a
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF263
	.byte	0x1
	.value	0x15f
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x116e
	.uleb128 0x2c
	.long	.LASF264
	.byte	0x1
	.value	0x137
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2f
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2c
	.long	.LASF265
	.byte	0x1
	.value	0x152
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF266
	.byte	0x1
	.value	0x17e
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x11c3
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x181
	.long	0x58
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.value	0x181
	.long	0x58
	.byte	0
	.uleb128 0x31
	.long	.LASF267
	.byte	0x1
	.value	0x191
	.long	0x453
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x1204
	.uleb128 0x2b
	.long	.LASF268
	.byte	0x1
	.value	0x191
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF269
	.byte	0x1
	.value	0x195
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.long	.LASF271
	.byte	0x1
	.value	0x19a
	.long	0x453
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x1245
	.uleb128 0x2c
	.long	.LASF272
	.byte	0x1
	.value	0x19c
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF273
	.byte	0x1
	.value	0x19d
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.long	.LASF274
	.byte	0x1
	.value	0x1ae
	.long	0x453
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.long	.LASF275
	.byte	0x1
	.value	0x1b4
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x131a
	.uleb128 0x2c
	.long	.LASF276
	.byte	0x1
	.value	0x1b6
	.long	0x131a
	.uleb128 0x9
	.byte	0x3
	.quad	accLPFState.6838
	.uleb128 0x2c
	.long	.LASF277
	.byte	0x1
	.value	0x1b7
	.long	0x8a
	.uleb128 0x9
	.byte	0x3
	.quad	previousIMUUpdateTime.6839
	.uleb128 0x2c
	.long	.LASF278
	.byte	0x1
	.value	0x1b8
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF272
	.byte	0x1
	.value	0x1b9
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF254
	.byte	0x1
	.value	0x1ba
	.long	0x453
	.uleb128 0x3
	.byte	0x91
	.sleb128 -67
	.uleb128 0x2c
	.long	.LASF255
	.byte	0x1
	.value	0x1bb
	.long	0x453
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0x2c
	.long	.LASF256
	.byte	0x1
	.value	0x1bc
	.long	0x453
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x2c
	.long	.LASF279
	.byte	0x1
	.value	0x1be
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF246
	.byte	0x1
	.value	0x1bf
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0xa
	.long	0x1a8
	.long	0x132a
	.uleb128 0xb
	.long	0xa3
	.byte	0x2
	.byte	0
	.uleb128 0x34
	.long	.LASF280
	.byte	0x1
	.value	0x1e9
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x1358
	.uleb128 0x2b
	.long	.LASF142
	.byte	0x1
	.value	0x1e9
	.long	0x1358
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.long	0x7e4
	.uleb128 0x35
	.long	.LASF281
	.byte	0x1
	.value	0x1f1
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x36
	.long	.LASF363
	.byte	0x1
	.value	0x206
	.long	0xb1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.long	.LASF282
	.byte	0x1
	.value	0x20b
	.long	0x3b
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x13d7
	.uleb128 0x2b
	.long	.LASF194
	.byte	0x1
	.value	0x20b
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF283
	.byte	0x1
	.value	0x215
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x34
	.long	.LASF284
	.byte	0x1
	.value	0x21b
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x16ec
	.uleb128 0x2a
	.string	"ax"
	.byte	0x1
	.value	0x21b
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2a
	.string	"ay"
	.byte	0x1
	.value	0x21b
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2a
	.string	"az"
	.byte	0x1
	.value	0x21b
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x2a
	.string	"gx"
	.byte	0x1
	.value	0x21b
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2a
	.string	"gy"
	.byte	0x1
	.value	0x21b
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2a
	.string	"gz"
	.byte	0x1
	.value	0x21b
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2a
	.string	"mx"
	.byte	0x1
	.value	0x21b
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x2a
	.string	"my"
	.byte	0x1
	.value	0x21b
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2a
	.string	"mz"
	.byte	0x1
	.value	0x21b
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"qa"
	.byte	0x1
	.value	0x21d
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x2d
	.string	"qb"
	.byte	0x1
	.value	0x21d
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2d
	.string	"qc"
	.byte	0x1
	.value	0x21d
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2d
	.string	"qd"
	.byte	0x1
	.value	0x21d
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2c
	.long	.LASF285
	.byte	0x1
	.value	0x21e
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2d
	.string	"hx"
	.byte	0x1
	.value	0x21f
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"hy"
	.byte	0x1
	.value	0x21f
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF286
	.byte	0x1
	.value	0x21f
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF287
	.byte	0x1
	.value	0x21f
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2d
	.string	"s1"
	.byte	0x1
	.value	0x220
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"s2"
	.byte	0x1
	.value	0x220
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"s3"
	.byte	0x1
	.value	0x220
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"s4"
	.byte	0x1
	.value	0x220
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF288
	.byte	0x1
	.value	0x221
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF289
	.byte	0x1
	.value	0x221
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF290
	.byte	0x1
	.value	0x221
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF291
	.byte	0x1
	.value	0x221
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF292
	.byte	0x1
	.value	0x224
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF293
	.byte	0x1
	.value	0x225
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.long	.LASF294
	.byte	0x1
	.value	0x226
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF295
	.byte	0x1
	.value	0x227
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.long	.LASF296
	.byte	0x1
	.value	0x228
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF297
	.byte	0x1
	.value	0x229
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF298
	.byte	0x1
	.value	0x22a
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2c
	.long	.LASF299
	.byte	0x1
	.value	0x22b
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2c
	.long	.LASF300
	.byte	0x1
	.value	0x22c
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2c
	.long	.LASF301
	.byte	0x1
	.value	0x22d
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2c
	.long	.LASF302
	.byte	0x1
	.value	0x22e
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2c
	.long	.LASF303
	.byte	0x1
	.value	0x22f
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2c
	.long	.LASF228
	.byte	0x1
	.value	0x230
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2c
	.long	.LASF234
	.byte	0x1
	.value	0x231
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2c
	.long	.LASF235
	.byte	0x1
	.value	0x232
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2c
	.long	.LASF304
	.byte	0x1
	.value	0x233
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2c
	.long	.LASF229
	.byte	0x1
	.value	0x234
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2c
	.long	.LASF236
	.byte	0x1
	.value	0x235
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.long	.LASF305
	.byte	0x1
	.value	0x236
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2c
	.long	.LASF230
	.byte	0x1
	.value	0x237
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF306
	.byte	0x1
	.value	0x238
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2c
	.long	.LASF307
	.byte	0x1
	.value	0x239
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.string	"max"
	.byte	0x1
	.value	0x23b
	.long	0xb1
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x23c
	.long	0x58
	.byte	0
	.uleb128 0x34
	.long	.LASF308
	.byte	0x1
	.value	0x282
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x1789
	.uleb128 0x2d
	.string	"ax"
	.byte	0x1
	.value	0x284
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"ay"
	.byte	0x1
	.value	0x284
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"az"
	.byte	0x1
	.value	0x284
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"gx"
	.byte	0x1
	.value	0x284
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"gy"
	.byte	0x1
	.value	0x284
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"gz"
	.byte	0x1
	.value	0x284
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.string	"mx"
	.byte	0x1
	.value	0x284
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"my"
	.byte	0x1
	.value	0x284
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"mz"
	.byte	0x1
	.value	0x284
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1d
	.long	.LASF309
	.byte	0x1
	.byte	0x5b
	.long	0x453
	.uleb128 0x9
	.byte	0x3
	.quad	isAccelUpdatedAtLeastOnce
	.uleb128 0x1d
	.long	.LASF310
	.byte	0x1
	.byte	0x5d
	.long	0xd9b
	.uleb128 0x9
	.byte	0x3
	.quad	imuRuntimeConfig
	.uleb128 0x1d
	.long	.LASF145
	.byte	0x1
	.byte	0x5e
	.long	0xda1
	.uleb128 0x9
	.byte	0x3
	.quad	accDeadband
	.uleb128 0xa
	.long	0xb10
	.long	0x17d8
	.uleb128 0xb
	.long	0xa3
	.byte	0x2
	.byte	0
	.uleb128 0x1d
	.long	.LASF311
	.byte	0x1
	.byte	0x63
	.long	0x17c8
	.uleb128 0x9
	.byte	0x3
	.quad	throttleCorrectionConfig_Storage
	.uleb128 0x25
	.string	"q0"
	.byte	0x1
	.byte	0x73
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	q0
	.uleb128 0x25
	.string	"q1"
	.byte	0x1
	.byte	0x73
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	q1
	.uleb128 0x25
	.string	"q2"
	.byte	0x1
	.byte	0x73
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	q2
	.uleb128 0x25
	.string	"q3"
	.byte	0x1
	.byte	0x73
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	q3
	.uleb128 0xa
	.long	0xb1
	.long	0x1853
	.uleb128 0xb
	.long	0xa3
	.byte	0x2
	.uleb128 0xb
	.long	0xa3
	.byte	0x2
	.byte	0
	.uleb128 0x1d
	.long	.LASF312
	.byte	0x1
	.byte	0x75
	.long	0x183d
	.uleb128 0x9
	.byte	0x3
	.quad	rMat
	.uleb128 0x1d
	.long	.LASF313
	.byte	0x1
	.byte	0x79
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	gyroScale
	.uleb128 0x37
	.long	.LASF314
	.byte	0x15
	.byte	0xca
	.long	0x8a
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_0
	.uleb128 0x37
	.long	.LASF315
	.byte	0x15
	.byte	0xcb
	.long	0x8a
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_1
	.uleb128 0x37
	.long	.LASF316
	.byte	0x15
	.byte	0xcc
	.long	0x8a
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_2
	.uleb128 0x37
	.long	.LASF317
	.byte	0x6
	.byte	0x43
	.long	0x18d1
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_start
	.uleb128 0x13
	.byte	0x8
	.long	0x281
	.uleb128 0x37
	.long	.LASF318
	.byte	0x6
	.byte	0x44
	.long	0x18d1
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_end
	.uleb128 0x37
	.long	.LASF319
	.byte	0x6
	.byte	0x47
	.long	0x275
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_start
	.uleb128 0x37
	.long	.LASF320
	.byte	0x6
	.byte	0x48
	.long	0x275
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_end
	.uleb128 0x37
	.long	.LASF321
	.byte	0x7
	.byte	0x1a
	.long	0x2a5
	.uleb128 0x9
	.byte	0x3
	.quad	profileSelection_System
	.uleb128 0x38
	.string	"imu"
	.byte	0x16
	.byte	0x38
	.long	0x1940
	.uleb128 0x9
	.byte	0x3
	.quad	imu
	.uleb128 0x13
	.byte	0x8
	.long	0x43d
	.uleb128 0x37
	.long	.LASF322
	.byte	0xc
	.byte	0x56
	.long	0x6e6
	.uleb128 0x9
	.byte	0x3
	.quad	sensorSelectionConfig_System
	.uleb128 0x37
	.long	.LASF323
	.byte	0xc
	.byte	0x57
	.long	0x6aa
	.uleb128 0x9
	.byte	0x3
	.quad	sensorAlignmentConfig_System
	.uleb128 0x37
	.long	.LASF324
	.byte	0xc
	.byte	0x58
	.long	0x716
	.uleb128 0x9
	.byte	0x3
	.quad	sensorTrims_System
	.uleb128 0x39
	.long	.LASF62
	.byte	0xd
	.byte	0x20
	.long	0x502
	.uleb128 0xa
	.long	0x4d
	.long	0x19a0
	.uleb128 0xb
	.long	0xa3
	.byte	0x2
	.byte	0
	.uleb128 0x39
	.long	.LASF325
	.byte	0xd
	.byte	0x23
	.long	0x1990
	.uleb128 0x37
	.long	.LASF326
	.byte	0xd
	.byte	0x2b
	.long	0x19c0
	.uleb128 0x9
	.byte	0x3
	.quad	gyroConfig
	.uleb128 0x13
	.byte	0x8
	.long	0x752
	.uleb128 0x39
	.long	.LASF327
	.byte	0xe
	.byte	0x25
	.long	0x19d1
	.uleb128 0x13
	.byte	0x8
	.long	0x776
	.uleb128 0x39
	.long	.LASF328
	.byte	0xe
	.byte	0x2e
	.long	0x1990
	.uleb128 0x39
	.long	.LASF329
	.byte	0xe
	.byte	0x32
	.long	0xb1
	.uleb128 0x3a
	.string	"acc"
	.byte	0xf
	.byte	0x27
	.long	0x54a
	.uleb128 0x39
	.long	.LASF330
	.byte	0xf
	.byte	0x29
	.long	0x1990
	.uleb128 0x37
	.long	.LASF331
	.byte	0xf
	.byte	0x45
	.long	0x1a18
	.uleb128 0x9
	.byte	0x3
	.quad	accelerometerConfig
	.uleb128 0x13
	.byte	0x8
	.long	0x865
	.uleb128 0xa
	.long	0x8ad
	.long	0x1a2e
	.uleb128 0xb
	.long	0xa3
	.byte	0x3
	.byte	0
	.uleb128 0x39
	.long	.LASF332
	.byte	0x10
	.byte	0x47
	.long	0x1a1e
	.uleb128 0x37
	.long	.LASF333
	.byte	0x10
	.byte	0x5c
	.long	0x8f5
	.uleb128 0x9
	.byte	0x3
	.quad	mixerConfig_System
	.uleb128 0x37
	.long	.LASF334
	.byte	0x10
	.byte	0x64
	.long	0x931
	.uleb128 0x9
	.byte	0x3
	.quad	motor3DConfig_System
	.uleb128 0x39
	.long	.LASF335
	.byte	0x11
	.byte	0x4a
	.long	0x1a6e
	.uleb128 0x13
	.byte	0x8
	.long	0xa1d
	.uleb128 0x37
	.long	.LASF336
	.byte	0x1
	.byte	0x4d
	.long	0x8a
	.uleb128 0x9
	.byte	0x3
	.quad	accTimeSum
	.uleb128 0x37
	.long	.LASF337
	.byte	0x1
	.byte	0x4e
	.long	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	accSumCount
	.uleb128 0x37
	.long	.LASF338
	.byte	0x1
	.byte	0x4f
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	accVelScale
	.uleb128 0x37
	.long	.LASF339
	.byte	0x1
	.byte	0x4a
	.long	0x5d9
	.uleb128 0x9
	.byte	0x3
	.quad	accSmooth
	.uleb128 0x37
	.long	.LASF340
	.byte	0x1
	.byte	0x4b
	.long	0x1990
	.uleb128 0x9
	.byte	0x3
	.quad	accSum
	.uleb128 0x37
	.long	.LASF341
	.byte	0x1
	.byte	0x77
	.long	0xa74
	.uleb128 0x9
	.byte	0x3
	.quad	attitude
	.uleb128 0x37
	.long	.LASF342
	.byte	0x12
	.byte	0x3a
	.long	0x1b07
	.uleb128 0x9
	.byte	0x3
	.quad	imuConfig
	.uleb128 0x13
	.byte	0x8
	.long	0xae0
	.uleb128 0x37
	.long	.LASF343
	.byte	0x12
	.byte	0x41
	.long	0x1b22
	.uleb128 0x9
	.byte	0x3
	.quad	throttleCorrectionConfig
	.uleb128 0x13
	.byte	0x8
	.long	0xb10
	.uleb128 0x37
	.long	.LASF344
	.byte	0x13
	.byte	0x45
	.long	0xc4e
	.uleb128 0x9
	.byte	0x3
	.quad	gpsConfig_System
	.uleb128 0x39
	.long	.LASF345
	.byte	0x14
	.byte	0x1b
	.long	0x66
	.uleb128 0x39
	.long	.LASF346
	.byte	0x14
	.byte	0x4b
	.long	0x66
	.uleb128 0x37
	.long	.LASF347
	.byte	0x1
	.byte	0x51
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	throttleAngleScale
	.uleb128 0x37
	.long	.LASF348
	.byte	0x1
	.byte	0x52
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	fc_acc
	.uleb128 0x37
	.long	.LASF349
	.byte	0x1
	.byte	0x53
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	smallAngleCosZ
	.uleb128 0x37
	.long	.LASF350
	.byte	0x1
	.byte	0x55
	.long	0x78
	.uleb128 0x9
	.byte	0x3
	.quad	lastUpdate
	.uleb128 0x37
	.long	.LASF351
	.byte	0x1
	.byte	0x56
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	deltat
	.uleb128 0x38
	.string	"now"
	.byte	0x1
	.byte	0x57
	.long	0x78
	.uleb128 0x9
	.byte	0x3
	.quad	now
	.uleb128 0x37
	.long	.LASF352
	.byte	0x1
	.byte	0x60
	.long	0x453
	.uleb128 0x9
	.byte	0x3
	.quad	runtimeConfig_initialized
	.uleb128 0x37
	.long	.LASF353
	.byte	0x1
	.byte	0x65
	.long	0x1bfb
	.uleb128 0x9
	.byte	0x3
	.quad	pgResetTemplate_imuConfig
	.uleb128 0x3b
	.long	0xae0
	.uleb128 0x37
	.long	.LASF354
	.byte	0x1
	.byte	0x62
	.long	0xae0
	.uleb128 0x9
	.byte	0x3
	.quad	imuConfig_System
	.uleb128 0x37
	.long	.LASF355
	.byte	0x1
	.byte	0x62
	.long	0x1c2a
	.uleb128 0x9
	.byte	0x3
	.quad	imuConfig_Registry
	.uleb128 0x3b
	.long	0x281
	.uleb128 0x37
	.long	.LASF356
	.byte	0x1
	.byte	0x6e
	.long	0x1c44
	.uleb128 0x9
	.byte	0x3
	.quad	pgResetTemplate_throttleCorrectionConfig
	.uleb128 0x3b
	.long	0xb10
	.uleb128 0x37
	.long	.LASF357
	.byte	0x1
	.byte	0x63
	.long	0x1b22
	.uleb128 0x9
	.byte	0x3
	.quad	throttleCorrectionConfig_ProfileCurrent
	.uleb128 0x37
	.long	.LASF358
	.byte	0x1
	.byte	0x63
	.long	0x1c2a
	.uleb128 0x9
	.byte	0x3
	.quad	throttleCorrectionConfig_Registry
	.uleb128 0xa
	.long	0xb1
	.long	0x1c83
	.uleb128 0xb
	.long	0xa3
	.byte	0x3
	.byte	0
	.uleb128 0x38
	.string	"q"
	.byte	0x1
	.byte	0x74
	.long	0x1c73
	.uleb128 0x9
	.byte	0x3
	.quad	q
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x18c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
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
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.quad	.LFB32
	.quad	.LFE32
	.quad	.LFB33
	.quad	.LFE33
	.quad	.LFB34
	.quad	.LFE34
	.quad	.LFB35
	.quad	.LFE35
	.quad	.LFB36
	.quad	.LFE36
	.quad	.LFB37
	.quad	.LFE37
	.quad	.LFB38
	.quad	.LFE38
	.quad	.LFB39
	.quad	.LFE39
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF339:
	.string	"accSmooth"
.LASF224:
	.string	"CALIBRATE_MAG"
.LASF206:
	.string	"sbasMode_e"
.LASF237:
	.string	"initialImuRuntimeConfig"
.LASF71:
	.string	"sensorReadFuncPtr"
.LASF151:
	.string	"mixerConfig_s"
.LASF156:
	.string	"mixerConfig_t"
.LASF34:
	.string	"PGR_SIZE_PROFILE_FLAG"
.LASF210:
	.string	"GPS_AUTOBAUD_OFF"
.LASF320:
	.string	"__pg_resetdata_end"
.LASF278:
	.string	"rawYawError"
.LASF61:
	.string	"temperature"
.LASF251:
	.string	"imuGetPGainScaleFactor"
.LASF33:
	.string	"PGR_SIZE_SYSTEM_FLAG"
.LASF49:
	.string	"accel_scale"
.LASF229:
	.string	"q2q2"
.LASF236:
	.string	"q2q3"
.LASF305:
	.string	"q2q4"
.LASF119:
	.string	"mag_hardware"
.LASF201:
	.string	"SBAS_AUTO"
.LASF223:
	.string	"GPS_FIX"
.LASF346:
	.string	"stateFlags"
.LASF146:
	.string	"acc_unarmedcal"
.LASF173:
	.string	"pidProfile_s"
.LASF181:
	.string	"pidProfile_t"
.LASF183:
	.string	"imuConfig_s"
.LASF240:
	.string	"calculateAccZLowPassFilterRCTimeConstant"
.LASF145:
	.string	"accDeadband"
.LASF91:
	.string	"pitch"
.LASF28:
	.string	"pt1Filter_t"
.LASF211:
	.string	"GPS_AUTOBAUD_ON"
.LASF347:
	.string	"throttleAngleScale"
.LASF64:
	.string	"aScale"
.LASF313:
	.string	"gyroScale"
.LASF94:
	.string	"flightDynamicsTrims_t"
.LASF136:
	.string	"flightDynamicsTrims_u"
.LASF3:
	.string	"short int"
.LASF272:
	.string	"axis"
.LASF32:
	.string	"PGR_SIZE_MASK"
.LASF199:
	.string	"GPS_UBLOX"
.LASF177:
	.string	"yaw_lpf"
.LASF198:
	.string	"GPS_NMEA"
.LASF354:
	.string	"imuConfig_System"
.LASF58:
	.string	"M_SCALE_8GS"
.LASF205:
	.string	"SBAS_GAGAN"
.LASF343:
	.string	"throttleCorrectionConfig"
.LASF122:
	.string	"sensorTrims_s"
.LASF125:
	.string	"sensorTrims_t"
.LASF290:
	.string	"qDot3"
.LASF113:
	.string	"gyro_align"
.LASF105:
	.string	"CW180_DEG"
.LASF309:
	.string	"isAccelUpdatedAtLeastOnce"
.LASF50:
	.string	"A_SCALE_2G"
.LASF252:
	.string	"imuComputeRotationMatrix"
.LASF316:
	.string	"U_ID_2"
.LASF59:
	.string	"M_SCALE_12GS"
.LASF141:
	.string	"accelerometerConfig_s"
.LASF330:
	.string	"accADC"
.LASF332:
	.string	"customMotorMixer_SystemArray"
.LASF10:
	.string	"uint32_t"
.LASF0:
	.string	"int8_t"
.LASF356:
	.string	"pgResetTemplate_throttleCorrectionConfig"
.LASF275:
	.string	"imuCalculateEstimatedAttitude"
.LASF189:
	.string	"small_angle"
.LASF137:
	.string	"rollAndPitchTrims_u"
.LASF334:
	.string	"motor3DConfig_System"
.LASF55:
	.string	"mag_scale"
.LASF327:
	.string	"compassConfig_ProfileCurrent"
.LASF242:
	.string	"imuResetAccelerationSum"
.LASF322:
	.string	"sensorSelectionConfig_System"
.LASF360:
	.string	"src/main/flight/imu.c"
.LASF103:
	.string	"CW0_DEG"
.LASF30:
	.string	"PGR_PGN_MASK"
.LASF263:
	.string	"dcmKpGain"
.LASF46:
	.string	"G_SCALE_500DPS"
.LASF1:
	.string	"int16_t"
.LASF68:
	.string	"mRes"
.LASF324:
	.string	"sensorTrims_System"
.LASF88:
	.string	"SENSOR_INDEX_MAG"
.LASF31:
	.string	"PGR_PGN_VERSION_MASK"
.LASF18:
	.string	"long long unsigned int"
.LASF21:
	.string	"FD_ROLL"
.LASF24:
	.string	"FD_INDEX_COUNT"
.LASF143:
	.string	"acc_cut_hz"
.LASF312:
	.string	"rMat"
.LASF271:
	.string	"imuIsAccelerometerHealthy"
.LASF66:
	.string	"gRes"
.LASF243:
	.string	"imuConfigure"
.LASF303:
	.string	"_2q3q4"
.LASF231:
	.string	"q0q1"
.LASF232:
	.string	"q0q2"
.LASF233:
	.string	"q0q3"
.LASF219:
	.string	"OK_TO_ARM"
.LASF256:
	.string	"useYaw"
.LASF187:
	.string	"dcm_kp"
.LASF160:
	.string	"neutral3d"
.LASF195:
	.string	"throttleCorrectionConfig_t"
.LASF126:
	.string	"gyroConfig_s"
.LASF130:
	.string	"gyroConfig_t"
.LASF110:
	.string	"CW270_DEG_FLIP"
.LASF162:
	.string	"PIDROLL"
.LASF196:
	.string	"imuRuntimeConfig_s"
.LASF197:
	.string	"imuRuntimeConfig_t"
.LASF321:
	.string	"profileSelection_System"
.LASF194:
	.string	"throttle_correction_value"
.LASF273:
	.string	"accMagnitude"
.LASF83:
	.string	"revisionCode"
.LASF51:
	.string	"A_SCALE_4G"
.LASF29:
	.string	"pgn_t"
.LASF176:
	.string	"dterm_lpf"
.LASF98:
	.string	"SENSOR_MAG"
.LASF212:
	.string	"gpsAutoBaud_e"
.LASF16:
	.string	"double"
.LASF22:
	.string	"FD_PITCH"
.LASF70:
	.string	"_Bool"
.LASF97:
	.string	"SENSOR_BARO"
.LASF208:
	.string	"GPS_AUTOCONFIG_ON"
.LASF40:
	.string	"pgRegistry_t"
.LASF25:
	.string	"fp_vector"
.LASF319:
	.string	"__pg_resetdata_start"
.LASF65:
	.string	"mScale"
.LASF341:
	.string	"attitude"
.LASF87:
	.string	"SENSOR_INDEX_BARO"
.LASF184:
	.string	"looptime"
.LASF54:
	.string	"A_SCALE_16G"
.LASF168:
	.string	"PIDNAVR"
.LASF250:
	.string	"imuUseFastGains"
.LASF350:
	.string	"lastUpdate"
.LASF279:
	.string	"currentTime"
.LASF12:
	.string	"long unsigned int"
.LASF164:
	.string	"PIDYAW"
.LASF120:
	.string	"baro_hardware"
.LASF333:
	.string	"mixerConfig_System"
.LASF310:
	.string	"imuRuntimeConfig"
.LASF362:
	.string	"_i2c"
.LASF202:
	.string	"SBAS_EGNOS"
.LASF108:
	.string	"CW90_DEG_FLIP"
.LASF144:
	.string	"accz_lpf_cutoff"
.LASF163:
	.string	"PIDPITCH"
.LASF14:
	.string	"char"
.LASF148:
	.string	"motorMixer_s"
.LASF150:
	.string	"motorMixer_t"
.LASF358:
	.string	"throttleCorrectionConfig_Registry"
.LASF340:
	.string	"accSum"
.LASF345:
	.string	"armingFlags"
.LASF169:
	.string	"PIDLEVEL"
.LASF328:
	.string	"magADC"
.LASF192:
	.string	"throttleCorrectionConfig_s"
.LASF42:
	.string	"current_profile_index"
.LASF52:
	.string	"A_SCALE_6G"
.LASF171:
	.string	"PIDVEL"
.LASF326:
	.string	"gyroConfig"
.LASF302:
	.string	"_2q1q3"
.LASF90:
	.string	"roll"
.LASF230:
	.string	"q3q3"
.LASF306:
	.string	"q3q4"
.LASF6:
	.string	"uint8_t"
.LASF281:
	.string	"imuUpdateGyroAndAttitude"
.LASF317:
	.string	"__pg_registry_start"
.LASF292:
	.string	"_2q1mx"
.LASF293:
	.string	"_2q1my"
.LASF294:
	.string	"_2q1mz"
.LASF73:
	.string	"sensorGyroInitFuncPtr"
.LASF44:
	.string	"mraa_i2c_context"
.LASF270:
	.string	"invSqrt"
.LASF245:
	.string	"imuCalculateAcceleration"
.LASF288:
	.string	"qDot1"
.LASF289:
	.string	"qDot2"
.LASF255:
	.string	"useMag"
.LASF291:
	.string	"qDot4"
.LASF363:
	.string	"getCosTiltAngle"
.LASF17:
	.string	"long long int"
.LASF277:
	.string	"previousIMUUpdateTime"
.LASF92:
	.string	"flightDynamicsTrims_def_t"
.LASF203:
	.string	"SBAS_WAAS"
.LASF222:
	.string	"GPS_FIX_HOME"
.LASF118:
	.string	"acc_hardware"
.LASF172:
	.string	"PID_ITEM_COUNT"
.LASF348:
	.string	"fc_acc"
.LASF280:
	.string	"imuUpdateAccelerometer"
.LASF115:
	.string	"mag_align"
.LASF179:
	.string	"horizon_tilt_effect"
.LASF117:
	.string	"sensorSelectionConfig_s"
.LASF121:
	.string	"sensorSelectionConfig_t"
.LASF79:
	.string	"scale"
.LASF264:
	.string	"ez_ef"
.LASF193:
	.string	"throttle_correction_angle"
.LASF296:
	.string	"_4bx"
.LASF297:
	.string	"_4bz"
.LASF72:
	.string	"sensorAccInitFuncPtr"
.LASF37:
	.string	"size"
.LASF129:
	.string	"soft_gyro_lpf_hz"
.LASF239:
	.string	"calculateThrottleAngleScale"
.LASF57:
	.string	"M_SCALE_4GS"
.LASF104:
	.string	"CW90_DEG"
.LASF361:
	.string	"/home/aravind/git/cleanflight"
.LASF53:
	.string	"A_SCALE_8G"
.LASF62:
	.string	"gyro"
.LASF159:
	.string	"deadband3d_high"
.LASF216:
	.string	"autoConfig"
.LASF165:
	.string	"PIDALT"
.LASF215:
	.string	"sbasMode"
.LASF93:
	.string	"values"
.LASF123:
	.string	"accZero"
.LASF331:
	.string	"accelerometerConfig"
.LASF267:
	.string	"imuIsAircraftArmable"
.LASF213:
	.string	"gpsConfig_s"
.LASF218:
	.string	"gpsConfig_t"
.LASF318:
	.string	"__pg_registry_end"
.LASF167:
	.string	"PIDPOSR"
.LASF60:
	.string	"LSM9DS0"
.LASF86:
	.string	"SENSOR_INDEX_ACC"
.LASF170:
	.string	"PIDMAG"
.LASF329:
	.string	"magneticDeclination"
.LASF99:
	.string	"SENSOR_SONAR"
.LASF248:
	.string	"accz_smooth"
.LASF204:
	.string	"SBAS_MSAS"
.LASF227:
	.string	"ANTI_WINDUP"
.LASF8:
	.string	"uint16_t"
.LASF23:
	.string	"FD_YAW"
.LASF132:
	.string	"mag_declination"
.LASF282:
	.string	"calculateThrottleAngleCorrection"
.LASF226:
	.string	"FIXED_WING"
.LASF246:
	.string	"deltaT"
.LASF285:
	.string	"norm"
.LASF359:
	.string	"GNU C99 5.4.1 20160904 -mtune=generic -march=x86-64 -g -std=gnu99 -ffunction-sections -fdata-sections -ffat-lto-objects -fstack-protector-strong"
.LASF283:
	.string	"angle"
.LASF152:
	.string	"mixerMode"
.LASF158:
	.string	"deadband3d_low"
.LASF349:
	.string	"smallAngleCosZ"
.LASF228:
	.string	"q1q1"
.LASF234:
	.string	"q1q2"
.LASF235:
	.string	"q1q3"
.LASF304:
	.string	"q1q4"
.LASF139:
	.string	"accDeadband_s"
.LASF265:
	.string	"dcmKiGain"
.LASF308:
	.string	"calculateAttitude"
.LASF298:
	.string	"_2q1"
.LASF276:
	.string	"accLPFState"
.LASF180:
	.string	"horizon_tilt_mode"
.LASF301:
	.string	"_2q4"
.LASF262:
	.string	"spin_rate"
.LASF269:
	.string	"armingAngleCosZ"
.LASF178:
	.string	"deltaMethod"
.LASF225:
	.string	"SMALL_ANGLE"
.LASF190:
	.string	"max_angle_inclination"
.LASF188:
	.string	"dcm_ki"
.LASF124:
	.string	"magZero"
.LASF5:
	.string	"long int"
.LASF220:
	.string	"PREVENT_ARMING"
.LASF175:
	.string	"yaw_p_limit"
.LASF323:
	.string	"sensorAlignmentConfig_System"
.LASF96:
	.string	"SENSOR_ACC"
.LASF127:
	.string	"gyroMovementCalibrationThreshold"
.LASF249:
	.string	"accel_ned"
.LASF191:
	.string	"imuConfig_t"
.LASF75:
	.string	"gyro_s"
.LASF26:
	.string	"pt1Filter_s"
.LASF214:
	.string	"provider"
.LASF106:
	.string	"CW270_DEG"
.LASF338:
	.string	"accVelScale"
.LASF101:
	.string	"SENSOR_GPSMAG"
.LASF166:
	.string	"PIDPOS"
.LASF209:
	.string	"gpsAutoConfig_e"
.LASF142:
	.string	"accelerometerTrims"
.LASF63:
	.string	"gScale"
.LASF337:
	.string	"accSumCount"
.LASF39:
	.string	"reset"
.LASF342:
	.string	"imuConfig"
.LASF95:
	.string	"SENSOR_GYRO"
.LASF221:
	.string	"ARMED"
.LASF157:
	.string	"motor3DConfig_s"
.LASF247:
	.string	"accZoffset"
.LASF77:
	.string	"read"
.LASF261:
	.string	"recipNorm"
.LASF260:
	.string	"integralFBz"
.LASF351:
	.string	"deltat"
.LASF128:
	.string	"gyro_lpf"
.LASF85:
	.string	"SENSOR_INDEX_GYRO"
.LASF217:
	.string	"autoBaud"
.LASF274:
	.string	"isMagnetometerHealthy"
.LASF114:
	.string	"acc_align"
.LASF56:
	.string	"M_SCALE_2GS"
.LASF299:
	.string	"_2q2"
.LASF300:
	.string	"_2q3"
.LASF76:
	.string	"init"
.LASF74:
	.string	"sensorIsDataReadyFuncPtr"
.LASF13:
	.string	"sizetype"
.LASF174:
	.string	"pidController"
.LASF38:
	.string	"address"
.LASF107:
	.string	"CW0_DEG_FLIP"
.LASF67:
	.string	"aRes"
.LASF266:
	.string	"imuUpdateEulerAngles"
.LASF161:
	.string	"motor3DConfig_t"
.LASF15:
	.string	"float"
.LASF4:
	.string	"int32_t"
.LASF154:
	.string	"yaw_motor_direction"
.LASF89:
	.string	"int16_flightDynamicsTrims_s"
.LASF109:
	.string	"CW180_DEG_FLIP"
.LASF11:
	.string	"unsigned int"
.LASF147:
	.string	"accelerometerConfig_t"
.LASF153:
	.string	"pid_at_min_throttle"
.LASF325:
	.string	"gyroADC"
.LASF244:
	.string	"imuTransformVectorBodyToEarth"
.LASF7:
	.string	"unsigned char"
.LASF352:
	.string	"runtimeConfig_initialized"
.LASF82:
	.string	"acc_1G"
.LASF207:
	.string	"GPS_AUTOCONFIG_OFF"
.LASF48:
	.string	"gyro_scale"
.LASF307:
	.string	"q4q4"
.LASF80:
	.string	"gyro_t"
.LASF253:
	.string	"imuMahonyAHRSupdate"
.LASF254:
	.string	"useAcc"
.LASF185:
	.string	"gyroSync"
.LASF295:
	.string	"_2q2mx"
.LASF314:
	.string	"U_ID_0"
.LASF315:
	.string	"U_ID_1"
.LASF27:
	.string	"state"
.LASF131:
	.string	"compassConfig_s"
.LASF133:
	.string	"compassConfig_t"
.LASF81:
	.string	"acc_s"
.LASF84:
	.string	"acc_t"
.LASF257:
	.string	"yawError"
.LASF284:
	.string	"MadgwickQuaternionUpdate"
.LASF111:
	.string	"sensor_align_e"
.LASF258:
	.string	"integralFBx"
.LASF259:
	.string	"integralFBy"
.LASF78:
	.string	"isDataReady"
.LASF182:
	.string	"attitudeEulerAngles_t"
.LASF135:
	.string	"rollAndPitchTrims_t_def"
.LASF335:
	.string	"pidProfile_ProfileCurrent"
.LASF45:
	.string	"G_SCALE_245DPS"
.LASF186:
	.string	"gyroSyncDenominator"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"short unsigned int"
.LASF19:
	.string	"t_fp_vector_def"
.LASF344:
	.string	"gpsConfig_System"
.LASF134:
	.string	"rollAndPitchTrims_s"
.LASF138:
	.string	"rollAndPitchTrims_t"
.LASF238:
	.string	"initialAccDeadband"
.LASF47:
	.string	"G_SCALE_2000DPS"
.LASF69:
	.string	"LSM9DS0_t"
.LASF286:
	.string	"_2bx"
.LASF41:
	.string	"profileSelection_s"
.LASF43:
	.string	"profileSelection_t"
.LASF287:
	.string	"_2bz"
.LASF100:
	.string	"SENSOR_GPS"
.LASF20:
	.string	"t_fp_vector"
.LASF112:
	.string	"sensorAlignmentConfig_s"
.LASF116:
	.string	"sensorAlignmentConfig_t"
.LASF357:
	.string	"throttleCorrectionConfig_ProfileCurrent"
.LASF241:
	.string	"imuInit"
.LASF149:
	.string	"throttle"
.LASF102:
	.string	"ALIGN_DEFAULT"
.LASF200:
	.string	"gpsProvider_e"
.LASF355:
	.string	"imuConfig_Registry"
.LASF311:
	.string	"throttleCorrectionConfig_Storage"
.LASF353:
	.string	"pgResetTemplate_imuConfig"
.LASF140:
	.string	"accDeadband_t"
.LASF336:
	.string	"accTimeSum"
.LASF268:
	.string	"arming_angle"
.LASF35:
	.string	"pgResetFunc"
.LASF36:
	.string	"pgRegistry_s"
.LASF155:
	.string	"yaw_jump_prevention_limit"
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
