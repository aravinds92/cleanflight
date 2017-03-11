	.file	"io_serial.c"
# GNU C99 (Ubuntu 5.4.1-2ubuntu1~16.04) version 5.4.1 20160904 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.1 20160904, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed io_serial.i -mtune=generic -march=x86-64
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
	.comm	receiveLength,4,4
	.comm	serialConfig_System,28,16
	.section	.text.serialConfig,"ax",@progbits
	.type	serialConfig, @function
serialConfig:
.LFB8:
	.file 1 "./src/main/io/io_serial.h"
	.loc 1 101 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 101 0
	movl	$serialConfig_System, %eax	#, D.5788
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	serialConfig, .-serialConfig
	.section	.bss.serialPortUsageList,"aw",@nobits
	.align 32
	.type	serialPortUsageList, @object
	.size	serialPortUsageList, 48
serialPortUsageList:
	.zero	48
	.globl	serialPortIdentifiers
	.section	.rodata.serialPortIdentifiers,"a",@progbits
	.align 8
	.type	serialPortIdentifiers, @object
	.size	serialPortIdentifiers, 8
serialPortIdentifiers:
	.long	20
	.zero	4
	.section	.bss.serialPortCount,"aw",@nobits
	.type	serialPortCount, @object
	.size	serialPortCount, 1
serialPortCount:
	.zero	1
	.globl	baudRates
	.section	.rodata.baudRates,"a",@progbits
	.align 32
	.type	baudRates, @object
	.size	baudRates, 32
baudRates:
	.long	0
	.long	9600
	.long	19200
	.long	38400
	.long	57600
	.long	115200
	.long	230400
	.long	250000
	.section	.text.lookupBaudRateIndex,"ax",@progbits
	.globl	lookupBaudRateIndex
	.type	lookupBaudRateIndex, @function
lookupBaudRateIndex:
.LFB9:
	.file 2 "src/main/io/io_serial.c"
	.loc 2 95 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# baudRate, baudRate
	.loc 2 98 0
	movb	$0, -1(%rbp)	#, index
	jmp	.L4	#
.L7:
	.loc 2 99 0
	movzbl	-1(%rbp), %eax	# index, D.5790
	cltq
	movl	baudRates(,%rax,4), %eax	# baudRates, D.5791
	cmpl	-20(%rbp), %eax	# baudRate, D.5791
	jne	.L5	#,
	.loc 2 100 0
	movzbl	-1(%rbp), %eax	# index, D.5789
	jmp	.L6	#
.L5:
	.loc 2 98 0 discriminator 2
	movzbl	-1(%rbp), %eax	# index, D.5792
	addl	$1, %eax	#, tmp93
	movb	%al, -1(%rbp)	# tmp93, index
.L4:
	.loc 2 98 0 is_stmt 0 discriminator 1
	cmpb	$7, -1(%rbp)	#, index
	jbe	.L7	#,
	.loc 2 103 0 is_stmt 1
	movl	$0, %eax	#, D.5789
.L6:
	.loc 2 104 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	lookupBaudRateIndex, .-lookupBaudRateIndex
	.section	.text.findSerialPortUsageByIdentifier,"ax",@progbits
	.type	findSerialPortUsageByIdentifier, @function
findSerialPortUsageByIdentifier:
.LFB10:
	.loc 2 107 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# identifier, identifier
	.loc 2 109 0
	movb	$0, -9(%rbp)	#, index
	jmp	.L9	#
.L12:
.LBB2:
	.loc 2 110 0
	movzbl	-9(%rbp), %eax	# index, D.5794
	movslq	%eax, %rdx	# D.5794, tmp92
	movq	%rdx, %rax	# tmp92, tmp93
	addq	%rax, %rax	# tmp93
	addq	%rdx, %rax	# tmp92, tmp93
	salq	$3, %rax	#, tmp94
	addq	$serialPortUsageList, %rax	#, tmp95
	movq	%rax, -8(%rbp)	# tmp95, candidate
	.loc 2 111 0
	movq	-8(%rbp), %rax	# candidate, tmp96
	movl	(%rax), %eax	# candidate_5->identifier, D.5795
	cmpl	-20(%rbp), %eax	# identifier, D.5795
	jne	.L10	#,
	.loc 2 112 0
	movq	-8(%rbp), %rax	# candidate, D.5793
	jmp	.L11	#
.L10:
.LBE2:
	.loc 2 109 0 discriminator 2
	movzbl	-9(%rbp), %eax	# index, D.5796
	addl	$1, %eax	#, tmp97
	movb	%al, -9(%rbp)	# tmp97, index
.L9:
	.loc 2 109 0 is_stmt 0 discriminator 1
	cmpb	$1, -9(%rbp)	#, index
	jbe	.L12	#,
	.loc 2 115 0 is_stmt 1
	movl	$0, %eax	#, D.5793
.L11:
	.loc 2 116 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	findSerialPortUsageByIdentifier, .-findSerialPortUsageByIdentifier
	.section	.text.findSerialPortUsageByPort,"ax",@progbits
	.globl	findSerialPortUsageByPort
	.type	findSerialPortUsageByPort, @function
findSerialPortUsageByPort:
.LFB11:
	.loc 2 119 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# serialPort, serialPort
	.loc 2 121 0
	movb	$0, -9(%rbp)	#, index
	jmp	.L14	#
.L17:
.LBB3:
	.loc 2 122 0
	movzbl	-9(%rbp), %eax	# index, D.5798
	movslq	%eax, %rdx	# D.5798, tmp92
	movq	%rdx, %rax	# tmp92, tmp93
	addq	%rax, %rax	# tmp93
	addq	%rdx, %rax	# tmp92, tmp93
	salq	$3, %rax	#, tmp94
	addq	$serialPortUsageList, %rax	#, tmp95
	movq	%rax, -8(%rbp)	# tmp95, candidate
	.loc 2 123 0
	movq	-8(%rbp), %rax	# candidate, tmp96
	movq	8(%rax), %rax	# candidate_5->serialPort, D.5799
	cmpq	-24(%rbp), %rax	# serialPort, D.5799
	jne	.L15	#,
	.loc 2 124 0
	movq	-8(%rbp), %rax	# candidate, D.5797
	jmp	.L16	#
.L15:
.LBE3:
	.loc 2 121 0 discriminator 2
	movzbl	-9(%rbp), %eax	# index, D.5800
	addl	$1, %eax	#, tmp97
	movb	%al, -9(%rbp)	# tmp97, index
.L14:
	.loc 2 121 0 is_stmt 0 discriminator 1
	cmpb	$1, -9(%rbp)	#, index
	jbe	.L17	#,
	.loc 2 127 0 is_stmt 1
	movl	$0, %eax	#, D.5797
.L16:
	.loc 2 128 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	findSerialPortUsageByPort, .-findSerialPortUsageByPort
	.section	.bss.findSerialPortConfigState,"aw",@nobits
	.type	findSerialPortConfigState, @object
	.size	findSerialPortConfigState, 1
findSerialPortConfigState:
	.zero	1
	.section	.text.findSerialPortConfig,"ax",@progbits
	.globl	findSerialPortConfig
	.type	findSerialPortConfig, @function
findSerialPortConfig:
.LFB12:
	.loc 2 137 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, %eax	# mask, tmp90
	movw	%ax, -4(%rbp)	# tmp90, mask
	.loc 2 138 0
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movl	$findSerialPortConfigState, %edi	#,
	call	memset	#
	.loc 2 140 0
	movzwl	-4(%rbp), %eax	# mask, D.5801
	movl	%eax, %edi	# D.5801,
	call	findNextSerialPortConfig	#
	.loc 2 141 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	findSerialPortConfig, .-findSerialPortConfig
	.section	.text.findNextSerialPortConfig,"ax",@progbits
	.globl	findNextSerialPortConfig
	.type	findNextSerialPortConfig, @function
findNextSerialPortConfig:
.LFB13:
	.loc 2 144 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movl	%edi, %eax	# mask, tmp96
	movw	%ax, -20(%rbp)	# tmp96, mask
	.loc 2 145 0
	jmp	.L21	#
.L23:
.LBB4:
	.loc 2 146 0
	call	serialConfig	#
	movq	%rax, %rcx	#, D.5805
	movzbl	findSerialPortConfigState(%rip), %eax	# findSerialPortConfigState.lastIndex, D.5804
	leal	1(%rax), %edx	#, D.5804
	movb	%dl, findSerialPortConfigState(%rip)	# D.5804, findSerialPortConfigState.lastIndex
	movzbl	%al, %eax	# D.5804, D.5806
	movslq	%eax, %rdx	# D.5806, tmp97
	movq	%rdx, %rax	# tmp97, tmp98
	addq	%rax, %rax	# tmp98
	addq	%rdx, %rax	# tmp97, tmp98
	salq	$2, %rax	#, tmp99
	addq	%rcx, %rax	# D.5805, tmp100
	addq	$4, %rax	#, tmp101
	movq	%rax, -8(%rbp)	# tmp101, candidate
	.loc 2 147 0
	movq	-8(%rbp), %rax	# candidate, tmp102
	movzwl	4(%rax), %eax	# candidate_13->functionMask, D.5807
	andw	-20(%rbp), %ax	# mask, D.5807
	testw	%ax, %ax	# D.5807
	je	.L21	#,
	.loc 2 148 0
	movq	-8(%rbp), %rax	# candidate, D.5803
	jmp	.L22	#
.L21:
.LBE4:
	.loc 2 145 0
	movzbl	findSerialPortConfigState(%rip), %eax	# findSerialPortConfigState.lastIndex, D.5804
	cmpb	$1, %al	#, D.5804
	jbe	.L23	#,
	.loc 2 151 0
	movl	$0, %eax	#, D.5803
.L22:
	.loc 2 152 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	findNextSerialPortConfig, .-findNextSerialPortConfig
	.section	.text.determinePortSharing,"ax",@progbits
	.globl	determinePortSharing
	.type	determinePortSharing, @function
