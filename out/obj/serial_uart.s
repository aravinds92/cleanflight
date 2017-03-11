	.file	"serial_uart.c"
# GNU C99 (Ubuntu 5.4.1-2ubuntu1~16.04) version 5.4.1 20160904 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.1 20160904, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed serial_uart.i -mtune=generic
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
	.comm	receiveLength,4,4
	.comm	imu,8,8
	.globl	data_available
	.section	.bss.data_available,"aw",@nobits
	.type	data_available, @object
	.size	data_available, 1
data_available:
	.zero	1
	.globl	data_read
	.section	.data.data_read,"aw",@progbits
	.type	data_read, @object
	.size	data_read, 1
data_read:
	.byte	1
	.comm	temp_buff,100,32
	.comm	temp_data_len,4,4
	.comm	read_pos,4,4
	.comm	USB,88,32
	.globl	linecoding
	.section	.data.linecoding,"aw",@progbits
	.align 8
	.type	linecoding, @object
	.size	linecoding, 8
linecoding:
# bitrate:
	.long	115200
# format:
	.byte	0
# paritytype:
	.byte	0
# datatype:
	.byte	8
	.zero	1
	.globl	portname
	.section	.data.portname,"aw",@progbits
	.align 16
	.type	portname, @object
	.size	portname, 20
portname:
	.string	"/dev/ttyMFD2"
	.zero	7
	.comm	rdlen,4,4
	.comm	usb_port,72,32
	.section	.rodata.usbTable,"a",@progbits
	.align 32
	.type	usbTable, @object
	.size	usbTable, 80
usbTable:
# serialWrite:
	.quad	usbVcpWrite
# serialTotalRxWaiting:
	.quad	serial_waiting
# serialTotalTxFree:
	.quad	usbTxBytesFree
# serialRead:
	.quad	usbVcpRead
# serialSetBaudRate:
	.quad	usbVcpSetBaudRate
# isSerialTransmitBufferEmpty:
	.quad	usb_txbuffer_empty
# setMode:
	.quad	usbVcpSetMode
# writeBuf:
	.quad	0
# beginWrite:
	.quad	0
# endWrite:
	.quad	0
	.section	.text.usartInitAllIOSignals,"ax",@progbits
	.globl	usartInitAllIOSignals
	.type	usartInitAllIOSignals, @function
usartInitAllIOSignals:
.LFB4:
	.file 1 "src/main/drivers/serial_uart.c"
	.loc 1 96 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 98 0
	movl	$0, USB+76(%rip)	#, USB.deviceState
	.loc 1 99 0
	movq	usb_port(%rip), %rax	# usb_port, tmp89
	movq	%rax, USB(%rip)	# tmp89, USB.port
	movq	usb_port+8(%rip), %rax	# usb_port, tmp90
	movq	%rax, USB+8(%rip)	# tmp90, USB.port
	movq	usb_port+16(%rip), %rax	# usb_port, tmp91
	movq	%rax, USB+16(%rip)	# tmp91, USB.port
	movq	usb_port+24(%rip), %rax	# usb_port, tmp92
	movq	%rax, USB+24(%rip)	# tmp92, USB.port
	movq	usb_port+32(%rip), %rax	# usb_port, tmp93
	movq	%rax, USB+32(%rip)	# tmp93, USB.port
	movq	usb_port+40(%rip), %rax	# usb_port, tmp94
	movq	%rax, USB+40(%rip)	# tmp94, USB.port
	movq	usb_port+48(%rip), %rax	# usb_port, tmp95
	movq	%rax, USB+48(%rip)	# tmp95, USB.port
	movq	usb_port+56(%rip), %rax	# usb_port, tmp96
	movq	%rax, USB+56(%rip)	# tmp96, USB.port
	movq	usb_port+64(%rip), %rax	# usb_port, tmp97
	movq	%rax, USB+64(%rip)	# tmp97, USB.port
	.loc 1 100 0
	movq	$usbTable, USB(%rip)	#, USB.port.vTable
	.loc 1 103 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	usartInitAllIOSignals, .-usartInitAllIOSignals
	.section	.text.usbInit,"ax",@progbits
	.globl	usbInit
	.type	usbInit, @function
usbInit:
.LFB5:
	.loc 1 107 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 108 0
	call	usbOpen	#
	movl	%eax, -4(%rbp)	# tmp89, fd
	.loc 1 110 0
	movl	-4(%rbp), %eax	# fd, tmp90
	movl	$2, %esi	#,
	movl	%eax, %edi	# tmp90,
	call	tcflush	#
	.loc 1 111 0
	movl	-4(%rbp), %eax	# fd, tmp91
	movl	%eax, %edi	# tmp91,
	call	SetUsbAttributes	#
	.loc 1 112 0
	movl	$USB, %eax	#, D.5298
	.loc 1 113 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	usbInit, .-usbInit
	.section	.rodata
.LC0:
	.string	"Error opening %s: %s\n"
	.section	.text.usbOpen,"ax",@progbits
	.globl	usbOpen
	.type	usbOpen, @function
usbOpen:
.LFB6:
	.loc 1 117 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 118 0
	movl	$1054978, %esi	#,
	movl	$portname, %edi	#,
	movl	$0, %eax	#,
	call	open	#
	movl	%eax, -4(%rbp)	# tmp92, fd
	.loc 1 119 0
	cmpl	$0, -4(%rbp)	#, fd
	jns	.L5	#,
	.loc 1 120 0
	call	__errno_location	#
	.loc 1 120 0
	movl	(%rax), %eax	# *_7, D.5299
	movl	%eax, %edi	# D.5299,
	call	strerror	#
	movq	%rax, %rdx	# D.5301,
	movl	$portname, %esi	#,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 121 0
	movl	$1, %edi	#,
	call	exit	#
.L5:
	.loc 1 123 0
	movl	-4(%rbp), %eax	# fd, tmp93
	movl	%eax, USB+72(%rip)	# tmp93, USB.fd
	.loc 1 124 0
	movl	$5, USB+76(%rip)	#, USB.deviceState
	.loc 1 125 0
	movl	-4(%rbp), %eax	# fd, D.5299
	.loc 1 126 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	usbOpen, .-usbOpen
	.section	.rodata
.LC1:
	.string	"Error from tcgetattr: %s\n"
.LC2:
	.string	"Error from tcsetattr: %s\n"
	.section	.text.SetUsbAttributes,"ax",@progbits
	.globl	SetUsbAttributes
	.type	SetUsbAttributes, @function
SetUsbAttributes:
.LFB7:
	.loc 1 130 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movl	%edi, -84(%rbp)	# fd, fd
	.loc 1 130 0
	movq	%fs:40, %rax	#, tmp115
	movq	%rax, -8(%rbp)	# tmp115, D.5307
	xorl	%eax, %eax	# tmp115
	.loc 1 133 0
	leaq	-80(%rbp), %rdx	#, tmp109
	movl	-84(%rbp), %eax	# fd, tmp110
	movq	%rdx, %rsi	# tmp109,
	movl	%eax, %edi	# tmp110,
	call	tcgetattr	#
	testl	%eax, %eax	# D.5303
	jns	.L8	#,
	.loc 1 134 0
	call	__errno_location	#
	.loc 1 134 0
	movl	(%rax), %eax	# *_36, D.5303
	movl	%eax, %edi	# D.5303,
	call	strerror	#
	movq	%rax, %rsi	# D.5306,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 135 0
	movl	$1, %edi	#,
	call	exit	#
