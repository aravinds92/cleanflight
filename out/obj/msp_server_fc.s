	.file	"msp_server_fc.c"
# GNU C99 (Ubuntu 5.4.1-2ubuntu1~16.04) version 5.4.1 20160904 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.1 20160904, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed msp_server_fc.i -mtune=generic
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
	.comm	featureConfig,8,8
	.comm	profileSelection_System,1,1
	.comm	imu,8,8
	.comm	rxConfig_System,26,16
	.comm	armingConfig_System,4,1
	.comm	motorAndServoConfig_System,12,8
	.comm	gpsConfig_System,16,16
	.comm	serialConfig_System,28,16
	.comm	specialColors_System,11,8
	.comm	transponderConfig_System,6,1
	.comm	telemetryConfig_System,3,1
	.comm	boardAlignment_System,6,1
	.comm	sensorSelectionConfig_System,3,1
	.comm	sensorAlignmentConfig_System,12,8
	.comm	sensorTrims_System,12,8
	.comm	batteryConfig_System,8,8
	.comm	accelerometerConfig,8,8
	.comm	gyroConfig,8,8
	.comm	mixerConfig_System,6,2
	.section	.text.mixerConfig,"ax",@progbits
	.type	mixerConfig, @function
mixerConfig:
.LFB56:
	.file 1 "./src/main/flight/mixer.h"
	.loc 1 92 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 92 0
	movl	$mixerConfig_System, %eax	#, D.8898
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	mixerConfig, .-mixerConfig
	.comm	motor3DConfig_System,6,2
	.comm	inputSource_e,4,4
	.comm	imuConfig,8,8
	.comm	throttleCorrectionConfig,8,8
	.comm	failsafeConfig_System,8,8
	.comm	airplaneConfig_System,1,1
	.comm	blackboxConfig_System,3,1
	.comm	mspServerConfig_System,1,1
	.section	.bss.enabledSensors,"aw",@nobits
	.align 4
	.type	enabledSensors, @object
	.size	enabledSensors, 4
enabledSensors:
	.zero	4
	.section	.rodata
.LC0:
	.string	"CLFL"
	.section	.rodata.flightControllerIdentifier,"a",@progbits
	.align 8
	.type	flightControllerIdentifier, @object
	.size	flightControllerIdentifier, 8
flightControllerIdentifier:
	.quad	.LC0
	.section	.rodata
.LC1:
	.string	"EDISON"
	.section	.rodata.boardIdentifier,"a",@progbits
	.align 8
	.type	boardIdentifier, @object
	.size	boardIdentifier, 8
boardIdentifier:
	.quad	.LC1
	.section	.rodata
.LC2:
	.string	"ARM"
.LC3:
	.string	"ANGLE"
.LC4:
	.string	"HORIZON"
.LC5:
	.string	"BARO"
.LC6:
	.string	"MAG"
.LC7:
	.string	"HEADFREE"
.LC8:
	.string	"HEADADJ"
.LC9:
	.string	"CAMSTAB"
.LC10:
	.string	"CAMTRIG"
.LC11:
	.string	"GPS HOME"
.LC12:
	.string	"GPS HOLD"
.LC13:
	.string	"PASSTHRU"
.LC14:
	.string	"BEEPER"
.LC15:
	.string	"LEDMAX"
.LC16:
	.string	"LEDLOW"
.LC17:
	.string	"LLIGHTS"
.LC18:
	.string	"CALIB"
.LC19:
	.string	"GOVERNOR"
.LC20:
	.string	"OSD SW"
.LC21:
	.string	"TELEMETRY"
.LC22:
	.string	"GTUNE"
.LC23:
	.string	"SONAR"
.LC24:
	.string	"SERVO1"
.LC25:
	.string	"SERVO2"
.LC26:
	.string	"SERVO3"
.LC27:
	.string	"BLACKBOX"
.LC28:
	.string	"FAILSAFE"
.LC29:
	.string	"AIR MODE"
	.section	.rodata.boxes,"a",@progbits
	.align 32
	.type	boxes, @object
	.size	boxes, 448
boxes:
# boxName:
	.quad	.LC2
# boxId:
	.byte	0
# permanentId:
	.byte	0
	.zero	6
# boxName:
	.quad	.LC3
# boxId:
	.byte	1
# permanentId:
	.byte	1
	.zero	6
# boxName:
	.quad	.LC4
# boxId:
	.byte	2
# permanentId:
	.byte	2
	.zero	6
# boxName:
	.quad	.LC5
# boxId:
	.byte	3
# permanentId:
	.byte	3
	.zero	6
# boxName:
	.quad	.LC6
# boxId:
	.byte	4
# permanentId:
	.byte	5
	.zero	6
# boxName:
	.quad	.LC7
# boxId:
	.byte	5
# permanentId:
	.byte	6
	.zero	6
# boxName:
	.quad	.LC8
# boxId:
	.byte	6
# permanentId:
	.byte	7
	.zero	6
# boxName:
	.quad	.LC9
# boxId:
	.byte	7
# permanentId:
	.byte	8
	.zero	6
# boxName:
	.quad	.LC10
# boxId:
	.byte	8
# permanentId:
	.byte	9
	.zero	6
# boxName:
	.quad	.LC11
# boxId:
	.byte	9
# permanentId:
	.byte	10
	.zero	6
# boxName:
	.quad	.LC12
# boxId:
	.byte	10
# permanentId:
	.byte	11
	.zero	6
# boxName:
	.quad	.LC13
# boxId:
	.byte	11
# permanentId:
	.byte	12
	.zero	6
# boxName:
	.quad	.LC14
# boxId:
	.byte	12
# permanentId:
	.byte	13
	.zero	6
# boxName:
	.quad	.LC15
# boxId:
	.byte	13
# permanentId:
	.byte	14
	.zero	6
# boxName:
	.quad	.LC16
# boxId:
	.byte	14
# permanentId:
	.byte	15
	.zero	6
# boxName:
	.quad	.LC17
# boxId:
	.byte	15
# permanentId:
	.byte	16
	.zero	6
# boxName:
	.quad	.LC18
# boxId:
	.byte	16
# permanentId:
	.byte	17
	.zero	6
# boxName:
	.quad	.LC19
# boxId:
	.byte	17
# permanentId:
	.byte	18
	.zero	6
# boxName:
	.quad	.LC20
# boxId:
	.byte	18
# permanentId:
	.byte	19
	.zero	6
# boxName:
	.quad	.LC21
# boxId:
	.byte	19
# permanentId:
	.byte	20
	.zero	6
# boxName:
	.quad	.LC22
# boxId:
	.byte	20
# permanentId:
	.byte	21
	.zero	6
# boxName:
	.quad	.LC23
# boxId:
	.byte	21
# permanentId:
	.byte	22
	.zero	6
# boxName:
	.quad	.LC24
# boxId:
	.byte	22
# permanentId:
	.byte	23
	.zero	6
# boxName:
	.quad	.LC25
# boxId:
	.byte	23
# permanentId:
	.byte	24
	.zero	6
# boxName:
	.quad	.LC26
# boxId:
	.byte	24
# permanentId:
	.byte	25
	.zero	6
# boxName:
	.quad	.LC27
# boxId:
	.byte	25
# permanentId:
	.byte	26
	.zero	6
# boxName:
	.quad	.LC28
# boxId:
	.byte	26
# permanentId:
	.byte	27
	.zero	6
# boxName:
	.quad	.LC29
# boxId:
	.byte	27
# permanentId:
	.byte	28
	.zero	6
	.section	.bss.activeBoxIds,"aw",@nobits
	.align 4
	.type	activeBoxIds, @object
	.size	activeBoxIds, 4
activeBoxIds:
	.zero	4
	.section	.rodata.pidnames,"a",@progbits
	.align 32
	.type	pidnames, @object
	.size	pidnames, 48
pidnames:
	.string	"ROLL;PITCH;YAW;ALT;Pos;PosR;NavR;LEVEL;MAG;VEL;"
	.section	.text.findBoxByBoxId,"ax",@progbits
	.type	findBoxByBoxId, @function
findBoxByBoxId:
.LFB67:
	.file 2 "src/main/fc/msp_server_fc.c"
	.loc 2 226 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, %eax	# boxId, tmp90
	movb	%al, -20(%rbp)	# tmp90, boxId
.LBB2:
	.loc 2 227 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L4	#
.L7:
.LBB3:
	.loc 2 228 0
	movl	-12(%rbp), %eax	# i, tmp91
	salq	$4, %rax	#, tmp92
	addq	$boxes, %rax	#, tmp93
	movq	%rax, -8(%rbp)	# tmp93, candidate
	.loc 2 229 0
	movq	-8(%rbp), %rax	# candidate, tmp94
	movzbl	8(%rax), %eax	# candidate_4->boxId, D.8930
	cmpb	-20(%rbp), %al	# boxId, D.8930
	jne	.L5	#,
	.loc 2 230 0
	movq	-8(%rbp), %rax	# candidate, D.8929
	jmp	.L6	#
.L5:
.LBE3:
	.loc 2 227 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L4:
	.loc 2 227 0 is_stmt 0 discriminator 1
	cmpl	$27, -12(%rbp)	#, i
	jbe	.L7	#,
.LBE2:
	.loc 2 233 0 is_stmt 1
	movl	$0, %eax	#, D.8929
.L6:
	.loc 2 234 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	findBoxByBoxId, .-findBoxByBoxId
	.section	.text.findBoxByPermenantId,"ax",@progbits
	.type	findBoxByPermenantId, @function
findBoxByPermenantId:
.LFB68:
	.loc 2 237 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, %eax	# permanentId, tmp90
	movb	%al, -20(%rbp)	# tmp90, permanentId
.LBB4:
	.loc 2 238 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L9	#
.L12:
.LBB5:
	.loc 2 239 0
	movl	-12(%rbp), %eax	# i, tmp91
	salq	$4, %rax	#, tmp92
	addq	$boxes, %rax	#, tmp93
	movq	%rax, -8(%rbp)	# tmp93, candidate
	.loc 2 240 0
	movq	-8(%rbp), %rax	# candidate, tmp94
	movzbl	9(%rax), %eax	# candidate_4->permanentId, D.8932
	cmpb	-20(%rbp), %al	# permanentId, D.8932
	jne	.L10	#,
	.loc 2 241 0
	movq	-8(%rbp), %rax	# candidate, D.8931
	jmp	.L11	#
.L10:
.LBE5:
	.loc 2 238 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L9:
	.loc 2 238 0 is_stmt 0 discriminator 1
	cmpl	$27, -12(%rbp)	#, i
	jbe	.L12	#,
.LBE4:
	.loc 2 244 0 is_stmt 1
	movl	$0, %eax	#, D.8931
.L11:
	.loc 2 245 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	findBoxByPermenantId, .-findBoxByPermenantId
	.section	.text.serializeBoxNamesReply,"ax",@progbits
	.type	serializeBoxNamesReply, @function
serializeBoxNamesReply:
.LFB69:
	.loc 2 248 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# reply, reply
	.loc 2 249 0
	movq	-40(%rbp), %rax	# reply, tmp94
	movq	%rax, -16(%rbp)	# tmp94, dst
.LBB6:
	.loc 2 250 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L14	#
.L17:
.LBB7:
	.loc 2 251 0
	movl	-20(%rbp), %eax	# i, tmp95
	movl	$1, %edx	#, tmp96
	movl	%eax, %ecx	# tmp95, tmp103
	sall	%cl, %edx	# tmp103, D.8933
	movl	%edx, %eax	# D.8933, D.8933
	movl	%eax, %edx	# D.8933, D.8934
	movl	activeBoxIds(%rip), %eax	# activeBoxIds, D.8934
	andl	%edx, %eax	# D.8934, D.8934
	testl	%eax, %eax	# D.8934
	je	.L18	#,
	.loc 2 253 0
	movl	-20(%rbp), %eax	# i, tmp97
	movzbl	%al, %eax	# D.8935, D.8933
	movl	%eax, %edi	# D.8933,
	call	findBoxByBoxId	#
	movq	%rax, -8(%rbp)	# tmp98, box
	.loc 2 254 0
	movq	-8(%rbp), %rax	# box, tmp99
	movq	(%rax), %rdx	# box_15->boxName, D.8936
	movq	-16(%rbp), %rax	# dst, tmp100
	movq	%rdx, %rsi	# D.8936,
	movq	%rax, %rdi	# tmp100,
	call	sbufWriteString	#
	.loc 2 256 0
	movq	-16(%rbp), %rax	# dst, tmp101
	movl	$59, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	sbufWriteU8	#
	jmp	.L16	#
.L18:
	.loc 2 252 0
	nop
.L16:
.LBE7:
	.loc 2 250 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L14:
	.loc 2 250 0 is_stmt 0 discriminator 1
	cmpl	$27, -20(%rbp)	#, i
	jle	.L17	#,
.LBE6:
	.loc 2 258 0 is_stmt 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	serializeBoxNamesReply, .-serializeBoxNamesReply
	.section	.text.serializeBoxIdsReply,"ax",@progbits
	.type	serializeBoxIdsReply, @function
serializeBoxIdsReply:
.LFB70:
	.loc 2 261 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# reply, reply
	.loc 2 262 0
	movq	-40(%rbp), %rax	# reply, tmp95
	movq	%rax, -16(%rbp)	# tmp95, dst
.LBB8:
	.loc 2 263 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L20	#
.L23:
.LBB9:
	.loc 2 264 0
	movl	-20(%rbp), %eax	# i, tmp96
	movl	$1, %edx	#, tmp97
	movl	%eax, %ecx	# tmp96, tmp103
	sall	%cl, %edx	# tmp103, D.8937
	movl	%edx, %eax	# D.8937, D.8937
	movl	%eax, %edx	# D.8937, D.8938
	movl	activeBoxIds(%rip), %eax	# activeBoxIds, D.8938
	andl	%edx, %eax	# D.8938, D.8938
	testl	%eax, %eax	# D.8938
	je	.L24	#,
	.loc 2 266 0
	movl	-20(%rbp), %eax	# i, tmp98
	movzbl	%al, %eax	# D.8939, D.8937
	movl	%eax, %edi	# D.8937,
	call	findBoxByBoxId	#
	movq	%rax, -8(%rbp)	# tmp99, box
	.loc 2 267 0
	movq	-8(%rbp), %rax	# box, tmp100
	movzbl	9(%rax), %eax	# box_15->permanentId, D.8939
	movzbl	%al, %edx	# D.8939, D.8937
	movq	-16(%rbp), %rax	# dst, tmp101
	movl	%edx, %esi	# D.8937,
	movq	%rax, %rdi	# tmp101,
	call	sbufWriteU8	#
	jmp	.L22	#
.L24:
	.loc 2 265 0
	nop
.L22:
.LBE9:
	.loc 2 263 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L20:
	.loc 2 263 0 is_stmt 0 discriminator 1
	cmpl	$27, -20(%rbp)	#, i
	jle	.L23	#,
.LBE8:
	.loc 2 269 0 is_stmt 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	serializeBoxIdsReply, .-serializeBoxIdsReply
	.section	.text.initActiveBoxIds,"ax",@progbits
	.type	initActiveBoxIds, @function
initActiveBoxIds:
.LFB71:
	.loc 2 272 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 2 273 0
	movl	$0, -8(%rbp)	#, ena
	.loc 2 275 0
	orl	$1, -8(%rbp)	#, ena
	.loc 2 278 0
	movl	$2, %edi	#,
	call	sensors	#
	testb	%al, %al	# D.8940
	je	.L26	#,
	.loc 2 279 0
	orl	$2, -8(%rbp)	#, ena
	.loc 2 280 0
	orl	$4, -8(%rbp)	#, ena
.L26:
	.loc 2 289 0
	orl	$134217728, -8(%rbp)	#, ena
	.loc 2 291 0
	movl	$2, %edi	#,
	call	sensors	#
	testb	%al, %al	# D.8940
	jne	.L27	#,
	.loc 2 291 0 is_stmt 0 discriminator 1
	movl	$8, %edi	#,
	call	sensors	#
	testb	%al, %al	# D.8940
	je	.L28	#,
.L27:
	.loc 2 292 0 is_stmt 1
	orl	$16, -8(%rbp)	#, ena
	.loc 2 293 0
	orl	$32, -8(%rbp)	#, ena
	.loc 2 294 0
	orl	$64, -8(%rbp)	#, ena
.L28:
	.loc 2 298 0
	movl	$32, %edi	#,
	call	feature	#
	testb	%al, %al	# D.8940
	je	.L29	#,
	.loc 2 299 0
	orl	$128, -8(%rbp)	#, ena
.L29:
	.loc 2 308 0
	call	mixerConfig	#
	movzbl	(%rax), %eax	# _36->mixerMode, D.8942
	cmpb	$8, %al	#, D.8942
	je	.L30	#,
	.loc 2 309 0
	call	mixerConfig	#
	movzbl	(%rax), %eax	# _39->mixerMode, D.8942
	cmpb	$14, %al	#, D.8942
	je	.L30	#,
	.loc 2 310 0
	call	mixerConfig	#
	movzbl	(%rax), %eax	# _42->mixerMode, D.8942
	cmpb	$24, %al	#, D.8942
	jne	.L31	#,
.L30:
	.loc 2 311 0
	orl	$2048, -8(%rbp)	#, ena
.L31:
	.loc 2 313 0
	orl	$4096, -8(%rbp)	#, ena
	.loc 2 322 0
	movl	$4, %edi	#,
	call	feature	#
	testb	%al, %al	# D.8940
	je	.L32	#,
	.loc 2 323 0
	orl	$65536, -8(%rbp)	#, ena
.L32:
	.loc 2 325 0
	orl	$262144, -8(%rbp)	#, ena
	.loc 2 333 0
	movl	$512, %edi	#,
	call	feature	#
	testb	%al, %al	# D.8940
	je	.L33	#,
	.loc 2 334 0
	orl	$2097152, -8(%rbp)	#, ena
.L33:
	.loc 2 352 0
	movl	$256, %edi	#,
	call	feature	#
	testb	%al, %al	# D.8940
	je	.L34	#,
	.loc 2 353 0
	orl	$67108864, -8(%rbp)	#, ena
.L34:
	.loc 2 357 0
	orl	$1048576, -8(%rbp)	#, ena
.LBB10:
	.loc 2 361 0
	movl	$0, -4(%rbp)	#, boxId
	jmp	.L35	#
.L37:
	.loc 2 362 0
	movl	-4(%rbp), %eax	# boxId, tmp109
	movl	$1, %edx	#, tmp110
	movl	%eax, %ecx	# tmp109, tmp116
	sall	%cl, %edx	# tmp116, D.8943
	movl	%edx, %eax	# D.8943, D.8943
	andl	-8(%rbp), %eax	# ena, D.8944
	testl	%eax, %eax	# D.8944
	je	.L36	#,
	.loc 2 363 0
	movl	-4(%rbp), %eax	# boxId, tmp111
	movzbl	%al, %eax	# D.8942, D.8943
	movl	%eax, %edi	# D.8943,
	call	findBoxByBoxId	#
	testq	%rax, %rax	# D.8945
	jne	.L36	#,
	.loc 2 364 0
	movl	-4(%rbp), %eax	# boxId, tmp112
	movl	$1, %edx	#, tmp113
	movl	%eax, %ecx	# tmp112, tmp118
	sall	%cl, %edx	# tmp118, D.8943
	movl	%edx, %eax	# D.8943, D.8943
	notl	%eax	# D.8943
	andl	%eax, -8(%rbp)	# D.8944, ena
.L36:
	.loc 2 361 0 discriminator 2
	addl	$1, -4(%rbp)	#, boxId
.L35:
	.loc 2 361 0 is_stmt 0 discriminator 1
	cmpl	$27, -4(%rbp)	#, boxId
	jbe	.L37	#,
.LBE10:
	.loc 2 365 0 is_stmt 1
	movl	-8(%rbp), %eax	# ena, tmp114
	movl	%eax, activeBoxIds(%rip)	# tmp114, activeBoxIds
	.loc 2 366 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	initActiveBoxIds, .-initActiveBoxIds
	.section	.text.packFlightModeFlags,"ax",@progbits
	.type	packFlightModeFlags, @function
packFlightModeFlags:
.LFB72:
	.loc 2 371 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 2 376 0
	movl	$0, -32(%rbp)	#, boxEnabledMask
	.loc 2 380 0
	movl	$-2049, -8(%rbp)	#, flightModeCopyMask
.LBB11:
	.loc 2 381 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L39	#
.L43:
	.loc 2 382 0
	movl	-28(%rbp), %eax	# i, tmp119
	movzbl	flightMode_boxId_map.8586(%rax), %eax	# flightMode_boxId_map, D.8946
	cmpb	$-1, %al	#, D.8946
	je	.L55	#,
	.loc 2 384 0
	movl	-28(%rbp), %eax	# i, tmp120
	movl	$1, %edx	#, tmp121
	movl	%eax, %ecx	# tmp120, tmp138
	sall	%cl, %edx	# tmp138, D.8947
	movl	%edx, %eax	# D.8947, D.8947
	andl	-8(%rbp), %eax	# flightModeCopyMask, D.8948
	testl	%eax, %eax	# D.8948
	je	.L56	#,
	.loc 2 386 0
	movzwl	flightModeFlags(%rip), %eax	# flightModeFlags, D.8949
	movzwl	%ax, %edx	# D.8949, D.8947
	movl	-28(%rbp), %eax	# i, tmp122
	movl	%eax, %ecx	# tmp122, tmp140
	sarl	%cl, %edx	# tmp140, D.8947
	movl	%edx, %eax	# D.8947, D.8947
	andl	$1, %eax	#, D.8947
	testl	%eax, %eax	# D.8947
	je	.L41	#,
	.loc 2 387 0
	movl	-28(%rbp), %eax	# i, tmp123
	movzbl	flightMode_boxId_map.8586(%rax), %eax	# flightMode_boxId_map, D.8946
	movsbl	%al, %eax	# D.8946, D.8947
	movl	$1, %edx	#, tmp124
	movl	%eax, %ecx	# D.8947, tmp142
	sall	%cl, %edx	# tmp142, D.8947
	movl	%edx, %eax	# D.8947, D.8947
	orl	%eax, -32(%rbp)	# D.8948, boxEnabledMask
	jmp	.L41	#
