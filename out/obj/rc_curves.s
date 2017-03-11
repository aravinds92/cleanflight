	.file	"rc_curves.c"
# GNU C99 (Ubuntu 5.4.1-2ubuntu1~16.04) version 5.4.1 20160904 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.1 20160904, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed rc_curves.i -mtune=generic -march=x86-64
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
	.comm	__pg_registry_start,8,8
	.comm	__pg_registry_end,8,8
	.comm	__pg_resetdata_start,8,8
	.comm	__pg_resetdata_end,8,8
	.comm	rxConfig_System,26,16
	.comm	motorAndServoConfig_System,12,8
	.section	.text.motorAndServoConfig,"ax",@progbits
	.type	motorAndServoConfig, @function
motorAndServoConfig:
.LFB9:
	.file 1 "./src/main/io/motor_and_servo.h"
	.loc 1 32 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 32 0
	movl	$motorAndServoConfig_System, %eax	#, D.2383
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	motorAndServoConfig, .-motorAndServoConfig
	.comm	armingConfig_System,4,1
	.section	.bss.lookupPitchRollRC,"aw",@nobits
	.align 8
	.type	lookupPitchRollRC, @object
	.size	lookupPitchRollRC, 14
lookupPitchRollRC:
	.zero	14
	.section	.bss.lookupYawRC,"aw",@nobits
	.align 8
	.type	lookupYawRC, @object
	.size	lookupYawRC, 14
lookupYawRC:
	.zero	14
	.section	.bss.lookupThrottleRC,"aw",@nobits
	.align 16
	.type	lookupThrottleRC, @object
	.size	lookupThrottleRC, 24
lookupThrottleRC:
	.zero	24
	.section	.text.generatePitchRollCurve,"ax",@progbits
	.globl	generatePitchRollCurve
	.type	generatePitchRollCurve, @function
generatePitchRollCurve:
.LFB16:
	.file 2 "src/main/fc/rc_curves.c"
	.loc 2 42 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
.LBB2:
	.loc 2 43 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L4	#
.L5:
	.loc 2 44 0 discriminator 3
	movq	currentControlRateProfile(%rip), %rax	# currentControlRateProfile, D.2384
	movzbl	1(%rax), %eax	# _5->rcExpo8, D.2385
	movzbl	%al, %edx	# D.2385, D.2386
	movl	-4(%rbp), %eax	# i, tmp101
	imull	-4(%rbp), %eax	# i, D.2386
	subl	$25, %eax	#, D.2386
	imull	%edx, %eax	# D.2386, D.2386
	addl	$2500, %eax	#, D.2386
	imull	-4(%rbp), %eax	# i, D.2386
	movl	%eax, %edx	# D.2386, D.2386
	movq	currentControlRateProfile(%rip), %rax	# currentControlRateProfile, D.2384
	movzbl	(%rax), %eax	# _13->rcRate8, D.2385
	movzbl	%al, %eax	# D.2385, D.2386
	movl	%edx, %ecx	# D.2386, D.2386
	imull	%eax, %ecx	# D.2386, D.2386
	movl	$1759218605, %edx	#, tmp103
	movl	%ecx, %eax	# D.2386, tmp108
	imull	%edx	# tmp103
	sarl	$10, %edx	#, tmp104
	movl	%ecx, %eax	# D.2386, tmp105
	sarl	$31, %eax	#, tmp105
	subl	%eax, %edx	# tmp105, D.2386
	movl	%edx, %eax	# D.2386, D.2386
	movl	%eax, %edx	# D.2386, D.2387
	movl	-4(%rbp), %eax	# i, tmp107
	cltq
	movw	%dx, lookupPitchRollRC(%rax,%rax)	# D.2387, lookupPitchRollRC
	.loc 2 43 0 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L4:
	.loc 2 43 0 is_stmt 0 discriminator 1
	cmpl	$6, -4(%rbp)	#, i
	jle	.L5	#,
.LBE2:
	.loc 2 46 0 is_stmt 1
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	generatePitchRollCurve, .-generatePitchRollCurve
	.section	.text.generateYawCurve,"ax",@progbits
	.globl	generateYawCurve
	.type	generateYawCurve, @function
generateYawCurve:
.LFB17:
	.loc 2 49 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
.LBB3:
	.loc 2 50 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L7	#
.L8:
	.loc 2 51 0 discriminator 3
	movq	currentControlRateProfile(%rip), %rax	# currentControlRateProfile, D.2388
	movzbl	8(%rax), %eax	# _5->rcYawExpo8, D.2389
	movzbl	%al, %edx	# D.2389, D.2390
	movl	-4(%rbp), %eax	# i, tmp97
	imull	-4(%rbp), %eax	# i, D.2390
	subl	$25, %eax	#, D.2390
	imull	%edx, %eax	# D.2390, D.2390
	addl	$2500, %eax	#, D.2390
	imull	-4(%rbp), %eax	# i, D.2390
	movl	%eax, %ecx	# D.2390, D.2390
	movl	$1374389535, %edx	#, tmp99
	movl	%ecx, %eax	# D.2390, tmp104
	imull	%edx	# tmp99
	sarl	$3, %edx	#, tmp100
	movl	%ecx, %eax	# D.2390, tmp101
	sarl	$31, %eax	#, tmp101
	subl	%eax, %edx	# tmp101, D.2390
	movl	%edx, %eax	# D.2390, D.2390
	movl	%eax, %edx	# D.2390, D.2391
	movl	-4(%rbp), %eax	# i, tmp103
	cltq
	movw	%dx, lookupYawRC(%rax,%rax)	# D.2391, lookupYawRC
	.loc 2 50 0 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L7:
	.loc 2 50 0 is_stmt 0 discriminator 1
	cmpl	$6, -4(%rbp)	#, i
	jle	.L8	#,
.LBE3:
	.loc 2 53 0 is_stmt 1
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	generateYawCurve, .-generateYawCurve
	.section	.text.generateThrottleCurve,"ax",@progbits
	.globl	generateThrottleCurve
	.type	generateThrottleCurve, @function