.L8:
	.loc 1 138 0
	movl	linecoding(%rip), %edx	# linecoding.bitrate, D.5304
	leaq	-80(%rbp), %rax	#, tmp111
	movl	%edx, %esi	# D.5304,
	movq	%rax, %rdi	# tmp111,
	call	cfsetospeed	#
	.loc 1 139 0
	movl	linecoding(%rip), %edx	# linecoding.bitrate, D.5304
	leaq	-80(%rbp), %rax	#, tmp112
	movl	%edx, %esi	# D.5304,
	movq	%rax, %rdi	# tmp112,
	call	cfsetispeed	#
	.loc 1 144 0
	movl	-72(%rbp), %eax	# tty.c_cflag, D.5304
	orl	$2176, %eax	#, D.5304
	movl	%eax, -72(%rbp)	# D.5304, tty.c_cflag
	.loc 1 145 0
	movl	-72(%rbp), %eax	# tty.c_cflag, D.5304
	andl	$-49, %eax	#, D.5304
	movl	%eax, -72(%rbp)	# D.5304, tty.c_cflag
	.loc 1 146 0
	movl	-72(%rbp), %eax	# tty.c_cflag, D.5304
	orl	$48, %eax	#, D.5304
	movl	%eax, -72(%rbp)	# D.5304, tty.c_cflag
	.loc 1 147 0
	movl	-72(%rbp), %eax	# tty.c_cflag, D.5304
	andb	$254, %ah	#, D.5304
	movl	%eax, -72(%rbp)	# D.5304, tty.c_cflag
	.loc 1 148 0
	movl	-72(%rbp), %eax	# tty.c_cflag, D.5304
	andl	$-65, %eax	#, D.5304
	movl	%eax, -72(%rbp)	# D.5304, tty.c_cflag
	.loc 1 149 0
	movl	-72(%rbp), %eax	# tty.c_cflag, D.5304
	andl	$2147483647, %eax	#, D.5304
	movl	%eax, -72(%rbp)	# D.5304, tty.c_cflag
	.loc 1 151 0
	leaq	-80(%rbp), %rdx	#, tmp113
	movl	-84(%rbp), %eax	# fd, tmp114
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp114,
	call	tcsetattr	#
	testl	%eax, %eax	# D.5303
	je	.L12	#,
	.loc 1 152 0
	call	__errno_location	#
	.loc 1 152 0
	movl	(%rax), %eax	# *_30, D.5303
	movl	%eax, %edi	# D.5303,
	call	strerror	#
	movq	%rax, %rsi	# D.5306,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 153 0
	movl	$1, %edi	#,
	call	exit	#
.L12:
	.loc 1 155 0
	nop
	.loc 1 157 0
	movq	-8(%rbp), %rax	# D.5307, tmp116
	xorq	%fs:40, %rax	#, tmp116
	je	.L11	#,
	call	__stack_chk_fail	#
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	SetUsbAttributes, .-SetUsbAttributes
	.section	.rodata
.LC3:
	.string	"USB not connected\t%d\n"
	.section	.text.usbWrite,"ax",@progbits
	.globl	usbWrite
	.type	usbWrite, @function
usbWrite:
.LFB8:
	.loc 1 161 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# str, str
	movl	%esi, -28(%rbp)	# len, len
	.loc 1 163 0
	call	usbIsConnected	#
	testb	%al, %al	# D.5313
	jne	.L14	#,
	.loc 1 165 0
	movl	USB+76(%rip), %eax	# USB.deviceState, D.5314
	movl	%eax, %esi	# D.5314,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 166 0
	movl	$-1, %eax	#, D.5312
	jmp	.L15	#
.L14:
	.loc 1 169 0
	movl	-28(%rbp), %eax	# len, tmp94
	movslq	%eax, %rdx	# tmp94, D.5315
	movl	USB+72(%rip), %eax	# USB.fd, D.5314
	movq	-24(%rbp), %rcx	# str, tmp95
	movq	%rcx, %rsi	# tmp95,
	movl	%eax, %edi	# D.5314,
	call	write	#
	movl	%eax, -4(%rbp)	# D.5316, wlen
	.loc 1 170 0
	movl	-4(%rbp), %eax	# wlen, D.5312
.L15:
	.loc 1 171 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	usbWrite, .-usbWrite
	.section	.text.usbRead,"ax",@progbits
	.globl	usbRead
	.type	usbRead, @function
usbRead:
.LFB9:
	.loc 1 175 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# buf, buf
	movl	%esi, -12(%rbp)	# len, len
	.loc 1 176 0
	movzbl	data_available(%rip), %eax	# data_available, D.5319
	xorl	$1, %eax	#, D.5319
	testb	%al, %al	# D.5319
	jne	.L17	#,
	.loc 1 182 0
	movl	read_pos(%rip), %eax	# read_pos, D.5320
	addl	$1, %eax	#, D.5320
	movl	%eax, read_pos(%rip)	# D.5320, read_pos
	.loc 1 183 0
	movl	read_pos(%rip), %edx	# read_pos, D.5320
	movl	temp_data_len(%rip), %eax	# temp_data_len, D.5320
	cmpl	%eax, %edx	# D.5320, D.5320
	jg	.L18	#,
	.loc 1 185 0
	movl	read_pos(%rip), %eax	# read_pos, D.5320
	subl	$1, %eax	#, D.5320
	cltq
	movzbl	temp_buff(%rax), %eax	# temp_buff, D.5321
	movl	%eax, %edx	# D.5321, D.5322
	movq	-8(%rbp), %rax	# buf, tmp100
	movb	%dl, (%rax)	# D.5322, *buf_15(D)
	.loc 1 186 0
	movl	$1, %eax	#, D.5318
	jmp	.L16	#
.L18:
	.loc 1 191 0
	movb	$1, data_read(%rip)	#, data_read
	.loc 1 192 0
	movb	$0, data_available(%rip)	#, data_available
	.loc 1 193 0
	movl	$-1, %eax	#, D.5318
	jmp	.L16	#
.L17:
.L16:
	.loc 1 196 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	usbRead, .-usbRead
	.section	.text.usbIsConnected,"ax",@progbits
	.globl	usbIsConnected
	.type	usbIsConnected, @function
usbIsConnected:
.LFB10:
	.loc 1 199 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 200 0
	movl	USB+76(%rip), %eax	# USB.deviceState, D.5324
	testl	%eax, %eax	# D.5324
	je	.L21	#,
	.loc 1 201 0
	movl	$1, %eax	#, D.5323
	jmp	.L22	#
.L21:
	.loc 1 203 0
	movl	$0, %eax	#, D.5323
.L22:
	.loc 1 204 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	usbIsConnected, .-usbIsConnected
	.section	.text.usbIsConfigured,"ax",@progbits
	.globl	usbIsConfigured
	.type	usbIsConfigured, @function