determinePortSharing:
.LFB14:
	.loc 2 159 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# portConfig, portConfig
	movl	%esi, -12(%rbp)	# function, function
	.loc 2 160 0
	cmpq	$0, -8(%rbp)	#, portConfig
	je	.L25	#,
	.loc 2 160 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# portConfig, tmp94
	movzwl	4(%rax), %eax	# portConfig_3(D)->functionMask, D.5809
	movzwl	%ax, %eax	# D.5809, D.5810
	andl	-12(%rbp), %eax	# function, D.5810
	testl	%eax, %eax	# D.5810
	jne	.L26	#,
.L25:
	.loc 2 161 0 is_stmt 1
	movl	$0, %eax	#, D.5808
	jmp	.L27	#
.L26:
	.loc 2 163 0
	movq	-8(%rbp), %rax	# portConfig, tmp95
	movzwl	4(%rax), %eax	# portConfig_3(D)->functionMask, D.5809
	movzwl	%ax, %eax	# D.5809, D.5810
	cmpl	-12(%rbp), %eax	# function, D.5810
	jne	.L28	#,
	.loc 2 163 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.5808
	jmp	.L27	#
.L28:
	.loc 2 163 0 discriminator 2
	movl	$2, %eax	#, D.5808
.L27:
	.loc 2 164 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	determinePortSharing, .-determinePortSharing
	.section	.text.isSerialPortShared,"ax",@progbits
	.globl	isSerialPortShared
	.type	isSerialPortShared, @function
isSerialPortShared:
.LFB15:
	.loc 2 167 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# portConfig, portConfig
	movl	%esi, %eax	# functionMask, tmp95
	movl	%edx, -16(%rbp)	# sharedWithFunction, sharedWithFunction
	movw	%ax, -12(%rbp)	# tmp95, functionMask
	.loc 2 168 0
	cmpq	$0, -8(%rbp)	#, portConfig
	je	.L31	#,
	.loc 2 168 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# portConfig, tmp96
	movzwl	4(%rax), %eax	# portConfig_2(D)->functionMask, D.5812
	movzwl	%ax, %eax	# D.5812, D.5813
	andl	-16(%rbp), %eax	# sharedWithFunction, D.5813
	testl	%eax, %eax	# D.5813
	je	.L31	#,
	.loc 2 168 0 discriminator 3
	movq	-8(%rbp), %rax	# portConfig, tmp97
	movzwl	4(%rax), %eax	# portConfig_2(D)->functionMask, D.5812
	andw	-12(%rbp), %ax	# functionMask, D.5812
	testw	%ax, %ax	# D.5812
	je	.L31	#,
	.loc 2 168 0 discriminator 5
	movl	$1, %eax	#, D.5811
	jmp	.L32	#
.L31:
	.loc 2 168 0 discriminator 6
	movl	$0, %eax	#, D.5811
.L32:
	.loc 2 168 0 discriminator 8
	andl	$1, %eax	#, D.5814
	.loc 2 169 0 is_stmt 1 discriminator 8
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	isSerialPortShared, .-isSerialPortShared
	.section	.text.isSerialPortOpen,"ax",@progbits
	.globl	isSerialPortOpen
	.type	isSerialPortOpen, @function
isSerialPortOpen:
.LFB16:
	.loc 2 172 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movq	%rdi, -24(%rbp)	# portConfig, portConfig
	.loc 2 173 0
	movq	-24(%rbp), %rax	# portConfig, tmp92
	movl	(%rax), %eax	# portConfig_3(D)->identifier, D.5816
	movl	%eax, %edi	# D.5816,
	call	findSerialPortUsageByIdentifier	#
	movq	%rax, -8(%rbp)	# tmp93, serialPortUsage
	.loc 2 174 0
	cmpq	$0, -8(%rbp)	#, serialPortUsage
	je	.L35	#,
	.loc 2 174 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# serialPortUsage, tmp94
	movl	16(%rax), %eax	# serialPortUsage_6->function, D.5817
	testl	%eax, %eax	# D.5817
	je	.L35	#,
	.loc 2 174 0 discriminator 3
	movl	$1, %eax	#, D.5815
	jmp	.L36	#
.L35:
	.loc 2 174 0 discriminator 4
	movl	$0, %eax	#, D.5815
.L36:
	.loc 2 174 0 discriminator 6
	andl	$1, %eax	#, D.5818
	.loc 2 175 0 is_stmt 1 discriminator 6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	isSerialPortOpen, .-isSerialPortOpen
	.section	.bss.findSharedSerialPortState,"aw",@nobits
	.type	findSharedSerialPortState, @object
	.size	findSharedSerialPortState, 1
findSharedSerialPortState:
	.zero	1
	.section	.text.findSharedSerialPort,"ax",@progbits
	.globl	findSharedSerialPort
	.type	findSharedSerialPort, @function
findSharedSerialPort:
.LFB17:
	.loc 2 181 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, %eax	# functionMask, tmp90
	movl	%esi, -8(%rbp)	# sharedWithFunction, sharedWithFunction
	movw	%ax, -4(%rbp)	# tmp90, functionMask
	.loc 2 182 0
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movl	$findSharedSerialPortState, %edi	#,
	call	memset	#
	.loc 2 184 0
	movzwl	-4(%rbp), %eax	# functionMask, D.5819
	movl	-8(%rbp), %edx	# sharedWithFunction, tmp91
	movl	%edx, %esi	# tmp91,
	movl	%eax, %edi	# D.5819,
	call	findNextSharedSerialPort	#
	.loc 2 185 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	findSharedSerialPort, .-findSharedSerialPort
	.section	.text.findNextSharedSerialPort,"ax",@progbits
	.globl	findNextSharedSerialPort
	.type	findNextSharedSerialPort, @function
findNextSharedSerialPort:
.LFB18:
	.loc 2 188 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movl	%edi, %eax	# functionMask, tmp97
	movl	%esi, -24(%rbp)	# sharedWithFunction, sharedWithFunction
	movw	%ax, -20(%rbp)	# tmp97, functionMask
	.loc 2 189 0
	jmp	.L41	#
.L44:
.LBB5:
	.loc 2 190 0
	call	serialConfig	#
	movq	%rax, %rcx	#, D.5823
	movzbl	findSharedSerialPortState(%rip), %eax	# findSharedSerialPortState.lastIndex, D.5822
	leal	1(%rax), %edx	#, D.5822
	movb	%dl, findSharedSerialPortState(%rip)	# D.5822, findSharedSerialPortState.lastIndex
	movzbl	%al, %eax	# D.5822, D.5824
	movslq	%eax, %rdx	# D.5824, tmp98
	movq	%rdx, %rax	# tmp98, tmp99
	addq	%rax, %rax	# tmp99
	addq	%rdx, %rax	# tmp98, tmp99
	salq	$2, %rax	#, tmp100
	addq	%rcx, %rax	# D.5823, tmp101
	addq	$4, %rax	#, tmp102
	movq	%rax, -16(%rbp)	# tmp102, candidate
	.loc 2 192 0
	movzwl	-20(%rbp), %ecx	# functionMask, D.5824
	movl	-24(%rbp), %edx	# sharedWithFunction, tmp103
	movq	-16(%rbp), %rax	# candidate, tmp104
	movl	%ecx, %esi	# D.5824,
	movq	%rax, %rdi	# tmp104,
	call	isSerialPortShared	#
	testb	%al, %al	# D.5825
	je	.L41	#,
.LBB6:
	.loc 2 193 0
	movq	-16(%rbp), %rax	# candidate, tmp105
	movl	(%rax), %eax	# candidate_13->identifier, D.5826
	movl	%eax, %edi	# D.5826,
	call	findSerialPortUsageByIdentifier	#
	movq	%rax, -8(%rbp)	# tmp106, serialPortUsage
	.loc 2 194 0
	cmpq	$0, -8(%rbp)	#, serialPortUsage
	jne	.L42	#,
	.loc 2 195 0
	jmp	.L41	#
.L42:
	.loc 2 197 0
	movq	-8(%rbp), %rax	# serialPortUsage, tmp107
	movq	8(%rax), %rax	# serialPortUsage_21->serialPort, D.5821
	jmp	.L43	#
.L41:
.LBE6:
.LBE5:
	.loc 2 189 0
	movzbl	findSharedSerialPortState(%rip), %eax	# findSharedSerialPortState.lastIndex, D.5822
	cmpb	$1, %al	#, D.5822
	jbe	.L44	#,
	.loc 2 200 0
	movl	$0, %eax	#, D.5821
.L43:
	.loc 2 201 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	findNextSharedSerialPort, .-findNextSharedSerialPort
	.section	.text.isSerialConfigValid,"ax",@progbits
	.globl	isSerialConfigValid
	.type	isSerialConfigValid, @function
isSerialConfigValid:
.LFB19:
	.loc 2 207 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# serialConfigToCheck, serialConfigToCheck
	.loc 2 215 0
	movb	$0, -11(%rbp)	#, mspPortCount
	.loc 2 218 0
	movb	$0, -10(%rbp)	#, index
	jmp	.L46	#
.L52:
.LBB7:
	.loc 2 219 0
	movzbl	-10(%rbp), %eax	# index, D.5828
	movslq	%eax, %rdx	# D.5828, tmp139
	movq	%rdx, %rax	# tmp139, tmp140
	addq	%rax, %rax	# tmp140
	addq	%rdx, %rax	# tmp139, tmp140
	salq	$2, %rax	#, tmp141
	movq	-24(%rbp), %rdx	# serialConfigToCheck, tmp143
	addq	%rdx, %rax	# tmp143, tmp142
	addq	$4, %rax	#, tmp144
	movq	%rax, -8(%rbp)	# tmp144, portConfig
	.loc 2 221 0
	movq	-8(%rbp), %rax	# portConfig, tmp145
	movzwl	4(%rax), %eax	# portConfig_9->functionMask, D.5829
	movzwl	%ax, %eax	# D.5829, D.5828
	andl	$513, %eax	#, D.5828
	testl	%eax, %eax	# D.5828
	je	.L47	#,
	.loc 2 222 0
	movzbl	-11(%rbp), %eax	# mspPortCount, D.5830
	addl	$1, %eax	#, tmp146
	movb	%al, -11(%rbp)	# tmp146, mspPortCount
