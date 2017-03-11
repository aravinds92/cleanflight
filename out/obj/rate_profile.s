	.file	"rate_profile.c"
# GNU C99 (Ubuntu 5.4.1-2ubuntu1~16.04) version 5.4.1 20160904 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.1 20160904, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed rate_profile.i -mtune=generic
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
	.comm	__pg_registry_start,8,8
	.comm	__pg_registry_end,8,8
	.comm	__pg_resetdata_start,8,8
	.comm	__pg_resetdata_end,8,8
	.comm	profileSelection_System,1,1
	.section	.text.controlRateProfiles,"ax",@progbits
	.type	controlRateProfiles, @function
controlRateProfiles:
.LFB5:
	.file 1 "./src/main/fc/rate_profile.h"
	.loc 1 32 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# _index, _index
	.loc 1 32 0
	movl	-4(%rbp), %eax	# _index, tmp90
	movslq	%eax, %rdx	# tmp90, tmp89
	movq	%rdx, %rax	# tmp89, tmp91
	addq	%rax, %rax	# tmp91
	addq	%rdx, %rax	# tmp89, tmp91
	salq	$2, %rax	#, tmp92
	addq	$controlRateProfiles_SystemArray, %rax	#, D.2220
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	controlRateProfiles, .-controlRateProfiles
	.section	.bss.rateProfileSelection_Storage,"aw",@nobits
	.type	rateProfileSelection_Storage, @object
	.size	rateProfileSelection_Storage, 3
rateProfileSelection_Storage:
	.zero	3
	.comm	rateProfileSelection_ProfileCurrent,8,8
	.globl	rateProfileSelection_Registry
	.section	.pg_registry,"a",@progbits
	.align 8
	.type	rateProfileSelection_Registry, @object
	.size	rateProfileSelection_Registry, 32
rateProfileSelection_Registry:
# pgn:
	.value	36
# size:
	.value	-32767
# address:
	.zero	4
	.quad	rateProfileSelection_Storage
# ptr:
	.quad	rateProfileSelection_ProfileCurrent
# reset:
# ptr:
	.quad	0
	.comm	controlRateProfiles_SystemArray,36,32
	.globl	controlRateProfiles_Registry
	.align 8
	.type	controlRateProfiles_Registry, @object
	.size	controlRateProfiles_Registry, 32
controlRateProfiles_Registry:
# pgn:
	.value	12
# size:
	.value	36
# address:
	.zero	4
	.quad	controlRateProfiles_SystemArray
# ptr:
	.quad	0
# reset:
# fn:
	.quad	pgResetFn_controlRateProfiles
	.section	.bss.currentControlRateProfileIndex,"aw",@nobits
	.type	currentControlRateProfileIndex, @object
	.size	currentControlRateProfileIndex, 1
currentControlRateProfileIndex:
	.zero	1
	.comm	currentControlRateProfile,8,8
	.section	.text.pgResetFn_controlRateProfiles,"ax",@progbits
	.globl	pgResetFn_controlRateProfiles
	.type	pgResetFn_controlRateProfiles, @function
pgResetFn_controlRateProfiles:
.LFB8:
	.file 2 "src/main/fc/rate_profile.c"
	.loc 2 43 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# instance, instance
.LBB2:
	.loc 2 44 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L4	#
.L5:
.LBB3:
	.loc 2 45 0 discriminator 3
	movl	-4(%rbp), %eax	# i, tmp90
	movslq	%eax, %rdx	# tmp90, D.2221
	movq	%rdx, %rax	# D.2221, tmp91
	addq	%rax, %rax	# tmp91
	addq	%rdx, %rax	# D.2221, tmp91
	salq	$2, %rax	#, tmp92
	movq	%rax, %rdx	# tmp91, D.2221
	movq	-24(%rbp), %rax	# instance, tmp93
	addq	%rdx, %rax	# D.2221, D.2222
	movl	$12, %edx	#,
	movl	$_reset_template_50.2171, %esi	#,
	movq	%rax, %rdi	# D.2222,
	call	memcpy	#