.L55:
	.loc 2 383 0
	nop
	jmp	.L41	#
.L56:
	.loc 2 385 0
	nop
.L41:
	.loc 2 381 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L39:
	.loc 2 381 0 is_stmt 0 discriminator 1
	cmpl	$11, -28(%rbp)	#, i
	jbe	.L43	#,
.LBE11:
	.loc 2 393 0 is_stmt 1
	movl	$169865664, -4(%rbp)	#, rcModeCopyMask
.LBB12:
	.loc 2 396 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L44	#
.L47:
	.loc 2 397 0
	movl	-24(%rbp), %eax	# i, tmp125
	movl	$1, %edx	#, tmp126
	movl	%eax, %ecx	# tmp125, tmp144
	sall	%cl, %edx	# tmp144, D.8947
	movl	%edx, %eax	# D.8947, D.8947
	andl	-4(%rbp), %eax	# rcModeCopyMask, D.8948
	testl	%eax, %eax	# D.8948
	je	.L57	#,
	.loc 2 399 0
	movl	-24(%rbp), %eax	# i, tmp127
	movl	%eax, %edi	# tmp127,
	call	rcModeIsActive	#
	testb	%al, %al	# D.8950
	je	.L46	#,
	.loc 2 400 0
	movl	-24(%rbp), %eax	# i, tmp128
	movl	$1, %edx	#, tmp129
	movl	%eax, %ecx	# tmp128, tmp146
	sall	%cl, %edx	# tmp146, D.8947
	movl	%edx, %eax	# D.8947, D.8947
	orl	%eax, -32(%rbp)	# D.8948, boxEnabledMask
	jmp	.L46	#
.L57:
	.loc 2 398 0
	nop
.L46:
	.loc 2 396 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L44:
	.loc 2 396 0 is_stmt 0 discriminator 1
	cmpl	$31, -24(%rbp)	#, i
	jbe	.L47	#,
.LBE12:
	.loc 2 404 0 is_stmt 1
	movzbl	armingFlags(%rip), %eax	# armingFlags, D.8951
	movzbl	%al, %eax	# D.8951, D.8947
	andl	$4, %eax	#, D.8947
	testl	%eax, %eax	# D.8947
	je	.L48	#,
	.loc 2 405 0
	orl	$1, -32(%rbp)	#, boxEnabledMask
.L48:
	.loc 2 409 0
	movl	$0, -20(%rbp)	#, mspBoxEnabledMask
	.loc 2 410 0
	movl	$0, -16(%rbp)	#, mspBoxIdx
.LBB13:
	.loc 2 411 0
	movl	$0, -12(%rbp)	#, boxId
	jmp	.L49	#
.L53:
	.loc 2 412 0
	movl	-12(%rbp), %eax	# boxId, tmp130
	movl	$1, %edx	#, tmp131
	movl	%eax, %ecx	# tmp130, tmp148
	sall	%cl, %edx	# tmp148, D.8947
	movl	%edx, %eax	# D.8947, D.8947
	movl	%eax, %edx	# D.8947, D.8948
	movl	activeBoxIds(%rip), %eax	# activeBoxIds, D.8948
	andl	%edx, %eax	# D.8948, D.8948
	testl	%eax, %eax	# D.8948
	je	.L58	#,
	.loc 2 414 0
	movl	-12(%rbp), %eax	# boxId, tmp132
	movl	$1, %edx	#, tmp133
	movl	%eax, %ecx	# tmp132, tmp150
	sall	%cl, %edx	# tmp150, D.8947
	movl	%edx, %eax	# D.8947, D.8947
	andl	-32(%rbp), %eax	# boxEnabledMask, D.8948
	testl	%eax, %eax	# D.8948
	je	.L52	#,
	.loc 2 415 0
	movl	-16(%rbp), %eax	# mspBoxIdx, tmp134
	movl	$1, %edx	#, tmp135
	movl	%eax, %ecx	# tmp134, tmp152
	sall	%cl, %edx	# tmp152, D.8947
	movl	%edx, %eax	# D.8947, D.8947
	orl	%eax, -20(%rbp)	# D.8948, mspBoxEnabledMask
.L52:
	.loc 2 416 0
	addl	$1, -16(%rbp)	#, mspBoxIdx
	jmp	.L51	#
.L58:
	.loc 2 413 0
	nop
.L51:
	.loc 2 411 0 discriminator 2
	addl	$1, -12(%rbp)	#, boxId
.L49:
	.loc 2 411 0 is_stmt 0 discriminator 1
	cmpl	$27, -12(%rbp)	#, boxId
	jbe	.L53	#,
.LBE13:
	.loc 2 418 0 is_stmt 1
	movl	-20(%rbp), %eax	# mspBoxEnabledMask, D.8952
	.loc 2 419 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	packFlightModeFlags, .-packFlightModeFlags
	.section	.text.serializeSDCardSummaryReply,"ax",@progbits
	.type	serializeSDCardSummaryReply, @function
serializeSDCardSummaryReply:
.LFB73:
	.loc 2 422 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# reply, reply
	.loc 2 423 0
	movq	-24(%rbp), %rax	# reply, tmp87
	movq	%rax, -8(%rbp)	# tmp87, dst
	.loc 2 461 0
	movq	-8(%rbp), %rax	# dst, tmp88
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	sbufWriteU8	#
	.loc 2 462 0
	movq	-8(%rbp), %rax	# dst, tmp89
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	sbufWriteU8	#
	.loc 2 463 0
	movq	-8(%rbp), %rax	# dst, tmp90
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	sbufWriteU8	#
	.loc 2 464 0
	movq	-8(%rbp), %rax	# dst, tmp91
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	sbufWriteU32	#
	.loc 2 465 0
	movq	-8(%rbp), %rax	# dst, tmp92
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	sbufWriteU32	#
	.loc 2 467 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	serializeSDCardSummaryReply, .-serializeSDCardSummaryReply
	.section	.text.serializeDataflashSummaryReply,"ax",@progbits
	.type	serializeDataflashSummaryReply, @function
serializeDataflashSummaryReply:
.LFB74:
	.loc 2 470 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# reply, reply
	.loc 2 471 0
	movq	-24(%rbp), %rax	# reply, tmp87
	movq	%rax, -8(%rbp)	# tmp87, dst
	.loc 2 481 0
	movq	-8(%rbp), %rax	# dst, tmp88
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	sbufWriteU8	#
	.loc 2 482 0
	movq	-8(%rbp), %rax	# dst, tmp89
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	sbufWriteU32	#
	.loc 2 483 0
	movq	-8(%rbp), %rax	# dst, tmp90
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	sbufWriteU32	#
	.loc 2 484 0
	movq	-8(%rbp), %rax	# dst, tmp91
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	sbufWriteU32	#
	.loc 2 486 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	serializeDataflashSummaryReply, .-serializeDataflashSummaryReply
	.section	.rodata
.LC30:
	.string	"command code: %d\n"
.LC31:
	.string	"Calibrating"
	.section	.text.mspServerCommandHandler,"ax",@progbits
	.globl	mspServerCommandHandler
	.type	mspServerCommandHandler, @function
mspServerCommandHandler:
.LFB75:
	.loc 2 502 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# cmd, cmd
	movq	%rsi, -96(%rbp)	# reply, reply
	.loc 2 503 0
	movq	-96(%rbp), %rax	# reply, tmp175
	movq	%rax, -32(%rbp)	# tmp175, dst
	.loc 2 504 0
	movq	-88(%rbp), %rax	# cmd, tmp176
	movq	%rax, -24(%rbp)	# tmp176, src
	.loc 2 510 0
	movq	-24(%rbp), %rax	# src, tmp177
	movq	%rax, %rdi	# tmp177,
	call	sbufBytesRemaining	#
	movl	%eax, -52(%rbp)	# tmp178, len
	.loc 2 513 0
	movq	-88(%rbp), %rax	# cmd, tmp179
	movzwl	16(%rax), %eax	# cmd_15(D)->cmd, D.8954
	cmpw	$8, %ax	#, D.8954
	jle	.L62	#,
	.loc 2 513 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# cmd, tmp180
	movzwl	16(%rax), %eax	# cmd_15(D)->cmd, D.8954
	cmpw	$160, %ax	#, D.8954
	je	.L62	#,
	.loc 2 514 0 is_stmt 1
	movq	-88(%rbp), %rax	# cmd, tmp181
	movzwl	16(%rax), %eax	# cmd_15(D)->cmd, D.8954
	cwtl
	movl	%eax, %esi	# D.8955,
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L62:
	.loc 2 515 0
	movq	-88(%rbp), %rax	# cmd, tmp182
	movzwl	16(%rax), %eax	# cmd_15(D)->cmd, D.8954
	cwtl
	cmpl	$101, %eax	#, D.8955
	je	.L64	#,
	cmpl	$101, %eax	#, D.8955
	jg	.L65	#,
	cmpl	$5, %eax	#, D.8955
	je	.L66	#,
	cmpl	$5, %eax	#, D.8955
	jg	.L67	#,
	cmpl	$2, %eax	#, D.8955
	je	.L68	#,
	cmpl	$2, %eax	#, D.8955
	jg	.L69	#,
	cmpl	$1, %eax	#, D.8955
	je	.L70	#,
	.loc 2 752 0
	jmp	.L91	#
.L69:
	.loc 2 515 0
	cmpl	$3, %eax	#, D.8955
	je	.L71	#,
	cmpl	$4, %eax	#, D.8955
	je	.L72	#,
	.loc 2 752 0
	jmp	.L91	#
.L67:
	.loc 2 515 0
	cmpl	$36, %eax	#, D.8955
	je	.L73	#,
	cmpl	$36, %eax	#, D.8955
	jg	.L74	#,
	cmpl	$32, %eax	#, D.8955
	je	.L75	#,
	.loc 2 752 0
	jmp	.L91	#
.L74:
	.loc 2 515 0
	cmpl	$70, %eax	#, D.8955
	je	.L76	#,
	cmpl	$100, %eax	#, D.8955
	je	.L77	#,
	.loc 2 752 0
	jmp	.L91	#
.L65:
	.loc 2 515 0
	cmpl	$116, %eax	#, D.8955
	je	.L78	#,
	cmpl	$116, %eax	#, D.8955
	jg	.L79	#,
	cmpl	$108, %eax	#, D.8955
	je	.L80	#,
	cmpl	$108, %eax	#, D.8955
	jg	.L81	#,
	cmpl	$102, %eax	#, D.8955
	je	.L82	#,
	.loc 2 752 0
	jmp	.L91	#
.L81:
	.loc 2 515 0
	cmpl	$110, %eax	#, D.8955
	je	.L83	#,
	cmpl	$114, %eax	#, D.8955
	je	.L84	#,
	.loc 2 752 0
	jmp	.L91	#
.L79:
	.loc 2 515 0
	cmpl	$205, %eax	#, D.8955
	je	.L85	#,
	cmpl	$205, %eax	#, D.8955
	jg	.L86	#,
	cmpl	$128, %eax	#, D.8955
	je	.L87	#,
	cmpl	$160, %eax	#, D.8955
	je	.L88	#,
	.loc 2 752 0
	jmp	.L91	#
.L86:
	.loc 2 515 0
	cmpl	$208, %eax	#, D.8955
	je	.L104	#,
	cmpl	$240, %eax	#, D.8955
	je	.L90	#,
	.loc 2 752 0
	jmp	.L91	#
.L70:
	.loc 2 518 0
	movq	-32(%rbp), %rax	# dst, tmp183
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp183,
	call	sbufWriteU8	#
	.loc 2 519 0
	movq	-32(%rbp), %rax	# dst, tmp184
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp184,
	call	sbufWriteU8	#
	.loc 2 520 0
	movq	-32(%rbp), %rax	# dst, tmp185
	movl	$22, %esi	#,
	movq	%rax, %rdi	# tmp185,
	call	sbufWriteU8	#
	.loc 2 521 0
	jmp	.L91	#
.L68:
	.loc 2 524 0
	movl	$.LC0, %ecx	#, D.8956
	movq	-32(%rbp), %rax	# dst, tmp186
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# D.8956,
	movq	%rax, %rdi	# tmp186,
	call	sbufWriteData	#
	.loc 2 525 0
	movq	-32(%rbp), %rax	# dst, tmp187
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp187,
	call	sbufWriteU8	#
	.loc 2 526 0
	movq	-32(%rbp), %rax	# dst, tmp188
	movl	$14, %esi	#,
	movq	%rax, %rdi	# tmp188,
	call	sbufWriteU8	#
	.loc 2 527 0
	movq	-32(%rbp), %rax	# dst, tmp189
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp189,
	call	sbufWriteU8	#
	.loc 2 528 0
	jmp	.L91	#
.L71:
	.loc 2 531 0
	movq	-32(%rbp), %rax	# dst, tmp190
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp190,
	call	sbufWriteU8	#
	.loc 2 532 0
	movq	-32(%rbp), %rax	# dst, tmp191
	movl	$14, %esi	#,
	movq	%rax, %rdi	# tmp191,
	call	sbufWriteU8	#
	.loc 2 533 0
	movq	-32(%rbp), %rax	# dst, tmp192
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp192,
	call	sbufWriteU8	#
	.loc 2 534 0
	jmp	.L91	#
.L72:
	.loc 2 537 0
	movl	$.LC1, %ecx	#, D.8956
	movq	-32(%rbp), %rax	# dst, tmp193
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# D.8956,
	movq	%rax, %rdi	# tmp193,
	call	sbufWriteData	#
	.loc 2 542 0
	movq	-32(%rbp), %rax	# dst, tmp194
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp194,
	call	sbufWriteU16	#
	.loc 2 544 0
	movq	-32(%rbp), %rax	# dst, tmp195
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp195,
	call	sbufWriteU8	#
	.loc 2 545 0
	jmp	.L91	#
.L66:
	.loc 2 548 0
	movq	buildDate(%rip), %rcx	# buildDate, D.8956
	movq	-32(%rbp), %rax	# dst, tmp196
	movl	$11, %edx	#,
	movq	%rcx, %rsi	# D.8956,
	movq	%rax, %rdi	# tmp196,
	call	sbufWriteData	#
	.loc 2 549 0
	movq	buildTime(%rip), %rcx	# buildTime, D.8956
	movq	-32(%rbp), %rax	# dst, tmp197
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# D.8956,
	movq	%rax, %rdi	# tmp197,
	call	sbufWriteData	#
	.loc 2 550 0
	movq	shortGitRevision(%rip), %rcx	# shortGitRevision, D.8956
	movq	-32(%rbp), %rax	# dst, tmp198
	movl	$7, %edx	#,
	movq	%rcx, %rsi	# D.8956,
	movq	%rax, %rdi	# tmp198,
	call	sbufWriteData	#
	.loc 2 551 0
	jmp	.L91	#
.L77:
	.loc 2 555 0
	movq	-32(%rbp), %rax	# dst, tmp199
	movl	$231, %esi	#,
	movq	%rax, %rdi	# tmp199,
	call	sbufWriteU8	#
	.loc 2 556 0
	call	mixerConfig	#
	movzbl	(%rax), %eax	# _50->mixerMode, D.8958
	movzbl	%al, %edx	# D.8958, D.8955
	movq	-32(%rbp), %rax	# dst, tmp200
	movl	%edx, %esi	# D.8955,
	movq	%rax, %rdi	# tmp200,
	call	sbufWriteU8	#
	.loc 2 557 0
	movq	-32(%rbp), %rax	# dst, tmp201
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp201,
	call	sbufWriteU8	#
	.loc 2 558 0
	movq	-32(%rbp), %rax	# dst, tmp202
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp202,
	call	sbufWriteU32	#
	.loc 2 559 0
	jmp	.L91	#
.L64:
	.loc 2 563 0
	movzwl	cycleTime(%rip), %eax	# cycleTime, D.8959
	movzwl	%ax, %edx	# D.8959, D.8955
	movq	-32(%rbp), %rax	# dst, tmp203
	movl	%edx, %esi	# D.8955,
	movq	%rax, %rdi	# tmp203,
	call	sbufWriteU16	#
	.loc 2 567 0
	movq	-32(%rbp), %rax	# dst, tmp204
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp204,
	call	sbufWriteU16	#
	.loc 2 569 0
	movl	$2, %edi	#,
	call	sensors	#
	movzbl	%al, %ebx	# D.8960, D.8961
	movl	$4, %edi	#,
	call	sensors	#
	movzbl	%al, %eax	# D.8960, D.8955
	addl	%eax, %eax	# D.8955
	orl	%eax, %ebx	# D.8961, D.8961
	movl	$8, %edi	#,
	call	sensors	#
	movzbl	%al, %eax	# D.8960, D.8955
	sall	$2, %eax	#, D.8955
	orl	%eax, %ebx	# D.8961, D.8961
	movl	$32, %edi	#,
	call	sensors	#
	movzbl	%al, %eax	# D.8960, D.8955
	sall	$3, %eax	#, D.8955
	orl	%eax, %ebx	# D.8961, D.8961
	movl	$16, %edi	#,
	call	sensors	#
	movzbl	%al, %eax	# D.8960, D.8955
	sall	$4, %eax	#, D.8955
	orl	%ebx, %eax	# D.8961, D.8961
	movzwl	%ax, %edx	# D.8959, D.8955
	movq	-32(%rbp), %rax	# dst, tmp205
	movl	%edx, %esi	# D.8955,
	movq	%rax, %rdi	# tmp205,
	call	sbufWriteU16	#
	.loc 2 570 0
	call	packFlightModeFlags	#
	movl	%eax, %edx	#, D.8953
	movq	-32(%rbp), %rax	# dst, tmp206
	movl	%edx, %esi	# D.8953,
	movq	%rax, %rdi	# tmp206,
	call	sbufWriteU32	#
	.loc 2 571 0
	call	getCurrentProfile	#
	movzbl	%al, %edx	# D.8958, D.8955
	movq	-32(%rbp), %rax	# dst, tmp207
	movl	%edx, %esi	# D.8955,
	movq	%rax, %rdi	# tmp207,
	call	sbufWriteU8	#
	.loc 2 572 0
	movzwl	averageSystemLoadPercent(%rip), %eax	# averageSystemLoadPercent, D.8959
	movzwl	%ax, %eax	# D.8959, D.8955
	movl	$100, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.8955,
	call	constrain	#
	movzwl	%ax, %edx	# D.8959, D.8955
	movq	-32(%rbp), %rax	# dst, tmp208
	movl	%edx, %esi	# D.8955,
	movq	%rax, %rdi	# tmp208,
	call	sbufWriteU16	#
	.loc 2 573 0
	jmp	.L91	#
.L82:
.LBB14:
	.loc 2 577 0
	movzwl	acc+16(%rip), %eax	# acc.acc_1G, D.8959
	cmpw	$1024, %ax	#, D.8959
	jbe	.L92	#,
	.loc 2 577 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, D.8953
	jmp	.L93	#
.L92:
	.loc 2 577 0 discriminator 2
	movl	$0, %eax	#, D.8953
.L93:
	.loc 2 577 0 discriminator 4
	movl	%eax, -48(%rbp)	# D.8953, scale_shift
.LBB15:
	.loc 2 579 0 is_stmt 1 discriminator 4
	movl	$0, -68(%rbp)	#, i
	jmp	.L94	#
.L95:
	.loc 2 580 0 discriminator 3
	movl	-68(%rbp), %eax	# i, tmp209
	movzwl	accSmooth(%rax,%rax), %eax	# accSmooth, D.8954
	movswl	%ax, %edx	# D.8954, D.8955
	movl	-48(%rbp), %eax	# scale_shift, tmp210
	movl	%eax, %ecx	# tmp210, tmp262
	sarl	%cl, %edx	# tmp262, D.8955
	movl	%edx, %eax	# D.8955, D.8955
	movzwl	%ax, %edx	# D.8959, D.8955
	movq	-32(%rbp), %rax	# dst, tmp211
	movl	%edx, %esi	# D.8955,
	movq	%rax, %rdi	# tmp211,
	call	sbufWriteU16	#
	.loc 2 579 0 discriminator 3
	addl	$1, -68(%rbp)	#, i
.L94:
	.loc 2 579 0 is_stmt 0 discriminator 1
	cmpl	$2, -68(%rbp)	#, i
	jbe	.L95	#,
.LBE15:
.LBB16:
	.loc 2 581 0 is_stmt 1
	movl	$0, -64(%rbp)	#, i
	jmp	.L96	#
.L97:
	.loc 2 582 0 discriminator 3
	movl	-64(%rbp), %eax	# i, tmp212
	movl	gyroADC(,%rax,4), %eax	# gyroADC, D.8955
	movzwl	%ax, %edx	# D.8959, D.8955
	movq	-32(%rbp), %rax	# dst, tmp213
	movl	%edx, %esi	# D.8955,
	movq	%rax, %rdi	# tmp213,
	call	sbufWriteU16	#
	.loc 2 581 0 discriminator 3
	addl	$1, -64(%rbp)	#, i
.L96:
	.loc 2 581 0 is_stmt 0 discriminator 1
	cmpl	$2, -64(%rbp)	#, i
	jbe	.L97	#,
.LBE16:
.LBB17:
	.loc 2 583 0 is_stmt 1
	movl	$0, -60(%rbp)	#, i
	jmp	.L98	#