generateThrottleCurve:
.LFB18:
	.loc 2 56 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$16, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
.LBB4:
	.loc 2 57 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L10	#
.L13:
.LBB5:
	.loc 2 58 0
	movl	-20(%rbp), %eax	# i, tmp138
	movl	%eax, %edx	# tmp138, D.2392
	movl	%edx, %eax	# D.2392, tmp139
	sall	$2, %eax	#, tmp139
	addl	%edx, %eax	# D.2392, tmp139
	addl	%eax, %eax	# tmp140
	movl	%eax, %edx	# tmp139, D.2392
	movq	currentControlRateProfile(%rip), %rax	# currentControlRateProfile, D.2393
	movzbl	2(%rax), %eax	# _9->thrMid8, D.2394
	movzbl	%al, %eax	# D.2394, D.2392
	subl	%eax, %edx	# D.2392, D.2392
	movl	%edx, %eax	# D.2392, D.2392
	movw	%ax, -22(%rbp)	# D.2392, tmp
	.loc 2 59 0
	movb	$1, -23(%rbp)	#, y
	.loc 2 60 0
	cmpw	$0, -22(%rbp)	#, tmp
	jle	.L11	#,
	.loc 2 61 0
	movq	currentControlRateProfile(%rip), %rax	# currentControlRateProfile, D.2393
	movzbl	2(%rax), %eax	# _15->thrMid8, D.2394
	movl	$100, %edx	#, tmp141
	subl	%eax, %edx	# D.2394, tmp142
	movl	%edx, %eax	# tmp142, tmp142
	movb	%al, -23(%rbp)	# tmp142, y
.L11:
	.loc 2 62 0
	cmpw	$0, -22(%rbp)	#, tmp
	jns	.L12	#,
	.loc 2 63 0
	movq	currentControlRateProfile(%rip), %rax	# currentControlRateProfile, D.2393
	movzbl	2(%rax), %eax	# _18->thrMid8, tmp143
	movb	%al, -23(%rbp)	# tmp143, y
.L12:
	.loc 2 64 0 discriminator 2
	movq	currentControlRateProfile(%rip), %rax	# currentControlRateProfile, D.2393
	movzbl	2(%rax), %eax	# _20->thrMid8, D.2394
	movzbl	%al, %edx	# D.2394, D.2392
	movl	%edx, %eax	# D.2392, tmp144
	sall	$2, %eax	#, tmp144
	addl	%edx, %eax	# D.2392, tmp144
	addl	%eax, %eax	# tmp145
	movl	%eax, %r8d	# tmp144, D.2392
	movswl	-22(%rbp), %ecx	# tmp, D.2395
	movq	currentControlRateProfile(%rip), %rax	# currentControlRateProfile, D.2393
	movzbl	3(%rax), %eax	# _25->thrExpo8, D.2394
	movzbl	%al, %eax	# D.2394, D.2395
	movl	$100, %edx	#, tmp146
	movl	%edx, %edi	# tmp146, D.2395
	subl	%eax, %edi	# D.2395, D.2395
	movq	currentControlRateProfile(%rip), %rax	# currentControlRateProfile, D.2393
	movzbl	3(%rax), %eax	# _29->thrExpo8, D.2394
	movzbl	%al, %edx	# D.2394, D.2395
	movswl	-22(%rbp), %esi	# tmp, D.2395
	movswl	-22(%rbp), %eax	# tmp, D.2395
	imull	%esi, %eax	# D.2395, D.2395
	imull	%edx, %eax	# D.2395, D.2395
	movzbl	-23(%rbp), %esi	# y, D.2395
	movzbl	-23(%rbp), %edx	# y, D.2395
	movl	%edx, %ebx	# D.2395, D.2395
	imull	%esi, %ebx	# D.2395, D.2395
	cltd
	idivl	%ebx	# D.2395
	addl	%edi, %eax	# D.2395, D.2395
	imull	%eax, %ecx	# D.2395, D.2395
	movl	$1717986919, %edx	#, tmp150
	movl	%ecx, %eax	# D.2395, tmp163
	imull	%edx	# tmp150
	sarl	$2, %edx	#, tmp151
	movl	%ecx, %eax	# D.2395, tmp152
	sarl	$31, %eax	#, tmp152
	subl	%eax, %edx	# tmp152, D.2395
	movl	%edx, %eax	# D.2395, D.2395
	addl	%r8d, %eax	# D.2392, D.2392
	movl	%eax, %edx	# D.2392, D.2396
	movl	-20(%rbp), %eax	# i, tmp154
	cltq
	movw	%dx, lookupThrottleRC(%rax,%rax)	# D.2396, lookupThrottleRC
	.loc 2 65 0 discriminator 2
	call	motorAndServoConfig	#
	movzwl	(%rax), %ebx	# _48->minthrottle, D.2398
	call	motorAndServoConfig	#
	movzwl	2(%rax), %eax	# _51->maxthrottle, D.2398
	movzwl	%ax, %r12d	# D.2398, D.2395
	call	motorAndServoConfig	#
	movzwl	(%rax), %eax	# _55->minthrottle, D.2398
	movzwl	%ax, %eax	# D.2398, D.2395
	movl	%r12d, %edx	# D.2395, D.2395
	subl	%eax, %edx	# D.2395, D.2395
	movl	-20(%rbp), %eax	# i, tmp156
	cltq
	movzwl	lookupThrottleRC(%rax,%rax), %eax	# lookupThrottleRC, D.2396
	cwtl
	movl	%edx, %ecx	# D.2395, D.2395
	imull	%eax, %ecx	# D.2395, D.2395
	movl	$274877907, %edx	#, tmp158
	movl	%ecx, %eax	# D.2395, tmp164
	imull	%edx	# tmp158
	sarl	$6, %edx	#, tmp159
	movl	%ecx, %eax	# D.2395, tmp160
	sarl	$31, %eax	#, tmp160
	subl	%eax, %edx	# tmp160, D.2395
	movl	%edx, %eax	# D.2395, D.2395
	addl	%ebx, %eax	# D.2398, D.2392
	movl	%eax, %edx	# D.2392, D.2396
	movl	-20(%rbp), %eax	# i, tmp162
	cltq
	movw	%dx, lookupThrottleRC(%rax,%rax)	# D.2396, lookupThrottleRC