.LBE3:
	.loc 2 44 0 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L4:
	.loc 2 44 0 is_stmt 0 discriminator 1
	cmpl	$2, -4(%rbp)	#, i
	jle	.L5	#,
.LBE2:
	.loc 2 52 0 is_stmt 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	pgResetFn_controlRateProfiles, .-pgResetFn_controlRateProfiles
	.section	.text.getCurrentControlRateProfile,"ax",@progbits
	.globl	getCurrentControlRateProfile
	.type	getCurrentControlRateProfile, @function
getCurrentControlRateProfile:
.LFB9:
	.loc 2 55 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 2 56 0
	movzbl	currentControlRateProfileIndex(%rip), %eax	# currentControlRateProfileIndex, D.2223
	.loc 2 57 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	getCurrentControlRateProfile, .-getCurrentControlRateProfile
	.section	.text.getControlRateConfig,"ax",@progbits
	.globl	getControlRateConfig
	.type	getControlRateConfig, @function
getControlRateConfig:
.LFB10:
	.loc 2 60 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movl	%edi, %eax	# profileIndex, tmp90
	movb	%al, -4(%rbp)	# tmp90, profileIndex
	.loc 2 61 0
	movzbl	-4(%rbp), %eax	# profileIndex, D.2224
	movl	%eax, %edi	# D.2224,
	call	controlRateProfiles	#
	.loc 2 62 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	getControlRateConfig, .-getControlRateConfig
	.section	.text.setControlRateProfile,"ax",@progbits
	.globl	setControlRateProfile
	.type	setControlRateProfile, @function
setControlRateProfile:
.LFB11:
	.loc 2 65 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movl	%edi, %eax	# profileIndex, tmp89
	movb	%al, -4(%rbp)	# tmp89, profileIndex
	.loc 2 66 0
	cmpb	$2, -4(%rbp)	#, profileIndex
	jbe	.L11	#,
	.loc 2 67 0
	movb	$0, -4(%rbp)	#, profileIndex
.L11:
	.loc 2 69 0
	movzbl	-4(%rbp), %eax	# profileIndex, tmp90
	movb	%al, currentControlRateProfileIndex(%rip)	# tmp90, currentControlRateProfileIndex
	.loc 2 70 0
	movzbl	-4(%rbp), %eax	# profileIndex, D.2226
	movl	%eax, %edi	# D.2226,
	call	controlRateProfiles	#
	movq	%rax, currentControlRateProfile(%rip)	# D.2227, currentControlRateProfile
	.loc 2 71 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	setControlRateProfile, .-setControlRateProfile
	.section	.text.activateControlRateConfig,"ax",@progbits
	.globl	activateControlRateConfig
	.type	activateControlRateConfig, @function
activateControlRateConfig:
.LFB12:
	.loc 2 74 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 2 75 0
	call	generatePitchRollCurve	#
	.loc 2 76 0
	call	generateYawCurve	#
	.loc 2 77 0
	call	generateThrottleCurve	#
	.loc 2 78 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	activateControlRateConfig, .-activateControlRateConfig
	.section	.text.changeControlRateProfile,"ax",@progbits
	.globl	changeControlRateProfile
	.type	changeControlRateProfile, @function
changeControlRateProfile:
.LFB13:
	.loc 2 81 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, %eax	# profileIndex, tmp88
	movb	%al, -4(%rbp)	# tmp88, profileIndex
	.loc 2 82 0
	movzbl	-4(%rbp), %eax	# profileIndex, D.2228
	movl	%eax, %edi	# D.2228,
	call	setControlRateProfile	#
	.loc 2 83 0
	call	activateControlRateConfig	#
	.loc 2 84 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	changeControlRateProfile, .-changeControlRateProfile
	.section	.text.configureRateProfileSelection,"ax",@progbits
	.globl	configureRateProfileSelection
	.type	configureRateProfileSelection, @function