.L47:
	.loc 2 225 0
	movq	-8(%rbp), %rax	# portConfig, tmp147
	movzwl	4(%rax), %eax	# portConfig_9->functionMask, D.5829
	movzwl	%ax, %edx	# D.5829, D.5828
	movq	-8(%rbp), %rax	# portConfig, tmp148
	movzwl	4(%rax), %eax	# portConfig_9->functionMask, D.5829
	shrw	%ax	# D.5829
	movzwl	%ax, %eax	# D.5829, D.5828
	andl	$2004318071, %eax	#, D.5828
	subl	%eax, %edx	# D.5828, D.5828
	movq	-8(%rbp), %rax	# portConfig, tmp149
	movzwl	4(%rax), %eax	# portConfig_9->functionMask, D.5829
	shrw	$2, %ax	#, D.5829
	movzwl	%ax, %eax	# D.5829, D.5828
	andl	$858993459, %eax	#, D.5828
	subl	%eax, %edx	# D.5828, D.5828
	movq	-8(%rbp), %rax	# portConfig, tmp150
	movzwl	4(%rax), %eax	# portConfig_9->functionMask, D.5829
	shrw	$3, %ax	#, D.5829
	movzwl	%ax, %eax	# D.5829, D.5828
	andl	$286331153, %eax	#, D.5828
	movl	%edx, %ecx	# D.5828, D.5828
	subl	%eax, %ecx	# D.5828, D.5828
	movq	-8(%rbp), %rax	# portConfig, tmp151
	movzwl	4(%rax), %eax	# portConfig_9->functionMask, D.5829
	movzwl	%ax, %edx	# D.5829, D.5828
	movq	-8(%rbp), %rax	# portConfig, tmp152
	movzwl	4(%rax), %eax	# portConfig_9->functionMask, D.5829
	shrw	%ax	# D.5829
	movzwl	%ax, %eax	# D.5829, D.5828
	andl	$2004318071, %eax	#, D.5828
	subl	%eax, %edx	# D.5828, D.5828
	movq	-8(%rbp), %rax	# portConfig, tmp153
	movzwl	4(%rax), %eax	# portConfig_9->functionMask, D.5829
	shrw	$2, %ax	#, D.5829
	movzwl	%ax, %eax	# D.5829, D.5828
	andl	$858993459, %eax	#, D.5828
	subl	%eax, %edx	# D.5828, D.5828
	movq	-8(%rbp), %rax	# portConfig, tmp154
	movzwl	4(%rax), %eax	# portConfig_9->functionMask, D.5829
	shrw	$3, %ax	#, D.5829
	movzwl	%ax, %eax	# D.5829, D.5828
	andl	$286331153, %eax	#, D.5828
	subl	%eax, %edx	# D.5828, D.5828
	movl	%edx, %eax	# D.5828, D.5828
	sarl	$4, %eax	#, D.5828
	addl	%ecx, %eax	# D.5828, D.5828
	andl	$252645135, %eax	#, D.5828
	movl	%eax, %edx	# D.5828, D.5828
	movslq	%edx, %rax	# D.5828, tmp155
	imulq	$-2139062143, %rax, %rax	#, tmp155, tmp156
	shrq	$32, %rax	#, tmp157
	addl	%edx, %eax	# D.5828, tmp158
	sarl	$7, %eax	#, tmp159
	movl	%eax, %ecx	# tmp159, tmp159
	movl	%edx, %eax	# D.5828, tmp160
	sarl	$31, %eax	#, tmp160
	subl	%eax, %ecx	# tmp160, D.5828
	movl	%ecx, %eax	# D.5828, D.5828
	movl	%eax, %ecx	# D.5828, tmp161
	sall	$8, %ecx	#, tmp162
	subl	%eax, %ecx	# D.5828, tmp161
	movl	%edx, %eax	# D.5828, D.5828
	subl	%ecx, %eax	# tmp161, D.5828
	movb	%al, -9(%rbp)	# D.5828, bitCount
	.loc 2 226 0
	cmpb	$1, -9(%rbp)	#, bitCount
	jbe	.L48	#,
	.loc 2 228 0
	cmpb	$2, -9(%rbp)	#, bitCount
	jbe	.L49	#,
	.loc 2 229 0
	movl	$0, %eax	#, D.5827
	jmp	.L50	#
.L49:
	.loc 2 232 0
	movq	-8(%rbp), %rax	# portConfig, tmp163
	movzwl	4(%rax), %eax	# portConfig_9->functionMask, D.5829
	movzwl	%ax, %eax	# D.5829, D.5828
	andl	$1, %eax	#, D.5828
	testl	%eax, %eax	# D.5828
	jne	.L51	#,
	.loc 2 233 0
	movl	$0, %eax	#, D.5827
	jmp	.L50	#
.L51:
	.loc 2 236 0
	movq	-8(%rbp), %rax	# portConfig, tmp164
	movzwl	4(%rax), %eax	# portConfig_9->functionMask, D.5829
	movzwl	%ax, %eax	# D.5829, D.5828
	andl	$444, %eax	#, D.5828
	testl	%eax, %eax	# D.5828
	jne	.L48	#,
	.loc 2 238 0
	movl	$0, %eax	#, D.5827
	jmp	.L50	#
.L48:
.LBE7:
	.loc 2 218 0 discriminator 2
	movzbl	-10(%rbp), %eax	# index, D.5830
	addl	$1, %eax	#, tmp165
	movb	%al, -10(%rbp)	# tmp165, index
.L46:
	.loc 2 218 0 is_stmt 0 discriminator 1
	cmpb	$1, -10(%rbp)	#, index
	jbe	.L52	#,
	.loc 2 243 0 is_stmt 1
	cmpb	$0, -11(%rbp)	#, mspPortCount
	je	.L53	#,
	.loc 2 243 0 is_stmt 0 discriminator 1
	cmpb	$2, -11(%rbp)	#, mspPortCount
	jbe	.L54	#,
.L53:
	.loc 2 244 0 is_stmt 1
	movl	$0, %eax	#, D.5827
	jmp	.L50	#
.L54:
	.loc 2 246 0
	movl	$1, %eax	#, D.5827
.L50:
	.loc 2 247 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	isSerialConfigValid, .-isSerialConfigValid
	.section	.text.serialFindPortConfiguration,"ax",@progbits
	.globl	serialFindPortConfiguration
	.type	serialFindPortConfiguration, @function
serialFindPortConfiguration:
.LFB20:
	.loc 2 250 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movl	%edi, -20(%rbp)	# identifier, identifier
	.loc 2 252 0
	movb	$0, -9(%rbp)	#, index
	jmp	.L56	#
.L59:
.LBB8:
	.loc 2 253 0
	call	serialConfig	#
	movq	%rax, %rcx	#, D.5832
	movzbl	-9(%rbp), %eax	# index, D.5833
	movslq	%eax, %rdx	# D.5833, tmp93
	movq	%rdx, %rax	# tmp93, tmp94
	addq	%rax, %rax	# tmp94
	addq	%rdx, %rax	# tmp93, tmp94
	salq	$2, %rax	#, tmp95
	addq	%rcx, %rax	# D.5832, tmp96
	addq	$4, %rax	#, tmp97
	movq	%rax, -8(%rbp)	# tmp97, candidate
	.loc 2 254 0
	movq	-8(%rbp), %rax	# candidate, tmp98
	movl	(%rax), %eax	# candidate_10->identifier, D.5834
	cmpl	-20(%rbp), %eax	# identifier, D.5834
	jne	.L57	#,
	.loc 2 255 0
	movq	-8(%rbp), %rax	# candidate, D.5831
	jmp	.L58	#
.L57:
.LBE8:
	.loc 2 252 0 discriminator 2
	movzbl	-9(%rbp), %eax	# index, D.5835
	addl	$1, %eax	#, tmp99
	movb	%al, -9(%rbp)	# tmp99, index
.L56:
	.loc 2 252 0 is_stmt 0 discriminator 1
	cmpb	$1, -9(%rbp)	#, index
	jbe	.L59	#,
	.loc 2 258 0 is_stmt 1
	movl	$0, %eax	#, D.5831
.L58:
	.loc 2 259 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	serialFindPortConfiguration, .-serialFindPortConfiguration
	.section	.text.doesConfigurationUsePort,"ax",@progbits
	.globl	doesConfigurationUsePort
	.type	doesConfigurationUsePort, @function
doesConfigurationUsePort:
.LFB21:
	.loc 2 262 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movl	%edi, -20(%rbp)	# identifier, identifier
	.loc 2 263 0
	movl	-20(%rbp), %eax	# identifier, tmp91
	movl	%eax, %edi	# tmp91,
	call	serialFindPortConfiguration	#
	movq	%rax, -8(%rbp)	# tmp92, candidate
	.loc 2 264 0
	cmpq	$0, -8(%rbp)	#, candidate
	je	.L61	#,
	.loc 2 264 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# candidate, tmp93
	movzwl	4(%rax), %eax	# candidate_5->functionMask, D.5837
	testw	%ax, %ax	# D.5837
	je	.L61	#,
	.loc 2 264 0 discriminator 3
	movl	$1, %eax	#, D.5836
	jmp	.L62	#
.L61:
	.loc 2 264 0 discriminator 4
	movl	$0, %eax	#, D.5836
.L62:
	.loc 2 264 0 is_stmt 1 discriminator 6
	andl	$1, %eax	#, D.5838
	.loc 2 265 0 discriminator 6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	doesConfigurationUsePort, .-doesConfigurationUsePort
	.section	.text.openSerialPort,"ax",@progbits
	.globl	openSerialPort
	.type	openSerialPort, @function
openSerialPort:
.LFB22:
	.loc 2 274 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# identifier, identifier
	movl	%esi, -24(%rbp)	# function, function
	movq	%rdx, -32(%rbp)	# callback, callback
	movl	%ecx, -36(%rbp)	# baudRate, baudRate
	movl	%r8d, -40(%rbp)	# mode, mode
	movl	%r9d, -44(%rbp)	# options, options
	.loc 2 282 0
	movl	-20(%rbp), %eax	# identifier, tmp91
	movl	%eax, %edi	# tmp91,
	call	findSerialPortUsageByIdentifier	#
	movq	%rax, -8(%rbp)	# tmp92, serialPortUsage
	.loc 2 283 0
	cmpq	$0, -8(%rbp)	#, serialPortUsage
	je	.L65	#,
	.loc 2 283 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# serialPortUsage, tmp93
	movl	16(%rax), %eax	# serialPortUsage_8->function, D.5840
	testl	%eax, %eax	# D.5840
	je	.L66	#,