.LBE5:
	.loc 2 57 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L10:
	.loc 2 57 0 is_stmt 0 discriminator 1
	cmpl	$11, -20(%rbp)	#, i
	jle	.L13	#,
.LBE4:
	.loc 2 67 0 is_stmt 1
	nop
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	generateThrottleCurve, .-generateThrottleCurve
	.section	.text.rcLookupPitchRoll,"ax",@progbits
	.globl	rcLookupPitchRoll
	.type	rcLookupPitchRoll, @function
rcLookupPitchRoll:
.LFB19:
	.loc 2 70 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# tmp, tmp
	.loc 2 71 0
	movl	-20(%rbp), %ecx	# tmp, tmp104
	movl	$1374389535, %edx	#, tmp106
	movl	%ecx, %eax	# tmp104, tmp122
	imull	%edx	# tmp106
	sarl	$5, %edx	#, tmp107
	movl	%ecx, %eax	# tmp104, tmp108
	sarl	$31, %eax	#, tmp108
	subl	%eax, %edx	# tmp108, tmp103
	movl	%edx, %eax	# tmp103, tmp103
	movl	%eax, -4(%rbp)	# tmp103, tmp2
	.loc 2 72 0
	movl	-4(%rbp), %eax	# tmp2, tmp110
	cltq
	movzwl	lookupPitchRollRC(%rax,%rax), %eax	# lookupPitchRollRC, D.2399
	movl	%eax, %esi	# D.2399, D.2400
	movl	-4(%rbp), %eax	# tmp2, tmp111
	imull	$-100, %eax, %edx	#, tmp111, D.2401
	movl	-20(%rbp), %eax	# tmp, tmp112
	leal	(%rdx,%rax), %ecx	#, D.2401
	movl	-4(%rbp), %eax	# tmp2, tmp113
	addl	$1, %eax	#, D.2401
	cltq
	movzwl	lookupPitchRollRC(%rax,%rax), %eax	# lookupPitchRollRC, D.2399
	movswl	%ax, %edx	# D.2399, D.2401
	movl	-4(%rbp), %eax	# tmp2, tmp116
	cltq
	movzwl	lookupPitchRollRC(%rax,%rax), %eax	# lookupPitchRollRC, D.2399
	cwtl
	subl	%eax, %edx	# D.2401, D.2401
	movl	%edx, %eax	# D.2401, D.2401
	imull	%eax, %ecx	# D.2401, D.2401
	movl	$1374389535, %edx	#, tmp118
	movl	%ecx, %eax	# D.2401, tmp123
	imull	%edx	# tmp118
	sarl	$5, %edx	#, tmp119
	movl	%ecx, %eax	# D.2401, tmp120
	sarl	$31, %eax	#, tmp120
	subl	%eax, %edx	# tmp120, D.2401
	movl	%edx, %eax	# D.2401, D.2401
	addl	%esi, %eax	# D.2400, D.2400
	.loc 2 73 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	rcLookupPitchRoll, .-rcLookupPitchRoll
	.section	.text.rcLookupYaw,"ax",@progbits
	.globl	rcLookupYaw
	.type	rcLookupYaw, @function
rcLookupYaw:
.LFB20:
	.loc 2 76 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# tmp, tmp
	.loc 2 77 0
	movl	-20(%rbp), %ecx	# tmp, tmp104
	movl	$1374389535, %edx	#, tmp106
	movl	%ecx, %eax	# tmp104, tmp122
	imull	%edx	# tmp106
	sarl	$5, %edx	#, tmp107
	movl	%ecx, %eax	# tmp104, tmp108
	sarl	$31, %eax	#, tmp108
	subl	%eax, %edx	# tmp108, tmp103
	movl	%edx, %eax	# tmp103, tmp103
	movl	%eax, -4(%rbp)	# tmp103, tmp2
	.loc 2 78 0
	movl	-4(%rbp), %eax	# tmp2, tmp110
	cltq
	movzwl	lookupYawRC(%rax,%rax), %eax	# lookupYawRC, D.2403
	movl	%eax, %esi	# D.2403, D.2404
	movl	-4(%rbp), %eax	# tmp2, tmp111
	imull	$-100, %eax, %edx	#, tmp111, D.2405
	movl	-20(%rbp), %eax	# tmp, tmp112
	leal	(%rdx,%rax), %ecx	#, D.2405
	movl	-4(%rbp), %eax	# tmp2, tmp113
	addl	$1, %eax	#, D.2405
	cltq
	movzwl	lookupYawRC(%rax,%rax), %eax	# lookupYawRC, D.2403
	movswl	%ax, %edx	# D.2403, D.2405
	movl	-4(%rbp), %eax	# tmp2, tmp116
	cltq
	movzwl	lookupYawRC(%rax,%rax), %eax	# lookupYawRC, D.2403
	cwtl
	subl	%eax, %edx	# D.2405, D.2405
	movl	%edx, %eax	# D.2405, D.2405
	imull	%eax, %ecx	# D.2405, D.2405
	movl	$1374389535, %edx	#, tmp118
	movl	%ecx, %eax	# D.2405, tmp123
	imull	%edx	# tmp118
	sarl	$5, %edx	#, tmp119
	movl	%ecx, %eax	# D.2405, tmp120
	sarl	$31, %eax	#, tmp120
	subl	%eax, %edx	# tmp120, D.2405
	movl	%edx, %eax	# D.2405, D.2405
	addl	%esi, %eax	# D.2404, D.2404
	.loc 2 79 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	rcLookupYaw, .-rcLookupYaw
	.section	.text.rcLookupThrottle,"ax",@progbits
	.globl	rcLookupThrottle
	.type	rcLookupThrottle, @function