.L99:
	.loc 2 584 0 discriminator 3
	movl	-60(%rbp), %eax	# i, tmp214
	movl	magADC(,%rax,4), %eax	# magADC, D.8955
	movzwl	%ax, %edx	# D.8959, D.8955
	movq	-32(%rbp), %rax	# dst, tmp215
	movl	%edx, %esi	# D.8955,
	movq	%rax, %rdi	# tmp215,
	call	sbufWriteU16	#
	.loc 2 583 0 discriminator 3
	addl	$1, -60(%rbp)	#, i
.L98:
	.loc 2 583 0 is_stmt 0 discriminator 1
	cmpl	$2, -60(%rbp)	#, i
	jbe	.L99	#,
.LBE17:
	.loc 2 585 0 is_stmt 1
	jmp	.L91	#
.L76:
.LBE14:
	.loc 2 590 0
	movq	-96(%rbp), %rax	# reply, tmp216
	movq	%rax, %rdi	# tmp216,
	call	serializeDataflashSummaryReply	#
	.loc 2 591 0
	jmp	.L91	#
.L73:
	.loc 2 594 0
	call	featureMask	#
	movl	%eax, %edx	#, D.8953
	movq	-32(%rbp), %rax	# dst, tmp217
	movl	%edx, %esi	# D.8953,
	movq	%rax, %rdi	# tmp217,
	call	sbufWriteU32	#
	.loc 2 595 0
	jmp	.L91	#
.L88:
	.loc 2 599 0
	movq	-32(%rbp), %rax	# dst, tmp218
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp218,
	call	sbufWriteU32	#
	.loc 2 600 0
	movq	-32(%rbp), %rax	# dst, tmp219
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp219,
	call	sbufWriteU32	#
	.loc 2 601 0
	movq	-32(%rbp), %rax	# dst, tmp220
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp220,
	call	sbufWriteU32	#
	.loc 2 602 0
	jmp	.L91	#
.L75:
	.loc 2 615 0
	movq	-32(%rbp), %rax	# dst, tmp221
	movl	$255, %esi	#,
	movq	%rax, %rdi	# tmp221,
	call	sbufWriteU8	#
	.loc 2 616 0
	movq	-32(%rbp), %rax	# dst, tmp222
	movl	$255, %esi	#,
	movq	%rax, %rdi	# tmp222,
	call	sbufWriteU8	#
	.loc 2 617 0
	movq	-32(%rbp), %rax	# dst, tmp223
	movl	$255, %esi	#,
	movq	%rax, %rdi	# tmp223,
	call	sbufWriteU8	#
	.loc 2 618 0
	movq	-32(%rbp), %rax	# dst, tmp224
	movl	$65535, %esi	#,
	movq	%rax, %rdi	# tmp224,
	call	sbufWriteU16	#
	.loc 2 619 0
	movq	-32(%rbp), %rax	# dst, tmp225
	movl	$255, %esi	#,
	movq	%rax, %rdi	# tmp225,
	call	sbufWriteU8	#
	.loc 2 620 0
	jmp	.L91	#
.L90:
	.loc 2 624 0
	movq	accelerometerConfig(%rip), %rax	# accelerometerConfig, D.8962
	movzwl	2(%rax), %eax	# _140->accelerometerTrims.values.pitch, D.8954
	movzwl	%ax, %edx	# D.8959, D.8955
	movq	-32(%rbp), %rax	# dst, tmp226
	movl	%edx, %esi	# D.8955,
	movq	%rax, %rdi	# tmp226,
	call	sbufWriteU16	#
	.loc 2 625 0
	movq	accelerometerConfig(%rip), %rax	# accelerometerConfig, D.8962
	movzwl	(%rax), %eax	# _145->accelerometerTrims.values.roll, D.8954
	movzwl	%ax, %edx	# D.8959, D.8955
	movq	-32(%rbp), %rax	# dst, tmp227
	movl	%edx, %esi	# D.8955,
	movq	%rax, %rdi	# tmp227,
	call	sbufWriteU16	#
	.loc 2 626 0
	jmp	.L91	#
.L78:
	.loc 2 630 0
	movq	-96(%rbp), %rax	# reply, tmp228
	movq	%rax, %rdi	# tmp228,
	call	serializeBoxNamesReply	#
	.loc 2 631 0
	jmp	.L91	#
.L87:
.LBB18:
	.loc 2 639 0
	movl	$0, -56(%rbp)	#, i
	jmp	.L100	#
.L101:
	.loc 2 640 0 discriminator 3
	movq	-32(%rbp), %rax	# dst, tmp229
	movl	$255, %esi	#,
	movq	%rax, %rdi	# tmp229,
	call	sbufWriteU8	#
	.loc 2 639 0 discriminator 3
	addl	$1, -56(%rbp)	#, i
.L100:
	.loc 2 639 0 is_stmt 0 discriminator 1
	cmpl	$0, -56(%rbp)	#, i
	jle	.L101	#,
.LBE18:
	.loc 2 642 0 is_stmt 1
	jmp	.L91	#
.L84:
	.loc 2 670 0
	movq	-32(%rbp), %rax	# dst, tmp230
	movl	$65535, %esi	#,
	movq	%rax, %rdi	# tmp230,
	call	sbufWriteU16	#
	.loc 2 672 0
	movq	-32(%rbp), %rax	# dst, tmp231
	movl	$65535, %esi	#,
	movq	%rax, %rdi	# tmp231,
	call	sbufWriteU16	#
	.loc 2 673 0
	movq	-32(%rbp), %rax	# dst, tmp232
	movl	$65535, %esi	#,
	movq	%rax, %rdi	# tmp232,
	call	sbufWriteU16	#
	.loc 2 674 0
	movq	-32(%rbp), %rax	# dst, tmp233
	movl	$65535, %esi	#,
	movq	%rax, %rdi	# tmp233,
	call	sbufWriteU16	#
	.loc 2 676 0
	movq	-32(%rbp), %rax	# dst, tmp234
	movl	$65535, %esi	#,
	movq	%rax, %rdi	# tmp234,
	call	sbufWriteU16	#
	.loc 2 684 0
	movq	-32(%rbp), %rax	# dst, tmp235
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp235,
	call	sbufWriteU8	#
	.loc 2 685 0
	movq	-32(%rbp), %rax	# dst, tmp236
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp236,
	call	sbufWriteU8	#
	.loc 2 686 0
	movq	-32(%rbp), %rax	# dst, tmp237
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp237,
	call	sbufWriteU8	#
	.loc 2 689 0
	movq	-32(%rbp), %rax	# dst, tmp238
	movl	$255, %esi	#,
	movq	%rax, %rdi	# tmp238,
	call	sbufWriteU8	#
	.loc 2 690 0
	movq	-32(%rbp), %rax	# dst, tmp239
	movl	$255, %esi	#,
	movq	%rax, %rdi	# tmp239,
	call	sbufWriteU8	#
	.loc 2 691 0
	movq	-32(%rbp), %rax	# dst, tmp240
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp240,
	call	sbufWriteU8	#
	.loc 2 693 0
	movq	-32(%rbp), %rax	# dst, tmp241
	movl	$65535, %esi	#,
	movq	%rax, %rdi	# tmp241,
	call	sbufWriteU16	#
	.loc 2 695 0
	jmp	.L91	#
.L85:
	.loc 2 698 0
	movl	$.LC31, %edi	#,
	call	puts	#
	.loc 2 699 0
	movzbl	armingFlags(%rip), %eax	# armingFlags, D.8958
	movzbl	%al, %eax	# D.8958, D.8955
	andl	$4, %eax	#, D.8955
	testl	%eax, %eax	# D.8955
	jne	.L105	#,
	.loc 2 700 0
	movl	$400, %edi	#,
	call	accSetCalibrationCycles	#
	.loc 2 701 0
	jmp	.L105	#
.L80:
	.loc 2 704 0
	movzwl	attitude+4(%rip), %eax	# attitude.values.yaw, D.8954
	movswl	%ax, %edx	# D.8954, tmp242
	imull	$26215, %edx, %edx	#, tmp242, tmp243
	shrl	$16, %edx	#, tmp244
	sarw	$2, %dx	#, tmp245
	sarw	$15, %ax	#, tmp246
	subl	%eax, %edx	# tmp246, D.8954
	movl	%edx, %eax	# D.8954, D.8954
	cwtl
	pxor	%xmm0, %xmm0	# D.8963
	cvtsi2sd	%eax, %xmm0	# tmp247, D.8963
	cvtsd2ss	%xmm0, %xmm1	# D.8963, tmp264
	movss	%xmm1, -44(%rbp)	# tmp264, attitude_yaw
	.loc 2 705 0
	movzwl	attitude+2(%rip), %eax	# attitude.values.pitch, D.8954
	cwtl
	pxor	%xmm0, %xmm0	# D.8963
	cvtsi2sd	%eax, %xmm0	# tmp248, D.8963
	cvtsd2ss	%xmm0, %xmm2	# D.8963, tmp265
	movss	%xmm2, -40(%rbp)	# tmp265, attitude_pitch
	.loc 2 706 0
	movzwl	attitude(%rip), %eax	# attitude.values.roll, D.8954
	cwtl
	pxor	%xmm0, %xmm0	# D.8963
	cvtsi2sd	%eax, %xmm0	# tmp249, D.8963
	cvtsd2ss	%xmm0, %xmm3	# D.8963, tmp266
	movss	%xmm3, -36(%rbp)	# tmp266, attitude_roll
	.loc 2 708 0
	cvttss2si	-36(%rbp), %eax	# attitude_roll, tmp250
	movzwl	%ax, %edx	# D.8959, D.8955
	movq	-32(%rbp), %rax	# dst, tmp251
	movl	%edx, %esi	# D.8955,
	movq	%rax, %rdi	# tmp251,
	call	sbufWriteU16	#
	.loc 2 709 0
	cvttss2si	-40(%rbp), %eax	# attitude_pitch, tmp252
	movzwl	%ax, %edx	# D.8959, D.8955
	movq	-32(%rbp), %rax	# dst, tmp253
	movl	%edx, %esi	# D.8955,
	movq	%rax, %rdi	# tmp253,
	call	sbufWriteU16	#
	.loc 2 710 0
	cvttss2si	-44(%rbp), %eax	# attitude_yaw, tmp254
	movzwl	%ax, %edx	# D.8959, D.8955
	movq	-32(%rbp), %rax	# dst, tmp255
	movl	%edx, %esi	# D.8955,
	movq	%rax, %rdi	# tmp255,
	call	sbufWriteU16	#
	.loc 2 716 0
	jmp	.L91	#
.L83:
	.loc 2 733 0
	movq	-32(%rbp), %rax	# dst, tmp256
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp256,
	call	sbufWriteU8	#
	.loc 2 734 0
	movq	-32(%rbp), %rax	# dst, tmp257
	movl	$65535, %esi	#,
	movq	%rax, %rdi	# tmp257,
	call	sbufWriteU16	#
	.loc 2 735 0
	movq	-32(%rbp), %rax	# dst, tmp258
	movl	$65535, %esi	#,
	movq	%rax, %rdi	# tmp258,
	call	sbufWriteU16	#
	.loc 2 737 0
	movq	-32(%rbp), %rax	# dst, tmp259
	movl	$65535, %esi	#,
	movq	%rax, %rdi	# tmp259,
	call	sbufWriteU16	#
	.loc 2 739 0
	jmp	.L91	#
.L104:
	.loc 2 748 0
	nop
	jmp	.L91	#
.L105:
	.loc 2 701 0
	nop
.L91:
	.loc 2 1622 0
	movl	$1, %eax	#, D.8955
	.loc 2 1623 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	mspServerCommandHandler, .-mspServerCommandHandler
	.section	.text.mspInit,"ax",@progbits
	.globl	mspInit
	.type	mspInit, @function
mspInit:
.LFB76:
	.loc 2 1626 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 2 1627 0
	call	initActiveBoxIds	#
	.loc 2 1628 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	mspInit, .-mspInit
	.section	.rodata.flightMode_boxId_map.8586,"a",@progbits
	.align 8
	.type	flightMode_boxId_map.8586, @object
	.size	flightMode_boxId_map.8586, 12
flightMode_boxId_map.8586:
	.byte	1
	.byte	2
	.byte	4
	.byte	3
	.byte	9
	.byte	10
	.byte	5
	.byte	-1
	.byte	11
	.byte	21
	.byte	26
	.byte	20
	.section	.bss.n.8623,"aw",@nobits
	.align 4
	.type	n.8623, @object
	.size	n.8623, 4
n.8623:
	.zero	4
	.text