usbIsConfigured:
.LFB11:
	.loc 1 207 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 208 0
	movl	USB+76(%rip), %eax	# USB.deviceState, D.5325
	cmpl	$5, %eax	#, D.5325
	sete	%al	#, D.5326
	.loc 1 209 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	usbIsConfigured, .-usbIsConfigured
	.section	.text.EP3_OUT_Callback,"ax",@progbits
	.globl	EP3_OUT_Callback
	.type	EP3_OUT_Callback, @function
EP3_OUT_Callback:
.LFB12:
	.loc 1 212 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 213 0
	movl	rdlen(%rip), %eax	# rdlen, D.5328
	movl	%eax, receiveLength(%rip)	# D.5329, receiveLength
	.loc 1 215 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	EP3_OUT_Callback, .-EP3_OUT_Callback
	.section	.text.Virtual_Com_Port_GetBaudRate,"ax",@progbits
	.globl	Virtual_Com_Port_GetBaudRate
	.type	Virtual_Com_Port_GetBaudRate, @function
Virtual_Com_Port_GetBaudRate:
.LFB13:
	.loc 1 218 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 219 0
	movl	linecoding(%rip), %eax	# linecoding.bitrate, D.5330
	.loc 1 220 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Virtual_Com_Port_GetBaudRate, .-Virtual_Com_Port_GetBaudRate
	.section	.text.usb_txbuffer_empty,"ax",@progbits
	.globl	usb_txbuffer_empty
	.type	usb_txbuffer_empty, @function
usb_txbuffer_empty:
.LFB14:
	.loc 1 223 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# instance, instance
	.loc 1 224 0
	movl	$1, %eax	#, D.5331
	.loc 1 225 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	usb_txbuffer_empty, .-usb_txbuffer_empty
	.section	.text.usb_txbuffer_flush,"ax",@progbits
	.globl	usb_txbuffer_flush
	.type	usb_txbuffer_flush, @function
usb_txbuffer_flush:
.LFB15:
	.loc 1 228 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# instance, instance
	.loc 1 229 0
	nop
	.loc 1 230 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	usb_txbuffer_flush, .-usb_txbuffer_flush
	.section	.text.serial_waiting,"ax",@progbits
	.globl	serial_waiting
	.type	serial_waiting, @function
serial_waiting:
.LFB16:
	.loc 1 233 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$192, %rsp	#,
	movq	%rdi, -184(%rbp)	# instance, instance
	.loc 1 233 0
	movq	%fs:40, %rax	#, tmp125
	movq	%rax, -8(%rbp)	# tmp125, D.5337
	xorl	%eax, %eax	# tmp125
	.loc 1 235 0
	movzbl	data_read(%rip), %eax	# data_read, D.5333
	xorl	$1, %eax	#, D.5333
	testb	%al, %al	# D.5333
	je	.L33	#,
	.loc 1 237 0
	movl	$1, %eax	#, D.5332
	jmp	.L36	#
.L33:
.LBB2:
	.loc 1 242 0
	movl	$0, %eax	#, tmp107
	movl	$16, %ecx	#, tmp108
	leaq	-144(%rbp), %rdx	#, tmp109
	movq	%rdx, %rdi	# tmp109, tmp109
#APP
# 242 "src/main/drivers/serial_uart.c" 1
	cld; rep; stosq
# 0 "" 2
#NO_APP
	movl	%edi, %eax	# tmp109, __d1
	movl	%ecx, %edx	# tmp108, __d0
	movl	%edx, -172(%rbp)	# __d0, __d0
	movl	%eax, -168(%rbp)	# __d1, __d1
.LBE2:
	.loc 1 243 0
	movl	USB+72(%rip), %eax	# USB.fd, D.5334
	.loc 1 243 0
	leal	63(%rax), %edx	#, tmp111
	testl	%eax, %eax	# tmp110
	cmovs	%edx, %eax	# tmp111,, tmp110
	sarl	$6, %eax	#, tmp112
	movl	%eax, %esi	# tmp112, D.5334
	movslq	%esi, %rax	# D.5334, tmp113
	movq	-144(%rbp,%rax,8), %rdi	# readset.__fds_bits, D.5335
	.loc 1 243 0
	movl	USB+72(%rip), %eax	# USB.fd, D.5334
	.loc 1 243 0
	cltd
	shrl	$26, %edx	#, tmp115
	addl	%edx, %eax	# tmp115, tmp116
	andl	$63, %eax	#, tmp117
	subl	%edx, %eax	# tmp115, tmp118
	.loc 1 243 0
	movl	$1, %edx	#, tmp119
	movl	%eax, %ecx	# D.5334, tmp130
	salq	%cl, %rdx	# tmp130, D.5336
	movq	%rdx, %rax	# D.5336, D.5336
	orq	%rax, %rdi	# D.5335, D.5335
	movq	%rdi, %rdx	# D.5335, D.5335
	movslq	%esi, %rax	# D.5334, tmp120
	movq	%rdx, -144(%rbp,%rax,8)	# D.5335, readset.__fds_bits
	.loc 1 246 0
	movq	$0, -160(%rbp)	#, tv.tv_sec
	movq	$750000, -152(%rbp)	#, tv.tv_usec
	.loc 1 248 0
	movl	USB+72(%rip), %eax	# USB.fd, D.5334
	leal	1(%rax), %edi	#, D.5334
	leaq	-160(%rbp), %rdx	#, tmp121
	leaq	-144(%rbp), %rax	#, tmp122
	movq	%rdx, %r8	# tmp121,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp122,
	call	select	#
	movl	%eax, -164(%rbp)	# D.5334, result
	.loc 1 250 0
	cmpl	$0, -164(%rbp)	#, result
	je	.L35	#,
	.loc 1 252 0
	movl	USB+72(%rip), %eax	# USB.fd, D.5334
	movl	$100, %edx	#,
	movl	$temp_buff, %esi	#,
	movl	%eax, %edi	# D.5334,
	call	read	#
	movl	%eax, temp_data_len(%rip)	# D.5334, temp_data_len
	.loc 1 253 0
	movb	$1, data_available(%rip)	#, data_available
	.loc 1 254 0
	movb	$0, data_read(%rip)	#, data_read
	.loc 1 255 0
	movl	$0, read_pos(%rip)	#, read_pos
.L35:
	.loc 1 260 0
	movl	-164(%rbp), %eax	# result, tmp123
.L36:
	.loc 1 261 0 discriminator 1
	movq	-8(%rbp), %rsi	# D.5337, tmp126
	xorq	%fs:40, %rsi	#, tmp126
	je	.L37	#,
	.loc 1 261 0 is_stmt 0
	call	__stack_chk_fail	#
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	serial_waiting, .-serial_waiting
	.section	.text.usbVcpWrite,"ax",@progbits
	.type	usbVcpWrite, @function
usbVcpWrite:
.LFB17:
	.loc 1 268 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# instance, instance
	movl	%esi, %eax	# c, tmp87
	movb	%al, -12(%rbp)	# tmp87, c
	.loc 1 269 0
	leaq	-12(%rbp), %rax	#, tmp88
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	usbWrite	#
	.loc 1 270 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	usbVcpWrite, .-usbVcpWrite
	.section	.text.usbTxBytesFree,"ax",@progbits
	.globl	usbTxBytesFree
	.type	usbTxBytesFree, @function