rcLookupThrottle:
.LFB21:
	.loc 2 82 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# tmp, tmp
	.loc 2 83 0
	movl	-20(%rbp), %ecx	# tmp, tmp104
	movl	$1374389535, %edx	#, tmp106
	movl	%ecx, %eax	# tmp104, tmp122
	imull	%edx	# tmp106
	sarl	$5, %edx	#, tmp107
	movl	%ecx, %eax	# tmp104, tmp108
	sarl	$31, %eax	#, tmp108
	subl	%eax, %edx	# tmp108, tmp103
	movl	%edx, %eax	# tmp103, tmp103
	movl	%eax, -4(%rbp)	# tmp103, tmp2
	.loc 2 84 0
	movl	-4(%rbp), %eax	# tmp2, tmp110
	cltq
	movzwl	lookupThrottleRC(%rax,%rax), %eax	# lookupThrottleRC, D.2407
	movl	%eax, %esi	# D.2407, D.2408
	movl	-4(%rbp), %eax	# tmp2, tmp111
	imull	$-100, %eax, %edx	#, tmp111, D.2409
	movl	-20(%rbp), %eax	# tmp, tmp112
	leal	(%rdx,%rax), %ecx	#, D.2409
	movl	-4(%rbp), %eax	# tmp2, tmp113
	addl	$1, %eax	#, D.2409
	cltq
	movzwl	lookupThrottleRC(%rax,%rax), %eax	# lookupThrottleRC, D.2407
	movswl	%ax, %edx	# D.2407, D.2409
	movl	-4(%rbp), %eax	# tmp2, tmp116
	cltq
	movzwl	lookupThrottleRC(%rax,%rax), %eax	# lookupThrottleRC, D.2407
	cwtl
	subl	%eax, %edx	# D.2409, D.2409
	movl	%edx, %eax	# D.2409, D.2409
	imull	%eax, %ecx	# D.2409, D.2409
	movl	$1374389535, %edx	#, tmp118
	movl	%ecx, %eax	# D.2409, tmp123
	imull	%edx	# tmp118
	sarl	$5, %edx	#, tmp119
	movl	%ecx, %eax	# D.2409, tmp120
	sarl	$31, %eax	#, tmp120
	subl	%eax, %edx	# tmp120, D.2409
	movl	%edx, %eax	# D.2409, D.2409
	addl	%esi, %eax	# D.2408, D.2408
	.loc 2 85 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	rcLookupThrottle, .-rcLookupThrottle
	.text