.Letext0:
	.file 3 "/usr/include/stdint.h"
	.file 4 "./src/main/common/axis.h"
	.file 5 "./src/main/common/color.h"
	.file 6 "./src/main/common/streambuf.h"
	.file 7 "./src/main/config/parameter_group.h"
	.file 8 "./src/main/config/feature.h"
	.file 9 "./src/main/config/profile.h"
	.file 10 "/usr/include/mraa/i2c.h"
	.file 11 "./src/main/drivers/SFE_LSM9DS0.h"
	.file 12 "./src/main/drivers/sensor.h"
	.file 13 "./src/main/drivers/accgyro.h"
	.file 14 "./src/main/rx/rx.h"
	.file 15 "./src/main/msp/msp.h"
	.file 16 "./src/main/fc/rate_profile.h"
	.file 17 "./src/main/fc/rc_controls.h"
	.file 18 "./src/main/fc/rc_adjustments.h"
	.file 19 "./src/main/fc/runtime_config.h"
	.file 20 "./src/main/fc/config.h"
	.file 21 "./src/main/io/motor_and_servo.h"
	.file 22 "./src/main/io/gps.h"
	.file 23 "./src/main/io/gimbal.h"
	.file 24 "./src/main/io/io_serial.h"
	.file 25 "./src/main/io/ledstrip.h"
	.file 26 "./src/main/io/transponder_ir.h"
	.file 27 "./src/main/telemetry/telemetry.h"
	.file 28 "./src/main/sensors/boardalignment.h"
	.file 29 "./src/main/sensors/sensors.h"
	.file 30 "./src/main/sensors/amperage.h"
	.file 31 "./src/main/sensors/voltage.h"
	.file 32 "./src/main/sensors/battery.h"
	.file 33 "./src/main/sensors/acceleration.h"
	.file 34 "./src/main/sensors/compass.h"
	.file 35 "./src/main/sensors/gyro.h"
	.file 36 "./src/main/flight/servos.h"
	.file 37 "./src/main/flight/pid.h"
	.file 38 "./src/main/flight/imu.h"
	.file 39 "./src/main/flight/failsafe.h"
	.file 40 "./src/main/flight/navigation.h"
	.file 41 "./src/main/flight/altitudehold.h"
	.file 42 "./src/main/blackbox/blackbox.h"
	.file 43 "./src/main/msp/msp_server.h"
	.file 44 "./src/main/fc/msp_server_fc.h"
	.file 45 "./src/main/target/edison/target.h"
	.file 46 "./src/main/scheduler/scheduler.h"
	.file 47 "./src/main/drivers/system.h"
	.file 48 "./src/main/build/version.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x234e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF595
	.byte	0xc
	.long	.LASF596
	.long	.LASF597
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
	.byte	0x8
	.long	0x77
	.uleb128 0x6
	.long	0x6a
	.uleb128 0x7
	.long	.LASF9
	.byte	0x3
	.byte	0x24
	.long	0x45
	.uleb128 0x7
	.long	.LASF10
	.byte	0x3
	.byte	0x25
	.long	0x4c
	.uleb128 0x7
	.long	.LASF11
	.byte	0x3
	.byte	0x26
	.long	0x53
	.uleb128 0x7
	.long	.LASF12
	.byte	0x3
	.byte	0x30
	.long	0x30
	.uleb128 0x7
	.long	.LASF13
	.byte	0x3
	.byte	0x31
	.long	0x37
	.uleb128 0x7
	.long	.LASF14
	.byte	0x3
	.byte	0x33
	.long	0x3e
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF17
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF18
	.uleb128 0x8
	.byte	0x4
	.long	0x3e
	.byte	0x4
	.byte	0x1d
	.long	0xff
	.uleb128 0x9
	.long	.LASF19
	.byte	0
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.uleb128 0x9
	.long	.LASF21
	.byte	0x2
	.uleb128 0x9
	.long	.LASF22
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x3e
	.byte	0x4
	.byte	0x25
	.long	0x11e
	.uleb128 0x9
	.long	.LASF23
	.byte	0
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.uleb128 0x9
	.long	.LASF25
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x3e
	.byte	0x5
	.byte	0x15
	.long	0x13d
	.uleb128 0x9
	.long	.LASF26
	.byte	0
	.uleb128 0x9
	.long	.LASF27
	.byte	0x1
	.uleb128 0x9
	.long	.LASF28
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.long	0x9d
	.long	0x14d
	.uleb128 0xb
	.long	0x61
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	.LASF30
	.byte	0x4
	.byte	0x5
	.byte	0x32
	.long	0x178
	.uleb128 0xd
	.string	"h"
	.byte	0x5
	.byte	0x33
	.long	0xa8
	.byte	0
	.uleb128 0xd
	.string	"s"
	.byte	0x5
	.byte	0x34
	.long	0x9d
	.byte	0x2
	.uleb128 0xd
	.string	"v"
	.byte	0x5
	.byte	0x35
	.long	0x9d
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF29
	.byte	0x5
	.byte	0x36
	.long	0x14d
	.uleb128 0xc
	.long	.LASF31
	.byte	0x10
	.byte	0x6
	.byte	0x19
	.long	0x1a8
	.uleb128 0xd
	.string	"ptr"
	.byte	0x6
	.byte	0x1a
	.long	0x1a8
	.byte	0
	.uleb128 0xd
	.string	"end"
	.byte	0x6
	.byte	0x1b
	.long	0x1a8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x9d
	.uleb128 0x7
	.long	.LASF32
	.byte	0x6
	.byte	0x1c
	.long	0x183
	.uleb128 0x7
	.long	.LASF33
	.byte	0x7
	.byte	0x15
	.long	0xa8
	.uleb128 0x7
	.long	.LASF34
	.byte	0x7
	.byte	0x26
	.long	0x1cf
	.uleb128 0xe
	.long	0x1df
	.uleb128 0xf
	.long	0x68
	.uleb128 0xf
	.long	0x53
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.byte	0x7
	.byte	0x2d
	.long	0x1fd
	.uleb128 0x11
	.string	"ptr"
	.byte	0x7
	.byte	0x2e
	.long	0x68
	.uleb128 0x11
	.string	"fn"
	.byte	0x7
	.byte	0x2f
	.long	0x1fd
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x1c4
	.uleb128 0xc
	.long	.LASF35
	.byte	0x20
	.byte	0x7
	.byte	0x28
	.long	0x24c
	.uleb128 0xd
	.string	"pgn"
	.byte	0x7
	.byte	0x29
	.long	0x1b9
	.byte	0
	.uleb128 0x12
	.long	.LASF36
	.byte	0x7
	.byte	0x2a
	.long	0xa8
	.byte	0x2
	.uleb128 0x12
	.long	.LASF37
	.byte	0x7
	.byte	0x2b
	.long	0x1a8
	.byte	0x8
	.uleb128 0xd
	.string	"ptr"
	.byte	0x7
	.byte	0x2c
	.long	0x24c
	.byte	0x10
	.uleb128 0x12
	.long	.LASF38
	.byte	0x7
	.byte	0x30
	.long	0x1df
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x1a8
	.uleb128 0x7
	.long	.LASF39
	.byte	0x7
	.byte	0x31
	.long	0x203
	.uleb128 0xc
	.long	.LASF40
	.byte	0x4
	.byte	0x8
	.byte	0x14
	.long	0x276
	.uleb128 0x12
	.long	.LASF41
	.byte	0x8
	.byte	0x15
	.long	0xb3
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF42
	.byte	0x8
	.byte	0x16
	.long	0x25d
	.uleb128 0xc
	.long	.LASF43
	.byte	0x1
	.byte	0x9
	.byte	0x16
	.long	0x29a
	.uleb128 0x12
	.long	.LASF44
	.byte	0x9
	.byte	0x17
	.long	0x9d
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF45
	.byte	0x9
	.byte	0x18
	.long	0x281
	.uleb128 0x7
	.long	.LASF46
	.byte	0xa
	.byte	0x35
	.long	0x2b0
	.uleb128 0x5
	.byte	0x8
	.long	0x2b6
	.uleb128 0x13
	.long	.LASF598
	.uleb128 0x14
	.long	.LASF50
	.byte	0x4
	.long	0x3e
	.byte	0xb
	.byte	0x81
	.long	0x2de
	.uleb128 0x9
	.long	.LASF47
	.byte	0
	.uleb128 0x9
	.long	.LASF48
	.byte	0x1
	.uleb128 0x9
	.long	.LASF49
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF50
	.byte	0xb
	.byte	0x86
	.long	0x2bb
	.uleb128 0x14
	.long	.LASF51
	.byte	0x4
	.long	0x3e
	.byte	0xb
	.byte	0x89
	.long	0x318
	.uleb128 0x9
	.long	.LASF52
	.byte	0
	.uleb128 0x9
	.long	.LASF53
	.byte	0x1
	.uleb128 0x9
	.long	.LASF54
	.byte	0x2
	.uleb128 0x9
	.long	.LASF55
	.byte	0x3
	.uleb128 0x9
	.long	.LASF56
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF51
	.byte	0xb
	.byte	0x90
	.long	0x2e9
	.uleb128 0x14
	.long	.LASF57
	.byte	0x4
	.long	0x3e
	.byte	0xb
	.byte	0x93
	.long	0x34c
	.uleb128 0x9
	.long	.LASF58
	.byte	0
	.uleb128 0x9
	.long	.LASF59
	.byte	0x1
	.uleb128 0x9
	.long	.LASF60
	.byte	0x2
	.uleb128 0x9
	.long	.LASF61
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF57
	.byte	0xb
	.byte	0x99
	.long	0x323
	.uleb128 0xc
	.long	.LASF62
	.byte	0x40
	.byte	0xb
	.byte	0xdc
	.long	0x432
	.uleb128 0xd
	.string	"gx"
	.byte	0xb
	.byte	0xe2
	.long	0x87
	.byte	0
	.uleb128 0xd
	.string	"gy"
	.byte	0xb
	.byte	0xe2
	.long	0x87
	.byte	0x2
	.uleb128 0xd
	.string	"gz"
	.byte	0xb
	.byte	0xe2
	.long	0x87
	.byte	0x4
	.uleb128 0xd
	.string	"ax"
	.byte	0xb
	.byte	0xe3
	.long	0x87
	.byte	0x6
	.uleb128 0xd
	.string	"ay"
	.byte	0xb
	.byte	0xe3
	.long	0x87
	.byte	0x8
	.uleb128 0xd
	.string	"az"
	.byte	0xb
	.byte	0xe3
	.long	0x87
	.byte	0xa
	.uleb128 0xd
	.string	"mx"
	.byte	0xb
	.byte	0xe4
	.long	0x87
	.byte	0xc
	.uleb128 0xd
	.string	"my"
	.byte	0xb
	.byte	0xe4
	.long	0x87
	.byte	0xe
	.uleb128 0xd
	.string	"mz"
	.byte	0xb
	.byte	0xe4
	.long	0x87
	.byte	0x10
	.uleb128 0x12
	.long	.LASF63
	.byte	0xb
	.byte	0xe5
	.long	0x87
	.byte	0x12
	.uleb128 0x12
	.long	.LASF64
	.byte	0xb
	.byte	0xe7
	.long	0x2a5
	.byte	0x18
	.uleb128 0xd
	.string	"xm"
	.byte	0xb
	.byte	0xe8
	.long	0x2a5
	.byte	0x20
	.uleb128 0x12
	.long	.LASF65
	.byte	0xb
	.byte	0xec
	.long	0x2de
	.byte	0x28
	.uleb128 0x12
	.long	.LASF66
	.byte	0xb
	.byte	0xed
	.long	0x318
	.byte	0x2c
	.uleb128 0x12
	.long	.LASF67
	.byte	0xb
	.byte	0xee
	.long	0x34c
	.byte	0x30
	.uleb128 0x12
	.long	.LASF68
	.byte	0xb
	.byte	0xf3
	.long	0xcc
	.byte	0x34
	.uleb128 0x12
	.long	.LASF69
	.byte	0xb
	.byte	0xf3
	.long	0xcc
	.byte	0x38
	.uleb128 0x12
	.long	.LASF70
	.byte	0xb
	.byte	0xf3
	.long	0xcc
	.byte	0x3c
	.byte	0
	.uleb128 0x7
	.long	.LASF71
	.byte	0xb
	.byte	0xf5
	.long	0x357
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF72
	.uleb128 0x7
	.long	.LASF73
	.byte	0xc
	.byte	0x15
	.long	0x44f
	.uleb128 0x5
	.byte	0x8
	.long	0x455
	.uleb128 0x15
	.long	0x43d
	.long	0x464
	.uleb128 0xf
	.long	0x464
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x87
	.uleb128 0x7
	.long	.LASF74
	.byte	0xc
	.byte	0x18
	.long	0x475
	.uleb128 0x5
	.byte	0x8
	.long	0x47b
	.uleb128 0x16
	.uleb128 0xc
	.long	.LASF75
	.byte	0x18
	.byte	0xd
	.byte	0x27
	.long	0x4b9
	.uleb128 0x12
	.long	.LASF76
	.byte	0xd
	.byte	0x28
	.long	0x46a
	.byte	0
	.uleb128 0x12
	.long	.LASF77
	.byte	0xd
	.byte	0x29
	.long	0x444
	.byte	0x8
	.uleb128 0x12
	.long	.LASF78
	.byte	0xd
	.byte	0x2a
	.long	0xa8
	.byte	0x10
	.uleb128 0x12
	.long	.LASF79
	.byte	0xd
	.byte	0x2b
	.long	0x6a
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.long	.LASF80
	.byte	0xd
	.byte	0x2c
	.long	0x47c
	.uleb128 0xc
	.long	.LASF81
	.byte	0x2
	.byte	0xe
	.byte	0x65
	.long	0x4e9
	.uleb128 0x12
	.long	.LASF82
	.byte	0xe
	.byte	0x66
	.long	0x9d
	.byte	0
	.uleb128 0x12
	.long	.LASF83
	.byte	0xe
	.byte	0x67
	.long	0x9d
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF84
	.byte	0xe
	.byte	0x68
	.long	0x4c4
	.uleb128 0xc
	.long	.LASF85
	.byte	0x4
	.byte	0xe
	.byte	0x6a
	.long	0x519
	.uleb128 0xd
	.string	"min"
	.byte	0xe
	.byte	0x6b
	.long	0xa8
	.byte	0
	.uleb128 0xd
	.string	"max"
	.byte	0xe
	.byte	0x6c
	.long	0xa8
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF86
	.byte	0xe
	.byte	0x6d
	.long	0x4f4
	.uleb128 0xc
	.long	.LASF87
	.byte	0x1a
	.byte	0xe
	.byte	0x6f
	.long	0x5cd
	.uleb128 0x12
	.long	.LASF88
	.byte	0xe
	.byte	0x70
	.long	0x5cd
	.byte	0
	.uleb128 0x12
	.long	.LASF89
	.byte	0xe
	.byte	0x71
	.long	0x9d
	.byte	0x8
	.uleb128 0x12
	.long	.LASF90
	.byte	0xe
	.byte	0x72
	.long	0x9d
	.byte	0x9
	.uleb128 0x12
	.long	.LASF91
	.byte	0xe
	.byte	0x73
	.long	0x9d
	.byte	0xa
	.uleb128 0x12
	.long	.LASF92
	.byte	0xe
	.byte	0x74
	.long	0x9d
	.byte	0xb
	.uleb128 0x12
	.long	.LASF93
	.byte	0xe
	.byte	0x75
	.long	0x9d
	.byte	0xc
	.uleb128 0x12
	.long	.LASF94
	.byte	0xe
	.byte	0x76
	.long	0x9d
	.byte	0xd
	.uleb128 0x12
	.long	.LASF95
	.byte	0xe
	.byte	0x77
	.long	0x9d
	.byte	0xe
	.uleb128 0x12
	.long	.LASF96
	.byte	0xe
	.byte	0x78
	.long	0xa8
	.byte	0x10
	.uleb128 0x12
	.long	.LASF97
	.byte	0xe
	.byte	0x79
	.long	0xa8
	.byte	0x12
	.uleb128 0x12
	.long	.LASF98
	.byte	0xe
	.byte	0x7a
	.long	0xa8
	.byte	0x14
	.uleb128 0x12
	.long	.LASF99
	.byte	0xe
	.byte	0x7c
	.long	0xa8
	.byte	0x16
	.uleb128 0x12
	.long	.LASF100
	.byte	0xe
	.byte	0x7d
	.long	0xa8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.long	0x9d
	.long	0x5dd
	.uleb128 0xb
	.long	0x61
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.long	.LASF101
	.byte	0xe
	.byte	0x7e
	.long	0x524
	.uleb128 0xc
	.long	.LASF102
	.byte	0x18
	.byte	0xf
	.byte	0x16
	.long	0x619
	.uleb128 0xd
	.string	"buf"
	.byte	0xf
	.byte	0x17
	.long	0x1ae
	.byte	0
	.uleb128 0xd
	.string	"cmd"
	.byte	0xf
	.byte	0x18
	.long	0x87
	.byte	0x10
	.uleb128 0x12
	.long	.LASF103
	.byte	0xf
	.byte	0x19
	.long	0x87
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.long	.LASF104
	.byte	0xf
	.byte	0x1a
	.long	0x5e8
	.uleb128 0xc
	.long	.LASF105
	.byte	0xc
	.byte	0x10
	.byte	0x14
	.long	0x691
	.uleb128 0x12
	.long	.LASF106
	.byte	0x10
	.byte	0x15
	.long	0x9d
	.byte	0
	.uleb128 0x12
	.long	.LASF107
	.byte	0x10
	.byte	0x16
	.long	0x9d
	.byte	0x1
	.uleb128 0x12
	.long	.LASF108
	.byte	0x10
	.byte	0x17
	.long	0x9d
	.byte	0x2
	.uleb128 0x12
	.long	.LASF109
	.byte	0x10
	.byte	0x18
	.long	0x9d
	.byte	0x3
	.uleb128 0x12
	.long	.LASF110
	.byte	0x10
	.byte	0x19
	.long	0x13d
	.byte	0x4
	.uleb128 0x12
	.long	.LASF111
	.byte	0x10
	.byte	0x1a
	.long	0x9d
	.byte	0x7
	.uleb128 0x12
	.long	.LASF112
	.byte	0x10
	.byte	0x1b
	.long	0x9d
	.byte	0x8
	.uleb128 0x12
	.long	.LASF113
	.byte	0x10
	.byte	0x1c
	.long	0xa8
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF114
	.byte	0x10
	.byte	0x1d
	.long	0x624
	.uleb128 0xc
	.long	.LASF115
	.byte	0x1
	.byte	0x10
	.byte	0x24
	.long	0x6b5
	.uleb128 0x12
	.long	.LASF116
	.byte	0x10
	.byte	0x25
	.long	0x9d
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF117
	.byte	0x10
	.byte	0x26
	.long	0x69c
	.uleb128 0x8
	.byte	0x4
	.long	0x3e
	.byte	0x11
	.byte	0x16
	.long	0x77b
	.uleb128 0x9
	.long	.LASF118
	.byte	0
	.uleb128 0x9
	.long	.LASF119
	.byte	0x1
	.uleb128 0x9
	.long	.LASF120
	.byte	0x2
	.uleb128 0x9
	.long	.LASF121
	.byte	0x3
	.uleb128 0x9
	.long	.LASF122
	.byte	0x4
	.uleb128 0x9
	.long	.LASF123
	.byte	0x5
	.uleb128 0x9
	.long	.LASF124
	.byte	0x6
	.uleb128 0x9
	.long	.LASF125
	.byte	0x7
	.uleb128 0x9
	.long	.LASF126
	.byte	0x8
	.uleb128 0x9
	.long	.LASF127
	.byte	0x9
	.uleb128 0x9
	.long	.LASF128
	.byte	0xa
	.uleb128 0x9
	.long	.LASF129
	.byte	0xb
	.uleb128 0x9
	.long	.LASF130
	.byte	0xc
	.uleb128 0x9
	.long	.LASF131
	.byte	0xd
	.uleb128 0x9
	.long	.LASF132
	.byte	0xe
	.uleb128 0x9
	.long	.LASF133
	.byte	0xf
	.uleb128 0x9
	.long	.LASF134
	.byte	0x10
	.uleb128 0x9
	.long	.LASF135
	.byte	0x11
	.uleb128 0x9
	.long	.LASF136
	.byte	0x12
	.uleb128 0x9
	.long	.LASF137
	.byte	0x13
	.uleb128 0x9
	.long	.LASF138
	.byte	0x14
	.uleb128 0x9
	.long	.LASF139
	.byte	0x15
	.uleb128 0x9
	.long	.LASF140
	.byte	0x16
	.uleb128 0x9
	.long	.LASF141
	.byte	0x17
	.uleb128 0x9
	.long	.LASF142
	.byte	0x18
	.uleb128 0x9
	.long	.LASF143
	.byte	0x19
	.uleb128 0x9
	.long	.LASF144
	.byte	0x1a
	.uleb128 0x9
	.long	.LASF145
	.byte	0x1b
	.uleb128 0x9
	.long	.LASF146
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.long	.LASF147
	.byte	0x11
	.byte	0x35
	.long	0x6c0
	.uleb128 0xc
	.long	.LASF148
	.byte	0x2
	.byte	0x11
	.byte	0x75
	.long	0x7ab
	.uleb128 0x12
	.long	.LASF149
	.byte	0x11
	.byte	0x76
	.long	0x9d
	.byte	0
	.uleb128 0x12
	.long	.LASF150
	.byte	0x11
	.byte	0x77
	.long	0x9d
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF151
	.byte	0x11
	.byte	0x78
	.long	0x786
	.uleb128 0xc
	.long	.LASF152
	.byte	0x8
	.byte	0x11
	.byte	0x7a
	.long	0x7e7
	.uleb128 0x12
	.long	.LASF153
	.byte	0x11
	.byte	0x7b
	.long	0x77b
	.byte	0
	.uleb128 0x12
	.long	.LASF154
	.byte	0x11
	.byte	0x7c
	.long	0x9d
	.byte	0x4
	.uleb128 0x12
	.long	.LASF155
	.byte	0x11
	.byte	0x7d
	.long	0x7ab
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.long	.LASF156
	.byte	0x11
	.byte	0x7e
	.long	0x7b6
	.uleb128 0xc
	.long	.LASF157
	.byte	0xa0
	.byte	0x11
	.byte	0x82
	.long	0x80b
	.uleb128 0x12
	.long	.LASF158
	.byte	0x11
	.byte	0x83
	.long	0x80b
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x7e7
	.long	0x81b
	.uleb128 0xb
	.long	0x61
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.long	.LASF159
	.byte	0x11
	.byte	0x84
	.long	0x7f2
	.uleb128 0xc
	.long	.LASF160
	.byte	0x8
	.byte	0x11
	.byte	0x8a
	.long	0x87b
	.uleb128 0x12
	.long	.LASF161
	.byte	0x11
	.byte	0x8b
	.long	0x9d
	.byte	0
	.uleb128 0x12
	.long	.LASF162
	.byte	0x11
	.byte	0x8c
	.long	0x9d
	.byte	0x1
	.uleb128 0x12
	.long	.LASF163
	.byte	0x11
	.byte	0x8d
	.long	0x9d
	.byte	0x2
	.uleb128 0x12
	.long	.LASF164
	.byte	0x11
	.byte	0x8e
	.long	0x9d
	.byte	0x3
	.uleb128 0x12
	.long	.LASF165
	.byte	0x11
	.byte	0x8f
	.long	0x7c
	.byte	0x4
	.uleb128 0x12
	.long	.LASF166
	.byte	0x11
	.byte	0x90
	.long	0xa8
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.long	.LASF167
	.byte	0x11
	.byte	0x91
	.long	0x826
	.uleb128 0xc
	.long	.LASF168
	.byte	0x4
	.byte	0x11
	.byte	0x95
	.long	0x8c3
	.uleb128 0x12
	.long	.LASF169
	.byte	0x11
	.byte	0x97
	.long	0x9d
	.byte	0
	.uleb128 0x12
	.long	.LASF170
	.byte	0x11
	.byte	0x98
	.long	0x9d
	.byte	0x1
	.uleb128 0x12
	.long	.LASF171
	.byte	0x11
	.byte	0x99
	.long	0x9d
	.byte	0x2
	.uleb128 0x12
	.long	.LASF172
	.byte	0x11
	.byte	0x9a
	.long	0x9d
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF173
	.byte	0x11
	.byte	0x9b
	.long	0x886
	.uleb128 0xc
	.long	.LASF174
	.byte	0x6
	.byte	0x12
	.byte	0x62
	.long	0x917
	.uleb128 0x12
	.long	.LASF154
	.byte	0x12
	.byte	0x64
	.long	0x9d
	.byte	0
	.uleb128 0x12
	.long	.LASF155
	.byte	0x12
	.byte	0x65
	.long	0x7ab
	.byte	0x1
	.uleb128 0x12
	.long	.LASF175
	.byte	0x12
	.byte	0x68
	.long	0x9d
	.byte	0x3
	.uleb128 0x12
	.long	.LASF176
	.byte	0x12
	.byte	0x69
	.long	0x9d
	.byte	0x4
	.uleb128 0x12
	.long	.LASF177
	.byte	0x12
	.byte	0x6c
	.long	0x9d
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.long	.LASF178
	.byte	0x12
	.byte	0x6d
	.long	0x8ce
	.uleb128 0xc
	.long	.LASF179
	.byte	0x48
	.byte	0x12
	.byte	0x7a
	.long	0x93b
	.uleb128 0x12
	.long	.LASF180
	.byte	0x12
	.byte	0x7b
	.long	0x93b
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x917
	.long	0x94b
	.uleb128 0xb
	.long	0x61
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.long	.LASF181
	.byte	0x12
	.byte	0x7c
	.long	0x922
	.uleb128 0x8
	.byte	0x4
	.long	0x3e
	.byte	0x13
	.byte	0x15
	.long	0x975
	.uleb128 0x9
	.long	.LASF182
	.byte	0x1
	.uleb128 0x9
	.long	.LASF183
	.byte	0x2
	.uleb128 0x9
	.long	.LASF184
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x3e
	.byte	0x13
	.byte	0x21
	.long	0x9ce
	.uleb128 0x9
	.long	.LASF185
	.byte	0x1
	.uleb128 0x9
	.long	.LASF186
	.byte	0x2
	.uleb128 0x9
	.long	.LASF187
	.byte	0x4
	.uleb128 0x9
	.long	.LASF188
	.byte	0x8
	.uleb128 0x9
	.long	.LASF189
	.byte	0x10
	.uleb128 0x9
	.long	.LASF190
	.byte	0x20
	.uleb128 0x9
	.long	.LASF191
	.byte	0x40
	.uleb128 0x9
	.long	.LASF192
	.byte	0x80
	.uleb128 0x17
	.long	.LASF193
	.value	0x100
	.uleb128 0x17
	.long	.LASF194
	.value	0x200
	.uleb128 0x17
	.long	.LASF195
	.value	0x400
	.uleb128 0x17
	.long	.LASF196
	.value	0x800
	.byte	0
	.uleb128 0x7
	.long	.LASF197
	.byte	0x13
	.byte	0x2e
	.long	0x975
	.uleb128 0x8
	.byte	0x4
	.long	0x3e
	.byte	0x14
	.byte	0x17
	.long	0xa84
	.uleb128 0x9
	.long	.LASF198
	.byte	0x1
	.uleb128 0x9
	.long	.LASF199
	.byte	0x2
	.uleb128 0x9
	.long	.LASF200
	.byte	0x4
	.uleb128 0x9
	.long	.LASF201
	.byte	0x8
	.uleb128 0x9
	.long	.LASF202
	.byte	0x10
	.uleb128 0x9
	.long	.LASF203
	.byte	0x20
	.uleb128 0x9
	.long	.LASF204
	.byte	0x40
	.uleb128 0x9
	.long	.LASF205
	.byte	0x80
	.uleb128 0x17
	.long	.LASF206
	.value	0x100
	.uleb128 0x17
	.long	.LASF207
	.value	0x200
	.uleb128 0x17
	.long	.LASF208
	.value	0x400
	.uleb128 0x17
	.long	.LASF209
	.value	0x800
	.uleb128 0x17
	.long	.LASF210
	.value	0x1000
	.uleb128 0x17
	.long	.LASF211
	.value	0x2000
	.uleb128 0x17
	.long	.LASF212
	.value	0x4000
	.uleb128 0x17
	.long	.LASF213
	.value	0x8000
	.uleb128 0x18
	.long	.LASF214
	.long	0x10000
	.uleb128 0x18
	.long	.LASF215
	.long	0x20000
	.uleb128 0x18
	.long	.LASF216
	.long	0x40000
	.uleb128 0x18
	.long	.LASF217
	.long	0x80000
	.uleb128 0x18
	.long	.LASF218
	.long	0x100000
	.uleb128 0x18
	.long	.LASF219
	.long	0x200000
	.byte	0
	.uleb128 0x6
	.long	0x9d
	.uleb128 0xc
	.long	.LASF220
	.byte	0xc
	.byte	0x15
	.byte	0x14
	.long	0xade
	.uleb128 0x12
	.long	.LASF221
	.byte	0x15
	.byte	0x17
	.long	0xa8
	.byte	0
	.uleb128 0x12
	.long	.LASF222
	.byte	0x15
	.byte	0x18
	.long	0xa8
	.byte	0x2
	.uleb128 0x12
	.long	.LASF223
	.byte	0x15
	.byte	0x19
	.long	0xa8
	.byte	0x4
	.uleb128 0x12
	.long	.LASF224
	.byte	0x15
	.byte	0x1a
	.long	0xa8
	.byte	0x6
	.uleb128 0x12
	.long	.LASF225
	.byte	0x15
	.byte	0x1c
	.long	0xa8
	.byte	0x8
	.uleb128 0x12
	.long	.LASF226
	.byte	0x15
	.byte	0x1d
	.long	0xa8
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF227
	.byte	0x15
	.byte	0x1e
	.long	0xa89
	.uleb128 0x8
	.byte	0x4
	.long	0x3e
	.byte	0x16
	.byte	0x19
	.long	0xb02
	.uleb128 0x9
	.long	.LASF228
	.byte	0
	.uleb128 0x9
	.long	.LASF229
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF230
	.byte	0x16
	.byte	0x1c
	.long	0xae9
	.uleb128 0x8
	.byte	0x4
	.long	0x3e
	.byte	0x16
	.byte	0x20
	.long	0xb38
	.uleb128 0x9
	.long	.LASF231
	.byte	0
	.uleb128 0x9
	.long	.LASF232
	.byte	0x1
	.uleb128 0x9
	.long	.LASF233
	.byte	0x2
	.uleb128 0x9
	.long	.LASF234
	.byte	0x3
	.uleb128 0x9
	.long	.LASF235
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF236
	.byte	0x16
	.byte	0x26
	.long	0xb0d
	.uleb128 0x8
	.byte	0x4
	.long	0x3e
	.byte	0x16
	.byte	0x32
	.long	0xb5c
	.uleb128 0x9
	.long	.LASF237
	.byte	0
	.uleb128 0x9
	.long	.LASF238
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF239
	.byte	0x16
	.byte	0x35
	.long	0xb43
	.uleb128 0x8
	.byte	0x4
	.long	0x3e
	.byte	0x16
	.byte	0x37
	.long	0xb80
	.uleb128 0x9
	.long	.LASF240
	.byte	0
	.uleb128 0x9
	.long	.LASF241
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF242
	.byte	0x16
	.byte	0x3a
	.long	0xb67
	.uleb128 0xc
	.long	.LASF243
	.byte	0x10
	.byte	0x16
	.byte	0x3e
	.long	0xbc8
	.uleb128 0x12
	.long	.LASF244
	.byte	0x16
	.byte	0x3f
	.long	0xb02
	.byte	0
	.uleb128 0x12
	.long	.LASF245
	.byte	0x16
	.byte	0x40
	.long	0xb38
	.byte	0x4
	.uleb128 0x12
	.long	.LASF246
	.byte	0x16
	.byte	0x41
	.long	0xb5c
	.byte	0x8
	.uleb128 0x12
	.long	.LASF247
	.byte	0x16
	.byte	0x42
	.long	0xb80
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.long	.LASF248
	.byte	0x16
	.byte	0x43
	.long	0xb8b
	.uleb128 0xc
	.long	.LASF249
	.byte	0x1
	.byte	0x17
	.byte	0x1b
	.long	0xbec
	.uleb128 0x12
	.long	.LASF82
	.byte	0x17
	.byte	0x1c
	.long	0x9d
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF250
	.byte	0x17
	.byte	0x1d
	.long	0xbd3
	.uleb128 0x8
	.byte	0x4
	.long	0x53
	.byte	0x18
	.byte	0x36
	.long	0xc40
	.uleb128 0x19
	.long	.LASF251
	.sleb128 -1
	.uleb128 0x9
	.long	.LASF252
	.byte	0
	.uleb128 0x9
	.long	.LASF253
	.byte	0x1
	.uleb128 0x9
	.long	.LASF254
	.byte	0x2
	.uleb128 0x9
	.long	.LASF255
	.byte	0x3
	.uleb128 0x9
	.long	.LASF256
	.byte	0x4
	.uleb128 0x9
	.long	.LASF257
	.byte	0x14
	.uleb128 0x9
	.long	.LASF258
	.byte	0x1e
	.uleb128 0x9
	.long	.LASF259
	.byte	0x1f
	.uleb128 0x9
	.long	.LASF260
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.long	.LASF261
	.byte	0x18
	.byte	0x41
	.long	0xbf7
	.uleb128 0xc
	.long	.LASF262
	.byte	0xc
	.byte	0x18
	.byte	0x5a
	.long	0xc7c
	.uleb128 0x12
	.long	.LASF263
	.byte	0x18
	.byte	0x5b
	.long	0xc40
	.byte	0
	.uleb128 0x12
	.long	.LASF264
	.byte	0x18
	.byte	0x5c
	.long	0xa8
	.byte	0x4
	.uleb128 0x12
	.long	.LASF265
	.byte	0x18
	.byte	0x5d
	.long	0xc7c
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.long	0x9d
	.long	0xc8c
	.uleb128 0xb
	.long	0x61
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF266
	.byte	0x18
	.byte	0x5e
	.long	0xc4b
	.uleb128 0xc
	.long	.LASF267
	.byte	0x1c
	.byte	0x18
	.byte	0x60
	.long	0xcbc
	.uleb128 0x12
	.long	.LASF268
	.byte	0x18
	.byte	0x61
	.long	0x9d
	.byte	0
	.uleb128 0x12
	.long	.LASF269
	.byte	0x18
	.byte	0x62
	.long	0xcbc
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.long	0xc8c
	.long	0xccc
	.uleb128 0xb
	.long	0x61
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF270
	.byte	0x18
	.byte	0x63
	.long	0xc97
	.uleb128 0xc
	.long	.LASF271
	.byte	0x6
	.byte	0x19
	.byte	0x76
	.long	0xcf0
	.uleb128 0x12
	.long	.LASF272
	.byte	0x19
	.byte	0x77
	.long	0xcf0
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x9d
	.long	0xd00
	.uleb128 0xb
	.long	0x61
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.long	.LASF273
	.byte	0x19
	.byte	0x78
	.long	0xcd7
	.uleb128 0xc
	.long	.LASF274
	.byte	0xb
	.byte	0x19
	.byte	0x7a
	.long	0xd24
	.uleb128 0x12
	.long	.LASF272
	.byte	0x19
	.byte	0x7b
	.long	0xd24
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x9d
	.long	0xd34
	.uleb128 0xb
	.long	0x61
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF275
	.byte	0x19
	.byte	0x7c
	.long	0xd0b
	.uleb128 0x7
	.long	.LASF276
	.byte	0x19
	.byte	0x7e
	.long	0xb3
	.uleb128 0xc
	.long	.LASF277
	.byte	0x6
	.byte	0x1a
	.byte	0x14
	.long	0xd63
	.uleb128 0x12
	.long	.LASF278
	.byte	0x1a
	.byte	0x15
	.long	0xcf0
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF279
	.byte	0x1a
	.byte	0x16
	.long	0xd4a
	.uleb128 0xc
	.long	.LASF280
	.byte	0x3
	.byte	0x1b
	.byte	0x1e
	.long	0xd9f
	.uleb128 0x12
	.long	.LASF281
	.byte	0x1b
	.byte	0x1f
	.long	0x9d
	.byte	0
	.uleb128 0x12
	.long	.LASF282
	.byte	0x1b
	.byte	0x20
	.long	0x9d
	.byte	0x1
	.uleb128 0x12
	.long	.LASF283
	.byte	0x1b
	.byte	0x21
	.long	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF284
	.byte	0x1b
	.byte	0x22
	.long	0xd6e
	.uleb128 0xc
	.long	.LASF285
	.byte	0x6
	.byte	0x1c
	.byte	0x14
	.long	0xddb
	.uleb128 0x12
	.long	.LASF286
	.byte	0x1c
	.byte	0x15
	.long	0x87
	.byte	0
	.uleb128 0x12
	.long	.LASF287
	.byte	0x1c
	.byte	0x16
	.long	0x87
	.byte	0x2
	.uleb128 0x12
	.long	.LASF288
	.byte	0x1c
	.byte	0x17
	.long	0x87
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF289
	.byte	0x1c
	.byte	0x18
	.long	0xdaa
	.uleb128 0x8
	.byte	0x4
	.long	0x3e
	.byte	0x1d
	.byte	0x15
	.long	0xe0b
	.uleb128 0x9
	.long	.LASF290
	.byte	0
	.uleb128 0x9
	.long	.LASF291
	.byte	0x1
	.uleb128 0x9
	.long	.LASF292
	.byte	0x2
	.uleb128 0x9
	.long	.LASF293
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	.LASF294
	.byte	0x6
	.byte	0x1d
	.byte	0x20
	.long	0xe3c
	.uleb128 0x12
	.long	.LASF295
	.byte	0x1d
	.byte	0x21
	.long	0x87
	.byte	0
	.uleb128 0x12
	.long	.LASF296
	.byte	0x1d
	.byte	0x22
	.long	0x87
	.byte	0x2
	.uleb128 0xd
	.string	"yaw"
	.byte	0x1d
	.byte	0x23
	.long	0x87
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF297
	.byte	0x1d
	.byte	0x24
	.long	0xe0b
	.uleb128 0x1a
	.long	.LASF349
	.byte	0x6
	.byte	0x1d
	.byte	0x26
	.long	0xe6a
	.uleb128 0x11
	.string	"raw"
	.byte	0x1d
	.byte	0x27
	.long	0xe6a
	.uleb128 0x1b
	.long	.LASF298
	.byte	0x1d
	.byte	0x28
	.long	0xe3c
	.byte	0
	.uleb128 0xa
	.long	0x87
	.long	0xe7a
	.uleb128 0xb
	.long	0x61
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF299
	.byte	0x1d
	.byte	0x29
	.long	0xe47
	.uleb128 0x8
	.byte	0x4
	.long	0x3e
	.byte	0x1d
	.byte	0x2f
	.long	0xebc
	.uleb128 0x9
	.long	.LASF300
	.byte	0x1
	.uleb128 0x9
	.long	.LASF301
	.byte	0x2
	.uleb128 0x9
	.long	.LASF302
	.byte	0x4
	.uleb128 0x9
	.long	.LASF303
	.byte	0x8
	.uleb128 0x9
	.long	.LASF304
	.byte	0x10
	.uleb128 0x9
	.long	.LASF305
	.byte	0x20
	.uleb128 0x9
	.long	.LASF306
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x3e
	.byte	0x1d
	.byte	0x39
	.long	0xeff
	.uleb128 0x9
	.long	.LASF307
	.byte	0
	.uleb128 0x9
	.long	.LASF308
	.byte	0x1
	.uleb128 0x9
	.long	.LASF309
	.byte	0x2
	.uleb128 0x9
	.long	.LASF310
	.byte	0x3
	.uleb128 0x9
	.long	.LASF311
	.byte	0x4
	.uleb128 0x9
	.long	.LASF312
	.byte	0x5
	.uleb128 0x9
	.long	.LASF313
	.byte	0x6
	.uleb128 0x9
	.long	.LASF314
	.byte	0x7
	.uleb128 0x9
	.long	.LASF315
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF316
	.byte	0x1d
	.byte	0x43
	.long	0xebc
	.uleb128 0xc
	.long	.LASF317
	.byte	0xc
	.byte	0x1d
	.byte	0x45
	.long	0xf3b
	.uleb128 0x12
	.long	.LASF318
	.byte	0x1d
	.byte	0x46
	.long	0xeff
	.byte	0
	.uleb128 0x12
	.long	.LASF319
	.byte	0x1d
	.byte	0x47
	.long	0xeff
	.byte	0x4
	.uleb128 0x12
	.long	.LASF320
	.byte	0x1d
	.byte	0x48
	.long	0xeff
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF321
	.byte	0x1d
	.byte	0x49
	.long	0xf0a
	.uleb128 0xc
	.long	.LASF322
	.byte	0x3
	.byte	0x1d
	.byte	0x4b
	.long	0xf77
	.uleb128 0x12
	.long	.LASF323
	.byte	0x1d
	.byte	0x4c
	.long	0x9d
	.byte	0
	.uleb128 0x12
	.long	.LASF324
	.byte	0x1d
	.byte	0x4d
	.long	0x9d
	.byte	0x1
	.uleb128 0x12
	.long	.LASF325
	.byte	0x1d
	.byte	0x4e
	.long	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF326
	.byte	0x1d
	.byte	0x4f
	.long	0xf46
	.uleb128 0xc
	.long	.LASF327
	.byte	0xc
	.byte	0x1d
	.byte	0x51
	.long	0xfa7
	.uleb128 0x12
	.long	.LASF328
	.byte	0x1d
	.byte	0x52
	.long	0xe7a
	.byte	0
	.uleb128 0x12
	.long	.LASF329
	.byte	0x1d
	.byte	0x53
	.long	0xe7a
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.long	.LASF330
	.byte	0x1d
	.byte	0x54
	.long	0xf82
	.uleb128 0xc
	.long	.LASF331
	.byte	0x4
	.byte	0x1e
	.byte	0x18
	.long	0xfd7
	.uleb128 0x12
	.long	.LASF332
	.byte	0x1e
	.byte	0x19
	.long	0x87
	.byte	0
	.uleb128 0x12
	.long	.LASF333
	.byte	0x1e
	.byte	0x1a
	.long	0xa8
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF334
	.byte	0x1e
	.byte	0x1b
	.long	0xfb2
	.uleb128 0xc
	.long	.LASF335
	.byte	0x3
	.byte	0x1f
	.byte	0x20
	.long	0x1013
	.uleb128 0x12
	.long	.LASF336
	.byte	0x1f
	.byte	0x21
	.long	0x9d
	.byte	0
	.uleb128 0x12
	.long	.LASF337
	.byte	0x1f
	.byte	0x22
	.long	0x9d
	.byte	0x1
	.uleb128 0x12
	.long	.LASF338
	.byte	0x1f
	.byte	0x23
	.long	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF339
	.byte	0x1f
	.byte	0x24
	.long	0xfe2
	.uleb128 0xc
	.long	.LASF340
	.byte	0x8
	.byte	0x20
	.byte	0x14
	.long	0x1067
	.uleb128 0x12
	.long	.LASF341
	.byte	0x20
	.byte	0x15
	.long	0x9d
	.byte	0
	.uleb128 0x12
	.long	.LASF342
	.byte	0x20
	.byte	0x16
	.long	0x9d
	.byte	0x1
	.uleb128 0x12
	.long	.LASF343
	.byte	0x20
	.byte	0x17
	.long	0x9d
	.byte	0x2
	.uleb128 0x12
	.long	.LASF344
	.byte	0x20
	.byte	0x18
	.long	0xa8
	.byte	0x4
	.uleb128 0x12
	.long	.LASF345
	.byte	0x20
	.byte	0x19
	.long	0x9d
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.long	.LASF346
	.byte	0x20
	.byte	0x1a
	.long	0x101e
	.uleb128 0xc
	.long	.LASF347
	.byte	0x4
	.byte	0x21
	.byte	0x2b
	.long	0x1097
	.uleb128 0x12
	.long	.LASF295
	.byte	0x21
	.byte	0x2c
	.long	0x87
	.byte	0
	.uleb128 0x12
	.long	.LASF296
	.byte	0x21
	.byte	0x2d
	.long	0x87
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF348
	.byte	0x21
	.byte	0x2e
	.long	0x1072
	.uleb128 0x1a
	.long	.LASF350
	.byte	0x4
	.byte	0x21
	.byte	0x30
	.long	0x10c5
	.uleb128 0x11
	.string	"raw"
	.byte	0x21
	.byte	0x31
	.long	0x10c5
	.uleb128 0x1b
	.long	.LASF298
	.byte	0x21
	.byte	0x32
	.long	0x1097
	.byte	0
	.uleb128 0xa
	.long	0x87
	.long	0x10d5
	.uleb128 0xb
	.long	0x61
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF351
	.byte	0x21
	.byte	0x33
	.long	0x10a2
	.uleb128 0xc
	.long	.LASF352
	.byte	0x2
	.byte	0x21
	.byte	0x35
	.long	0x1102
	.uleb128 0xd
	.string	"xy"
	.byte	0x21
	.byte	0x36
	.long	0x9d
	.byte	0
	.uleb128 0xd
	.string	"z"
	.byte	0x21
	.byte	0x37
	.long	0x9d
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF353
	.byte	0x21
	.byte	0x38
	.long	0x10e0
	.uleb128 0xc
	.long	.LASF354
	.byte	0x10
	.byte	0x21
	.byte	0x3a
	.long	0x1156
	.uleb128 0x12
	.long	.LASF355
	.byte	0x21
	.byte	0x3b
	.long	0x10d5
	.byte	0
	.uleb128 0x12
	.long	.LASF356
	.byte	0x21
	.byte	0x3e
	.long	0x9d
	.byte	0x4
	.uleb128 0x12
	.long	.LASF357
	.byte	0x21
	.byte	0x3f
	.long	0xcc
	.byte	0x8
	.uleb128 0x12
	.long	.LASF358
	.byte	0x21
	.byte	0x40
	.long	0x1102
	.byte	0xc
	.uleb128 0x12
	.long	.LASF359
	.byte	0x21
	.byte	0x41
	.long	0x9d
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.long	.LASF360
	.byte	0x21
	.byte	0x42
	.long	0x110d
	.uleb128 0xc
	.long	.LASF361
	.byte	0x2
	.byte	0x22
	.byte	0x20
	.long	0x117a
	.uleb128 0x12
	.long	.LASF362
	.byte	0x22
	.byte	0x21
	.long	0x87
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF363
	.byte	0x22
	.byte	0x23
	.long	0x1161
	.uleb128 0xc
	.long	.LASF364
	.byte	0x4
	.byte	0x23
	.byte	0x25
	.long	0x11b6
	.uleb128 0x12
	.long	.LASF365
	.byte	0x23
	.byte	0x26
	.long	0x9d
	.byte	0
	.uleb128 0x12
	.long	.LASF366
	.byte	0x23
	.byte	0x27
	.long	0x9d
	.byte	0x1
	.uleb128 0x12
	.long	.LASF367
	.byte	0x23
	.byte	0x28
	.long	0xa8
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF368
	.byte	0x23
	.byte	0x29
	.long	0x1185
	.uleb128 0x14
	.long	.LASF369
	.byte	0x4
	.long	0x3e
	.byte	0x1
	.byte	0x22
	.long	0x1268
	.uleb128 0x9
	.long	.LASF370
	.byte	0x1
	.uleb128 0x9
	.long	.LASF371
	.byte	0x2
	.uleb128 0x9
	.long	.LASF372
	.byte	0x3
	.uleb128 0x9
	.long	.LASF373
	.byte	0x4
	.uleb128 0x9
	.long	.LASF374
	.byte	0x5
	.uleb128 0x9
	.long	.LASF375
	.byte	0x6
	.uleb128 0x9
	.long	.LASF376
	.byte	0x7
	.uleb128 0x9
	.long	.LASF377
	.byte	0x8
	.uleb128 0x9
	.long	.LASF378
	.byte	0x9
	.uleb128 0x9
	.long	.LASF379
	.byte	0xa
	.uleb128 0x9
	.long	.LASF380
	.byte	0xb
	.uleb128 0x9
	.long	.LASF381
	.byte	0xc
	.uleb128 0x9
	.long	.LASF382
	.byte	0xd
	.uleb128 0x9
	.long	.LASF383
	.byte	0xe
	.uleb128 0x9
	.long	.LASF384
	.byte	0xf
	.uleb128 0x9
	.long	.LASF385
	.byte	0x10
	.uleb128 0x9
	.long	.LASF386
	.byte	0x11
	.uleb128 0x9
	.long	.LASF387
	.byte	0x12
	.uleb128 0x9
	.long	.LASF388
	.byte	0x13
	.uleb128 0x9
	.long	.LASF389
	.byte	0x14
	.uleb128 0x9
	.long	.LASF390
	.byte	0x15
	.uleb128 0x9
	.long	.LASF391
	.byte	0x16
	.uleb128 0x9
	.long	.LASF392
	.byte	0x17
	.uleb128 0x9
	.long	.LASF393
	.byte	0x18
	.uleb128 0x9
	.long	.LASF394
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.long	.LASF395
	.byte	0x10
	.byte	0x1
	.byte	0x40
	.long	0x12a5
	.uleb128 0x12
	.long	.LASF396
	.byte	0x1
	.byte	0x41
	.long	0xcc
	.byte	0
	.uleb128 0x12
	.long	.LASF295
	.byte	0x1
	.byte	0x42
	.long	0xcc
	.byte	0x4
	.uleb128 0x12
	.long	.LASF296
	.byte	0x1
	.byte	0x43
	.long	0xcc
	.byte	0x8
	.uleb128 0xd
	.string	"yaw"
	.byte	0x1
	.byte	0x44
	.long	0xcc
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.long	.LASF397
	.byte	0x1
	.byte	0x45
	.long	0x1268
	.uleb128 0xc
	.long	.LASF398
	.byte	0x6
	.byte	0x1
	.byte	0x50
	.long	0x12ed
	.uleb128 0x12
	.long	.LASF369
	.byte	0x1
	.byte	0x51
	.long	0x9d
	.byte	0
	.uleb128 0x12
	.long	.LASF399
	.byte	0x1
	.byte	0x52
	.long	0x9d
	.byte	0x1
	.uleb128 0x12
	.long	.LASF400
	.byte	0x1
	.byte	0x53
	.long	0x7c
	.byte	0x2
	.uleb128 0x12
	.long	.LASF401
	.byte	0x1
	.byte	0x54
	.long	0xa8
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF402
	.byte	0x1
	.byte	0x5a
	.long	0x12b0
	.uleb128 0xc
	.long	.LASF403
	.byte	0x6
	.byte	0x1
	.byte	0x5e
	.long	0x1329
	.uleb128 0x12
	.long	.LASF404
	.byte	0x1
	.byte	0x5f
	.long	0xa8
	.byte	0
	.uleb128 0x12
	.long	.LASF405
	.byte	0x1
	.byte	0x60
	.long	0xa8
	.byte	0x2
	.uleb128 0x12
	.long	.LASF406
	.byte	0x1
	.byte	0x61
	.long	0xa8
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF407
	.byte	0x1
	.byte	0x62
	.long	0x12f8
	.uleb128 0x8
	.byte	0x4
	.long	0x3e
	.byte	0x24
	.byte	0x1c
	.long	0x139b
	.uleb128 0x9
	.long	.LASF408
	.byte	0
	.uleb128 0x9
	.long	.LASF409
	.byte	0x1
	.uleb128 0x9
	.long	.LASF410
	.byte	0x2
	.uleb128 0x9
	.long	.LASF411
	.byte	0x3
	.uleb128 0x9
	.long	.LASF412
	.byte	0x4
	.uleb128 0x9
	.long	.LASF413
	.byte	0x5
	.uleb128 0x9
	.long	.LASF414
	.byte	0x6
	.uleb128 0x9
	.long	.LASF415
	.byte	0x7
	.uleb128 0x9
	.long	.LASF416
	.byte	0x8
	.uleb128 0x9
	.long	.LASF417
	.byte	0x9
	.uleb128 0x9
	.long	.LASF418
	.byte	0xa
	.uleb128 0x9
	.long	.LASF419
	.byte	0xb
	.uleb128 0x9
	.long	.LASF420
	.byte	0xc
	.uleb128 0x9
	.long	.LASF421
	.byte	0xd
	.uleb128 0x9
	.long	.LASF422
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.long	.LASF423
	.byte	0x7
	.byte	0x24
	.byte	0x53
	.long	0x13fc
	.uleb128 0x12
	.long	.LASF424
	.byte	0x24
	.byte	0x54
	.long	0x9d
	.byte	0
	.uleb128 0x12
	.long	.LASF425
	.byte	0x24
	.byte	0x55
	.long	0x9d
	.byte	0x1
	.uleb128 0x12
	.long	.LASF426
	.byte	0x24
	.byte	0x56
	.long	0x7c
	.byte	0x2
	.uleb128 0x12
	.long	.LASF427
	.byte	0x24
	.byte	0x57
	.long	0x9d
	.byte	0x3
	.uleb128 0xd
	.string	"min"
	.byte	0x24
	.byte	0x58
	.long	0x7c
	.byte	0x4
	.uleb128 0xd
	.string	"max"
	.byte	0x24
	.byte	0x59
	.long	0x7c
	.byte	0x5
	.uleb128 0xd
	.string	"box"
	.byte	0x24
	.byte	0x5a
	.long	0x9d
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.long	.LASF428
	.byte	0x24
	.byte	0x5b
	.long	0x139b
	.uleb128 0xc
	.long	.LASF429
	.byte	0xe
	.byte	0x24
	.byte	0x69
	.long	0x1474
	.uleb128 0xd
	.string	"min"
	.byte	0x24
	.byte	0x6a
	.long	0x87
	.byte	0
	.uleb128 0xd
	.string	"max"
	.byte	0x24
	.byte	0x6b
	.long	0x87
	.byte	0x2
	.uleb128 0x12
	.long	.LASF430
	.byte	0x24
	.byte	0x6c
	.long	0x87
	.byte	0x4
	.uleb128 0x12
	.long	.LASF426
	.byte	0x24
	.byte	0x6d
	.long	0x7c
	.byte	0x6
	.uleb128 0x12
	.long	.LASF431
	.byte	0x24
	.byte	0x6e
	.long	0x9d
	.byte	0x7
	.uleb128 0x12
	.long	.LASF432
	.byte	0x24
	.byte	0x6f
	.long	0x9d
	.byte	0x8
	.uleb128 0x12
	.long	.LASF433
	.byte	0x24
	.byte	0x70
	.long	0x7c
	.byte	0x9
	.uleb128 0x12
	.long	.LASF434
	.byte	0x24
	.byte	0x71
	.long	0xb3
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF435
	.byte	0x24
	.byte	0x72
	.long	0x1407
	.uleb128 0xc
	.long	.LASF436
	.byte	0xe
	.byte	0x24
	.byte	0x74
	.long	0x1498
	.uleb128 0x12
	.long	.LASF437
	.byte	0x24
	.byte	0x75
	.long	0x1498
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x1474
	.long	0x14a8
	.uleb128 0xb
	.long	0x61
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF438
	.byte	0x24
	.byte	0x76
	.long	0x147f
	.uleb128 0x8
	.byte	0x4
	.long	0x3e
	.byte	0x25
	.byte	0x1c
	.long	0x1502
	.uleb128 0x9
	.long	.LASF439
	.byte	0
	.uleb128 0x9
	.long	.LASF440
	.byte	0x1
	.uleb128 0x9
	.long	.LASF441
	.byte	0x2
	.uleb128 0x9
	.long	.LASF442
	.byte	0x3
	.uleb128 0x9
	.long	.LASF443
	.byte	0x4
	.uleb128 0x9
	.long	.LASF444
	.byte	0x5
	.uleb128 0x9
	.long	.LASF445
	.byte	0x6
	.uleb128 0x9
	.long	.LASF446
	.byte	0x7
	.uleb128 0x9
	.long	.LASF447
	.byte	0x8
	.uleb128 0x9
	.long	.LASF448
	.byte	0x9
	.uleb128 0x9
	.long	.LASF449
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.long	.LASF450
	.byte	0x2a
	.byte	0x25
	.byte	0x3d
	.long	0x1584
	.uleb128 0xd
	.string	"P8"
	.byte	0x25
	.byte	0x3e
	.long	0x1584
	.byte	0
	.uleb128 0xd
	.string	"I8"
	.byte	0x25
	.byte	0x3f
	.long	0x1584
	.byte	0xa
	.uleb128 0xd
	.string	"D8"
	.byte	0x25
	.byte	0x40
	.long	0x1584
	.byte	0x14
	.uleb128 0x12
	.long	.LASF451
	.byte	0x25
	.byte	0x41
	.long	0x9d
	.byte	0x1e
	.uleb128 0x12
	.long	.LASF452
	.byte	0x25
	.byte	0x42
	.long	0xa8
	.byte	0x20
	.uleb128 0x12
	.long	.LASF453
	.byte	0x25
	.byte	0x43
	.long	0xa8
	.byte	0x22
	.uleb128 0x12
	.long	.LASF454
	.byte	0x25
	.byte	0x44
	.long	0xa8
	.byte	0x24
	.uleb128 0x12
	.long	.LASF455
	.byte	0x25
	.byte	0x45
	.long	0x9d
	.byte	0x26
	.uleb128 0x12
	.long	.LASF456
	.byte	0x25
	.byte	0x46
	.long	0x9d
	.byte	0x27
	.uleb128 0x12
	.long	.LASF457
	.byte	0x25
	.byte	0x47
	.long	0x9d
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.long	0x9d
	.long	0x1594
	.uleb128 0xb
	.long	0x61
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.long	.LASF458
	.byte	0x25
	.byte	0x48
	.long	0x1502
	.uleb128 0x1c
	.byte	0x6
	.byte	0x26
	.byte	0x25
	.long	0x15cc
	.uleb128 0x12
	.long	.LASF295
	.byte	0x26
	.byte	0x27
	.long	0x87
	.byte	0
	.uleb128 0x12
	.long	.LASF296
	.byte	0x26
	.byte	0x28
	.long	0x87
	.byte	0x2
	.uleb128 0xd
	.string	"yaw"
	.byte	0x26
	.byte	0x29
	.long	0x87
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.byte	0x6
	.byte	0x26
	.byte	0x23
	.long	0x15eb
	.uleb128 0x11
	.string	"raw"
	.byte	0x26
	.byte	0x24
	.long	0xe6a
	.uleb128 0x1b
	.long	.LASF298
	.byte	0x26
	.byte	0x2a
	.long	0x159f
	.byte	0
	.uleb128 0x7
	.long	.LASF459
	.byte	0x26
	.byte	0x2b
	.long	0x15cc
	.uleb128 0xc
	.long	.LASF460
	.byte	0xc
	.byte	0x26
	.byte	0x2f
	.long	0x1657
	.uleb128 0x12
	.long	.LASF461
	.byte	0x26
	.byte	0x31
	.long	0xa8
	.byte	0
	.uleb128 0x12
	.long	.LASF462
	.byte	0x26
	.byte	0x32
	.long	0x9d
	.byte	0x2
	.uleb128 0x12
	.long	.LASF463
	.byte	0x26
	.byte	0x33
	.long	0x9d
	.byte	0x3
	.uleb128 0x12
	.long	.LASF464
	.byte	0x26
	.byte	0x34
	.long	0xa8
	.byte	0x4
	.uleb128 0x12
	.long	.LASF465
	.byte	0x26
	.byte	0x35
	.long	0xa8
	.byte	0x6
	.uleb128 0x12
	.long	.LASF466
	.byte	0x26
	.byte	0x36
	.long	0x9d
	.byte	0x8
	.uleb128 0x12
	.long	.LASF467
	.byte	0x26
	.byte	0x37
	.long	0xa8
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF468
	.byte	0x26
	.byte	0x38
	.long	0x15f6
	.uleb128 0xc
	.long	.LASF469
	.byte	0x4
	.byte	0x26
	.byte	0x3c
	.long	0x1687
	.uleb128 0x12
	.long	.LASF470
	.byte	0x26
	.byte	0x3d
	.long	0xa8
	.byte	0
	.uleb128 0x12
	.long	.LASF471
	.byte	0x26
	.byte	0x3e
	.long	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF472
	.byte	0x26
	.byte	0x3f
	.long	0x1662
	.uleb128 0xc
	.long	.LASF473
	.byte	0x8
	.byte	0x27
	.byte	0x1e
	.long	0x16e7
	.uleb128 0x12
	.long	.LASF474
	.byte	0x27
	.byte	0x1f
	.long	0x9d
	.byte	0
	.uleb128 0x12
	.long	.LASF475
	.byte	0x27
	.byte	0x20
	.long	0x9d
	.byte	0x1
	.uleb128 0x12
	.long	.LASF476
	.byte	0x27
	.byte	0x21
	.long	0xa8
	.byte	0x2
	.uleb128 0x12
	.long	.LASF477
	.byte	0x27
	.byte	0x22
	.long	0x9d
	.byte	0x4
	.uleb128 0x12
	.long	.LASF478
	.byte	0x27
	.byte	0x23
	.long	0xa8
	.byte	0x5
	.uleb128 0x12
	.long	.LASF479
	.byte	0x27
	.byte	0x24
	.long	0x9d
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.long	.LASF480
	.byte	0x27
	.byte	0x25
	.long	0x1692
	.uleb128 0xc
	.long	.LASF481
	.byte	0xc
	.byte	0x28
	.byte	0x1d
	.long	0x1753
	.uleb128 0x12
	.long	.LASF482
	.byte	0x28
	.byte	0x1e
	.long	0xa8
	.byte	0
	.uleb128 0x12
	.long	.LASF483
	.byte	0x28
	.byte	0x1f
	.long	0x9d
	.byte	0x2
	.uleb128 0x12
	.long	.LASF484
	.byte	0x28
	.byte	0x20
	.long	0x9d
	.byte	0x3
	.uleb128 0x12
	.long	.LASF485
	.byte	0x28
	.byte	0x21
	.long	0x9d
	.byte	0x4
	.uleb128 0x12
	.long	.LASF486
	.byte	0x28
	.byte	0x22
	.long	0xa8
	.byte	0x6
	.uleb128 0x12
	.long	.LASF487
	.byte	0x28
	.byte	0x23
	.long	0xa8
	.byte	0x8
	.uleb128 0x12
	.long	.LASF488
	.byte	0x28
	.byte	0x24
	.long	0xa8
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF489
	.byte	0x28
	.byte	0x25
	.long	0x16f2
	.uleb128 0xc
	.long	.LASF490
	.byte	0x1
	.byte	0x29
	.byte	0x1d
	.long	0x1777
	.uleb128 0x12
	.long	.LASF491
	.byte	0x29
	.byte	0x1e
	.long	0x7c
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF492
	.byte	0x29
	.byte	0x1f
	.long	0x175e
	.uleb128 0xc
	.long	.LASF493
	.byte	0x3
	.byte	0x2a
	.byte	0x16
	.long	0x17b3
	.uleb128 0x12
	.long	.LASF494
	.byte	0x2a
	.byte	0x17
	.long	0x9d
	.byte	0
	.uleb128 0x12
	.long	.LASF495
	.byte	0x2a
	.byte	0x18
	.long	0x9d
	.byte	0x1
	.uleb128 0x12
	.long	.LASF496
	.byte	0x2a
	.byte	0x19
	.long	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF497
	.byte	0x2a
	.byte	0x1a
	.long	0x1782
	.uleb128 0xc
	.long	.LASF498
	.byte	0x1
	.byte	0x2b
	.byte	0x12
	.long	0x17d7
	.uleb128 0x12
	.long	.LASF499
	.byte	0x2b
	.byte	0x13
	.long	0x9d
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF500
	.byte	0x2b
	.byte	0x14
	.long	0x17be
	.uleb128 0xc
	.long	.LASF501
	.byte	0x10
	.byte	0x2
	.byte	0x80
	.long	0x1813
	.uleb128 0x12
	.long	.LASF502
	.byte	0x2
	.byte	0x81
	.long	0x71
	.byte	0
	.uleb128 0x12
	.long	.LASF503
	.byte	0x2
	.byte	0x82
	.long	0xa84
	.byte	0x8
	.uleb128 0x12
	.long	.LASF504
	.byte	0x2
	.byte	0x83
	.long	0xa84
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.long	.LASF505
	.byte	0x2
	.byte	0x84
	.long	0x17e2
	.uleb128 0x1d
	.long	.LASF599
	.byte	0x1
	.byte	0x5c
	.long	0x183b
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.byte	0x8
	.long	0x12ed
	.uleb128 0x1e
	.long	.LASF507
	.byte	0x2
	.byte	0xe1
	.long	0x18af
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x18af
	.uleb128 0x1f
	.long	.LASF503
	.byte	0x2
	.byte	0xe1
	.long	0x9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x21
	.string	"i"
	.byte	0x2
	.byte	0xe3
	.long	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x22
	.long	.LASF506
	.byte	0x2
	.byte	0xe4
	.long	0x18af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x18b5
	.uleb128 0x6
	.long	0x1813
	.uleb128 0x1e
	.long	.LASF508
	.byte	0x2
	.byte	0xec
	.long	0x18af
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x1928
	.uleb128 0x1f
	.long	.LASF504
	.byte	0x2
	.byte	0xec
	.long	0x9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x21
	.string	"i"
	.byte	0x2
	.byte	0xee
	.long	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x22
	.long	.LASF506
	.byte	0x2
	.byte	0xef
	.long	0x18af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF510
	.byte	0x2
	.byte	0xf7
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x19a0
	.uleb128 0x1f
	.long	.LASF509
	.byte	0x2
	.byte	0xf7
	.long	0x19a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"dst"
	.byte	0x2
	.byte	0xf9
	.long	0x19a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x21
	.string	"i"
	.byte	0x2
	.byte	0xfa
	.long	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x21
	.string	"box"
	.byte	0x2
	.byte	0xfd
	.long	0x18af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x619
	.uleb128 0x5
	.byte	0x8
	.long	0x1ae
	.uleb128 0x24
	.long	.LASF511
	.byte	0x2
	.value	0x104
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a29
	.uleb128 0x25
	.long	.LASF509
	.byte	0x2
	.value	0x104
	.long	0x19a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"dst"
	.byte	0x2
	.value	0x106
	.long	0x19a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x107
	.long	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x26
	.string	"box"
	.byte	0x2
	.value	0x10a
	.long	0x18af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF512
	.byte	0x2
	.value	0x10f
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a78
	.uleb128 0x26
	.string	"ena"
	.byte	0x2
	.value	0x111
	.long	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x27
	.long	.LASF503
	.byte	0x2
	.value	0x169
	.long	0x77b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF513
	.byte	0x2
	.value	0x172
	.long	0xb3
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b63
	.uleb128 0x27
	.long	.LASF514
	.byte	0x2
	.value	0x178
	.long	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF515
	.byte	0x2
	.value	0x17b
	.long	0x1b78
	.uleb128 0x9
	.byte	0x3
	.quad	flightMode_boxId_map.8586
	.uleb128 0x27
	.long	.LASF516
	.byte	0x2
	.value	0x17c
	.long	0x9ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF517
	.byte	0x2
	.value	0x189
	.long	0x1b7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LASF518
	.byte	0x2
	.value	0x199
	.long	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LASF519
	.byte	0x2
	.value	0x19a
	.long	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x1b1e
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x17d
	.long	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x29
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x1b41
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x18c
	.long	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x20
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x27
	.long	.LASF503
	.byte	0x2
	.value	0x19b
	.long	0x77b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x1b73
	.long	0x1b73
	.uleb128 0xb
	.long	0x61
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.long	0x7c
	.uleb128 0x6
	.long	0x1b63
	.uleb128 0x6
	.long	0xb3
	.uleb128 0x24
	.long	.LASF520
	.byte	0x2
	.value	0x1a5
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bbf
	.uleb128 0x25
	.long	.LASF509
	.byte	0x2
	.value	0x1a5
	.long	0x19a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"dst"
	.byte	0x2
	.value	0x1a7
	.long	0x19a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF521
	.byte	0x2
	.value	0x1d5
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bfc
	.uleb128 0x25
	.long	.LASF509
	.byte	0x2
	.value	0x1d5
	.long	0x19a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"dst"
	.byte	0x2
	.value	0x1d7
	.long	0x19a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF600
	.byte	0x2
	.value	0x1f5
	.long	0x53
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d5b
	.uleb128 0x2b
	.string	"cmd"
	.byte	0x2
	.value	0x1f5
	.long	0x19a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.long	.LASF509
	.byte	0x2
	.value	0x1f5
	.long	0x19a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.string	"dst"
	.byte	0x2
	.value	0x1f7
	.long	0x19a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"src"
	.byte	0x2
	.value	0x1f8
	.long	0x19a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF522
	.byte	0x2
	.value	0x1fa
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.long	.LASF523
	.byte	0x2
	.value	0x1fa
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF524
	.byte	0x2
	.value	0x1fa
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.string	"n"
	.byte	0x2
	.value	0x1fc
	.long	0x53
	.uleb128 0x9
	.byte	0x3
	.quad	n.8623
	.uleb128 0x26
	.string	"len"
	.byte	0x2
	.value	0x1fe
	.long	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x1d3a
	.uleb128 0x27
	.long	.LASF525
	.byte	0x2
	.value	0x241
	.long	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x1cf5
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x243
	.long	0x3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x29
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x1d19
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x245
	.long	0x3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x20
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x247
	.long	0x3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x20
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x27f
	.long	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF601
	.byte	0x2
	.value	0x659
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF526
	.byte	0x2c
	.byte	0x14
	.long	0xb3
	.uleb128 0x9
	.byte	0x3
	.quad	enabledSensors
	.uleb128 0x22
	.long	.LASF527
	.byte	0x2
	.byte	0x7d
	.long	0x1d9f
	.uleb128 0x9
	.byte	0x3
	.quad	flightControllerIdentifier
	.uleb128 0x6
	.long	0x71
	.uleb128 0x22
	.long	.LASF528
	.byte	0x2
	.byte	0x7e
	.long	0x1d9f
	.uleb128 0x9
	.byte	0x3
	.quad	boardIdentifier
	.uleb128 0xa
	.long	0x18b5
	.long	0x1dc9
	.uleb128 0xb
	.long	0x61
	.byte	0x1b
	.byte	0
	.uleb128 0x22
	.long	.LASF529
	.byte	0x2
	.byte	0x86
	.long	0x1dde
	.uleb128 0x9
	.byte	0x3
	.quad	boxes
	.uleb128 0x6
	.long	0x1db9
	.uleb128 0x22
	.long	.LASF530
	.byte	0x2
	.byte	0xa7
	.long	0xb3
	.uleb128 0x9
	.byte	0x3
	.quad	activeBoxIds
	.uleb128 0xa
	.long	0x77
	.long	0x1e08
	.uleb128 0xb
	.long	0x61
	.byte	0x2f
	.byte	0
	.uleb128 0x22
	.long	.LASF531
	.byte	0x2
	.byte	0xac
	.long	0x1e1d
	.uleb128 0x9
	.byte	0x3
	.quad	pidnames
	.uleb128 0x6
	.long	0x1df8
	.uleb128 0x2d
	.long	.LASF532
	.byte	0x2d
	.byte	0xca
	.long	0xb3
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_0
	.uleb128 0x2d
	.long	.LASF533
	.byte	0x2d
	.byte	0xcb
	.long	0xb3
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_1
	.uleb128 0x2d
	.long	.LASF534
	.byte	0x2d
	.byte	0xcc
	.long	0xb3
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_2
	.uleb128 0x2d
	.long	.LASF535
	.byte	0x7
	.byte	0x43
	.long	0x1e76
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_start
	.uleb128 0x5
	.byte	0x8
	.long	0x252
	.uleb128 0x2d
	.long	.LASF536
	.byte	0x7
	.byte	0x44
	.long	0x1e76
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_end
	.uleb128 0x2d
	.long	.LASF537
	.byte	0x7
	.byte	0x47
	.long	0x1a8
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_start
	.uleb128 0x2d
	.long	.LASF538
	.byte	0x7
	.byte	0x48
	.long	0x1a8
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_end
	.uleb128 0x2d
	.long	.LASF539
	.byte	0x8
	.byte	0x18
	.long	0x1ed0
	.uleb128 0x9
	.byte	0x3
	.quad	featureConfig
	.uleb128 0x5
	.byte	0x8
	.long	0x276
	.uleb128 0x2d
	.long	.LASF540
	.byte	0x9
	.byte	0x1a
	.long	0x29a
	.uleb128 0x9
	.byte	0x3
	.quad	profileSelection_System
	.uleb128 0x2e
	.string	"imu"
	.byte	0x2f
	.byte	0x38
	.long	0x1f00
	.uleb128 0x9
	.byte	0x3
	.quad	imu
	.uleb128 0x5
	.byte	0x8
	.long	0x432
	.uleb128 0x2d
	.long	.LASF541
	.byte	0xe
	.byte	0x80
	.long	0x5dd
	.uleb128 0x9
	.byte	0x3
	.quad	rxConfig_System
	.uleb128 0xa
	.long	0x4e9
	.long	0x1f2b
	.uleb128 0xb
	.long	0x61
	.byte	0x11
	.byte	0
	.uleb128 0x2f
	.long	.LASF542
	.byte	0xe
	.byte	0x82
	.long	0x1f1b
	.uleb128 0xa
	.long	0x519
	.long	0x1f46
	.uleb128 0xb
	.long	0x61
	.byte	0x3
	.byte	0
	.uleb128 0x2f
	.long	.LASF543
	.byte	0xe
	.byte	0x83
	.long	0x1f36
	.uleb128 0xa
	.long	0x691
	.long	0x1f61
	.uleb128 0xb
	.long	0x61
	.byte	0x2
	.byte	0
	.uleb128 0x2f
	.long	.LASF544
	.byte	0x10
	.byte	0x20
	.long	0x1f51
	.uleb128 0x2f
	.long	.LASF545
	.byte	0x10
	.byte	0x28
	.long	0x1f77
	.uleb128 0x5
	.byte	0x8
	.long	0x6b5
	.uleb128 0x2f
	.long	.LASF546
	.byte	0x11
	.byte	0x86
	.long	0x1f88
	.uleb128 0x5
	.byte	0x8
	.long	0x81b
	.uleb128 0x2f
	.long	.LASF547
	.byte	0x11
	.byte	0x93
	.long	0x1f99
	.uleb128 0x5
	.byte	0x8
	.long	0x87b
	.uleb128 0x2d
	.long	.LASF548
	.byte	0x11
	.byte	0x9d
	.long	0x8c3
	.uleb128 0x9
	.byte	0x3
	.quad	armingConfig_System
	.uleb128 0x2f
	.long	.LASF549
	.byte	0x12
	.byte	0x7e
	.long	0x1fbf
	.uleb128 0x5
	.byte	0x8
	.long	0x94b
	.uleb128 0x2f
	.long	.LASF550
	.byte	0x13
	.byte	0x1b
	.long	0x9d
	.uleb128 0x2f
	.long	.LASF551
	.byte	0x13
	.byte	0x30
	.long	0xa8
	.uleb128 0x2f
	.long	.LASF552
	.byte	0x2e
	.byte	0x48
	.long	0xa8
	.uleb128 0x2d
	.long	.LASF553
	.byte	0x15
	.byte	0x20
	.long	0xade
	.uleb128 0x9
	.byte	0x3
	.quad	motorAndServoConfig_System
	.uleb128 0x2d
	.long	.LASF554
	.byte	0x16
	.byte	0x45
	.long	0xbc8
	.uleb128 0x9
	.byte	0x3
	.quad	gpsConfig_System
	.uleb128 0x2f
	.long	.LASF555
	.byte	0x17
	.byte	0x1f
	.long	0x201b
	.uleb128 0x5
	.byte	0x8
	.long	0xbec
	.uleb128 0x2d
	.long	.LASF556
	.byte	0x18
	.byte	0x65
	.long	0xccc
	.uleb128 0x9
	.byte	0x3
	.quad	serialConfig_System
	.uleb128 0xa
	.long	0xd3f
	.long	0x2046
	.uleb128 0xb
	.long	0x61
	.byte	0x1f
	.byte	0
	.uleb128 0x2f
	.long	.LASF557
	.byte	0x19
	.byte	0x95
	.long	0x2036
	.uleb128 0xa
	.long	0x178
	.long	0x2061
	.uleb128 0xb
	.long	0x61
	.byte	0xf
	.byte	0
	.uleb128 0x2f
	.long	.LASF558
	.byte	0x19
	.byte	0x96
	.long	0x2051
	.uleb128 0xa
	.long	0xd00
	.long	0x207c
	.uleb128 0xb
	.long	0x61
	.byte	0x5
	.byte	0
	.uleb128 0x2f
	.long	.LASF559
	.byte	0x19
	.byte	0x97
	.long	0x206c
	.uleb128 0x2d
	.long	.LASF560
	.byte	0x19
	.byte	0x98
	.long	0xd34
	.uleb128 0x9
	.byte	0x3
	.quad	specialColors_System
	.uleb128 0x2d
	.long	.LASF561
	.byte	0x1a
	.byte	0x18
	.long	0xd63
	.uleb128 0x9
	.byte	0x3
	.quad	transponderConfig_System
	.uleb128 0x2d
	.long	.LASF562
	.byte	0x1b
	.byte	0x24
	.long	0xd9f
	.uleb128 0x9
	.byte	0x3
	.quad	telemetryConfig_System
	.uleb128 0x2d
	.long	.LASF563
	.byte	0x1c
	.byte	0x1a
	.long	0xddb
	.uleb128 0x9
	.byte	0x3
	.quad	boardAlignment_System
	.uleb128 0x2d
	.long	.LASF564
	.byte	0x1d
	.byte	0x56
	.long	0xf77
	.uleb128 0x9
	.byte	0x3
	.quad	sensorSelectionConfig_System
	.uleb128 0x2d
	.long	.LASF565
	.byte	0x1d
	.byte	0x57
	.long	0xf3b
	.uleb128 0x9
	.byte	0x3
	.quad	sensorAlignmentConfig_System
	.uleb128 0x2d
	.long	.LASF566
	.byte	0x1d
	.byte	0x58
	.long	0xfa7
	.uleb128 0x9
	.byte	0x3
	.quad	sensorTrims_System
	.uleb128 0xa
	.long	0xfd7
	.long	0x212a
	.uleb128 0xb
	.long	0x61
	.byte	0x1
	.byte	0
	.uleb128 0x2f
	.long	.LASF567
	.byte	0x1e
	.byte	0x1d
	.long	0x211a
	.uleb128 0xa
	.long	0x1013
	.long	0x2145
	.uleb128 0xb
	.long	0x61
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF568
	.byte	0x1f
	.byte	0x26
	.long	0x2135
	.uleb128 0x2d
	.long	.LASF569
	.byte	0x20
	.byte	0x1c
	.long	0x1067
	.uleb128 0x9
	.byte	0x3
	.quad	batteryConfig_System
	.uleb128 0x30
	.string	"acc"
	.byte	0x21
	.byte	0x27
	.long	0x4b9
	.uleb128 0x2d
	.long	.LASF570
	.byte	0x21
	.byte	0x45
	.long	0x2185
	.uleb128 0x9
	.byte	0x3
	.quad	accelerometerConfig
	.uleb128 0x5
	.byte	0x8
	.long	0x1156
	.uleb128 0x2f
	.long	.LASF571
	.byte	0x22
	.byte	0x25
	.long	0x2196
	.uleb128 0x5
	.byte	0x8
	.long	0x117a
	.uleb128 0xa
	.long	0x92
	.long	0x21ac
	.uleb128 0xb
	.long	0x61
	.byte	0x2
	.byte	0
	.uleb128 0x2f
	.long	.LASF572
	.byte	0x22
	.byte	0x2e
	.long	0x219c
	.uleb128 0x2f
	.long	.LASF573
	.byte	0x23
	.byte	0x23
	.long	0x219c
	.uleb128 0x2d
	.long	.LASF574
	.byte	0x23
	.byte	0x2b
	.long	0x21d7
	.uleb128 0x9
	.byte	0x3
	.quad	gyroConfig
	.uleb128 0x5
	.byte	0x8
	.long	0x11b6
	.uleb128 0xa
	.long	0x12a5
	.long	0x21ed
	.uleb128 0xb
	.long	0x61
	.byte	0x3
	.byte	0
	.uleb128 0x2f
	.long	.LASF575
	.byte	0x1
	.byte	0x47
	.long	0x21dd
	.uleb128 0x2d
	.long	.LASF576
	.byte	0x1
	.byte	0x5c
	.long	0x12ed
	.uleb128 0x9
	.byte	0x3
	.quad	mixerConfig_System
	.uleb128 0x2d
	.long	.LASF577
	.byte	0x1
	.byte	0x64
	.long	0x1329
	.uleb128 0x9
	.byte	0x3
	.quad	motor3DConfig_System
	.uleb128 0x2d
	.long	.LASF578
	.byte	0x24
	.byte	0x2d
	.long	0x1334
	.uleb128 0x9
	.byte	0x3
	.quad	inputSource_e
	.uleb128 0xa
	.long	0x13fc
	.long	0x2247
	.uleb128 0xb
	.long	0x61
	.byte	0x1
	.byte	0
	.uleb128 0x2f
	.long	.LASF579
	.byte	0x24
	.byte	0x61
	.long	0x2237
	.uleb128 0x2f
	.long	.LASF580
	.byte	0x24
	.byte	0x78
	.long	0x225d
	.uleb128 0x5
	.byte	0x8
	.long	0x14a8
	.uleb128 0x2f
	.long	.LASF581
	.byte	0x25
	.byte	0x4a
	.long	0x226e
	.uleb128 0x5
	.byte	0x8
	.long	0x1594
	.uleb128 0x2f
	.long	.LASF582
	.byte	0x26
	.byte	0x1b
	.long	0xe6a
	.uleb128 0x2f
	.long	.LASF583
	.byte	0x26
	.byte	0x2d
	.long	0x15eb
	.uleb128 0x2d
	.long	.LASF584
	.byte	0x26
	.byte	0x3a
	.long	0x229f
	.uleb128 0x9
	.byte	0x3
	.quad	imuConfig
	.uleb128 0x5
	.byte	0x8
	.long	0x1657
	.uleb128 0x2d
	.long	.LASF585
	.byte	0x26
	.byte	0x41
	.long	0x22ba
	.uleb128 0x9
	.byte	0x3
	.quad	throttleCorrectionConfig
	.uleb128 0x5
	.byte	0x8
	.long	0x1687
	.uleb128 0x2d
	.long	.LASF586
	.byte	0x27
	.byte	0x49
	.long	0x16e7
	.uleb128 0x9
	.byte	0x3
	.quad	failsafeConfig_System
	.uleb128 0x2f
	.long	.LASF587
	.byte	0x28
	.byte	0x27
	.long	0x22e0
	.uleb128 0x5
	.byte	0x8
	.long	0x1753
	.uleb128 0x2d
	.long	.LASF588
	.byte	0x29
	.byte	0x21
	.long	0x1777
	.uleb128 0x9
	.byte	0x3
	.quad	airplaneConfig_System
	.uleb128 0x2d
	.long	.LASF589
	.byte	0x2a
	.byte	0x1c
	.long	0x17b3
	.uleb128 0x9
	.byte	0x3
	.quad	blackboxConfig_System
	.uleb128 0x2f
	.long	.LASF590
	.byte	0x30
	.byte	0x1f
	.long	0x1d9f
	.uleb128 0x2f
	.long	.LASF591
	.byte	0x30
	.byte	0x22
	.long	0x1d9f
	.uleb128 0x2f
	.long	.LASF592
	.byte	0x30
	.byte	0x25
	.long	0x1d9f
	.uleb128 0x2d
	.long	.LASF593
	.byte	0x2b
	.byte	0x16
	.long	0x17d7
	.uleb128 0x9
	.byte	0x3
	.quad	mspServerConfig_System
	.uleb128 0x2f
	.long	.LASF594
	.byte	0x2
	.byte	0x79
	.long	0xa8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0xcc
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LFB56
	.quad	.LFE56
	.quad	.LFB67
	.quad	.LFE67
	.quad	.LFB68
	.quad	.LFE68
	.quad	.LFB69
	.quad	.LFE69
	.quad	.LFB70
	.quad	.LFE70
	.quad	.LFB71
	.quad	.LFE71
	.quad	.LFB72
	.quad	.LFE72
	.quad	.LFB73
	.quad	.LFE73
	.quad	.LFB74
	.quad	.LFE74
	.quad	.LFB75
	.quad	.LFE75
	.quad	.LFB76
	.quad	.LFE76
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF171:
	.string	"auto_disarm_delay"