usbTxBytesFree:
.LFB18:
	.loc 1 274 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# instance, instance
	.loc 1 277 0
	movl	$-1, %eax	#, D.5340
	.loc 1 278 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	usbTxBytesFree, .-usbTxBytesFree
	.section	.text.usbVcpRead,"ax",@progbits
	.type	usbVcpRead, @function
usbVcpRead:
.LFB19:
	.loc 1 281 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# instance, instance
	.loc 1 281 0
	movq	%fs:40, %rax	#, tmp92
	movq	%rax, -8(%rbp)	# tmp92, D.5342
	xorl	%eax, %eax	# tmp92
	.loc 1 286 0
	leaq	-13(%rbp), %rax	#, tmp89
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	usbRead	#
	movl	%eax, -12(%rbp)	# tmp90, len
	.loc 1 288 0
	movzbl	-13(%rbp), %eax	# buf, D.5341
	.loc 1 289 0
	movq	-8(%rbp), %rdx	# D.5342, tmp93
	xorq	%fs:40, %rdx	#, tmp93
	je	.L43	#,
	call	__stack_chk_fail	#
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	usbVcpRead, .-usbVcpRead
	.section	.text.usbVcpSetBaudRate,"ax",@progbits
	.type	usbVcpSetBaudRate, @function
usbVcpSetBaudRate:
.LFB20:
	.loc 1 292 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# instance, instance
	movl	%esi, -12(%rbp)	# baudRate, baudRate
	.loc 1 295 0
	nop
	.loc 1 297 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	usbVcpSetBaudRate, .-usbVcpSetBaudRate
	.section	.text.usbVcpSetMode,"ax",@progbits
	.type	usbVcpSetMode, @function
usbVcpSetMode:
.LFB21:
	.loc 1 300 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# instance, instance
	movl	%esi, -12(%rbp)	# mode, mode
	.loc 1 305 0
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	usbVcpSetMode, .-usbVcpSetMode
	.section	.text.usbVcpOpen,"ax",@progbits
	.globl	usbVcpOpen
	.type	usbVcpOpen, @function
usbVcpOpen:
.LFB22:
	.loc 1 308 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 309 0
	call	usbInit	#
	movq	%rax, -8(%rbp)	# tmp89, s
	.loc 1 311 0
	movq	-8(%rbp), %rax	# s, D.5343
	.loc 1 312 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	usbVcpOpen, .-usbVcpOpen
	.text