.Letext0:
	.file 3 "/usr/include/stdint.h"
	.file 4 "./src/main/config/parameter_group.h"
	.file 5 "./src/main/rx/rx.h"
	.file 6 "./src/main/fc/rate_profile.h"
	.file 7 "./src/main/fc/rc_controls.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8da
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF142
	.byte	0xc
	.long	.LASF143
	.long	.LASF144
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
	.uleb128 0x2
	.long	.LASF4
	.byte	0x3
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
	.byte	0x3
	.byte	0x30
	.long	0x71
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x31
	.long	0x83
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x15
	.long	0x78
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x26
	.long	0xae
	.uleb128 0x5
	.long	0xbe
	.uleb128 0x6
	.long	0xbe
	.uleb128 0x6
	.long	0x58
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.byte	0x2d
	.long	0xde
	.uleb128 0x9
	.string	"ptr"
	.byte	0x4
	.byte	0x2e
	.long	0xbe
	.uleb128 0x9
	.string	"fn"
	.byte	0x4
	.byte	0x2f
	.long	0xde
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0xa3
	.uleb128 0xb
	.long	.LASF18
	.byte	0x20
	.byte	0x4
	.byte	0x28
	.long	0x12d
	.uleb128 0xc
	.string	"pgn"
	.byte	0x4
	.byte	0x29
	.long	0x98
	.byte	0
	.uleb128 0xd
	.long	.LASF14
	.byte	0x4
	.byte	0x2a
	.long	0x78
	.byte	0x2
	.uleb128 0xd
	.long	.LASF15
	.byte	0x4
	.byte	0x2b
	.long	0x12d
	.byte	0x8
	.uleb128 0xc
	.string	"ptr"
	.byte	0x4
	.byte	0x2c
	.long	0x133
	.byte	0x10
	.uleb128 0xd
	.long	.LASF16
	.byte	0x4
	.byte	0x30
	.long	0xc0
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x66
	.uleb128 0xa
	.byte	0x8
	.long	0x12d
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0x31
	.long	0xe4
	.uleb128 0xb
	.long	.LASF19
	.byte	0x2
	.byte	0x5
	.byte	0x65
	.long	0x169
	.uleb128 0xd
	.long	.LASF20
	.byte	0x5
	.byte	0x66
	.long	0x66
	.byte	0
	.uleb128 0xd
	.long	.LASF21
	.byte	0x5
	.byte	0x67
	.long	0x66
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF22
	.byte	0x5
	.byte	0x68
	.long	0x144
	.uleb128 0xb
	.long	.LASF23
	.byte	0x4
	.byte	0x5
	.byte	0x6a
	.long	0x199
	.uleb128 0xc
	.string	"min"
	.byte	0x5
	.byte	0x6b
	.long	0x78
	.byte	0
	.uleb128 0xc
	.string	"max"
	.byte	0x5
	.byte	0x6c
	.long	0x78
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF24
	.byte	0x5
	.byte	0x6d
	.long	0x174
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1a
	.byte	0x5
	.byte	0x6f
	.long	0x24d
	.uleb128 0xd
	.long	.LASF26
	.byte	0x5
	.byte	0x70
	.long	0x24d
	.byte	0
	.uleb128 0xd
	.long	.LASF27
	.byte	0x5
	.byte	0x71
	.long	0x66
	.byte	0x8
	.uleb128 0xd
	.long	.LASF28
	.byte	0x5
	.byte	0x72
	.long	0x66
	.byte	0x9
	.uleb128 0xd
	.long	.LASF29
	.byte	0x5
	.byte	0x73
	.long	0x66
	.byte	0xa
	.uleb128 0xd
	.long	.LASF30
	.byte	0x5
	.byte	0x74
	.long	0x66
	.byte	0xb
	.uleb128 0xd
	.long	.LASF31
	.byte	0x5
	.byte	0x75
	.long	0x66
	.byte	0xc
	.uleb128 0xd
	.long	.LASF32
	.byte	0x5
	.byte	0x76
	.long	0x66
	.byte	0xd
	.uleb128 0xd
	.long	.LASF33
	.byte	0x5
	.byte	0x77
	.long	0x66
	.byte	0xe
	.uleb128 0xd
	.long	.LASF34
	.byte	0x5
	.byte	0x78
	.long	0x78
	.byte	0x10
	.uleb128 0xd
	.long	.LASF35
	.byte	0x5
	.byte	0x79
	.long	0x78
	.byte	0x12
	.uleb128 0xd
	.long	.LASF36
	.byte	0x5
	.byte	0x7a
	.long	0x78
	.byte	0x14
	.uleb128 0xd
	.long	.LASF37
	.byte	0x5
	.byte	0x7c
	.long	0x78
	.byte	0x16
	.uleb128 0xd
	.long	.LASF38
	.byte	0x5
	.byte	0x7d
	.long	0x78
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.long	0x66
	.long	0x25d
	.uleb128 0xf
	.long	0x25d
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF39
	.uleb128 0x2
	.long	.LASF40
	.byte	0x5
	.byte	0x7e
	.long	0x1a4
	.uleb128 0xb
	.long	.LASF41
	.byte	0xc
	.byte	0x1
	.byte	0x14
	.long	0x2c4
	.uleb128 0xd
	.long	.LASF42
	.byte	0x1
	.byte	0x17
	.long	0x78
	.byte	0
	.uleb128 0xd
	.long	.LASF43
	.byte	0x1
	.byte	0x18
	.long	0x78
	.byte	0x2
	.uleb128 0xd
	.long	.LASF44
	.byte	0x1
	.byte	0x19
	.long	0x78
	.byte	0x4
	.uleb128 0xd
	.long	.LASF45
	.byte	0x1
	.byte	0x1a
	.long	0x78
	.byte	0x6
	.uleb128 0xd
	.long	.LASF46
	.byte	0x1
	.byte	0x1c
	.long	0x78
	.byte	0x8
	.uleb128 0xd
	.long	.LASF47
	.byte	0x1
	.byte	0x1d
	.long	0x78
	.byte	0xa
	.byte	0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x1
	.byte	0x1e
	.long	0x26f
	.uleb128 0xb
	.long	.LASF49
	.byte	0xc
	.byte	0x6
	.byte	0x14
	.long	0x33c
	.uleb128 0xd
	.long	.LASF50
	.byte	0x6
	.byte	0x15
	.long	0x66
	.byte	0
	.uleb128 0xd
	.long	.LASF51
	.byte	0x6
	.byte	0x16
	.long	0x66
	.byte	0x1
	.uleb128 0xd
	.long	.LASF52
	.byte	0x6
	.byte	0x17
	.long	0x66
	.byte	0x2
	.uleb128 0xd
	.long	.LASF53
	.byte	0x6
	.byte	0x18
	.long	0x66
	.byte	0x3
	.uleb128 0xd
	.long	.LASF54
	.byte	0x6
	.byte	0x19
	.long	0x33c
	.byte	0x4
	.uleb128 0xd
	.long	.LASF55
	.byte	0x6
	.byte	0x1a
	.long	0x66
	.byte	0x7
	.uleb128 0xd
	.long	.LASF56
	.byte	0x6
	.byte	0x1b
	.long	0x66
	.byte	0x8
	.uleb128 0xd
	.long	.LASF57
	.byte	0x6
	.byte	0x1c
	.long	0x78
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.long	0x66
	.long	0x34c
	.uleb128 0xf
	.long	0x25d
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x6
	.byte	0x1d
	.long	0x2cf
	.uleb128 0xb
	.long	.LASF59
	.byte	0x1
	.byte	0x6
	.byte	0x24
	.long	0x370
	.uleb128 0xd
	.long	.LASF60
	.byte	0x6
	.byte	0x25
	.long	0x66
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF61
	.byte	0x6
	.byte	0x26
	.long	0x357
	.uleb128 0x10
	.byte	0x4
	.long	0x8a
	.byte	0x7
	.byte	0x16
	.long	0x436
	.uleb128 0x11
	.long	.LASF62
	.byte	0
	.uleb128 0x11
	.long	.LASF63
	.byte	0x1
	.uleb128 0x11
	.long	.LASF64
	.byte	0x2
	.uleb128 0x11
	.long	.LASF65
	.byte	0x3
	.uleb128 0x11
	.long	.LASF66
	.byte	0x4
	.uleb128 0x11
	.long	.LASF67
	.byte	0x5
	.uleb128 0x11
	.long	.LASF68
	.byte	0x6
	.uleb128 0x11
	.long	.LASF69
	.byte	0x7
	.uleb128 0x11
	.long	.LASF70
	.byte	0x8
	.uleb128 0x11
	.long	.LASF71
	.byte	0x9
	.uleb128 0x11
	.long	.LASF72
	.byte	0xa
	.uleb128 0x11
	.long	.LASF73
	.byte	0xb
	.uleb128 0x11
	.long	.LASF74
	.byte	0xc
	.uleb128 0x11
	.long	.LASF75
	.byte	0xd
	.uleb128 0x11
	.long	.LASF76
	.byte	0xe
	.uleb128 0x11
	.long	.LASF77
	.byte	0xf
	.uleb128 0x11
	.long	.LASF78
	.byte	0x10
	.uleb128 0x11
	.long	.LASF79
	.byte	0x11
	.uleb128 0x11
	.long	.LASF80
	.byte	0x12
	.uleb128 0x11
	.long	.LASF81
	.byte	0x13
	.uleb128 0x11
	.long	.LASF82
	.byte	0x14
	.uleb128 0x11
	.long	.LASF83
	.byte	0x15
	.uleb128 0x11
	.long	.LASF84
	.byte	0x16
	.uleb128 0x11
	.long	.LASF85
	.byte	0x17
	.uleb128 0x11
	.long	.LASF86
	.byte	0x18
	.uleb128 0x11
	.long	.LASF87
	.byte	0x19
	.uleb128 0x11
	.long	.LASF88
	.byte	0x1a
	.uleb128 0x11
	.long	.LASF89
	.byte	0x1b
	.uleb128 0x11
	.long	.LASF90
	.byte	0x1c
	.byte	0
	.uleb128 0x2
	.long	.LASF91
	.byte	0x7
	.byte	0x35
	.long	0x37b
	.uleb128 0xb
	.long	.LASF92
	.byte	0x2
	.byte	0x7
	.byte	0x75
	.long	0x466
	.uleb128 0xd
	.long	.LASF93
	.byte	0x7
	.byte	0x76
	.long	0x66
	.byte	0
	.uleb128 0xd
	.long	.LASF94
	.byte	0x7
	.byte	0x77
	.long	0x66
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF95
	.byte	0x7
	.byte	0x78
	.long	0x441
	.uleb128 0xb
	.long	.LASF96
	.byte	0x8
	.byte	0x7
	.byte	0x7a
	.long	0x4a2
	.uleb128 0xd
	.long	.LASF97
	.byte	0x7
	.byte	0x7b
	.long	0x436
	.byte	0
	.uleb128 0xd
	.long	.LASF98
	.byte	0x7
	.byte	0x7c
	.long	0x66
	.byte	0x4
	.uleb128 0xd
	.long	.LASF99
	.byte	0x7
	.byte	0x7d
	.long	0x466
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.long	.LASF100
	.byte	0x7
	.byte	0x7e
	.long	0x471
	.uleb128 0xb
	.long	.LASF101
	.byte	0xa0
	.byte	0x7
	.byte	0x82
	.long	0x4c6
	.uleb128 0xd
	.long	.LASF102
	.byte	0x7
	.byte	0x83
	.long	0x4c6
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x4a2
	.long	0x4d6
	.uleb128 0xf
	.long	0x25d
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF103
	.byte	0x7
	.byte	0x84
	.long	0x4ad
	.uleb128 0xb
	.long	.LASF104
	.byte	0x8
	.byte	0x7
	.byte	0x8a
	.long	0x536
	.uleb128 0xd
	.long	.LASF105
	.byte	0x7
	.byte	0x8b
	.long	0x66
	.byte	0
	.uleb128 0xd
	.long	.LASF106
	.byte	0x7
	.byte	0x8c
	.long	0x66
	.byte	0x1
	.uleb128 0xd
	.long	.LASF107
	.byte	0x7
	.byte	0x8d
	.long	0x66
	.byte	0x2
	.uleb128 0xd
	.long	.LASF108
	.byte	0x7
	.byte	0x8e
	.long	0x66
	.byte	0x3
	.uleb128 0xd
	.long	.LASF109
	.byte	0x7
	.byte	0x8f
	.long	0x29
	.byte	0x4
	.uleb128 0xd
	.long	.LASF110
	.byte	0x7
	.byte	0x90
	.long	0x78
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF111
	.byte	0x7
	.byte	0x91
	.long	0x4e1
	.uleb128 0xb
	.long	.LASF112
	.byte	0x4
	.byte	0x7
	.byte	0x95
	.long	0x57e
	.uleb128 0xd
	.long	.LASF113
	.byte	0x7
	.byte	0x97
	.long	0x66
	.byte	0
	.uleb128 0xd
	.long	.LASF114
	.byte	0x7
	.byte	0x98
	.long	0x66
	.byte	0x1
	.uleb128 0xd
	.long	.LASF115
	.byte	0x7
	.byte	0x99
	.long	0x66
	.byte	0x2
	.uleb128 0xd
	.long	.LASF116
	.byte	0x7
	.byte	0x9a
	.long	0x66
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF117
	.byte	0x7
	.byte	0x9b
	.long	0x541
	.uleb128 0x12
	.long	.LASF145
	.byte	0x1
	.byte	0x20
	.long	0x5a6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.byte	0x8
	.long	0x2c4
	.uleb128 0x13
	.long	.LASF118
	.byte	0x2
	.byte	0x29
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e8
	.uleb128 0x14
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x15
	.string	"i"
	.byte	0x2
	.byte	0x2b
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF119
	.byte	0x2
	.byte	0x30
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x624
	.uleb128 0x14
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x15
	.string	"i"
	.byte	0x2
	.byte	0x32
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF120
	.byte	0x2
	.byte	0x37
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x68c
	.uleb128 0x14
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x15
	.string	"i"
	.byte	0x2
	.byte	0x39
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x15
	.string	"tmp"
	.byte	0x2
	.byte	0x3a
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x15
	.string	"y"
	.byte	0x2
	.byte	0x3b
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	0x3b
	.uleb128 0x18
	.long	.LASF122
	.byte	0x2
	.byte	0x45
	.long	0x3b
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x6cf
	.uleb128 0x19
	.string	"tmp"
	.byte	0x2
	.byte	0x45
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x2
	.byte	0x47
	.long	0x6cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.long	0x58
	.uleb128 0x18
	.long	.LASF123
	.byte	0x2
	.byte	0x4b
	.long	0x3b
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x712
	.uleb128 0x19
	.string	"tmp"
	.byte	0x2
	.byte	0x4b
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x2
	.byte	0x4d
	.long	0x6cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.long	.LASF124
	.byte	0x2
	.byte	0x51
	.long	0x3b
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x750
	.uleb128 0x19
	.string	"tmp"
	.byte	0x2
	.byte	0x51
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x2
	.byte	0x53
	.long	0x6cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	0x3b
	.long	0x760
	.uleb128 0xf
	.long	0x25d
	.byte	0x6
	.byte	0
	.uleb128 0x1a
	.long	.LASF125
	.byte	0x2
	.byte	0x24
	.long	0x750
	.uleb128 0x9
	.byte	0x3
	.quad	lookupPitchRollRC
	.uleb128 0x1a
	.long	.LASF126
	.byte	0x2
	.byte	0x25
	.long	0x750
	.uleb128 0x9
	.byte	0x3
	.quad	lookupYawRC
	.uleb128 0xe
	.long	0x3b
	.long	0x79a
	.uleb128 0xf
	.long	0x25d
	.byte	0xb
	.byte	0
	.uleb128 0x1a
	.long	.LASF127
	.byte	0x2
	.byte	0x26
	.long	0x78a
	.uleb128 0x9
	.byte	0x3
	.quad	lookupThrottleRC
	.uleb128 0x1b
	.long	.LASF128
	.byte	0x4
	.byte	0x43
	.long	0x7c4
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_start
	.uleb128 0xa
	.byte	0x8
	.long	0x139
	.uleb128 0x1b
	.long	.LASF129
	.byte	0x4
	.byte	0x44
	.long	0x7c4
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_end
	.uleb128 0x1b
	.long	.LASF130
	.byte	0x4
	.byte	0x47
	.long	0x12d
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_start
	.uleb128 0x1b
	.long	.LASF131
	.byte	0x4
	.byte	0x48
	.long	0x12d
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_end
	.uleb128 0x1b
	.long	.LASF132
	.byte	0x5
	.byte	0x80
	.long	0x264
	.uleb128 0x9
	.byte	0x3
	.quad	rxConfig_System
	.uleb128 0xe
	.long	0x169
	.long	0x82e
	.uleb128 0xf
	.long	0x25d
	.byte	0x11
	.byte	0
	.uleb128 0x1c
	.long	.LASF133
	.byte	0x5
	.byte	0x82
	.long	0x81e
	.uleb128 0xe
	.long	0x199
	.long	0x849
	.uleb128 0xf
	.long	0x25d
	.byte	0x3
	.byte	0
	.uleb128 0x1c
	.long	.LASF134
	.byte	0x5
	.byte	0x83
	.long	0x839
	.uleb128 0x1b
	.long	.LASF135
	.byte	0x1
	.byte	0x20
	.long	0x2c4
	.uleb128 0x9
	.byte	0x3
	.quad	motorAndServoConfig_System
	.uleb128 0xe
	.long	0x34c
	.long	0x879
	.uleb128 0xf
	.long	0x25d
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.long	.LASF136
	.byte	0x6
	.byte	0x20
	.long	0x869
	.uleb128 0x1c
	.long	.LASF137
	.byte	0x6
	.byte	0x22
	.long	0x88f
	.uleb128 0xa
	.byte	0x8
	.long	0x34c
	.uleb128 0x1c
	.long	.LASF138
	.byte	0x6
	.byte	0x28
	.long	0x8a0
	.uleb128 0xa
	.byte	0x8
	.long	0x370
	.uleb128 0x1c
	.long	.LASF139
	.byte	0x7
	.byte	0x86
	.long	0x8b1
	.uleb128 0xa
	.byte	0x8
	.long	0x4d6
	.uleb128 0x1c
	.long	.LASF140
	.byte	0x7
	.byte	0x93
	.long	0x8c2
	.uleb128 0xa
	.byte	0x8
	.long	0x536
	.uleb128 0x1b
	.long	.LASF141
	.byte	0x7
	.byte	0x9d
	.long	0x57e
	.uleb128 0x9
	.byte	0x3
	.quad	armingConfig_System
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x19
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
	.long	0x8c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB9
	.quad	.LFE9-.LFB9
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
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LFB9
	.quad	.LFE9
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
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"reset"
.LASF70:
	.string	"BOXCAMTRIG"