.LASF425:
	.string	"inputSource"
.LASF27:
	.string	"RGB_GREEN"
.LASF440:
	.string	"PIDPITCH"
.LASF500:
	.string	"mspServerConfig_t"
.LASF219:
	.string	"FEATURE_TRANSPONDER"
.LASF220:
	.string	"motorAndServoConfig_s"
.LASF227:
	.string	"motorAndServoConfig_t"
.LASF268:
	.string	"reboot_character"
.LASF192:
	.string	"UNUSED_MODE"
.LASF271:
	.string	"modeColorIndexes_s"
.LASF273:
	.string	"modeColorIndexes_t"
.LASF198:
	.string	"FEATURE_RX_PPM"
.LASF225:
	.string	"motor_pwm_rate"
.LASF324:
	.string	"mag_hardware"
.LASF535:
	.string	"__pg_registry_start"
.LASF424:
	.string	"targetChannel"
.LASF72:
	.string	"_Bool"
.LASF91:
	.string	"spektrum_sat_bind"
.LASF479:
	.string	"failsafe_procedure"
.LASF531:
	.string	"pidnames"
.LASF244:
	.string	"provider"
.LASF439:
	.string	"PIDROLL"
.LASF476:
	.string	"failsafe_throttle"
.LASF592:
	.string	"buildTime"