configureRateProfileSelection:
.LFB14:
	.loc 2 87 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, %edx	# profileIndex, tmp89
	movl	%esi, %eax	# rateProfileIndex, tmp90
	movb	%dl, -4(%rbp)	# tmp89, profileIndex
	movb	%al, -8(%rbp)	# tmp90, rateProfileIndex
	.loc 2 88 0
	movzbl	-4(%rbp), %esi	# profileIndex, D.2229
	movzbl	-8(%rbp), %ecx	# rateProfileIndex, tmp91
	movzbl	%cl, %edx	# tmp91, tmp92
	movl	%edx, %eax	# tmp92, tmp93
	sall	$3, %eax	#, tmp93
	addl	%edx, %eax	# tmp92, tmp93
	addl	%eax, %eax	# tmp93
	addl	%edx, %eax	# tmp92, tmp93
	leal	0(,%rax,8), %edx	#, tmp94
	addl	%edx, %eax	# tmp94, tmp93
	shrw	$8, %ax	#, tmp95
	shrb	%al	# D.2230
	movl	%eax, %edx	# D.2230, tmp96
	addl	%edx, %edx	# tmp96
	addl	%eax, %edx	# D.2230, tmp96
	movl	%ecx, %eax	# tmp91, D.2230
	subl	%edx, %eax	# tmp96, D.2230
	movslq	%esi, %rdx	# D.2229, tmp97
	movb	%al, rateProfileSelection_Storage(%rdx)	# D.2230, rateProfileSelection_Storage[_2].defaultRateProfileIndex
	.loc 2 89 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	configureRateProfileSelection, .-configureRateProfileSelection
	.section	.rodata._reset_template_50.2171,"a",@progbits
	.align 8
	.type	_reset_template_50.2171, @object
	.size	_reset_template_50.2171, 12
_reset_template_50.2171:
# rcRate8:
	.byte	90
# rcExpo8:
	.byte	65
# thrMid8:
	.byte	50
# tpa_breakpoint:
	.zero	7
	.value	1500
	.text