.L65:
	.loc 2 285 0 is_stmt 1
	movl	$0, %eax	#, D.5839
	jmp	.L67	#
.L66:
	.loc 2 288 0
	movq	$0, -16(%rbp)	#, serialPort
	.loc 2 289 0
	movl	-20(%rbp), %eax	# identifier, identifier
	cmpl	$20, %eax	#, identifier
	je	.L69	#,
	.loc 2 333 0
	jmp	.L70	#
.L69:
	.loc 2 292 0
	call	usbVcpOpen	#
	movq	%rax, -16(%rbp)	# tmp95, serialPort
	.loc 2 293 0
	nop
.L70:
	.loc 2 336 0
	cmpq	$0, -16(%rbp)	#, serialPort
	jne	.L71	#,
	.loc 2 337 0
	movl	$0, %eax	#, D.5839
	jmp	.L67	#
.L71:
	.loc 2 340 0
	movl	-20(%rbp), %eax	# identifier, tmp96
	movl	%eax, %edx	# tmp96, D.5841
	movq	-16(%rbp), %rax	# serialPort, tmp97
	movb	%dl, 8(%rax)	# D.5841, serialPort_1->identifier
	.loc 2 342 0
	movq	-8(%rbp), %rax	# serialPortUsage, tmp98
	movl	-24(%rbp), %edx	# function, tmp99
	movl	%edx, 16(%rax)	# tmp99, serialPortUsage_8->function
	.loc 2 343 0
	movq	-8(%rbp), %rax	# serialPortUsage, tmp100
	movq	-16(%rbp), %rdx	# serialPort, tmp101
	movq	%rdx, 8(%rax)	# tmp101, serialPortUsage_8->serialPort
	.loc 2 345 0
	movq	-16(%rbp), %rax	# serialPort, D.5839
.L67:
	.loc 2 347 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	openSerialPort, .-openSerialPort
	.section	.text.closeSerialPort,"ax",@progbits
	.globl	closeSerialPort
	.type	closeSerialPort, @function
closeSerialPort:
.LFB23:
	.loc 2 350 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movq	%rdi, -24(%rbp)	# serialPort, serialPort
	.loc 2 351 0
	movq	-24(%rbp), %rax	# serialPort, tmp87
	movq	%rax, %rdi	# tmp87,
	call	findSerialPortUsageByPort	#
	movq	%rax, -8(%rbp)	# tmp88, serialPortUsage
	.loc 2 352 0
	cmpq	$0, -8(%rbp)	#, serialPortUsage
	je	.L75	#,
	.loc 2 359 0
	movq	-24(%rbp), %rax	# serialPort, tmp89
	movq	$0, 64(%rax)	#, serialPort_3(D)->callback
	.loc 2 361 0
	movq	-8(%rbp), %rax	# serialPortUsage, tmp90
	movl	$0, 16(%rax)	#, serialPortUsage_5->function
	.loc 2 362 0
	movq	-8(%rbp), %rax	# serialPortUsage, tmp91
	movq	$0, 8(%rax)	#, serialPortUsage_5->serialPort
	jmp	.L72	#
.L75:
	.loc 2 354 0
	nop
.L72:
	.loc 2 363 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	closeSerialPort, .-closeSerialPort
	.section	.text.serialInit,"ax",@progbits
	.globl	serialInit
	.type	serialInit, @function
serialInit:
.LFB24:
	.loc 2 366 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, %eax	# softserialEnabled, tmp93
	movb	%al, -20(%rbp)	# tmp93, softserialEnabled
	.loc 2 369 0
	movb	$2, serialPortCount(%rip)	#, serialPortCount
	.loc 2 370 0
	movl	$48, %edx	#,
	movl	$0, %esi	#,
	movl	$serialPortUsageList, %edi	#,
	call	memset	#
	.loc 2 372 0
	movb	$0, -1(%rbp)	#, index
	jmp	.L77	#
.L79:
	.loc 2 373 0
	movzbl	-1(%rbp), %edx	# index, D.5842
	movzbl	-1(%rbp), %eax	# index, D.5842
	cltq
	movl	serialPortIdentifiers(,%rax,4), %ecx	# serialPortIdentifiers, D.5843
	movslq	%edx, %rdx	# D.5842, tmp95
	movq	%rdx, %rax	# tmp95, tmp97
	addq	%rax, %rax	# tmp97
	addq	%rdx, %rax	# tmp95, tmp97
	salq	$3, %rax	#, tmp98
	addq	$serialPortUsageList, %rax	#, tmp99
	movl	%ecx, (%rax)	# D.5843, serialPortUsageList[_8].identifier
	.loc 2 375 0
	movzbl	-20(%rbp), %eax	# softserialEnabled, tmp100
	xorl	$1, %eax	#, D.5844
	testb	%al, %al	# D.5844
	jne	.L78	#,
	.loc 2 391 0
	call	serialConfig	#
	movw	$1, 20(%rax)	#, _15->portConfigs[1].functionMask
.L78:
	.loc 2 372 0 discriminator 2
	movzbl	-1(%rbp), %eax	# index, D.5846
	addl	$1, %eax	#, tmp101
	movb	%al, -1(%rbp)	# tmp101, index
.L77:
	.loc 2 372 0 is_stmt 0 discriminator 1
	cmpb	$1, -1(%rbp)	#, index
	jbe	.L79	#,
	.loc 2 396 0 is_stmt 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	serialInit, .-serialInit
	.section	.text.serialRemovePort,"ax",@progbits
	.globl	serialRemovePort
	.type	serialRemovePort, @function
serialRemovePort:
.LFB25:
	.loc 2 399 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# identifier, identifier
.LBB9:
	.loc 2 400 0
	movb	$0, -1(%rbp)	#, index
	jmp	.L81	#
.L83:
	.loc 2 401 0
	movzbl	-1(%rbp), %eax	# index, D.5847
	movslq	%eax, %rdx	# D.5847, tmp93
	movq	%rdx, %rax	# tmp93, tmp95
	addq	%rax, %rax	# tmp95
	addq	%rdx, %rax	# tmp93, tmp95
	salq	$3, %rax	#, tmp96
	addq	$serialPortUsageList, %rax	#, tmp97
	movl	(%rax), %eax	# serialPortUsageList[_6].identifier, D.5848
	cmpl	-20(%rbp), %eax	# identifier, D.5848
	jne	.L82	#,
	.loc 2 402 0
	movzbl	-1(%rbp), %eax	# index, D.5847
	movslq	%eax, %rdx	# D.5847, tmp98
	movq	%rdx, %rax	# tmp98, tmp100
	addq	%rax, %rax	# tmp100
	addq	%rdx, %rax	# tmp98, tmp100
	salq	$3, %rax	#, tmp101
	addq	$serialPortUsageList, %rax	#, tmp102
	movl	$-1, (%rax)	#, serialPortUsageList[_9].identifier
	.loc 2 403 0
	movzbl	serialPortCount(%rip), %eax	# serialPortCount, D.5849
	subl	$1, %eax	#, D.5849
	movb	%al, serialPortCount(%rip)	# D.5849, serialPortCount
.L82:
	.loc 2 400 0 discriminator 2
	movzbl	-1(%rbp), %eax	# index, D.5849
	addl	$1, %eax	#, tmp103
	movb	%al, -1(%rbp)	# tmp103, index
.L81:
	.loc 2 400 0 is_stmt 0 discriminator 1
	cmpb	$1, -1(%rbp)	#, index
	jbe	.L83	#,
.LBE9:
	.loc 2 406 0 is_stmt 1
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	serialRemovePort, .-serialRemovePort
	.section	.text.serialGetAvailablePortCount,"ax",@progbits
	.globl	serialGetAvailablePortCount
	.type	serialGetAvailablePortCount, @function
serialGetAvailablePortCount:
.LFB26:
	.loc 2 409 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 2 410 0
	movzbl	serialPortCount(%rip), %eax	# serialPortCount, D.5850
	.loc 2 411 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	serialGetAvailablePortCount, .-serialGetAvailablePortCount
	.section	.text.serialIsPortAvailable,"ax",@progbits
	.globl	serialIsPortAvailable
	.type	serialIsPortAvailable, @function
serialIsPortAvailable:
.LFB27:
	.loc 2 414 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# identifier, identifier
.LBB10:
	.loc 2 415 0
	movb	$0, -1(%rbp)	#, index
	jmp	.L87	#
.L90:
	.loc 2 416 0
	movzbl	-1(%rbp), %eax	# index, D.5852
	movslq	%eax, %rdx	# D.5852, tmp92
	movq	%rdx, %rax	# tmp92, tmp94
	addq	%rax, %rax	# tmp94
	addq	%rdx, %rax	# tmp92, tmp94
	salq	$3, %rax	#, tmp95
	addq	$serialPortUsageList, %rax	#, tmp96
	movl	(%rax), %eax	# serialPortUsageList[_4].identifier, D.5853
	cmpl	-20(%rbp), %eax	# identifier, D.5853
	jne	.L88	#,
	.loc 2 417 0
	movl	$1, %eax	#, D.5851
	jmp	.L89	#
.L88:
	.loc 2 415 0 discriminator 2
	movzbl	-1(%rbp), %eax	# index, D.5854
	addl	$1, %eax	#, tmp97
	movb	%al, -1(%rbp)	# tmp97, index
.L87:
	.loc 2 415 0 is_stmt 0 discriminator 1
	cmpb	$1, -1(%rbp)	#, index
	jbe	.L90	#,
.LBE10:
	.loc 2 420 0 is_stmt 1
	movl	$0, %eax	#, D.5851
.L89:
	.loc 2 421 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	serialIsPortAvailable, .-serialIsPortAvailable
	.section	.text.waitForSerialPortToFinishTransmitting,"ax",@progbits
	.globl	waitForSerialPortToFinishTransmitting
	.type	waitForSerialPortToFinishTransmitting, @function
waitForSerialPortToFinishTransmitting:
.LFB28:
	.loc 2 424 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# serialPort, serialPort
	.loc 2 425 0
	jmp	.L92	#