.LASF395:
	.string	"motorMixer_s"
.LASF397:
	.string	"motorMixer_t"
.LASF313:
	.string	"CW90_DEG_FLIP"
.LASF374:
	.string	"MIXER_GIMBAL"
.LASF170:
	.string	"disarm_kill_switch"
.LASF541:
	.string	"rxConfig_System"
.LASF315:
	.string	"CW270_DEG_FLIP"
.LASF455:
	.string	"deltaMethod"
.LASF166:
	.string	"deadband3d_throttle"
.LASF230:
	.string	"gpsProvider_e"
.LASF243:
	.string	"gpsConfig_s"
.LASF248:
	.string	"gpsConfig_t"
.LASF77:
	.string	"read"
.LASF239:
	.string	"gpsAutoConfig_e"
.LASF388:
	.string	"MIXER_PPM_TO_SERVO"
.LASF83:
	.string	"step"
.LASF546:
	.string	"modeActivationProfile_ProfileCurrent"
.LASF208:
	.string	"FEATURE_TELEMETRY"
.LASF28:
	.string	"RGB_BLUE"
.LASF13:
	.string	"uint16_t"
.LASF430:
	.string	"middle"
.LASF52:
	.string	"A_SCALE_2G"
.LASF355:
	.string	"accelerometerTrims"