.LASF41:
	.string	"motorAndServoConfig_s"
.LASF48:
	.string	"motorAndServoConfig_t"
.LASF93:
	.string	"startStep"
.LASF44:
	.string	"mincommand"
.LASF13:
	.string	"pgResetFunc"
.LASF81:
	.string	"BOXTELEMETRY"
.LASF87:
	.string	"BOXBLACKBOX"
.LASF135:
	.string	"motorAndServoConfig_System"
.LASF22:
	.string	"rxFailsafeChannelConfig_t"
.LASF90:
	.string	"CHECKBOX_ITEM_COUNT"
.LASF96:
	.string	"modeActivationCondition_s"
.LASF100:
	.string	"modeActivationCondition_t"
.LASF104:
	.string	"rcControlsConfig_s"
.LASF111:
	.string	"rcControlsConfig_t"
.LASF56:
	.string	"rcYawExpo8"
.LASF121:
	.string	"tmp2"
.LASF1:
	.string	"int16_t"
.LASF63:
	.string	"BOXANGLE"
.LASF2:
	.string	"signed char"
.LASF108:
	.string	"alt_hold_fast_change"
.LASF74:
	.string	"BOXBEEPERON"
.LASF79:
	.string	"BOXGOV"
.LASF91:
	.string	"boxId_e"