.Letext0:
	.file 2 "/usr/include/stdint.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/time.h"
	.file 5 "/usr/include/x86_64-linux-gnu/sys/select.h"
	.file 6 "/usr/include/mraa/i2c.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/termios.h"
	.file 8 "./src/main/drivers/serial.h"
	.file 9 "src/main/drivers/serial_uart.h"
	.file 10 "./src/main/drivers/SFE_LSM9DS0.h"
	.file 11 "./src/main/target/edison/target.h"
	.file 12 "./src/main/drivers/system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc4a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF159
	.byte	0xc
	.long	.LASF160
	.long	.LASF161
	.long	.Ldebug_ranges0+0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x2
	.byte	0x25
	.long	0x3b
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x26
	.long	0x4d
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0x3
	.long	.LASF5
	.byte	0x2
	.byte	0x30
	.long	0x66
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x2
	.byte	0x31
	.long	0x78
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.long	.LASF9
	.byte	0x2
	.byte	0x33
	.long	0x8a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.long	.LASF13
	.byte	0x3
	.byte	0x8b
	.long	0x54
	.uleb128 0x3
	.long	.LASF14
	.byte	0x3
	.byte	0x8d
	.long	0x54
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF16
	.uleb128 0x6
	.long	.LASF27
	.byte	0x10
	.byte	0x4
	.byte	0x1e
	.long	0xea
	.uleb128 0x7
	.long	.LASF17
	.byte	0x4
	.byte	0x20
	.long	0x9f
	.byte	0
	.uleb128 0x7
	.long	.LASF18
	.byte	0x4
	.byte	0x21
	.long	0xaa
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF19
	.byte	0x5
	.byte	0x36
	.long	0x54
	.uleb128 0x8
	.byte	0x80
	.byte	0x5
	.byte	0x40
	.long	0x10a
	.uleb128 0x7
	.long	.LASF20
	.byte	0x5
	.byte	0x48
	.long	0x10a
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0xea
	.long	0x11a
	.uleb128 0xa
	.long	0x98
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.long	.LASF21
	.byte	0x5
	.byte	0x4b
	.long	0xf5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF22
	.uleb128 0x9
	.long	0xb7
	.long	0x13c
	.uleb128 0xa
	.long	0x98
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.long	.LASF23
	.byte	0x6
	.byte	0x35
	.long	0x147
	.uleb128 0xb
	.byte	0x8
	.long	0x14d
	.uleb128 0xc
	.long	.LASF162
	.uleb128 0x3
	.long	.LASF24
	.byte	0x7
	.byte	0x17
	.long	0x66
	.uleb128 0x3
	.long	.LASF25
	.byte	0x7
	.byte	0x18
	.long	0x8a
	.uleb128 0x3
	.long	.LASF26
	.byte	0x7
	.byte	0x19
	.long	0x8a
	.uleb128 0x6
	.long	.LASF28
	.byte	0x3c
	.byte	0x7
	.byte	0x1c
	.long	0x1e0
	.uleb128 0x7
	.long	.LASF29
	.byte	0x7
	.byte	0x1e
	.long	0x168
	.byte	0
	.uleb128 0x7
	.long	.LASF30
	.byte	0x7
	.byte	0x1f
	.long	0x168
	.byte	0x4
	.uleb128 0x7
	.long	.LASF31
	.byte	0x7
	.byte	0x20
	.long	0x168
	.byte	0x8
	.uleb128 0x7
	.long	.LASF32
	.byte	0x7
	.byte	0x21
	.long	0x168
	.byte	0xc
	.uleb128 0x7
	.long	.LASF33
	.byte	0x7
	.byte	0x22
	.long	0x152
	.byte	0x10
	.uleb128 0x7
	.long	.LASF34
	.byte	0x7
	.byte	0x23
	.long	0x1e0
	.byte	0x11
	.uleb128 0x7
	.long	.LASF35
	.byte	0x7
	.byte	0x24
	.long	0x15d
	.byte	0x34
	.uleb128 0x7
	.long	.LASF36
	.byte	0x7
	.byte	0x25
	.long	0x15d
	.byte	0x38
	.byte	0
	.uleb128 0x9
	.long	0x152
	.long	0x1f0
	.uleb128 0xa
	.long	0x98
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x4
	.long	0x8a
	.byte	0x8
	.byte	0x14
	.long	0x213
	.uleb128 0xe
	.long	.LASF37
	.byte	0x1
	.uleb128 0xe
	.long	.LASF38
	.byte	0x2
	.uleb128 0xe
	.long	.LASF39
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF40
	.byte	0x8
	.byte	0x18
	.long	0x1f0
	.uleb128 0xd
	.long	.LASF41
	.byte	0x4
	.long	0x8a
	.byte	0x8
	.byte	0x1a
	.long	0x25f
	.uleb128 0xe
	.long	.LASF42
	.byte	0
	.uleb128 0xe
	.long	.LASF43
	.byte	0x1
	.uleb128 0xe
	.long	.LASF44
	.byte	0
	.uleb128 0xe
	.long	.LASF45
	.byte	0x2
	.uleb128 0xe
	.long	.LASF46
	.byte	0
	.uleb128 0xe
	.long	.LASF47
	.byte	0x4
	.uleb128 0xe
	.long	.LASF48
	.byte	0
	.uleb128 0xe
	.long	.LASF49
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF41
	.byte	0x8
	.byte	0x23
	.long	0x21e
	.uleb128 0x3
	.long	.LASF50
	.byte	0x8
	.byte	0x25
	.long	0x275
	.uleb128 0xb
	.byte	0x8
	.long	0x27b
	.uleb128 0xf
	.long	0x286
	.uleb128 0x10
	.long	0x6d
	.byte	0
	.uleb128 0x6
	.long	.LASF51
	.byte	0x48
	.byte	0x8
	.byte	0x27
	.long	0x33b
	.uleb128 0x7
	.long	.LASF52
	.byte	0x8
	.byte	0x29
	.long	0x3c0
	.byte	0
	.uleb128 0x7
	.long	.LASF53
	.byte	0x8
	.byte	0x2b
	.long	0x5b
	.byte	0x8
	.uleb128 0x7
	.long	.LASF54
	.byte	0x8
	.byte	0x2c
	.long	0x213
	.byte	0xc
	.uleb128 0x7
	.long	.LASF55
	.byte	0x8
	.byte	0x2d
	.long	0x25f
	.byte	0x10
	.uleb128 0x7
	.long	.LASF56
	.byte	0x8
	.byte	0x2f
	.long	0x7f
	.byte	0x14
	.uleb128 0x7
	.long	.LASF57
	.byte	0x8
	.byte	0x31
	.long	0x7f
	.byte	0x18
	.uleb128 0x7
	.long	.LASF58
	.byte	0x8
	.byte	0x32
	.long	0x7f
	.byte	0x1c
	.uleb128 0x7
	.long	.LASF59
	.byte	0x8
	.byte	0x33
	.long	0x3cb
	.byte	0x20
	.uleb128 0x7
	.long	.LASF60
	.byte	0x8
	.byte	0x34
	.long	0x3cb
	.byte	0x28
	.uleb128 0x7
	.long	.LASF61
	.byte	0x8
	.byte	0x35
	.long	0x7f
	.byte	0x30
	.uleb128 0x7
	.long	.LASF62
	.byte	0x8
	.byte	0x36
	.long	0x7f
	.byte	0x34
	.uleb128 0x7
	.long	.LASF63
	.byte	0x8
	.byte	0x37
	.long	0x7f
	.byte	0x38
	.uleb128 0x7
	.long	.LASF64
	.byte	0x8
	.byte	0x38
	.long	0x7f
	.byte	0x3c
	.uleb128 0x7
	.long	.LASF65
	.byte	0x8
	.byte	0x3b
	.long	0x26a
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.long	.LASF66
	.byte	0x50
	.byte	0x8
	.byte	0x3e
	.long	0x3c0
	.uleb128 0x7
	.long	.LASF67
	.byte	0x8
	.byte	0x3f
	.long	0x3f7
	.byte	0
	.uleb128 0x7
	.long	.LASF68
	.byte	0x8
	.byte	0x41
	.long	0x40c
	.byte	0x8
	.uleb128 0x7
	.long	.LASF69
	.byte	0x8
	.byte	0x42
	.long	0x40c
	.byte	0x10
	.uleb128 0x7
	.long	.LASF70
	.byte	0x8
	.byte	0x44
	.long	0x40c
	.byte	0x18
	.uleb128 0x7
	.long	.LASF71
	.byte	0x8
	.byte	0x47
	.long	0x422
	.byte	0x20
	.uleb128 0x7
	.long	.LASF72
	.byte	0x8
	.byte	0x49
	.long	0x43e
	.byte	0x28
	.uleb128 0x7
	.long	.LASF73
	.byte	0x8
	.byte	0x4b
	.long	0x454
	.byte	0x30
	.uleb128 0x7
	.long	.LASF74
	.byte	0x8
	.byte	0x4d
	.long	0x46f
	.byte	0x38
	.uleb128 0x7
	.long	.LASF75
	.byte	0x8
	.byte	0x4f
	.long	0x480
	.byte	0x40
	.uleb128 0x7
	.long	.LASF76
	.byte	0x8
	.byte	0x50
	.long	0x480
	.byte	0x48
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x3c6
	.uleb128 0x11
	.long	0x33b
	.uleb128 0xb
	.byte	0x8
	.long	0x3d1
	.uleb128 0x12
	.long	0x5b
	.uleb128 0x3
	.long	.LASF77
	.byte	0x8
	.byte	0x3c
	.long	0x286
	.uleb128 0xf
	.long	0x3f1
	.uleb128 0x10
	.long	0x3f1
	.uleb128 0x10
	.long	0x5b
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x3d6
	.uleb128 0xb
	.byte	0x8
	.long	0x3e1
	.uleb128 0x13
	.long	0x5b
	.long	0x40c
	.uleb128 0x10
	.long	0x3f1
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x3fd
	.uleb128 0xf
	.long	0x422
	.uleb128 0x10
	.long	0x3f1
	.uleb128 0x10
	.long	0x7f
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x412
	.uleb128 0x13
	.long	0x437
	.long	0x437
	.uleb128 0x10
	.long	0x3f1
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF78
	.uleb128 0xb
	.byte	0x8
	.long	0x428
	.uleb128 0xf
	.long	0x454
	.uleb128 0x10
	.long	0x3f1
	.uleb128 0x10
	.long	0x213
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x444
	.uleb128 0xf
	.long	0x46f
	.uleb128 0x10
	.long	0x3f1
	.uleb128 0x10
	.long	0xb5
	.uleb128 0x10
	.long	0x4d
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x45a
	.uleb128 0xf
	.long	0x480
	.uleb128 0x10
	.long	0x3f1
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x475
	.uleb128 0xd
	.long	.LASF79
	.byte	0x4
	.long	0x8a
	.byte	0x9
	.byte	0x2e
	.long	0x4bb
	.uleb128 0xe
	.long	.LASF80
	.byte	0
	.uleb128 0xe
	.long	.LASF81
	.byte	0x1
	.uleb128 0xe
	.long	.LASF82
	.byte	0x2
	.uleb128 0xe
	.long	.LASF83
	.byte	0x3
	.uleb128 0xe
	.long	.LASF84
	.byte	0x4
	.uleb128 0xe
	.long	.LASF85
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x9
	.byte	0x37
	.long	0x4f4
	.uleb128 0x7
	.long	.LASF86
	.byte	0x9
	.byte	0x38
	.long	0x7f
	.byte	0
	.uleb128 0x7
	.long	.LASF87
	.byte	0x9
	.byte	0x39
	.long	0x5b
	.byte	0x4
	.uleb128 0x7
	.long	.LASF88
	.byte	0x9
	.byte	0x3a
	.long	0x5b
	.byte	0x5
	.uleb128 0x7
	.long	.LASF89
	.byte	0x9
	.byte	0x3b
	.long	0x5b
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.long	.LASF90
	.byte	0x9
	.byte	0x3c
	.long	0x4bb
	.uleb128 0x8
	.byte	0x58
	.byte	0x9
	.byte	0x40
	.long	0x537
	.uleb128 0x7
	.long	.LASF91
	.byte	0x9
	.byte	0x41
	.long	0x3d6
	.byte	0
	.uleb128 0x14
	.string	"fd"
	.byte	0x9
	.byte	0x42
	.long	0x4d
	.byte	0x48
	.uleb128 0x7
	.long	.LASF92
	.byte	0x9
	.byte	0x43
	.long	0x4d
	.byte	0x4c
	.uleb128 0x7
	.long	.LASF93
	.byte	0x9
	.byte	0x44
	.long	0x437
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.long	.LASF94
	.byte	0x9
	.byte	0x45
	.long	0x4ff
	.uleb128 0xd
	.long	.LASF95
	.byte	0x4
	.long	0x8a
	.byte	0xa
	.byte	0x81
	.long	0x565
	.uleb128 0xe
	.long	.LASF96
	.byte	0
	.uleb128 0xe
	.long	.LASF97
	.byte	0x1
	.uleb128 0xe
	.long	.LASF98
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF95
	.byte	0xa
	.byte	0x86
	.long	0x542
	.uleb128 0xd
	.long	.LASF99
	.byte	0x4
	.long	0x8a
	.byte	0xa
	.byte	0x89
	.long	0x59f
	.uleb128 0xe
	.long	.LASF100
	.byte	0
	.uleb128 0xe
	.long	.LASF101
	.byte	0x1
	.uleb128 0xe
	.long	.LASF102
	.byte	0x2
	.uleb128 0xe
	.long	.LASF103
	.byte	0x3
	.uleb128 0xe
	.long	.LASF104
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF99
	.byte	0xa
	.byte	0x90
	.long	0x570
	.uleb128 0xd
	.long	.LASF105
	.byte	0x4
	.long	0x8a
	.byte	0xa
	.byte	0x93
	.long	0x5d3
	.uleb128 0xe
	.long	.LASF106
	.byte	0
	.uleb128 0xe
	.long	.LASF107
	.byte	0x1
	.uleb128 0xe
	.long	.LASF108
	.byte	0x2
	.uleb128 0xe
	.long	.LASF109
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF105
	.byte	0xa
	.byte	0x99
	.long	0x5aa
	.uleb128 0x6
	.long	.LASF110
	.byte	0x40
	.byte	0xa
	.byte	0xdc
	.long	0x6b9
	.uleb128 0x14
	.string	"gx"
	.byte	0xa
	.byte	0xe2
	.long	0x30
	.byte	0
	.uleb128 0x14
	.string	"gy"
	.byte	0xa
	.byte	0xe2
	.long	0x30
	.byte	0x2
	.uleb128 0x14
	.string	"gz"
	.byte	0xa
	.byte	0xe2
	.long	0x30
	.byte	0x4
	.uleb128 0x14
	.string	"ax"
	.byte	0xa
	.byte	0xe3
	.long	0x30
	.byte	0x6
	.uleb128 0x14
	.string	"ay"
	.byte	0xa
	.byte	0xe3
	.long	0x30
	.byte	0x8
	.uleb128 0x14
	.string	"az"
	.byte	0xa
	.byte	0xe3
	.long	0x30
	.byte	0xa
	.uleb128 0x14
	.string	"mx"
	.byte	0xa
	.byte	0xe4
	.long	0x30
	.byte	0xc
	.uleb128 0x14
	.string	"my"
	.byte	0xa
	.byte	0xe4
	.long	0x30
	.byte	0xe
	.uleb128 0x14
	.string	"mz"
	.byte	0xa
	.byte	0xe4
	.long	0x30
	.byte	0x10
	.uleb128 0x7
	.long	.LASF111
	.byte	0xa
	.byte	0xe5
	.long	0x30
	.byte	0x12
	.uleb128 0x7
	.long	.LASF112
	.byte	0xa
	.byte	0xe7
	.long	0x13c
	.byte	0x18
	.uleb128 0x14
	.string	"xm"
	.byte	0xa
	.byte	0xe8
	.long	0x13c
	.byte	0x20
	.uleb128 0x7
	.long	.LASF113
	.byte	0xa
	.byte	0xec
	.long	0x565
	.byte	0x28
	.uleb128 0x7
	.long	.LASF114
	.byte	0xa
	.byte	0xed
	.long	0x59f
	.byte	0x2c
	.uleb128 0x7
	.long	.LASF115
	.byte	0xa
	.byte	0xee
	.long	0x5d3
	.byte	0x30
	.uleb128 0x7
	.long	.LASF116
	.byte	0xa
	.byte	0xf3
	.long	0x6b9
	.byte	0x34
	.uleb128 0x7
	.long	.LASF117
	.byte	0xa
	.byte	0xf3
	.long	0x6b9
	.byte	0x38
	.uleb128 0x7
	.long	.LASF118
	.byte	0xa
	.byte	0xf3
	.long	0x6b9
	.byte	0x3c
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF119
	.uleb128 0x3
	.long	.LASF120
	.byte	0xa
	.byte	0xf5
	.long	0x5de
	.uleb128 0x15
	.long	.LASF128
	.byte	0x1
	.byte	0x5f
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF121
	.byte	0x1
	.byte	0x6a
	.long	0x3f1
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x713
	.uleb128 0x17
	.string	"fd"
	.byte	0x1
	.byte	0x6c
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.long	.LASF122
	.byte	0x1
	.byte	0x74
	.long	0x4d
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x742
	.uleb128 0x17
	.string	"fd"
	.byte	0x1
	.byte	0x76
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.long	.LASF133
	.byte	0x1
	.byte	0x81
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x77d
	.uleb128 0x19
	.string	"fd"
	.byte	0x1
	.byte	0x81
	.long	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x17
	.string	"tty"
	.byte	0x1
	.byte	0x83
	.long	0x173
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x16
	.long	.LASF123
	.byte	0x1
	.byte	0xa0
	.long	0x7f
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x7c9
	.uleb128 0x19
	.string	"str"
	.byte	0x1
	.byte	0xa0
	.long	0x7c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.byte	0xa0
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.long	.LASF124
	.byte	0x1
	.byte	0xa8
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x5b
	.uleb128 0x1b
	.long	.LASF125
	.byte	0x1
	.byte	0xae
	.long	0x42
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x80d
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.byte	0xae
	.long	0x7c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.byte	0xae
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1c
	.long	.LASF126
	.byte	0x1
	.byte	0xc6
	.long	0x5b
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.long	.LASF127
	.byte	0x1
	.byte	0xce
	.long	0x5b
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.long	.LASF129
	.byte	0x1
	.byte	0xd3
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.long	.LASF130
	.byte	0x1
	.byte	0xd9
	.long	0x7f
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.long	.LASF131
	.byte	0x1
	.byte	0xde
	.long	0x437
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x8ad
	.uleb128 0x1d
	.long	.LASF132
	.byte	0x1
	.byte	0xde
	.long	0x3f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF134
	.byte	0x1
	.byte	0xe3
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x8d9
	.uleb128 0x1d
	.long	.LASF132
	.byte	0x1
	.byte	0xe3
	.long	0x3f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF135
	.byte	0x1
	.byte	0xe8
	.long	0x5b
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x966
	.uleb128 0x1d
	.long	.LASF132
	.byte	0x1
	.byte	0xe8
	.long	0x3f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1a
	.long	.LASF136
	.byte	0x1
	.byte	0xf1
	.long	0x11a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1a
	.long	.LASF137
	.byte	0x1
	.byte	0xf4
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x17
	.string	"tv"
	.byte	0x1
	.byte	0xf6
	.long	0xc5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1f
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1a
	.long	.LASF138
	.byte	0x1
	.byte	0xf2
	.long	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x1a
	.long	.LASF139
	.byte	0x1
	.byte	0xf2
	.long	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF141
	.byte	0x1
	.value	0x10b
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x9a1
	.uleb128 0x21
	.long	.LASF132
	.byte	0x1
	.value	0x10b
	.long	0x3f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.value	0x10b
	.long	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x23
	.long	.LASF140
	.byte	0x1
	.value	0x111
	.long	0x5b
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x9d3
	.uleb128 0x21
	.long	.LASF132
	.byte	0x1
	.value	0x111
	.long	0x3f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF163
	.byte	0x1
	.value	0x118
	.long	0x5b
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xa23
	.uleb128 0x21
	.long	.LASF132
	.byte	0x1
	.value	0x118
	.long	0x3f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"buf"
	.byte	0x1
	.value	0x11c
	.long	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x11e
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x26
	.long	.LASF142
	.byte	0x1
	.value	0x123
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xa60
	.uleb128 0x21
	.long	.LASF132
	.byte	0x1
	.value	0x123
	.long	0x3f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF56
	.byte	0x1
	.value	0x123
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x26
	.long	.LASF143
	.byte	0x1
	.value	0x12b
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xa9d
	.uleb128 0x21
	.long	.LASF132
	.byte	0x1
	.value	0x12b
	.long	0x3f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF54
	.byte	0x1
	.value	0x12b
	.long	0x213
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x27
	.long	.LASF144
	.byte	0x1
	.value	0x133
	.long	0x3f1
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xacd
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x135
	.long	0x3f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.long	0x3c6
	.long	0xadd
	.uleb128 0xa
	.long	0x98
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF145
	.byte	0x1
	.byte	0x50
	.long	0xaf2
	.uleb128 0x9
	.byte	0x3
	.quad	usbTable
	.uleb128 0x11
	.long	0xacd
	.uleb128 0x28
	.long	.LASF146
	.byte	0xb
	.byte	0xca
	.long	0x7f
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_0
	.uleb128 0x28
	.long	.LASF147
	.byte	0xb
	.byte	0xcb
	.long	0x7f
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_1
	.uleb128 0x28
	.long	.LASF148
	.byte	0xb
	.byte	0xcc
	.long	0x7f
	.uleb128 0x9
	.byte	0x3
	.quad	U_ID_2
	.uleb128 0x28
	.long	.LASF149
	.byte	0x9
	.byte	0x2c
	.long	0xb4b
	.uleb128 0x9
	.byte	0x3
	.quad	receiveLength
	.uleb128 0x12
	.long	0x7f
	.uleb128 0x29
	.string	"imu"
	.byte	0xc
	.byte	0x38
	.long	0xb65
	.uleb128 0x9
	.byte	0x3
	.quad	imu
	.uleb128 0xb
	.byte	0x8
	.long	0x6c0
	.uleb128 0x28
	.long	.LASF150
	.byte	0x1
	.byte	0x35
	.long	0x437
	.uleb128 0x9
	.byte	0x3
	.quad	data_available
	.uleb128 0x28
	.long	.LASF151
	.byte	0x1
	.byte	0x36
	.long	0x437
	.uleb128 0x9
	.byte	0x3
	.quad	data_read
	.uleb128 0x9
	.long	0xb7
	.long	0xba5
	.uleb128 0xa
	.long	0x98
	.byte	0x63
	.byte	0
	.uleb128 0x28
	.long	.LASF152
	.byte	0x1
	.byte	0x38
	.long	0xb95
	.uleb128 0x9
	.byte	0x3
	.quad	temp_buff
	.uleb128 0x28
	.long	.LASF153
	.byte	0x1
	.byte	0x39
	.long	0x4d
	.uleb128 0x9
	.byte	0x3
	.quad	temp_data_len
	.uleb128 0x28
	.long	.LASF154
	.byte	0x1
	.byte	0x3a
	.long	0x4d
	.uleb128 0x9
	.byte	0x3
	.quad	read_pos
	.uleb128 0x29
	.string	"USB"
	.byte	0x1
	.byte	0x3d
	.long	0x537
	.uleb128 0x9
	.byte	0x3
	.quad	USB
	.uleb128 0x28
	.long	.LASF155
	.byte	0x1
	.byte	0x3f
	.long	0x4f4
	.uleb128 0x9
	.byte	0x3
	.quad	linecoding
	.uleb128 0x28
	.long	.LASF156
	.byte	0x1
	.byte	0x49
	.long	0x12c
	.uleb128 0x9
	.byte	0x3
	.quad	portname
	.uleb128 0x28
	.long	.LASF157
	.byte	0x1
	.byte	0x4b
	.long	0x4d
	.uleb128 0x9
	.byte	0x3
	.quad	rdlen
	.uleb128 0x28
	.long	.LASF158
	.byte	0x1
	.byte	0x4e
	.long	0x3d6
	.uleb128 0x9
	.byte	0x3
	.quad	usb_port
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
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
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LFB4
	.quad	.LFE4
	.quad	.LFB5
	.quad	.LFE5
	.quad	.LFB6
	.quad	.LFE6
	.quad	.LFB7
	.quad	.LFE7
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
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF135:
	.string	"serial_waiting"