.L93:
	.loc 2 426 0
	movl	$10, %edi	#,
	call	delay	#
.L92:
	.loc 2 425 0
	movq	-8(%rbp), %rax	# serialPort, tmp89
	movq	%rax, %rdi	# tmp89,
	call	isSerialTransmitBufferEmpty	#
	xorl	$1, %eax	#, D.5855
	testb	%al, %al	# D.5855
	jne	.L93	#,
	.loc 2 428 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	waitForSerialPortToFinishTransmitting, .-waitForSerialPortToFinishTransmitting
	.text
.Letext0:
	.file 3 "/usr/include/stdint.h"
	.file 4 "./src/main/config/parameter_group.h"
	.file 5 "./src/main/drivers/serial.h"
	.file 6 "/usr/include/mraa/i2c.h"
	.file 7 "./src/main/drivers/SFE_LSM9DS0.h"
	.file 8 "./src/main/target/edison/target.h"
	.file 9 "./src/main/drivers/serial_usb_vcp.h"
	.file 10 "./src/main/drivers/system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xfa7
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF186
	.byte	0xc
	.long	.LASF187
	.long	.LASF188
	.long	.Ldebug_ranges0+0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF3
	.byte	0x3
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
	.byte	0x3
	.byte	0x30
	.long	0x5b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x3
	.byte	0x31
	.long	0x6d
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF7
	.uleb128 0x3
	.long	.LASF8
	.byte	0x3
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
	.uleb128 0x6
	.byte	0x8
	.long	0x50
	.uleb128 0x3
	.long	.LASF15
	.byte	0x4
	.byte	0x15
	.long	0x62
	.uleb128 0x3
	.long	.LASF16
	.byte	0x4
	.byte	0x26
	.long	0xc7
	.uleb128 0x7
	.long	0xd7
	.uleb128 0x8
	.long	0x94
	.uleb128 0x8
	.long	0x42
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x4
	.byte	0x2d
	.long	0xf5
	.uleb128 0xa
	.string	"ptr"
	.byte	0x4
	.byte	0x2e
	.long	0x94
	.uleb128 0xa
	.string	"fn"
	.byte	0x4
	.byte	0x2f
	.long	0xf5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbc
	.uleb128 0xb
	.long	.LASF35
	.byte	0x20
	.byte	0x4
	.byte	0x28
	.long	0x144
	.uleb128 0xc
	.string	"pgn"
	.byte	0x4
	.byte	0x29
	.long	0xb1
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x4
	.byte	0x2a
	.long	0x62
	.byte	0x2
	.uleb128 0xd
	.long	.LASF18
	.byte	0x4
	.byte	0x2b
	.long	0xab
	.byte	0x8
	.uleb128 0xc
	.string	"ptr"
	.byte	0x4
	.byte	0x2c
	.long	0x144
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x4
	.byte	0x30
	.long	0xd7
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xab
	.uleb128 0x3
	.long	.LASF20
	.byte	0x4
	.byte	0x31
	.long	0xfb
	.uleb128 0xe
	.long	.LASF24
	.byte	0x4
	.long	0x7f
	.byte	0x5
	.byte	0x14
	.long	0x178
	.uleb128 0xf
	.long	.LASF21
	.byte	0x1
	.uleb128 0xf
	.long	.LASF22
	.byte	0x2
	.uleb128 0xf
	.long	.LASF23
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF24
	.byte	0x5
	.byte	0x18
	.long	0x155
	.uleb128 0xe
	.long	.LASF25
	.byte	0x4
	.long	0x7f
	.byte	0x5
	.byte	0x1a
	.long	0x1c4
	.uleb128 0xf
	.long	.LASF26
	.byte	0
	.uleb128 0xf
	.long	.LASF27
	.byte	0x1
	.uleb128 0xf
	.long	.LASF28
	.byte	0
	.uleb128 0xf
	.long	.LASF29
	.byte	0x2
	.uleb128 0xf
	.long	.LASF30
	.byte	0
	.uleb128 0xf
	.long	.LASF31
	.byte	0x4
	.uleb128 0xf
	.long	.LASF32
	.byte	0
	.uleb128 0xf
	.long	.LASF33
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF25
	.byte	0x5
	.byte	0x23
	.long	0x183
	.uleb128 0x3
	.long	.LASF34
	.byte	0x5
	.byte	0x25
	.long	0x1da
	.uleb128 0x6
	.byte	0x8
	.long	0x1e0
	.uleb128 0x7
	.long	0x1eb
	.uleb128 0x8
	.long	0x62
	.byte	0
	.uleb128 0xb
	.long	.LASF36
	.byte	0x48
	.byte	0x5
	.byte	0x27
	.long	0x2a0
	.uleb128 0xd
	.long	.LASF37
	.byte	0x5
	.byte	0x29
	.long	0x325
	.byte	0
	.uleb128 0xd
	.long	.LASF38
	.byte	0x5
	.byte	0x2b
	.long	0x50
	.byte	0x8
	.uleb128 0xd
	.long	.LASF39
	.byte	0x5
	.byte	0x2c
	.long	0x178
	.byte	0xc
	.uleb128 0xd
	.long	.LASF40
	.byte	0x5
	.byte	0x2d
	.long	0x1c4
	.byte	0x10
	.uleb128 0xd
	.long	.LASF41
	.byte	0x5
	.byte	0x2f
	.long	0x74
	.byte	0x14
	.uleb128 0xd
	.long	.LASF42
	.byte	0x5
	.byte	0x31
	.long	0x74
	.byte	0x18
	.uleb128 0xd
	.long	.LASF43
	.byte	0x5
	.byte	0x32
	.long	0x74
	.byte	0x1c
	.uleb128 0xd
	.long	.LASF44
	.byte	0x5
	.byte	0x33
	.long	0x330
	.byte	0x20
	.uleb128 0xd
	.long	.LASF45
	.byte	0x5
	.byte	0x34
	.long	0x330
	.byte	0x28
	.uleb128 0xd
	.long	.LASF46
	.byte	0x5
	.byte	0x35
	.long	0x74
	.byte	0x30
	.uleb128 0xd
	.long	.LASF47
	.byte	0x5
	.byte	0x36
	.long	0x74
	.byte	0x34
	.uleb128 0xd
	.long	.LASF48
	.byte	0x5
	.byte	0x37
	.long	0x74
	.byte	0x38
	.uleb128 0xd
	.long	.LASF49
	.byte	0x5
	.byte	0x38
	.long	0x74
	.byte	0x3c
	.uleb128 0xd
	.long	.LASF50
	.byte	0x5
	.byte	0x3b
	.long	0x1cf
	.byte	0x40
	.byte	0
	.uleb128 0xb
	.long	.LASF51
	.byte	0x50
	.byte	0x5
	.byte	0x3e
	.long	0x325
	.uleb128 0xd
	.long	.LASF52
	.byte	0x5
	.byte	0x3f
	.long	0x35c
	.byte	0
	.uleb128 0xd
	.long	.LASF53
	.byte	0x5
	.byte	0x41
	.long	0x371
	.byte	0x8
	.uleb128 0xd
	.long	.LASF54
	.byte	0x5
	.byte	0x42
	.long	0x371
	.byte	0x10
	.uleb128 0xd
	.long	.LASF55
	.byte	0x5
	.byte	0x44
	.long	0x371
	.byte	0x18
	.uleb128 0xd
	.long	.LASF56
	.byte	0x5
	.byte	0x47
	.long	0x387
	.byte	0x20
	.uleb128 0xd
	.long	.LASF57
	.byte	0x5
	.byte	0x49
	.long	0x3a3
	.byte	0x28
	.uleb128 0xd
	.long	.LASF58
	.byte	0x5
	.byte	0x4b
	.long	0x3b9
	.byte	0x30
	.uleb128 0xd
	.long	.LASF59
	.byte	0x5
	.byte	0x4d
	.long	0x3d4
	.byte	0x38
	.uleb128 0xd
	.long	.LASF60
	.byte	0x5
	.byte	0x4f
	.long	0x3e5
	.byte	0x40
	.uleb128 0xd
	.long	.LASF61
	.byte	0x5
	.byte	0x50
	.long	0x3e5
	.byte	0x48
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x32b
	.uleb128 0x10
	.long	0x2a0
	.uleb128 0x6
	.byte	0x8
	.long	0x336
	.uleb128 0x11
	.long	0x50
	.uleb128 0x3
	.long	.LASF62
	.byte	0x5
	.byte	0x3c
	.long	0x1eb
	.uleb128 0x7
	.long	0x356
	.uleb128 0x8
	.long	0x356
	.uleb128 0x8
	.long	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x33b
	.uleb128 0x6
	.byte	0x8
	.long	0x346
	.uleb128 0x12
	.long	0x50
	.long	0x371
	.uleb128 0x8
	.long	0x356
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x362
	.uleb128 0x7
	.long	0x387
	.uleb128 0x8
	.long	0x356
	.uleb128 0x8
	.long	0x74
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x377
	.uleb128 0x12
	.long	0x39c
	.long	0x39c
	.uleb128 0x8
	.long	0x356
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF63
	.uleb128 0x6
	.byte	0x8
	.long	0x38d
	.uleb128 0x7
	.long	0x3b9
	.uleb128 0x8
	.long	0x356
	.uleb128 0x8
	.long	0x178
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3a9
	.uleb128 0x7
	.long	0x3d4
	.uleb128 0x8
	.long	0x356
	.uleb128 0x8
	.long	0x94
	.uleb128 0x8
	.long	0x42
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3bf
	.uleb128 0x7
	.long	0x3e5
	.uleb128 0x8
	.long	0x356
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3da
	.uleb128 0x3
	.long	.LASF64
	.byte	0x6
	.byte	0x35
	.long	0x3f6
	.uleb128 0x6
	.byte	0x8
	.long	0x3fc
	.uleb128 0x13
	.long	.LASF189
	.uleb128 0xe
	.long	.LASF65
	.byte	0x4
	.long	0x7f
	.byte	0x7
	.byte	0x81
	.long	0x424
	.uleb128 0xf
	.long	.LASF66
	.byte	0
	.uleb128 0xf
	.long	.LASF67
	.byte	0x1
	.uleb128 0xf
	.long	.LASF68
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF65
	.byte	0x7
	.byte	0x86
	.long	0x401
	.uleb128 0xe
	.long	.LASF69
	.byte	0x4
	.long	0x7f
	.byte	0x7
	.byte	0x89
	.long	0x45e
	.uleb128 0xf
	.long	.LASF70
	.byte	0
	.uleb128 0xf
	.long	.LASF71
	.byte	0x1
	.uleb128 0xf
	.long	.LASF72
	.byte	0x2
	.uleb128 0xf
	.long	.LASF73
	.byte	0x3
	.uleb128 0xf
	.long	.LASF74
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF69
	.byte	0x7
	.byte	0x90
	.long	0x42f
	.uleb128 0xe
	.long	.LASF75
	.byte	0x4
	.long	0x7f
	.byte	0x7
	.byte	0x93
	.long	0x492
	.uleb128 0xf
	.long	.LASF76
	.byte	0
	.uleb128 0xf
	.long	.LASF77
	.byte	0x1
	.uleb128 0xf
	.long	.LASF78
	.byte	0x2
	.uleb128 0xf
	.long	.LASF79
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF75
	.byte	0x7
	.byte	0x99
	.long	0x469
	.uleb128 0xb
	.long	.LASF80
	.byte	0x40
	.byte	0x7
	.byte	0xdc
	.long	0x578
	.uleb128 0xc
	.string	"gx"
	.byte	0x7
	.byte	0xe2
	.long	0x30
	.byte	0
	.uleb128 0xc
	.string	"gy"
	.byte	0x7
	.byte	0xe2
	.long	0x30
	.byte	0x2
	.uleb128 0xc
	.string	"gz"
	.byte	0x7
	.byte	0xe2
	.long	0x30
	.byte	0x4
	.uleb128 0xc
	.string	"ax"
	.byte	0x7
	.byte	0xe3
	.long	0x30
	.byte	0x6
	.uleb128 0xc
	.string	"ay"
	.byte	0x7
	.byte	0xe3
	.long	0x30
	.byte	0x8
	.uleb128 0xc
	.string	"az"
	.byte	0x7
	.byte	0xe3
	.long	0x30
	.byte	0xa
	.uleb128 0xc
	.string	"mx"
	.byte	0x7
	.byte	0xe4
	.long	0x30
	.byte	0xc
	.uleb128 0xc
	.string	"my"
	.byte	0x7
	.byte	0xe4
	.long	0x30
	.byte	0xe
	.uleb128 0xc
	.string	"mz"
	.byte	0x7
	.byte	0xe4
	.long	0x30
	.byte	0x10
	.uleb128 0xd
	.long	.LASF81
	.byte	0x7
	.byte	0xe5
	.long	0x30
	.byte	0x12
	.uleb128 0xd
	.long	.LASF82
	.byte	0x7
	.byte	0xe7
	.long	0x3eb
	.byte	0x18
	.uleb128 0xc
	.string	"xm"
	.byte	0x7
	.byte	0xe8
	.long	0x3eb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF83
	.byte	0x7
	.byte	0xec
	.long	0x424
	.byte	0x28
	.uleb128 0xd
	.long	.LASF84
	.byte	0x7
	.byte	0xed
	.long	0x45e
	.byte	0x2c
	.uleb128 0xd
	.long	.LASF85
	.byte	0x7
	.byte	0xee
	.long	0x492
	.byte	0x30
	.uleb128 0xd
	.long	.LASF86
	.byte	0x7
	.byte	0xf3
	.long	0x578
	.byte	0x34
	.uleb128 0xd
	.long	.LASF87
	.byte	0x7
	.byte	0xf3
	.long	0x578
	.byte	0x38
	.uleb128 0xd
	.long	.LASF88
	.byte	0x7
	.byte	0xf3
	.long	0x578
	.byte	0x3c
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF89
	.uleb128 0x3
	.long	.LASF90
	.byte	0x7
	.byte	0xf5
	.long	0x49d
	.uleb128 0x14
	.byte	0x4
	.long	0x7f
	.byte	0x1
	.byte	0x14
	.long	0x5a9
	.uleb128 0xf
	.long	.LASF91
	.byte	0
	.uleb128 0xf
	.long	.LASF92
	.byte	0x1
	.uleb128 0xf
	.long	.LASF93
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF94
	.byte	0x1
	.byte	0x18
	.long	0x58a
	.uleb128 0x14
	.byte	0x4
	.long	0x7f
	.byte	0x1
	.byte	0x1a
	.long	0x605
	.uleb128 0xf
	.long	.LASF95
	.byte	0
	.uleb128 0xf
	.long	.LASF96
	.byte	0x1
	.uleb128 0xf
	.long	.LASF97
	.byte	0x2
	.uleb128 0xf
	.long	.LASF98
	.byte	0x4
	.uleb128 0xf
	.long	.LASF99
	.byte	0x8
	.uleb128 0xf
	.long	.LASF100
	.byte	0x10
	.uleb128 0xf
	.long	.LASF101
	.byte	0x20
	.uleb128 0xf
	.long	.LASF102
	.byte	0x40
	.uleb128 0xf
	.long	.LASF103
	.byte	0x80
	.uleb128 0x15
	.long	.LASF104
	.value	0x100
	.uleb128 0x15
	.long	.LASF105
	.value	0x200
	.byte	0
	.uleb128 0x3
	.long	.LASF106
	.byte	0x1
	.byte	0x26
	.long	0x5b4
	.uleb128 0x14
	.byte	0x4
	.long	0x7f
	.byte	0x1
	.byte	0x28
	.long	0x64d
	.uleb128 0xf
	.long	.LASF107
	.byte	0
	.uleb128 0xf
	.long	.LASF108
	.byte	0x1
	.uleb128 0xf
	.long	.LASF109
	.byte	0x2
	.uleb128 0xf
	.long	.LASF110
	.byte	0x3
	.uleb128 0xf
	.long	.LASF111
	.byte	0x4
	.uleb128 0xf
	.long	.LASF112
	.byte	0x5
	.uleb128 0xf
	.long	.LASF113
	.byte	0x6
	.uleb128 0xf
	.long	.LASF114
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF115
	.byte	0x1
	.byte	0x31
	.long	0x610
	.uleb128 0x14
	.byte	0x4
	.long	0x42
	.byte	0x1
	.byte	0x36
	.long	0x6a1
	.uleb128 0x16
	.long	.LASF116
	.sleb128 -1
	.uleb128 0xf
	.long	.LASF117
	.byte	0
	.uleb128 0xf
	.long	.LASF118
	.byte	0x1
	.uleb128 0xf
	.long	.LASF119
	.byte	0x2
	.uleb128 0xf
	.long	.LASF120
	.byte	0x3
	.uleb128 0xf
	.long	.LASF121
	.byte	0x4
	.uleb128 0xf
	.long	.LASF122
	.byte	0x14
	.uleb128 0xf
	.long	.LASF123
	.byte	0x1e
	.uleb128 0xf
	.long	.LASF124
	.byte	0x1f
	.uleb128 0xf
	.long	.LASF125
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.long	.LASF126
	.byte	0x1
	.byte	0x41
	.long	0x658
	.uleb128 0xb
	.long	.LASF127
	.byte	0x18
	.byte	0x1
	.byte	0x4b
	.long	0x6dd
	.uleb128 0xd
	.long	.LASF38
	.byte	0x1
	.byte	0x4c
	.long	0x6a1
	.byte	0
	.uleb128 0xd
	.long	.LASF128
	.byte	0x1
	.byte	0x4d
	.long	0x356
	.byte	0x8
	.uleb128 0xd
	.long	.LASF129
	.byte	0x1
	.byte	0x4e
	.long	0x605
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF130
	.byte	0x1
	.byte	0x4f
	.long	0x6ac
	.uleb128 0xb
	.long	.LASF131
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.long	0x719
	.uleb128 0xd
	.long	.LASF38
	.byte	0x1
	.byte	0x5b
	.long	0x6a1
	.byte	0
	.uleb128 0xd
	.long	.LASF132
	.byte	0x1
	.byte	0x5c
	.long	0x62
	.byte	0x4
	.uleb128 0xd
	.long	.LASF133
	.byte	0x1
	.byte	0x5d
	.long	0x719
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.long	0x50
	.long	0x729
	.uleb128 0x18
	.long	0x8d
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF134
	.byte	0x1
	.byte	0x5e
	.long	0x6e8
	.uleb128 0xb
	.long	.LASF135
	.byte	0x1c
	.byte	0x1
	.byte	0x60
	.long	0x759
	.uleb128 0xd
	.long	.LASF136
	.byte	0x1
	.byte	0x61
	.long	0x50
	.byte	0
	.uleb128 0xd
	.long	.LASF137
	.byte	0x1
	.byte	0x62
	.long	0x759
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.long	0x729
	.long	0x769
	.uleb128 0x18
	.long	0x8d
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF138
	.byte	0x1
	.byte	0x63
	.long	0x734
	.uleb128 0xb
	.long	.LASF139
	.byte	0x1
	.byte	0x2
	.byte	0x82
	.long	0x78d
	.uleb128 0xd
	.long	.LASF140
	.byte	0x2
	.byte	0x83
	.long	0x50
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF141
	.byte	0x2
	.byte	0x84
	.long	0x774
	.uleb128 0xb
	.long	.LASF142
	.byte	0x1
	.byte	0x2
	.byte	0x9a
	.long	0x7b1
	.uleb128 0xd
	.long	.LASF140
	.byte	0x2
	.byte	0x9b
	.long	0x50
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF143
	.byte	0x2
	.byte	0x9c
	.long	0x798
	.uleb128 0x19
	.long	.LASF190
	.byte	0x1
	.byte	0x65
	.long	0x7d9
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x769
	.uleb128 0x1a
	.long	.LASF146
	.byte	0x2
	.byte	0x5e
	.long	0x64d
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x81d
	.uleb128 0x1b
	.long	.LASF41
	.byte	0x2
	.byte	0x5e
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.long	.LASF144
	.byte	0x2
	.byte	0x60
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1d
	.long	.LASF191
	.byte	0x2
	.byte	0x6a
	.long	0x87b
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x87b
	.uleb128 0x1b
	.long	.LASF38
	.byte	0x2
	.byte	0x6a
	.long	0x6a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.long	.LASF144
	.byte	0x2
	.byte	0x6c
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1e
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1c
	.long	.LASF145
	.byte	0x2
	.byte	0x6e
	.long	0x87b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6dd
	.uleb128 0x1a
	.long	.LASF147
	.byte	0x2
	.byte	0x76
	.long	0x87b
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x8df
	.uleb128 0x1b
	.long	.LASF128
	.byte	0x2
	.byte	0x76
	.long	0x356
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF144
	.byte	0x2
	.byte	0x78
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1e
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1c
	.long	.LASF145
	.byte	0x2
	.byte	0x7a
	.long	0x87b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF148
	.byte	0x2
	.byte	0x88
	.long	0x90f
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x90f
	.uleb128 0x1b
	.long	.LASF149
	.byte	0x2
	.byte	0x88
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x729
	.uleb128 0x1f
	.long	.LASF150
	.byte	0x2
	.byte	0x8f
	.long	0x90f
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x965
	.uleb128 0x1b
	.long	.LASF149
	.byte	0x2
	.byte	0x8f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1c
	.long	.LASF145
	.byte	0x2
	.byte	0x92
	.long	0x90f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF151
	.byte	0x2
	.byte	0x9e
	.long	0x5a9
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x9a3
	.uleb128 0x1b
	.long	.LASF152
	.byte	0x2
	.byte	0x9e
	.long	0x90f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.long	.LASF129
	.byte	0x2
	.byte	0x9e
	.long	0x605
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1a
	.long	.LASF153
	.byte	0x2
	.byte	0xa6
	.long	0x39c
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x9ef
	.uleb128 0x1b
	.long	.LASF152
	.byte	0x2
	.byte	0xa6
	.long	0x90f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.long	.LASF132
	.byte	0x2
	.byte	0xa6
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.long	.LASF154
	.byte	0x2
	.byte	0xa6
	.long	0x605
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1f
	.long	.LASF155
	.byte	0x2
	.byte	0xab
	.long	0x39c
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xa2d
	.uleb128 0x1b
	.long	.LASF152
	.byte	0x2
	.byte	0xab
	.long	0x90f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x2
	.byte	0xad
	.long	0x87b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF157
	.byte	0x2
	.byte	0xb4
	.long	0x356
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xa6b
	.uleb128 0x1b
	.long	.LASF132
	.byte	0x2
	.byte	0xb4
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.long	.LASF154
	.byte	0x2
	.byte	0xb4
	.long	0x605
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF158
	.byte	0x2
	.byte	0xbb
	.long	0x356
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xae9
	.uleb128 0x1b
	.long	.LASF132
	.byte	0x2
	.byte	0xbb
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.long	.LASF154
	.byte	0x2
	.byte	0xbb
	.long	0x605
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1c
	.long	.LASF145
	.byte	0x2
	.byte	0xbe
	.long	0x90f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x2
	.byte	0xc1
	.long	0x87b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF159
	.byte	0x2
	.byte	0xce
	.long	0x39c
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xb63
	.uleb128 0x1b
	.long	.LASF160
	.byte	0x2
	.byte	0xce
	.long	0x7d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF161
	.byte	0x2
	.byte	0xd7
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x1c
	.long	.LASF144
	.byte	0x2
	.byte	0xd9
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1e
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1c
	.long	.LASF152
	.byte	0x2
	.byte	0xdb
	.long	0x90f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF162
	.byte	0x2
	.byte	0xe1
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF163
	.byte	0x2
	.byte	0xf9
	.long	0x90f
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xbc1
	.uleb128 0x1b
	.long	.LASF38
	.byte	0x2
	.byte	0xf9
	.long	0x6a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.long	.LASF144
	.byte	0x2
	.byte	0xfb
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1e
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x1c
	.long	.LASF145
	.byte	0x2
	.byte	0xfd
	.long	0x90f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF164
	.byte	0x2
	.value	0x105
	.long	0x39c
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xc02
	.uleb128 0x21
	.long	.LASF38
	.byte	0x2
	.value	0x105
	.long	0x6a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.long	.LASF145
	.byte	0x2
	.value	0x107
	.long	0x90f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF165
	.byte	0x2
	.value	0x10b
	.long	0x356
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xc9d
	.uleb128 0x21
	.long	.LASF38
	.byte	0x2
	.value	0x10c
	.long	0x6a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.long	.LASF129
	.byte	0x2
	.value	0x10d
	.long	0x605
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF50
	.byte	0x2
	.value	0x10e
	.long	0x1cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF41
	.byte	0x2
	.value	0x10f
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x21
	.long	.LASF39
	.byte	0x2
	.value	0x110
	.long	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF40
	.byte	0x2
	.value	0x111
	.long	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x22
	.long	.LASF156
	.byte	0x2
	.value	0x11a
	.long	0x87b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF128
	.byte	0x2
	.value	0x120
	.long	0x356
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.long	.LASF166
	.byte	0x2
	.value	0x15d
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xcda
	.uleb128 0x21
	.long	.LASF128
	.byte	0x2
	.value	0x15d
	.long	0x356
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF156
	.byte	0x2
	.value	0x15f
	.long	0x87b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.long	.LASF167
	.byte	0x2
	.value	0x16d
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xd17
	.uleb128 0x21
	.long	.LASF168
	.byte	0x2
	.value	0x16d
	.long	0x39c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.long	.LASF144
	.byte	0x2
	.value	0x16f
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x24
	.long	.LASF169
	.byte	0x2
	.value	0x18e
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0xd66
	.uleb128 0x21
	.long	.LASF38
	.byte	0x2
	.value	0x18e
	.long	0x6a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x22
	.long	.LASF144
	.byte	0x2
	.value	0x190
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF192
	.byte	0x2
	.value	0x198
	.long	0x50
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF170
	.byte	0x2
	.value	0x19d
	.long	0x39c
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0xdd7
	.uleb128 0x21
	.long	.LASF38
	.byte	0x2
	.value	0x19d
	.long	0x6a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x22
	.long	.LASF144
	.byte	0x2
	.value	0x19f
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF171
	.byte	0x2
	.value	0x1a7
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0xe05
	.uleb128 0x21
	.long	.LASF128
	.byte	0x2
	.value	0x1a7
	.long	0x356
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.long	0x6dd
	.long	0xe15
	.uleb128 0x18
	.long	0x8d
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.long	.LASF172
	.byte	0x2
	.byte	0x3b
	.long	0xe05
	.uleb128 0x9
	.byte	0x3
	.quad	serialPortUsageList
	.uleb128 0x1c
	.long	.LASF173
	.byte	0x2
	.byte	0x58
	.long	0x50
	.uleb128 0x9
	.byte	0x3
	.quad	serialPortCount
	.uleb128 0x1c
	.long	.LASF174
	.byte	0x2
	.byte	0x86
	.long	0x78d
	.uleb128 0x9
	.byte	0x3
	.quad	findSerialPortConfigState
	.uleb128 0x1c
	.long	.LASF175
	.byte	0x2
	.byte	0xb2
	.long	0x7b1
	.uleb128 0x9
	.byte	0x3
	.quad	findSharedSerialPortState
	.uleb128 0x27
	.long	.LASF176
	.byte	0x8
	.byte	0xca
	.long	0x74
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_0
	.uleb128 0x27
	.long	.LASF177
	.byte	0x8
	.byte	0xcb
	.long	0x74
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_1
	.uleb128 0x27
	.long	.LASF178
	.byte	0x8
	.byte	0xcc
	.long	0x74
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_2
	.uleb128 0x27
	.long	.LASF179
	.byte	0x4
	.byte	0x43
	.long	0xebd
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_start
	.uleb128 0x6
	.byte	0x8
	.long	0x14a
	.uleb128 0x27
	.long	.LASF180
	.byte	0x4
	.byte	0x44
	.long	0xebd
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_registry_end
	.uleb128 0x27
	.long	.LASF181
	.byte	0x4
	.byte	0x47
	.long	0xab
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_start
	.uleb128 0x27
	.long	.LASF182
	.byte	0x4
	.byte	0x48
	.long	0xab
	.uleb128 0x9
	.byte	0x3
	.quad	__pg_resetdata_end
	.uleb128 0x28
	.string	"imu"
	.byte	0xa
	.byte	0x38
	.long	0xf17
	.uleb128 0x9
	.byte	0x3
	.quad	imu
	.uleb128 0x6
	.byte	0x8
	.long	0x57f
	.uleb128 0x27
	.long	.LASF183
	.byte	0x9
	.byte	0x1f
	.long	0xf32
	.uleb128 0x9
	.byte	0x3
	.quad	receiveLength
	.uleb128 0x11
	.long	0x74
	.uleb128 0x17
	.long	0xf47
	.long	0xf47
	.uleb128 0x18
	.long	0x8d
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.long	0x74
	.uleb128 0x27
	.long	.LASF133
	.byte	0x2
	.byte	0x5a
	.long	0xf61
	.uleb128 0x9
	.byte	0x3
	.quad	baudRates
	.uleb128 0x10
	.long	0xf37
	.uleb128 0x17
	.long	0xf76
	.long	0xf76
	.uleb128 0x18
	.long	0x8d
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	0x6a1
	.uleb128 0x27
	.long	.LASF184
	.byte	0x2
	.byte	0x3d
	.long	0xf90
	.uleb128 0x9
	.byte	0x3
	.quad	serialPortIdentifiers
	.uleb128 0x10
	.long	0xf66
	.uleb128 0x27
	.long	.LASF185
	.byte	0x1
	.byte	0x65
	.long	0x769
	.uleb128 0x9
	.byte	0x3
	.quad	serialConfig_System
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.long	0x16c
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
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF155:
	.string	"isSerialPortOpen"