.Letext0:
	.file 3 "/usr/include/stdint.h"
	.file 4 "./src/main/config/parameter_group.h"
	.file 5 "./src/main/config/profile.h"
	.file 6 "./src/main/target/edison/target.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x548
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF64
	.byte	0xc
	.long	.LASF65
	.long	.LASF66
	.long	.Ldebug_ranges0+0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x4
	.long	.LASF4
	.byte	0x3
	.byte	0x30
	.long	0x50
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF5
	.byte	0x3
	.byte	0x31
	.long	0x62
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x4
	.long	.LASF7
	.byte	0x3
	.byte	0x33
	.long	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x4
	.long	.LASF12
	.byte	0x4
	.byte	0x15
	.long	0x57
	.uleb128 0x5
	.byte	0x4
	.long	0x74
	.byte	0x4
	.byte	0x1d
	.long	0xca
	.uleb128 0x6
	.long	.LASF13
	.value	0xfff
	.uleb128 0x6
	.long	.LASF14
	.value	0xf000
	.uleb128 0x6
	.long	.LASF15
	.value	0xfff
	.uleb128 0x7
	.long	.LASF16
	.byte	0
	.uleb128 0x6
	.long	.LASF17
	.value	0x8000
	.byte	0
	.uleb128 0x4
	.long	.LASF18
	.byte	0x4
	.byte	0x26
	.long	0xd5
	.uleb128 0x8
	.long	0xe5
	.uleb128 0x9
	.long	0xe5
	.uleb128 0x9
	.long	0x37
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0x2d
	.long	0x105
	.uleb128 0xc
	.string	"ptr"
	.byte	0x4
	.byte	0x2e
	.long	0xe5
	.uleb128 0xc
	.string	"fn"
	.byte	0x4
	.byte	0x2f
	.long	0x105
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0xca
	.uleb128 0xe
	.long	.LASF23
	.byte	0x20
	.byte	0x4
	.byte	0x28
	.long	0x154
	.uleb128 0xf
	.string	"pgn"
	.byte	0x4
	.byte	0x29
	.long	0x90
	.byte	0
	.uleb128 0x10
	.long	.LASF19
	.byte	0x4
	.byte	0x2a
	.long	0x57
	.byte	0x2
	.uleb128 0x10
	.long	.LASF20
	.byte	0x4
	.byte	0x2b
	.long	0x154
	.byte	0x8
	.uleb128 0xf
	.string	"ptr"
	.byte	0x4
	.byte	0x2c
	.long	0x15a
	.byte	0x10
	.uleb128 0x10
	.long	.LASF21
	.byte	0x4
	.byte	0x30
	.long	0xe7
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x45
	.uleb128 0xd
	.byte	0x8
	.long	0x154
	.uleb128 0x4
	.long	.LASF22
	.byte	0x4
	.byte	0x31
	.long	0x10b
	.uleb128 0xe
	.long	.LASF24
	.byte	0x1
	.byte	0x5
	.byte	0x16
	.long	0x184
	.uleb128 0x10
	.long	.LASF25
	.byte	0x5
	.byte	0x17
	.long	0x45
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF26
	.byte	0x5
	.byte	0x18
	.long	0x16b
	.uleb128 0xe
	.long	.LASF27
	.byte	0xc
	.byte	0x1
	.byte	0x14
	.long	0x1fc
	.uleb128 0x10
	.long	.LASF28
	.byte	0x1
	.byte	0x15
	.long	0x45
	.byte	0
	.uleb128 0x10
	.long	.LASF29
	.byte	0x1
	.byte	0x16
	.long	0x45
	.byte	0x1
	.uleb128 0x10
	.long	.LASF30
	.byte	0x1
	.byte	0x17
	.long	0x45
	.byte	0x2
	.uleb128 0x10
	.long	.LASF31
	.byte	0x1
	.byte	0x18
	.long	0x45
	.byte	0x3
	.uleb128 0x10
	.long	.LASF32
	.byte	0x1
	.byte	0x19
	.long	0x1fc
	.byte	0x4
	.uleb128 0x10
	.long	.LASF33
	.byte	0x1
	.byte	0x1a
	.long	0x45
	.byte	0x7
	.uleb128 0x10
	.long	.LASF34
	.byte	0x1
	.byte	0x1b
	.long	0x45
	.byte	0x8
	.uleb128 0x10
	.long	.LASF35
	.byte	0x1
	.byte	0x1c
	.long	0x57
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.long	0x45
	.long	0x20c
	.uleb128 0x12
	.long	0x82
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF36
	.byte	0x1
	.byte	0x1d
	.long	0x18f
	.uleb128 0xe
	.long	.LASF37
	.byte	0x1
	.byte	0x1
	.byte	0x24
	.long	0x230
	.uleb128 0x10
	.long	.LASF38
	.byte	0x1
	.byte	0x25
	.long	0x45
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF39
	.byte	0x1
	.byte	0x26
	.long	0x217
	.uleb128 0x13
	.long	.LASF67
	.byte	0x1
	.byte	0x20
	.long	0x26b
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x26b
	.uleb128 0x14
	.long	.LASF40
	.byte	0x1
	.byte	0x20
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x20c
	.uleb128 0x15
	.long	.LASF44
	.byte	0x2
	.byte	0x2a
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e2
	.uleb128 0x14
	.long	.LASF41
	.byte	0x2
	.byte	0x2a
	.long	0x26b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x17
	.string	"i"
	.byte	0x2
	.byte	0x2c
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x18
	.long	.LASF42
	.byte	0x2
	.byte	0x2d
	.long	0x2e2
	.uleb128 0x9
	.byte	0x3
	.quad	_reset_template_50.2171
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	0x20c
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x2
	.byte	0x36
	.long	0x45
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.long	.LASF69
	.byte	0x2
	.byte	0x3b
	.long	0x26b
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x334
	.uleb128 0x14
	.long	.LASF43
	.byte	0x2
	.byte	0x3b
	.long	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF45
	.byte	0x2
	.byte	0x40
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x360
	.uleb128 0x14
	.long	.LASF43
	.byte	0x2
	.byte	0x40
	.long	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF70
	.byte	0x2
	.byte	0x49
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.long	.LASF46
	.byte	0x2
	.byte	0x50
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a5
	.uleb128 0x14
	.long	.LASF43
	.byte	0x2
	.byte	0x50
	.long	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.long	.LASF47
	.byte	0x2
	.byte	0x56
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3df
	.uleb128 0x14
	.long	.LASF43
	.byte	0x2
	.byte	0x56
	.long	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.long	.LASF48
	.byte	0x2
	.byte	0x56
	.long	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	0x230
	.long	0x3ef
	.uleb128 0x12
	.long	0x82
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.long	.LASF49
	.byte	0x2
	.byte	0x24
	.long	0x3df
	.uleb128 0x9
	.byte	0x3
	.quad	rateProfileSelection_Storage
	.uleb128 0x18
	.long	.LASF50
	.byte	0x2
	.byte	0x27
	.long	0x45
	.uleb128 0x9
	.byte	0x3
	.quad	currentControlRateProfileIndex
	.uleb128 0x1e
	.long	.LASF51
	.byte	0x6
	.byte	0xca
	.long	0x69
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_0
	.uleb128 0x1e
	.long	.LASF52
	.byte	0x6
	.byte	0xcb
	.long	0x69
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_1
	.uleb128 0x1e
	.long	.LASF53
	.byte	0x6
	.byte	0xcc
	.long	0x69
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_2
	.uleb128 0x1e
	.long	.LASF54
	.byte	0x4
	.byte	0x43
	.long	0x46d
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_start
	.uleb128 0xd
	.byte	0x8
	.long	0x160
	.uleb128 0x1e
	.long	.LASF55
	.byte	0x4
	.byte	0x44
	.long	0x46d
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_end
	.uleb128 0x1e
	.long	.LASF56
	.byte	0x4
	.byte	0x47
	.long	0x154
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_start
	.uleb128 0x1e
	.long	.LASF57
	.byte	0x4
	.byte	0x48
	.long	0x154
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_end
	.uleb128 0x1e
	.long	.LASF58
	.byte	0x5
	.byte	0x1a
	.long	0x184
	.uleb128 0x9
	.byte	0x3
	.quad	profileSelection_System
	.uleb128 0x11
	.long	0x20c
	.long	0x4d7
	.uleb128 0x12
	.long	0x82
	.byte	0x2
	.byte	0
	.uleb128 0x1e
	.long	.LASF59
	.byte	0x2
	.byte	0x25
	.long	0x4c7
	.uleb128 0x9
	.byte	0x3
	.quad	controlRateProfiles_SystemArray
	.uleb128 0x1e
	.long	.LASF60
	.byte	0x2
	.byte	0x28
	.long	0x26b
	.uleb128 0x9
	.byte	0x3
	.quad	currentControlRateProfile
	.uleb128 0x1e
	.long	.LASF61
	.byte	0x2
	.byte	0x24
	.long	0x516
	.uleb128 0x9
	.byte	0x3
	.quad	rateProfileSelection_ProfileCurrent
	.uleb128 0xd
	.byte	0x8
	.long	0x230
	.uleb128 0x1e
	.long	.LASF62
	.byte	0x2
	.byte	0x24
	.long	0x531
	.uleb128 0x9
	.byte	0x3
	.quad	rateProfileSelection_Registry
	.uleb128 0x19
	.long	0x160
	.uleb128 0x1e
	.long	.LASF63
	.byte	0x2
	.byte	0x25
	.long	0x531
	.uleb128 0x9
	.byte	0x3
	.quad	controlRateProfiles_Registry
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
	.uleb128 0x5
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1b
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1d
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x9c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB5
	.quad	.LFE5-.LFB5
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
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LFB5
	.quad	.LFE5
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
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF60:
	.string	"currentControlRateProfile"
