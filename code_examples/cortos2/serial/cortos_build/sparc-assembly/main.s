	.file	"main.c"
	.section	".text"
	.align 4
	.global my_serial_interrupt_handler
	.type	my_serial_interrupt_handler, #function
	.proc	020
my_serial_interrupt_handler:
	save	%sp, -96, %sp
	call	__ajit_read_serial_rx_register_via_bypass__, 0
	 nop
	sethi	%hi(serial_interrupt_counter), %g1
	sethi	%hi(buffer), %g2
	ld	[%g1+%lo(serial_interrupt_counter)], %g3
	or	%g2, %lo(buffer), %g2
	stb	%o0, [%g2+%g3]
	ld	[%g1+%lo(serial_interrupt_counter)], %g4
	ld	[%g1+%lo(serial_interrupt_counter)], %g3
	add	%g2, %g4, %g2
	add	%g3, 1, %g3
	stb	%g0, [%g2+1]
	st	%g3, [%g1+%lo(serial_interrupt_counter)]
	cmp	%o0, 113
	be,a	.L8
	 mov	1, %g2
	ld	[%g1+%lo(serial_interrupt_counter)], %g1
	cmp	%g1, 1022
	bne	.L9
	 mov	1, %g2
.L8:
	sethi	%hi(exit_flag), %g1
	st	%g2, [%g1+%lo(exit_flag)]
.L9:
	jmp	%i7+8
	 restore
	.size	my_serial_interrupt_handler, .-my_serial_interrupt_handler
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"enabled serial\n"
	.section	".text"
	.align 4
	.global setup
	.type	setup, #function
	.proc	020
setup:
	save	%sp, -96, %sp
	mov	1, %o2
	mov	1, %o0
	call	__ajit_serial_configure_via_bypass__, 0
	 mov	1, %o1
	sethi	%hi(80000000), %o1
	sethi	%hi(114688), %o0
	call	__ajit_serial_set_baudrate_via_bypass__, 0
	 or	%o0, 512, %o0
	call	__ajit_serial_set_uart_reset_via_bypass__, 0
	 mov	0, %o0
	mov	0, %i0
	mov	0, %i1
	sethi	%hi(.LC0), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC0), %o0
	call	enableInterruptControllerAndAllInterrupts, 0
	 restore
	.size	setup, .-setup
	.section	.rodata.str1.8
	.align 8
.LC1:
	.asciz	"Starting\n"
	.align 8
.LC2:
	.asciz	"you typed:\n%s\nDone.\n"
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	save	%sp, -96, %sp
	sethi	%hi(.LC1), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC1), %o0
	sethi	%hi(exit_flag), %g2
	or	%g2, %lo(exit_flag), %g2
.L12:
	ld	[%g2], %g1
	cmp	%g1, 0
	be	.L12
	 mov	0, %i0
	sethi	%hi(.LC2), %o0
	sethi	%hi(buffer), %o1
	or	%o0, %lo(.LC2), %o0
	call	cortos_printf, 0
	 or	%o1, %lo(buffer), %o1
	jmp	%i7+8
	 restore
	.size	main, .-main
	.common	buffer,1024,8
	.global exit_flag
	.section	".bss"
	.align 4
	.type	exit_flag, #object
	.size	exit_flag, 4
exit_flag:
	.skip	4
	.global serial_interrupt_counter
	.align 4
	.type	serial_interrupt_counter, #object
	.size	serial_interrupt_counter, 4
serial_interrupt_counter:
	.skip	4
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