.LASF105:
	.string	"FUNCTION_MSP_CLIENT"
.LASF19:
	.string	"reset"
.LASF128:
	.string	"serialPort"
.LASF173:
	.string	"serialPortCount"
.LASF22:
	.string	"MODE_TX"
.LASF150:
	.string	"findNextSerialPortConfig"
.LASF170:
	.string	"serialIsPortAvailable"
.LASF16:
	.string	"pgResetFunc"
.LASF61:
	.string	"endWrite"
.LASF95:
	.string	"FUNCTION_NONE"
.LASF65:
	.string	"gyro_scale"
.LASF34:
	.string	"serialReceiveCallbackPtr"
.LASF154:
	.string	"sharedWithFunction"
.LASF144:
	.string	"index"
.LASF43:
	.string	"txBufferSize"
.LASF14:
	.string	"long long unsigned int"
.LASF107:
	.string	"BAUD_AUTO"
.LASF125:
	.string	"SERIAL_PORT_IDENTIFIER_MAX"
.LASF137:
	.string	"portConfigs"
.LASF139:
	.string	"findSerialPortConfigState_s"
.LASF141:
	.string	"findSerialPortConfigState_t"
.LASF84:
	.string	"aScale"
.LASF136:
	.string	"reboot_character"
.LASF163:
	.string	"serialFindPortConfiguration"