.LASF38:
	.string	"MODE_TX"
.LASF145:
	.string	"usbTable"
.LASF33:
	.string	"c_line"
.LASF76:
	.string	"endWrite"
.LASF50:
	.string	"serialReceiveCallbackPtr"
.LASF106:
	.string	"M_SCALE_2GS"
.LASF58:
	.string	"txBufferSize"
.LASF22:
	.string	"long long unsigned int"
.LASF138:
	.string	"__d0"
.LASF139:
	.string	"__d1"
.LASF150:
	.string	"data_available"
.LASF35:
	.string	"c_ispeed"
.LASF114:
	.string	"aScale"
.LASF28:
	.string	"termios"
.LASF83:
	.string	"SUSPENDED"
.LASF86:
	.string	"bitrate"
.LASF132:
	.string	"instance"
.LASF68:
	.string	"serialTotalRxWaiting"
.LASF0:
	.string	"signed char"
.LASF64:
	.string	"txBufferTail"
.LASF129:
	.string	"EP3_OUT_Callback"
.LASF82:
	.string	"POWERED"
.LASF118:
	.string	"mRes"
.LASF59:
	.string	"rxBuffer"
.LASF153:
	.string	"temp_data_len"
.LASF149:
	.string	"receiveLength"
.LASF4:
	.string	"long int"
