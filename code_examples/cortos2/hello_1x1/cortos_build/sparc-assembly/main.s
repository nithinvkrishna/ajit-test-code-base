	.file	"main.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"Hello: 1\n"
	.align 8
.LC1:
	.asciz	"Hello: 2\n"
	.align 8
.LC2:
	.asciz	"Hello: 3\n"
	.section	".text"
	.align 4
	.global main_00
	.type	main_00, #function
	.proc	020
main_00:
	save	%sp, -352, %sp
	mov	0, %o2
	mov	1, %o0
	call	__ajit_serial_configure_via_bypass__, 0
	 mov	0, %o1
	sethi	%hi(80000000), %o1
	sethi	%hi(114688), %o0
	call	__ajit_serial_set_baudrate_via_bypass__, 0
	 or	%o0, 512, %o0
	call	__ajit_serial_set_uart_reset_via_bypass__, 0
	 mov	0, %o0
	add	%fp, -256, %o0
	sethi	%hi(.LC0), %o1
	call	sprintf, 0
	 or	%o1, %lo(.LC0), %o1
	add	%fp, -256, %o0
	call	__ajit_serial_puts_via_bypass__, 0
	 mov	255, %o1
	add	%fp, -256, %o0
	sethi	%hi(.LC1), %o1
	call	sprintf, 0
	 or	%o1, %lo(.LC1), %o1
	add	%fp, -256, %o0
	call	__ajit_serial_puts_via_bypass__, 0
	 mov	255, %o1
	add	%fp, -256, %o0
	sethi	%hi(.LC2), %o1
	call	sprintf, 0
	 or	%o1, %lo(.LC2), %o1
	add	%fp, -256, %o0
	call	__ajit_serial_puts_via_bypass__, 0
	 mov	255, %o1
	jmp	%i7+8
	 restore
	.size	main_00, .-main_00
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