.LASF178:
	.string	"U_ID_2"
.LASF181:
	.string	"__pg_resetdata_start"
.LASF3:
	.string	"int16_t"
.LASF53:
	.string	"serialTotalRxWaiting"
.LASF0:
	.string	"signed char"
.LASF129:
	.string	"function"
.LASF88:
	.string	"mRes"
.LASF145:
	.string	"candidate"
.LASF44:
	.string	"rxBuffer"
.LASF64:
	.string	"mraa_i2c_context"
.LASF183:
	.string	"receiveLength"
.LASF2:
	.string	"long int"
.LASF191:
	.string	"findSerialPortUsageByIdentifier"
.LASF24:
	.string	"portMode_t"
.LASF68:
	.string	"G_SCALE_2000DPS"
.LASF72:
	.string	"A_SCALE_6G"
.LASF92:
	.string	"PORTSHARING_NOT_SHARED"
.LASF13:
	.string	"long long int"
.LASF6:
	.string	"uint16_t"
.LASF122:
	.string	"SERIAL_PORT_USB_VCP"
.LASF157:
	.string	"findSharedSerialPort"
.LASF81:
	.string	"temperature"
.LASF114:
	.string	"BAUD_250000"
.LASF41:
	.string	"baudRate"
.LASF80:
	.string	"LSM9DS0"