.LASF5:
	.string	"long int"
.LASF42:
	.string	"minthrottle"
.LASF19:
	.string	"rxFailsafeChannelConfiguration_s"
.LASF136:
	.string	"controlRateProfiles_SystemArray"
.LASF66:
	.string	"BOXMAG"
.LASF80:
	.string	"BOXOSD"
.LASF23:
	.string	"rxChannelRangeConfiguration_s"
.LASF24:
	.string	"rxChannelRangeConfiguration_t"
.LASF8:
	.string	"uint16_t"
.LASF113:
	.string	"retarded_arm"
.LASF54:
	.string	"rates"
.LASF123:
	.string	"rcLookupYaw"
.LASF139:
	.string	"modeActivationProfile_ProfileCurrent"
.LASF143:
	.string	"src/main/fc/rc_curves.c"
.LASF141:
	.string	"armingConfig_System"
.LASF106:
	.string	"yaw_deadband"
.LASF10:
	.string	"unsigned int"
.LASF36:
	.string	"maxcheck"
.LASF133:
	.string	"failsafeChannelConfigs_SystemArray"
.LASF50:
	.string	"rcRate8"
.LASF105:
	.string	"deadband"
.LASF142:
	.string	"GNU C99 5.4.1 20160904 -mtune=generic -march=x86-64 -g -std=gnu99 -ffunction-sections -fdata-sections -ffat-lto-objects -fstack-protector-strong"