.LASF57:
	.string	"mag_scale"
.LASF234:
	.string	"SBAS_MSAS"
.LASF466:
	.string	"small_angle"
.LASF277:
	.string	"transponderConfig_s"
.LASF279:
	.string	"transponderConfig_t"
.LASF418:
	.string	"INPUT_RC_AUX3"
.LASF598:
	.string	"_i2c"
.LASF538:
	.string	"__pg_resetdata_end"
.LASF162:
	.string	"yaw_deadband"
.LASF411:
	.string	"INPUT_STABILIZED_THROTTLE"
.LASF269:
	.string	"portConfigs"
.LASF420:
	.string	"INPUT_GIMBAL_PITCH"
.LASF105:
	.string	"controlRateConfig_s"
.LASF114:
	.string	"controlRateConfig_t"
.LASF574:
	.string	"gyroConfig"
.LASF139:
	.string	"BOXSONAR"
.LASF601:
	.string	"mspInit"
.LASF448:
	.string	"PIDVEL"
.LASF558:
	.string	"colors_SystemArray"
.LASF53:
	.string	"A_SCALE_4G"
.LASF81:
	.string	"rxFailsafeChannelConfiguration_s"
.LASF155:
	.string	"range"
.LASF384:
	.string	"MIXER_HELI_120_CCPM"
.LASF521:
	.string	"serializeDataflashSummaryReply"
.LASF11:
	.string	"int32_t"
.LASF264:
	.string	"functionMask"
.LASF148:
	.string	"channelRange_s"
.LASF151:
	.string	"channelRange_t"
.LASF596:
	.string	"src/main/fc/msp_server_fc.c"
.LASF543:
	.string	"channelRanges_SystemArray"
.LASF95:
	.string	"rcSmoothing"
.LASF576:
	.string	"mixerConfig_System"
.LASF238:
	.string	"GPS_AUTOCONFIG_ON"
.LASF54:
	.string	"A_SCALE_6G"
.LASF50:
	.string	"gyro_scale"
.LASF298:
	.string	"values"
.LASF122:
	.string	"BOXMAG"
.LASF61:
	.string	"M_SCALE_12GS"
.LASF376:
	.string	"MIXER_HEX6"
.LASF573:
	.string	"gyroADC"
.LASF109:
	.string	"thrExpo8"
.LASF233:
	.string	"SBAS_WAAS"
.LASF75:
	.string	"acc_s"
.LASF80:
	.string	"acc_t"
.LASF206:
	.string	"FEATURE_FAILSAFE"
.LASF241:
	.string	"GPS_AUTOBAUD_ON"
.LASF242:
	.string	"gpsAutoBaud_e"
.LASF87:
	.string	"rxConfig_s"
.LASF101:
	.string	"rxConfig_t"
.LASF62:
	.string	"LSM9DS0"
.LASF396:
	.string	"throttle"
.LASF102:
	.string	"mspPacket_s"
.LASF104:
	.string	"mspPacket_t"
.LASF55:
	.string	"A_SCALE_8G"
.LASF120:
	.string	"BOXHORIZON"
.LASF159:
	.string	"modeActivationProfile_t"
.LASF150:
	.string	"endStep"
.LASF456:
	.string	"horizon_tilt_effect"
.LASF312:
	.string	"CW0_DEG_FLIP"
.LASF92:
	.string	"rssi_channel"
.LASF22:
	.string	"FD_INDEX_COUNT"
.LASF552:
	.string	"averageSystemLoadPercent"
.LASF475:
	.string	"failsafe_off_delay"
.LASF169:
	.string	"retarded_arm"
.LASF211:
	.string	"FEATURE_RX_PARALLEL_PWM"
.LASF302:
	.string	"SENSOR_BARO"
.LASF442:
	.string	"PIDALT"
.LASF133:
	.string	"BOXLLIGHTS"
.LASF583:
	.string	"attitude"
.LASF226:
	.string	"servo_pwm_rate"
.LASF452:
	.string	"yaw_p_limit"
.LASF207:
	.string	"FEATURE_SONAR"
.LASF580:
	.string	"servoProfile_ProfileCurrent"
.LASF394:
	.string	"MIXER_CUSTOM_TRI"
.LASF199:
	.string	"FEATURE_VBAT"
.LASF229:
	.string	"GPS_UBLOX"
.LASF375:
	.string	"MIXER_Y6"
.LASF406:
	.string	"neutral3d"
.LASF444:
	.string	"PIDPOSR"
.LASF197:
	.string	"flightModeFlags_e"
.LASF48:
	.string	"G_SCALE_500DPS"
.LASF559:
	.string	"modeColors_SystemArray"
.LASF432:
	.string	"angleAtMax"
.LASF49:
	.string	"G_SCALE_2000DPS"
.LASF260:
	.string	"SERIAL_PORT_IDENTIFIER_MAX"
.LASF600:
	.string	"mspServerCommandHandler"
.LASF90:
	.string	"sbus_inversion"
.LASF391:
	.string	"MIXER_ATAIL4"
.LASF383:
	.string	"MIXER_AIRPLANE"
.LASF308:
	.string	"CW0_DEG"
.LASF295:
	.string	"roll"
.LASF96:
	.string	"midrc"
.LASF297:
	.string	"flightDynamicsTrims_def_t"
.LASF518:
	.string	"mspBoxEnabledMask"
.LASF175:
	.string	"adjustmentFunction"
.LASF311:
	.string	"CW270_DEG"
.LASF366:
	.string	"gyro_lpf"
.LASF217:
	.string	"FEATURE_BLACKBOX"
.LASF512:
	.string	"initActiveBoxIds"
.LASF82:
	.string	"mode"
.LASF240:
	.string	"GPS_AUTOBAUD_OFF"
.LASF292:
	.string	"SENSOR_INDEX_BARO"
.LASF247:
	.string	"autoBaud"
.LASF291:
	.string	"SENSOR_INDEX_ACC"
.LASF305:
	.string	"SENSOR_GPS"
.LASF186:
	.string	"HORIZON_MODE"
.LASF1:
	.string	"unsigned char"
.LASF202:
	.string	"FEATURE_MOTOR_STOP"
.LASF201:
	.string	"FEATURE_RX_SERIAL"
.LASF523:
	.string	"attitude_pitch"
.LASF507:
	.string	"findBoxByBoxId"
.LASF174:
	.string	"adjustmentRange_s"
.LASF178:
	.string	"adjustmentRange_t"
.LASF112:
	.string	"rcYawExpo8"
.LASF318:
	.string	"gyro_align"
.LASF17:
	.string	"float"
.LASF341:
	.string	"vbatmaxcellvoltage"
.LASF118:
	.string	"BOXARM"
.LASF46:
	.string	"mraa_i2c_context"
.LASF56:
	.string	"A_SCALE_16G"
.LASF195:
	.string	"FAILSAFE_MODE"
.LASF97:
	.string	"mincheck"
.LASF451:
	.string	"pidController"
.LASF515:
	.string	"flightMode_boxId_map"
.LASF134:
	.string	"BOXCALIB"
.LASF35:
	.string	"pgRegistry_s"
.LASF39:
	.string	"pgRegistry_t"
.LASF60:
	.string	"M_SCALE_8GS"
.LASF204:
	.string	"FEATURE_SOFTSERIAL"
.LASF591:
	.string	"buildDate"
.LASF429:
	.string	"servoParam_s"
.LASF435:
	.string	"servoParam_t"
.LASF47:
	.string	"G_SCALE_245DPS"
.LASF307:
	.string	"ALIGN_DEFAULT"
.LASF130:
	.string	"BOXBEEPERON"
.LASF331:
	.string	"amperageMeterConfig_s"
.LASF334:
	.string	"amperageMeterConfig_t"
.LASF501:
	.string	"box_e"
.LASF98:
	.string	"maxcheck"
.LASF505:
	.string	"box_t"
.LASF76:
	.string	"init"
.LASF215:
	.string	"FEATURE_DISPLAY"
.LASF392:
	.string	"MIXER_CUSTOM"
.LASF274:
	.string	"specialColorIndexes_s"
.LASF235:
	.string	"SBAS_GAGAN"
.LASF228:
	.string	"GPS_NMEA"
.LASF51:
	.string	"accel_scale"
.LASF393:
	.string	"MIXER_CUSTOM_AIRPLANE"
.LASF593:
	.string	"mspServerConfig_System"
.LASF147:
	.string	"boxId_e"
.LASF140:
	.string	"BOXSERVO1"
.LASF141:
	.string	"BOXSERVO2"
.LASF142:
	.string	"BOXSERVO3"
.LASF113:
	.string	"tpa_breakpoint"
.LASF245:
	.string	"sbasMode"
.LASF280:
	.string	"telemetryConfig_s"
.LASF284:
	.string	"telemetryConfig_t"
.LASF441:
	.string	"PIDYAW"
.LASF356:
	.string	"acc_cut_hz"