.LASF113:
	.string	"BAUD_230400"
.LASF29:
	.string	"SERIAL_STOPBITS_2"
.LASF67:
	.string	"G_SCALE_500DPS"
.LASF66:
	.string	"G_SCALE_245DPS"
.LASF160:
	.string	"serialConfigToCheck"
.LASF118:
	.string	"SERIAL_PORT_UART2"
.LASF119:
	.string	"SERIAL_PORT_UART3"
.LASF120:
	.string	"SERIAL_PORT_UART4"
.LASF130:
	.string	"serialPortUsage_t"
.LASF126:
	.string	"serialPortIdentifier_e"
.LASF104:
	.string	"FUNCTION_TELEMETRY_MAVLINK"
.LASF174:
	.string	"findSerialPortConfigState"
.LASF59:
	.string	"writeBuf"
.LASF52:
	.string	"serialWrite"
.LASF90:
	.string	"LSM9DS0_t"
.LASF55:
	.string	"serialRead"
.LASF186:
	.string	"GNU C99 5.4.1 20160904 -mtune=generic -march=x86-64 -g -std=gnu99 -ffunction-sections -fdata-sections -ffat-lto-objects -fstack-protector-strong"
.LASF15:
	.string	"pgn_t"
.LASF10:
	.string	"long unsigned int"
.LASF184:
	.string	"serialPortIdentifiers"
.LASF162:
	.string	"bitCount"
.LASF25:
	.string	"portOptions_t"
.LASF185:
	.string	"serialConfig_System"
.LASF87:
	.string	"aRes"
.LASF17:
	.string	"size"
.LASF7:
	.string	"short unsigned int"
.LASF146:
	.string	"lookupBaudRateIndex"
.LASF74:
	.string	"A_SCALE_16G"
.LASF153:
	.string	"isSerialPortShared"
.LASF133:
	.string	"baudRates"
.LASF50:
	.string	"callback"
.LASF46:
	.string	"rxBufferHead"
.LASF33:
	.string	"SERIAL_BIDIR"
.LASF165:
	.string	"openSerialPort"
.LASF166:
	.string	"closeSerialPort"
.LASF60:
	.string	"beginWrite"
.LASF83:
	.string	"gScale"
.LASF190:
	.string	"serialConfig"
.LASF123:
	.string	"SERIAL_PORT_SOFTSERIAL1"
.LASF124:
	.string	"SERIAL_PORT_SOFTSERIAL2"
.LASF159:
	.string	"isSerialConfigValid"
.LASF180:
	.string	"__pg_registry_end"
.LASF73:
	.string	"A_SCALE_8G"
.LASF82:
	.string	"gyro"
.LASF56:
	.string	"serialSetBaudRate"
.LASF172:
	.string	"serialPortUsageList"
.LASF91:
	.string	"PORTSHARING_UNUSED"
.LASF11:
	.string	"sizetype"
.LASF51:
	.string	"serialPortVTable"
.LASF57:
	.string	"isSerialTransmitBufferEmpty"
.LASF18:
	.string	"address"
.LASF189:
	.string	"_i2c"
.LASF75:
	.string	"mag_scale"
.LASF115:
	.string	"baudRate_e"
.LASF21:
	.string	"MODE_RX"
.LASF156:
	.string	"serialPortUsage"
.LASF182:
	.string	"__pg_resetdata_end"
.LASF179:
	.string	"__pg_registry_start"
.LASF187:
	.string	"src/main/io/io_serial.c"
.LASF127:
	.string	"serialPortUsage_s"
.LASF176:
	.string	"U_ID_0"
.LASF117:
	.string	"SERIAL_PORT_UART1"
.LASF188:
	.string	"/home/aravind/git/cleanflight"
.LASF89:
	.string	"float"
.LASF148:
	.string	"findSerialPortConfig"
.LASF121:
	.string	"SERIAL_PORT_UART5"
.LASF23:
	.string	"MODE_RXTX"
.LASF164:
	.string	"doesConfigurationUsePort"
.LASF169:
	.string	"serialRemovePort"
.LASF106:
	.string	"serialPortFunction_e"
.LASF63:
	.string	"_Bool"
.LASF32:
	.string	"SERIAL_UNIDIR"
.LASF5:
	.string	"unsigned char"
.LASF42:
	.string	"rxBufferSize"
.LASF142:
	.string	"findSharedSerialPortState_s"
.LASF143:
	.string	"findSharedSerialPortState_t"
.LASF1:
	.string	"short int"
.LASF109:
	.string	"BAUD_19200"
.LASF49:
	.string	"txBufferTail"
.LASF54:
	.string	"serialTotalTxFree"
.LASF110:
	.string	"BAUD_38400"
.LASF158:
	.string	"findNextSharedSerialPort"
.LASF111:
	.string	"BAUD_57600"
.LASF101:
	.string	"FUNCTION_TELEMETRY_SMARTPORT"
.LASF151:
	.string	"determinePortSharing"
.LASF70:
	.string	"A_SCALE_2G"
.LASF135:
	.string	"serialConfig_s"
.LASF138:
	.string	"serialConfig_t"
.LASF175:
	.string	"findSharedSerialPortState"
.LASF112:
	.string	"BAUD_115200"
.LASF77:
	.string	"M_SCALE_4GS"
.LASF31:
	.string	"SERIAL_PARITY_EVEN"
.LASF131:
	.string	"serialPortConfig_s"
.LASF134:
	.string	"serialPortConfig_t"
.LASF94:
	.string	"portSharing_e"
.LASF48:
	.string	"txBufferHead"
.LASF8:
	.string	"uint32_t"
.LASF177:
	.string	"U_ID_1"
.LASF35:
	.string	"pgRegistry_s"
.LASF20:
	.string	"pgRegistry_t"
.LASF12:
	.string	"char"
.LASF39:
	.string	"mode"
.LASF47:
	.string	"rxBufferTail"
.LASF9:
	.string	"unsigned int"
.LASF171:
	.string	"waitForSerialPortToFinishTransmitting"
.LASF108:
	.string	"BAUD_9600"
.LASF161:
	.string	"mspPortCount"
.LASF167:
	.string	"serialInit"
.LASF152:
	.string	"portConfig"
.LASF76:
	.string	"M_SCALE_2GS"
.LASF85:
	.string	"mScale"
.LASF98:
	.string	"FUNCTION_TELEMETRY_FRSKY"
.LASF102:
	.string	"FUNCTION_RX_SERIAL"
.LASF132:
	.string	"functionMask"
.LASF96:
	.string	"FUNCTION_MSP_SERVER"
.LASF86:
	.string	"gRes"
.LASF27:
	.string	"SERIAL_INVERTED"
.LASF58:
	.string	"setMode"
.LASF38:
	.string	"identifier"
.LASF103:
	.string	"FUNCTION_BLACKBOX"
.LASF37:
	.string	"vTable"
.LASF140:
	.string	"lastIndex"
.LASF147:
	.string	"findSerialPortUsageByPort"
.LASF116:
	.string	"SERIAL_PORT_NONE"
.LASF100:
	.string	"FUNCTION_TELEMETRY_LTM"
.LASF45:
	.string	"txBuffer"
.LASF149:
	.string	"mask"
.LASF97:
	.string	"FUNCTION_GPS"
.LASF26:
	.string	"SERIAL_NOT_INVERTED"
.LASF4:
	.string	"uint8_t"
.LASF168:
	.string	"softserialEnabled"
.LASF69:
	.string	"accel_scale"
.LASF40:
	.string	"options"
.LASF192:
	.string	"serialGetAvailablePortCount"
.LASF99:
	.string	"FUNCTION_TELEMETRY_HOTT"
.LASF93:
	.string	"PORTSHARING_SHARED"
.LASF30:
	.string	"SERIAL_PARITY_NO"
.LASF71:
	.string	"A_SCALE_4G"
.LASF28:
	.string	"SERIAL_STOPBITS_1"
.LASF78:
	.string	"M_SCALE_8GS"
.LASF79:
	.string	"M_SCALE_12GS"
.LASF36:
	.string	"serialPort_s"
.LASF62:
	.string	"serialPort_t"
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