.LASF155:
	.string	"linecoding"
.LASF40:
	.string	"portMode_t"
.LASF122:
	.string	"usbOpen"
.LASF98:
	.string	"G_SCALE_2000DPS"
.LASF30:
	.string	"c_oflag"
.LASF16:
	.string	"long long int"
.LASF7:
	.string	"uint16_t"
.LASF144:
	.string	"usbVcpOpen"
.LASF48:
	.string	"SERIAL_UNIDIR"
.LASF128:
	.string	"usartInitAllIOSignals"
.LASF111:
	.string	"temperature"
.LASF94:
	.string	"uartPort_t"
.LASF110:
	.string	"LSM9DS0"
.LASF143:
	.string	"usbVcpSetMode"
.LASF140:
	.string	"usbTxBytesFree"
.LASF44:
	.string	"SERIAL_STOPBITS_1"
.LASF45:
	.string	"SERIAL_STOPBITS_2"
.LASF97:
	.string	"G_SCALE_500DPS"
.LASF136:
	.string	"readset"
.LASF96:
	.string	"G_SCALE_245DPS"
.LASF55:
	.string	"options"
.LASF95:
	.string	"gyro_scale"
.LASF61:
	.string	"rxBufferHead"
.LASF91:
	.string	"port"
.LASF125:
	.string	"usbRead"