.LASF187:
	.string	"MAG_MODE"
.LASF74:
	.string	"sensorAccInitFuncPtr"
.LASF520:
	.string	"serializeSDCardSummaryReply"
.LASF36:
	.string	"size"
.LASF188:
	.string	"BARO_MODE"
.LASF100:
	.string	"rx_max_usec"
.LASF390:
	.string	"MIXER_SINGLECOPTER"
.LASF194:
	.string	"SONAR_MODE"
.LASF509:
	.string	"reply"
.LASF34:
	.string	"pgResetFunc"
.LASF263:
	.string	"identifier"
.LASF12:
	.string	"uint8_t"
.LASF293:
	.string	"SENSOR_INDEX_MAG"
.LASF184:
	.string	"ARMED"
.LASF399:
	.string	"pid_at_min_throttle"
.LASF196:
	.string	"GTUNE_MODE"
.LASF380:
	.string	"MIXER_OCTOX8"
.LASF200:
	.string	"FEATURE_INFLIGHT_ACC_CAL"
.LASF529:
	.string	"boxes"
.LASF526:
	.string	"enabledSensors"
.LASF329:
	.string	"magZero"
.LASF252:
	.string	"SERIAL_PORT_UART1"
.LASF253:
	.string	"SERIAL_PORT_UART2"
.LASF254:
	.string	"SERIAL_PORT_UART3"
.LASF255:
	.string	"SERIAL_PORT_UART4"
.LASF256:
	.string	"SERIAL_PORT_UART5"
.LASF421:
	.string	"INPUT_GIMBAL_ROLL"
.LASF20:
	.string	"FD_PITCH"
.LASF180:
	.string	"adjustmentRanges"
.LASF415:
	.string	"INPUT_RC_THROTTLE"
.LASF597:
	.string	"/home/aravind/git/cleanflight"
.LASF533:
	.string	"U_ID_1"
.LASF569:
	.string	"batteryConfig_System"
.LASF371:
	.string	"MIXER_QUADP"
.LASF67:
	.string	"mScale"
.LASF93:
	.string	"rssi_scale"
.LASF487:
	.string	"nav_speed_max"
.LASF108:
	.string	"thrMid8"
.LASF433:
	.string	"forwardFromChannel"
.LASF568:
	.string	"voltageMeterConfig_SystemArray"
.LASF492:
	.string	"airplaneConfig_t"
.LASF485:
	.string	"nav_controls_heading"
.LASF370:
	.string	"MIXER_TRI"
.LASF571:
	.string	"compassConfig_ProfileCurrent"
.LASF304:
	.string	"SENSOR_SONAR"
.LASF218:
	.string	"FEATURE_CHANNEL_FORWARDING"
.LASF508:
	.string	"findBoxByPermenantId"
.LASF236:
	.string	"sbasMode_e"
.LASF413:
	.string	"INPUT_RC_PITCH"
.LASF276:
	.string	"ledConfig_t"
.LASF575:
	.string	"customMotorMixer_SystemArray"
.LASF301:
	.string	"SENSOR_ACC"
.LASF70:
	.string	"mRes"
.LASF37:
	.string	"address"
.LASF317:
	.string	"sensorAlignmentConfig_s"
.LASF321:
	.string	"sensorAlignmentConfig_t"
.LASF294:
	.string	"int16_flightDynamicsTrims_s"
.LASF454:
	.string	"yaw_lpf"
.LASF409:
	.string	"INPUT_STABILIZED_PITCH"
.LASF296:
	.string	"pitch"
.LASF281:
	.string	"telemetry_switch"
.LASF450:
	.string	"pidProfile_s"
.LASF458:
	.string	"pidProfile_t"
.LASF320:
	.string	"mag_align"
.LASF43:
	.string	"profileSelection_s"
.LASF45:
	.string	"profileSelection_t"
.LASF511:
	.string	"serializeBoxIdsReply"
.LASF550:
	.string	"armingFlags"
.LASF232:
	.string	"SBAS_EGNOS"
.LASF344:
	.string	"batteryCapacity"
.LASF153:
	.string	"modeId"
.LASF176:
	.string	"auxSwitchChannelIndex"
.LASF504:
	.string	"permanentId"
.LASF119:
	.string	"BOXANGLE"
.LASF286:
	.string	"rollDegrees"
.LASF473:
	.string	"failsafeConfig_s"
.LASF480:
	.string	"failsafeConfig_t"
.LASF335:
	.string	"voltageMeterConfig_s"
.LASF339:
	.string	"voltageMeterConfig_t"
.LASF246:
	.string	"autoConfig"
.LASF582:
	.string	"accSmooth"
.LASF345:
	.string	"amperageMeterSource"
.LASF25:
	.string	"ANGLE_INDEX_COUNT"
.LASF352:
	.string	"accDeadband_s"
.LASF299:
	.string	"flightDynamicsTrims_t"
.LASF349:
	.string	"flightDynamicsTrims_u"
.LASF103:
	.string	"result"
.LASF282:
	.string	"telemetry_inversion"
.LASF9:
	.string	"int8_t"
.LASF547:
	.string	"rcControlsConfig_ProfileCurrent"
.LASF221:
	.string	"minthrottle"
.LASF570:
	.string	"accelerometerConfig"
.LASF179:
	.string	"adjustmentProfile_s"
.LASF181:
	.string	"adjustmentProfile_t"
.LASF434:
	.string	"reversedSources"
.LASF561:
	.string	"transponderConfig_System"
.LASF530:
	.string	"activeBoxIds"
.LASF190:
	.string	"GPS_HOLD_MODE"
.LASF566:
	.string	"sensorTrims_System"
.LASF38:
	.string	"reset"
.LASF386:
	.string	"MIXER_VTAIL4"
.LASF470:
	.string	"throttle_correction_angle"
.LASF7:
	.string	"sizetype"
.LASF191:
	.string	"HEADFREE_MODE"
.LASF64:
	.string	"gyro"
.LASF410:
	.string	"INPUT_STABILIZED_YAW"
.LASF416:
	.string	"INPUT_RC_AUX1"
.LASF417:
	.string	"INPUT_RC_AUX2"
.LASF222:
	.string	"maxthrottle"
.LASF419:
	.string	"INPUT_RC_AUX4"
.LASF486:
	.string	"nav_speed_min"
.LASF10:
	.string	"int16_t"
.LASF2:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF152:
	.string	"modeActivationCondition_s"
.LASF156:
	.string	"modeActivationCondition_t"
.LASF408:
	.string	"INPUT_STABILIZED_ROLL"
.LASF68:
	.string	"gRes"
.LASF398:
	.string	"mixerConfig_s"
.LASF402:
	.string	"mixerConfig_t"
.LASF328:
	.string	"accZero"
.LASF517:
	.string	"rcModeCopyMask"
.LASF213:
	.string	"FEATURE_RSSI_ADC"
.LASF560:
	.string	"specialColors_System"
.LASF285:
	.string	"boardAlignment_s"
.LASF289:
	.string	"boardAlignment_t"
.LASF125:
	.string	"BOXCAMSTAB"
.LASF19:
	.string	"FD_ROLL"
.LASF79:
	.string	"revisionCode"
.LASF258:
	.string	"SERIAL_PORT_SOFTSERIAL1"
.LASF259:
	.string	"SERIAL_PORT_SOFTSERIAL2"
.LASF373:
	.string	"MIXER_BICOPTER"
.LASF145:
	.string	"BOXAIRMODE"
.LASF354:
	.string	"accelerometerConfig_s"
.LASF360:
	.string	"accelerometerConfig_t"
.LASF89:
	.string	"serialrx_provider"
.LASF157:
	.string	"modeActivationProfile_s"
.LASF595:
	.string	"GNU C99 5.4.1 20160904 -mtune=generic -march=x86-64 -g -std=gnu99 -ffunction-sections -fdata-sections -ffat-lto-objects -fstack-protector-strong"
.LASF358:
	.string	"accDeadband"
.LASF556:
	.string	"serialConfig_System"
.LASF584:
	.string	"imuConfig"
.LASF223:
	.string	"mincommand"
.LASF567:
	.string	"amperageMeterConfig_SystemArray"
.LASF123:
	.string	"BOXHEADFREE"
.LASF453:
	.string	"dterm_lpf"
.LASF182:
	.string	"OK_TO_ARM"
.LASF481:
	.string	"gpsProfile_s"
.LASF489:
	.string	"gpsProfile_t"
.LASF378:
	.string	"MIXER_Y4"
.LASF336:
	.string	"vbatscale"
.LASF144:
	.string	"BOXFAILSAFE"
.LASF549:
	.string	"adjustmentProfile_ProfileCurrent"
.LASF257:
	.string	"SERIAL_PORT_USB_VCP"
.LASF516:
	.string	"flightModeCopyMask"
.LASF327:
	.string	"sensorTrims_s"
.LASF330:
	.string	"sensorTrims_t"
.LASF431:
	.string	"angleAtMin"
.LASF21:
	.string	"FD_YAW"
.LASF6:
	.string	"long int"
.LASF65:
	.string	"gScale"
.LASF377:
	.string	"MIXER_FLYING_WING"
.LASF403:
	.string	"motor3DConfig_s"
.LASF407:
	.string	"motor3DConfig_t"
.LASF385:
	.string	"MIXER_HELI_90_DEG"
.LASF381:
	.string	"MIXER_OCTOFLATP"
.LASF554:
	.string	"gpsConfig_System"
.LASF525:
	.string	"scale_shift"
.LASF382:
	.string	"MIXER_OCTOFLATX"
.LASF41:
	.string	"enabledFeatures"
.LASF136:
	.string	"BOXOSD"
.LASF319:
	.string	"acc_align"
.LASF272:
	.string	"color"
.LASF306:
	.string	"SENSOR_GPSMAG"
.LASF524:
	.string	"attitude_yaw"
.LASF474:
	.string	"failsafe_delay"
.LASF587:
	.string	"gpsProfile_ProfileCurrent"
.LASF138:
	.string	"BOXGTUNE"
.LASF340:
	.string	"batteryConfig_s"
.LASF346:
	.string	"batteryConfig_t"
.LASF536:
	.string	"__pg_registry_end"
.LASF283:
	.string	"telemetry_send_cells"
.LASF323:
	.string	"acc_hardware"
.LASF14:
	.string	"uint32_t"
.LASF581:
	.string	"pidProfile_ProfileCurrent"
.LASF337:
	.string	"vbatresdivval"
.LASF586:
	.string	"failsafeConfig_System"
.LASF183:
	.string	"PREVENT_ARMING"
.LASF528:
	.string	"boardIdentifier"
.LASF496:
	.string	"device"
.LASF548:
	.string	"armingConfig_System"
.LASF545:
	.string	"rateProfileSelection_ProfileCurrent"
.LASF69:
	.string	"aRes"
.LASF128:
	.string	"BOXGPSHOLD"
.LASF462:
	.string	"gyroSync"
.LASF502:
	.string	"boxName"
.LASF168:
	.string	"armingConfig_s"
.LASF173:
	.string	"armingConfig_t"
.LASF143:
	.string	"BOXBLACKBOX"
.LASF0:
	.string	"long unsigned int"
.LASF124:
	.string	"BOXHEADADJ"
.LASF495:
	.string	"rate_denom"
.LASF364:
	.string	"gyroConfig_s"
.LASF368:
	.string	"gyroConfig_t"
.LASF127:
	.string	"BOXGPSHOME"
.LASF78:
	.string	"acc_1G"
.LASF555:
	.string	"gimbalConfig_ProfileCurrent"
.LASF216:
	.string	"FEATURE_ONESHOT125"
.LASF8:
	.string	"char"
.LASF443:
	.string	"PIDPOS"
.LASF423:
	.string	"servoMixer_s"
.LASF428:
	.string	"servoMixer_t"
.LASF107:
	.string	"rcExpo8"
.LASF58:
	.string	"M_SCALE_2GS"
.LASF490:
	.string	"airplaneConfig_s"
.LASF265:
	.string	"baudRates"
.LASF30:
	.string	"hsvColor_s"
.LASF29:
	.string	"hsvColor_t"
.LASF131:
	.string	"BOXLEDMAX"
.LASF367:
	.string	"soft_gyro_lpf_hz"
.LASF110:
	.string	"rates"
.LASF251:
	.string	"SERIAL_PORT_NONE"
.LASF94:
	.string	"rssi_ppm_invert"
.LASF237:
	.string	"GPS_AUTOCONFIG_OFF"
.LASF121:
	.string	"BOXBARO"
.LASF303:
	.string	"SENSOR_MAG"
.LASF116:
	.string	"defaultRateProfileIndex"
.LASF73:
	.string	"sensorReadFuncPtr"
.LASF553:
	.string	"motorAndServoConfig_System"
.LASF562:
	.string	"telemetryConfig_System"
.LASF314:
	.string	"CW180_DEG_FLIP"
.LASF599:
	.string	"mixerConfig"
.LASF491:
	.string	"fixedwing_althold_dir"
.LASF189:
	.string	"GPS_HOME_MODE"
.LASF203:
	.string	"FEATURE_SERVO_TILT"
.LASF231:
	.string	"SBAS_AUTO"
.LASF478:
	.string	"failsafe_throttle_low_delay"
.LASF84:
	.string	"rxFailsafeChannelConfig_t"
.LASF71:
	.string	"LSM9DS0_t"
.LASF185:
	.string	"ANGLE_MODE"
.LASF325:
	.string	"baro_hardware"
.LASF414:
	.string	"INPUT_RC_YAW"
.LASF522:
	.string	"attitude_roll"
.LASF353:
	.string	"accDeadband_t"
.LASF499:
	.string	"multiwiiCurrentMeterOutput"
.LASF422:
	.string	"INPUT_SOURCE_COUNT"
.LASF544:
	.string	"controlRateProfiles_SystemArray"
.LASF469:
	.string	"throttleCorrectionConfig_s"
.LASF472:
	.string	"throttleCorrectionConfig_t"
.LASF172:
	.string	"max_arm_angle"
.LASF249:
	.string	"gimbalConfig_s"
.LASF250:
	.string	"gimbalConfig_t"
.LASF309:
	.string	"CW90_DEG"
.LASF262:
	.string	"serialPortConfig_s"
.LASF266:
	.string	"serialPortConfig_t"
.LASF316:
	.string	"sensor_align_e"
.LASF537:
	.string	"__pg_resetdata_start"
.LASF348:
	.string	"rollAndPitchTrims_t_def"
.LASF565:
	.string	"sensorAlignmentConfig_System"
.LASF457:
	.string	"horizon_tilt_mode"
.LASF400:
	.string	"yaw_motor_direction"
.LASF488:
	.string	"ap_mode"
.LASF389:
	.string	"MIXER_DUALCOPTER"
.LASF137:
	.string	"BOXTELEMETRY"
.LASF539:
	.string	"featureConfig"
.LASF287:
	.string	"pitchDegrees"
.LASF447:
	.string	"PIDMAG"
.LASF40:
	.string	"featureConfig_s"
.LASF42:
	.string	"featureConfig_t"
.LASF18:
	.string	"double"
.LASF594:
	.string	"cycleTime"
.LASF589:
	.string	"blackboxConfig_System"
.LASF149:
	.string	"startStep"
.LASF44:
	.string	"current_profile_index"
.LASF212:
	.string	"FEATURE_RX_MSP"
.LASF205:
	.string	"FEATURE_GPS"
.LASF427:
	.string	"speed"
.LASF160:
	.string	"rcControlsConfig_s"
.LASF167:
	.string	"rcControlsConfig_t"
.LASF332:
	.string	"scale"
.LASF146:
	.string	"CHECKBOX_ITEM_COUNT"
.LASF135:
	.string	"BOXGOV"
.LASF163:
	.string	"alt_hold_deadband"
.LASF563:
	.string	"boardAlignment_System"
.LASF577:
	.string	"motor3DConfig_System"
.LASF278:
	.string	"data"
.LASF214:
	.string	"FEATURE_LED_STRIP"
.LASF437:
	.string	"servoConf"
.LASF343:
	.string	"vbatwarningcellvoltage"
.LASF85:
	.string	"rxChannelRangeConfiguration_s"
.LASF86:
	.string	"rxChannelRangeConfiguration_t"
.LASF111:
	.string	"dynThrPID"
.LASF361:
	.string	"compassConfig_s"
.LASF363:
	.string	"compassConfig_t"
.LASF261:
	.string	"serialPortIdentifier_e"
.LASF322:
	.string	"sensorSelectionConfig_s"
.LASF362:
	.string	"mag_declination"
.LASF506:
	.string	"candidate"
.LASF267:
	.string	"serialConfig_s"
.LASF270:
	.string	"serialConfig_t"
.LASF132:
	.string	"BOXLEDLOW"
.LASF471:
	.string	"throttle_correction_value"
.LASF551:
	.string	"flightModeFlags"
.LASF66:
	.string	"aScale"
.LASF482:
	.string	"gps_wp_radius"
.LASF369:
	.string	"mixerMode"
.LASF63:
	.string	"temperature"
.LASF405:
	.string	"deadband3d_high"
.LASF16:
	.string	"long long unsigned int"
.LASF333:
	.string	"offset"
.LASF365:
	.string	"gyroMovementCalibrationThreshold"
.LASF467:
	.string	"max_angle_inclination"
.LASF460:
	.string	"imuConfig_s"
.LASF468:
	.string	"imuConfig_t"
.LASF275:
	.string	"specialColorIndexes_t"
.LASF33:
	.string	"pgn_t"
.LASF31:
	.string	"sbuf_s"
.LASF32:
	.string	"sbuf_t"
.LASF465:
	.string	"dcm_ki"
.LASF464:
	.string	"dcm_kp"
.LASF347:
	.string	"rollAndPitchTrims_s"
.LASF351:
	.string	"rollAndPitchTrims_t"
.LASF350:
	.string	"rollAndPitchTrims_u"
.LASF387:
	.string	"MIXER_HEX6H"
.LASF557:
	.string	"ledConfigs_SystemArray"
.LASF379:
	.string	"MIXER_HEX6X"
.LASF23:
	.string	"AI_ROLL"
.LASF154:
	.string	"auxChannelIndex"
.LASF477:
	.string	"failsafe_kill_switch"
.LASF26:
	.string	"RGB_RED"
.LASF514:
	.string	"boxEnabledMask"
.LASF532:
	.string	"U_ID_0"
.LASF99:
	.string	"rx_min_usec"
.LASF534:
	.string	"U_ID_2"
.LASF59:
	.string	"M_SCALE_4GS"
.LASF519:
	.string	"mspBoxIdx"
.LASF106:
	.string	"rcRate8"
.LASF359:
	.string	"acc_unarmedcal"
.LASF177:
	.string	"adjustmentIndex"
.LASF483:
	.string	"gps_lpf"
.LASF115:
	.string	"rateProfileSelection_s"
.LASF117:
	.string	"rateProfileSelection_t"
.LASF401:
	.string	"yaw_jump_prevention_limit"
.LASF513:
	.string	"packFlightModeFlags"
.LASF15:
	.string	"long long int"
.LASF494:
	.string	"rate_num"
.LASF210:
	.string	"FEATURE_3D"
.LASF24:
	.string	"AI_PITCH"
.LASF461:
	.string	"looptime"
.LASF564:
	.string	"sensorSelectionConfig_System"
.LASF158:
	.string	"modeActivationConditions"
.LASF88:
	.string	"rcmap"
.LASF300:
	.string	"SENSOR_GYRO"
.LASF326:
	.string	"sensorSelectionConfig_t"
.LASF503:
	.string	"boxId"
.LASF445:
	.string	"PIDNAVR"
.LASF164:
	.string	"alt_hold_fast_change"
.LASF588:
	.string	"airplaneConfig_System"
.LASF463:
	.string	"gyroSyncDenominator"
.LASF579:
	.string	"customServoMixer_SystemArray"
.LASF459:
	.string	"attitudeEulerAngles_t"
.LASF449:
	.string	"PID_ITEM_COUNT"
.LASF288:
	.string	"yawDegrees"
.LASF338:
	.string	"vbatresdivmultiplier"
.LASF209:
	.string	"FEATURE_AMPERAGE_METER"
.LASF498:
	.string	"mspServerConfig_s"
.LASF357:
	.string	"accz_lpf_cutoff"
.LASF165:
	.string	"yaw_control_direction"
.LASF572:
	.string	"magADC"
.LASF542:
	.string	"failsafeChannelConfigs_SystemArray"
.LASF412:
	.string	"INPUT_RC_ROLL"
.LASF404:
	.string	"deadband3d_low"
.LASF3:
	.string	"unsigned int"
.LASF290:
	.string	"SENSOR_INDEX_GYRO"
.LASF493:
	.string	"blackboxConfig_s"
.LASF497:
	.string	"blackboxConfig_t"
.LASF129:
	.string	"BOXPASSTHRU"
.LASF510:
	.string	"serializeBoxNamesReply"
.LASF5:
	.string	"short int"
.LASF527:
	.string	"flightControllerIdentifier"
.LASF590:
	.string	"shortGitRevision"
.LASF161:
	.string	"deadband"
.LASF578:
	.string	"inputSource_e"
.LASF426:
	.string	"rate"
.LASF126:
	.string	"BOXCAMTRIG"
.LASF540:
	.string	"profileSelection_System"
.LASF224:
	.string	"servoCenterPulse"
.LASF193:
	.string	"PASSTHRU_MODE"
.LASF484:
	.string	"nav_slew_rate"
.LASF446:
	.string	"PIDLEVEL"
.LASF310:
	.string	"CW180_DEG"
.LASF372:
	.string	"MIXER_QUADX"
.LASF585:
	.string	"throttleCorrectionConfig"
.LASF436:
	.string	"servoProfile_s"
.LASF438:
	.string	"servoProfile_t"
.LASF342:
	.string	"vbatmincellvoltage"
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