.LASF1:
	.string	"short int"
.LASF12:
	.string	"pgn_t"
.LASF48:
	.string	"rateProfileIndex"
.LASF10:
	.string	"sizetype"
.LASF58:
	.string	"profileSelection_System"
.LASF59:
	.string	"controlRateProfiles_SystemArray"
.LASF16:
	.string	"PGR_SIZE_SYSTEM_FLAG"
.LASF51:
	.string	"U_ID_0"
.LASF34:
	.string	"rcYawExpo8"
.LASF53:
	.string	"U_ID_2"
.LASF68:
	.string	"getCurrentControlRateProfile"
.LASF13:
	.string	"PGR_PGN_MASK"
.LASF4:
	.string	"uint8_t"
.LASF46:
	.string	"changeControlRateProfile"
.LASF37:
	.string	"rateProfileSelection_s"
.LASF39:
	.string	"rateProfileSelection_t"
.LASF15:
	.string	"PGR_SIZE_MASK"
.LASF17:
	.string	"PGR_SIZE_PROFILE_FLAG"
.LASF14:
	.string	"PGR_PGN_VERSION_MASK"
.LASF69:
	.string	"getControlRateConfig"
.LASF67:
	.string	"controlRateProfiles"
.LASF64:
	.string	"GNU C99 5.4.1 20160904 -mtune=generic -march=x86-64 -g -std=gnu99 -ffunction-sections -fdata-sections -ffat-lto-objects -fstack-protector-strong"