.LASF21:
	.string	"fd_set"
.LASF74:
	.string	"writeBuf"
.LASF32:
	.string	"c_lflag"
.LASF67:
	.string	"serialWrite"
.LASF81:
	.string	"ATTACHED"
.LASF70:
	.string	"serialRead"
.LASF160:
	.string	"src/main/drivers/serial_uart.c"
.LASF159:
	.string	"GNU C99 5.4.1 20160904 -mtune=generic -march=x86-64 -g -std=gnu99 -ffunction-sections -fdata-sections -ffat-lto-objects -fstack-protector-strong"
.LASF163:
	.string	"usbVcpRead"
.LASF11:
	.string	"long unsigned int"
.LASF14:
	.string	"__suseconds_t"
.LASF27:
	.string	"timeval"
.LASF157:
	.string	"rdlen"
.LASF8:
	.string	"short unsigned int"
.LASF26:
	.string	"tcflag_t"
.LASF104:
	.string	"A_SCALE_16G"
.LASF65:
	.string	"callback"
.LASF133:
	.string	"SetUsbAttributes"
.LASF29:
	.string	"c_iflag"
.LASF36:
	.string	"c_ospeed"
.LASF75:
	.string	"beginWrite"
.LASF113:
	.string	"gScale"
.LASF89:
	.string	"datatype"
.LASF52:
	.string	"vTable"
.LASF103:
	.string	"A_SCALE_8G"
.LASF112:
	.string	"gyro"
.LASF71:
	.string	"serialSetBaudRate"
.LASF154:
	.string	"read_pos"
.LASF12:
	.string	"sizetype"
.LASF66:
	.string	"serialPortVTable"
.LASF72:
	.string	"isSerialTransmitBufferEmpty"
.LASF17:
	.string	"tv_sec"
.LASF90:
	.string	"LINE_CODING"
.LASF49:
	.string	"SERIAL_BIDIR"
.LASF79:
	.string	"_DEVICE_STATE"
.LASF105:
	.string	"mag_scale"
.LASF152:
	.string	"temp_buff"
.LASF37:
	.string	"MODE_RX"
.LASF141:
	.string	"usbVcpWrite"
.LASF142:
	.string	"usbVcpSetBaudRate"
.LASF146:
	.string	"U_ID_0"
.LASF147:
	.string	"U_ID_1"
.LASF161:
	.string	"/home/aravind/git/cleanflight"
.LASF119:
	.string	"float"
.LASF34:
	.string	"c_cc"
.LASF134:
	.string	"usb_txbuffer_flush"
.LASF78:
	.string	"_Bool"
.LASF3:
	.string	"int32_t"
.LASF6:
	.string	"unsigned char"
.LASF88:
	.string	"paritytype"
.LASF57:
	.string	"rxBufferSize"
.LASF124:
	.string	"wlen"
.LASF41:
	.string	"portOptions_t"
.LASF19:
	.string	"__fd_mask"
.LASF1:
	.string	"short int"
.LASF31:
	.string	"c_cflag"
.LASF148:
	.string	"U_ID_2"
.LASF69:
	.string	"serialTotalTxFree"
.LASF120:
	.string	"LSM9DS0_t"
.LASF56:
	.string	"baudRate"
.LASF100:
	.string	"A_SCALE_2G"
.LASF87:
	.string	"format"
.LASF107:
	.string	"M_SCALE_4GS"
.LASF47:
	.string	"SERIAL_PARITY_EVEN"
.LASF93:
	.string	"buffering"
.LASF63:
	.string	"txBufferHead"
.LASF109:
	.string	"M_SCALE_12GS"
.LASF18:
	.string	"tv_usec"
.LASF9:
	.string	"uint32_t"
.LASF127:
	.string	"usbIsConfigured"
.LASF15:
	.string	"char"
.LASF54:
	.string	"mode"
.LASF62:
	.string	"rxBufferTail"
.LASF121:
	.string	"usbInit"
.LASF10:
	.string	"unsigned int"
.LASF158:
	.string	"usb_port"
.LASF39:
	.string	"MODE_RXTX"
.LASF117:
	.string	"aRes"
.LASF115:
	.string	"mScale"
.LASF162:
	.string	"_i2c"
.LASF23:
	.string	"mraa_i2c_context"
.LASF116:
	.string	"gRes"
.LASF43:
	.string	"SERIAL_INVERTED"
.LASF73:
	.string	"setMode"
.LASF53:
	.string	"identifier"
.LASF126:
	.string	"usbIsConnected"
.LASF123:
	.string	"usbWrite"
.LASF13:
	.string	"__time_t"
.LASF60:
	.string	"txBuffer"
.LASF24:
	.string	"cc_t"
.LASF85:
	.string	"CONFIGURED"
.LASF42:
	.string	"SERIAL_NOT_INVERTED"
.LASF102:
	.string	"A_SCALE_6G"
.LASF5:
	.string	"uint8_t"
.LASF99:
	.string	"accel_scale"
.LASF84:
	.string	"ADDRESSED"
.LASF46:
	.string	"SERIAL_PARITY_NO"
.LASF101:
	.string	"A_SCALE_4G"
.LASF156:
	.string	"portname"
.LASF80:
	.string	"UNCONNECTED"
.LASF131:
	.string	"usb_txbuffer_empty"
.LASF2:
	.string	"int16_t"
.LASF92:
	.string	"deviceState"
.LASF137:
	.string	"result"
.LASF108:
	.string	"M_SCALE_8GS"
.LASF151:
	.string	"data_read"
.LASF25:
	.string	"speed_t"
.LASF130:
	.string	"Virtual_Com_Port_GetBaudRate"
.LASF51:
	.string	"serialPort_s"
.LASF77:
	.string	"serialPort_t"
.LASF20:
	.string	"__fds_bits"
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