.LASF12:
	.string	"pgn_t"
.LASF27:
	.string	"serialrx_provider"
.LASF11:
	.string	"long unsigned int"
.LASF138:
	.string	"rateProfileSelection_ProfileCurrent"
.LASF124:
	.string	"rcLookupThrottle"
.LASF116:
	.string	"max_arm_angle"
.LASF45:
	.string	"servoCenterPulse"
.LASF14:
	.string	"size"
.LASF9:
	.string	"short unsigned int"
.LASF17:
	.string	"pgRegistry_t"
.LASF47:
	.string	"servo_pwm_rate"
.LASF145:
	.string	"motorAndServoConfig"
.LASF65:
	.string	"BOXBARO"
.LASF75:
	.string	"BOXLEDMAX"
.LASF68:
	.string	"BOXHEADADJ"
.LASF130:
	.string	"__pg_resetdata_start"
.LASF46:
	.string	"motor_pwm_rate"
.LASF129:
	.string	"__pg_registry_end"
.LASF115:
	.string	"auto_disarm_delay"
.LASF125:
	.string	"lookupPitchRollRC"
.LASF88:
	.string	"BOXFAILSAFE"
.LASF39:
	.string	"sizetype"
.LASF34:
	.string	"midrc"
.LASF15:
	.string	"address"
.LASF77:
	.string	"BOXLLIGHTS"
.LASF78:
	.string	"BOXCALIB"
.LASF73:
	.string	"BOXPASSTHRU"
.LASF102:
	.string	"modeActivationConditions"
.LASF67:
	.string	"BOXHEADFREE"
.LASF72:
	.string	"BOXGPSHOLD"
.LASF131:
	.string	"__pg_resetdata_end"
.LASF128:
	.string	"__pg_registry_start"
.LASF107:
	.string	"alt_hold_deadband"
.LASF31:
	.string	"rssi_scale"
.LASF127:
	.string	"lookupThrottleRC"
.LASF144:
	.string	"/home/aravind/git/cleanflight"
.LASF29:
	.string	"spektrum_sat_bind"
.LASF122:
	.string	"rcLookupPitchRoll"
.LASF109:
	.string	"yaw_control_direction"
.LASF140:
	.string	"rcControlsConfig_ProfileCurrent"
.LASF35:
	.string	"mincheck"
.LASF30:
	.string	"rssi_channel"
.LASF62:
	.string	"BOXARM"
.LASF4:
	.string	"int32_t"
.LASF7:
	.string	"unsigned char"
.LASF64:
	.string	"BOXHORIZON"
.LASF110:
	.string	"deadband3d_throttle"
.LASF53:
	.string	"thrExpo8"
.LASF21:
	.string	"step"
.LASF83:
	.string	"BOXSONAR"
.LASF3:
	.string	"short int"
.LASF57:
	.string	"tpa_breakpoint"
.LASF51:
	.string	"rcExpo8"
.LASF118:
	.string	"generatePitchRollCurve"
.LASF49:
	.string	"controlRateConfig_s"
.LASF58:
	.string	"controlRateConfig_t"
.LASF55:
	.string	"dynThrPID"
.LASF114:
	.string	"disarm_kill_switch"
.LASF60:
	.string	"defaultRateProfileIndex"
.LASF134:
	.string	"channelRanges_SystemArray"
.LASF71:
	.string	"BOXGPSHOME"
.LASF126:
	.string	"lookupYawRC"
.LASF119:
	.string	"generateYawCurve"
.LASF92:
	.string	"channelRange_s"
.LASF95:
	.string	"channelRange_t"
.LASF132:
	.string	"rxConfig_System"
.LASF18:
	.string	"pgRegistry_s"
.LASF33:
	.string	"rcSmoothing"
.LASF20:
	.string	"mode"
.LASF137:
	.string	"currentControlRateProfile"
.LASF26:
	.string	"rcmap"
.LASF89:
	.string	"BOXAIRMODE"
.LASF120:
	.string	"generateThrottleCurve"
.LASF69:
	.string	"BOXCAMSTAB"
.LASF103:
	.string	"modeActivationProfile_t"
.LASF0:
	.string	"int8_t"
.LASF94:
	.string	"endStep"
.LASF25:
	.string	"rxConfig_s"
.LASF40:
	.string	"rxConfig_t"
.LASF59:
	.string	"rateProfileSelection_s"
.LASF61:
	.string	"rateProfileSelection_t"
.LASF37:
	.string	"rx_min_usec"
.LASF38:
	.string	"rx_max_usec"
.LASF76:
	.string	"BOXLEDLOW"
.LASF6:
	.string	"uint8_t"
.LASF98:
	.string	"auxChannelIndex"
.LASF52:
	.string	"thrMid8"
.LASF84:
	.string	"BOXSERVO1"
.LASF85:
	.string	"BOXSERVO2"
.LASF86:
	.string	"BOXSERVO3"
.LASF112:
	.string	"armingConfig_s"
.LASF117:
	.string	"armingConfig_t"
.LASF99:
	.string	"range"
.LASF101:
	.string	"modeActivationProfile_s"
.LASF28:
	.string	"sbus_inversion"
.LASF97:
	.string	"modeId"
.LASF43:
	.string	"maxthrottle"
.LASF32:
	.string	"rssi_ppm_invert"
.LASF82:
	.string	"BOXGTUNE"
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