.LASF28:
	.string	"rcRate8"
.LASF31:
	.string	"thrExpo8"
.LASF2:
	.string	"long int"
.LASF24:
	.string	"profileSelection_s"
.LASF26:
	.string	"profileSelection_t"
.LASF61:
	.string	"rateProfileSelection_ProfileCurrent"
.LASF38:
	.string	"defaultRateProfileIndex"
.LASF3:
	.string	"unsigned char"
.LASF35:
	.string	"tpa_breakpoint"
.LASF0:
	.string	"signed char"
.LASF20:
	.string	"address"
.LASF47:
	.string	"configureRateProfileSelection"
.LASF7:
	.string	"uint32_t"
.LASF8:
	.string	"unsigned int"
.LASF65:
	.string	"src/main/fc/rate_profile.c"
.LASF5:
	.string	"uint16_t"
.LASF41:
	.string	"instance"
.LASF6:
	.string	"short unsigned int"
.LASF42:
	.string	"_reset_template_50"
.LASF11:
	.string	"char"
.LASF57:
	.string	"__pg_resetdata_end"
.LASF32:
	.string	"rates"
.LASF70:
	.string	"activateControlRateConfig"
.LASF66:
	.string	"/home/aravind/git/cleanflight"
.LASF27:
	.string	"controlRateConfig_s"
.LASF36:
	.string	"controlRateConfig_t"
.LASF63:
	.string	"controlRateProfiles_Registry"
.LASF9:
	.string	"long unsigned int"
.LASF44:
	.string	"pgResetFn_controlRateProfiles"
.LASF43:
	.string	"profileIndex"
.LASF54:
	.string	"__pg_registry_start"
.LASF19:
	.string	"size"
.LASF50:
	.string	"currentControlRateProfileIndex"
.LASF21:
	.string	"reset"
.LASF25:
	.string	"current_profile_index"
.LASF23:
	.string	"pgRegistry_s"
.LASF22:
	.string	"pgRegistry_t"
.LASF55:
	.string	"__pg_registry_end"
.LASF40:
	.string	"_index"
.LASF29:
	.string	"rcExpo8"
.LASF52:
	.string	"U_ID_1"
.LASF49:
	.string	"rateProfileSelection_Storage"
.LASF33:
	.string	"dynThrPID"
.LASF18:
	.string	"pgResetFunc"
.LASF30:
	.string	"thrMid8"
.LASF62:
	.string	"rateProfileSelection_Registry"
.LASF45:
	.string	"setControlRateProfile"
.LASF56:
	.string	"__pg_resetdata_start"
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
