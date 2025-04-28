	.file	"main.c"
	.section	".text"
	.align 4
	.global my_serial_interrupt_handler
	.type	my_serial_interrupt_handler, #function
	.proc	020
my_serial_interrupt_handler:
	jmp	%o7+8
	 nop
	.size	my_serial_interrupt_handler, .-my_serial_interrupt_handler
	.align 4
	.global setup
	.type	setup, #function
	.proc	020
setup:
	save	%sp, -96, %sp
	mov	1, %o0
	mov	1, %o1
	call	__ajit_serial_configure_via_bypass__, 0
	 mov	0, %o2
	mov	0, %i0
	sethi	%hi(114688), %o0
	sethi	%hi(99999744), %o1
	or	%o0, 512, %o0
	call	__ajit_serial_set_baudrate_via_bypass__, 0
	 or	%o1, 256, %o1
	call	__ajit_serial_set_uart_reset_via_bypass__, 0
	 restore
	.size	setup, .-setup
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"Starting serial loopback test...\n"
	.align 8
.LC1:
	.asciz	"Test string: %s\n"
	.align 8
.LC2:
	.asciz	"Received: %s\n"
	.align 8
.LC3:
	.asciz	"PASS: TX == RX\n"
	.align 8
.LC4:
	.asciz	"FAIL: TX != RX\n"
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	save	%sp, -104, %sp
	call	setup, 0
	 nop
	sethi	%hi(.LC0), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC0), %o0
	sethi	%hi(tx_data), %o1
	sethi	%hi(.LC1), %o0
	or	%o1, %lo(tx_data), %i2
	or	%o0, %lo(.LC1), %o0
	mov	%i2, %o1
	call	cortos_printf, 0
	 mov	%i2, %i5
	add	%i2, 8, %i4
.L23:
	call	__ajit_serial_putchar_via_bypass__, 0
	 ldsb	[%i5], %o0
	cmp	%o0, 0
	be	.L23
	 nop
	add	%i5, 1, %i5
	cmp	%i5, %i4
	bne	.L23
	 nop
	sethi	%hi(rx_data), %i4
	or	%i4, %lo(rx_data), %i4
	mov	%i4, %i5
	add	%i4, 8, %i3
	stb	%g0, [%fp-1]
.L6:
.L26:
	call	__ajit_serial_getchar_via_bypass__, 0
	 add	%fp, -1, %o0
	cmp	%o0, 0
	be	.L6
	 ldub	[%fp-1], %g1
	stb	%g1, [%i5]
	add	%i5, 1, %i5
	cmp	%i5, %i3
	bne,a	.L26
	 stb	%g0, [%fp-1]
	stb	%g0, [%i4+8]
	mov	%i4, %o1
	sethi	%hi(.LC2), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC2), %o0
	mov	0, %g1
	ldsb	[%i4+%g1], %g3
.L27:
	ldsb	[%i2+%g1], %g2
	cmp	%g3, %g2
	bne	.L8
	 add	%g1, 1, %g1
	cmp	%g1, 8
	bne,a	.L27
	 ldsb	[%i4+%g1], %g3
	sethi	%hi(.LC3), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC3), %o0
.L24:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L8:
	sethi	%hi(.LC4), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC4), %o0
	b,a	.L24
	.size	main, .-main
	.common	rx_data,9,8
	.global tx_data
	.section	".data"
	.align 8
	.type	tx_data, #object
	.size	tx_data, 9
tx_data:
	.asciz	"hello123"
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
