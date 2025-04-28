	.file	"main.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"enabled serial.\n"
	.section	".text"
	.align 4
	.global setup
	.type	setup, #function
	.proc	020
setup:
	save	%sp, -96, %sp
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
	mov	0, %i0
	mov	0, %i1
	sethi	%hi(.LC0), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC0), %o0
	call	enableInterruptControllerAndAllInterrupts, 0
	 restore
	.size	setup, .-setup
	.align 4
	.global write_to_i2c_config_register
	.type	write_to_i2c_config_register, #function
	.proc	020
write_to_i2c_config_register:
	sethi	%hi(-52224), %g1
	or	%g1, 512, %g1
	jmp	%o7+8
	 st	%o0, [%g1]
	.size	write_to_i2c_config_register, .-write_to_i2c_config_register
	.align 4
	.global read_from_i2c_config_register
	.type	read_from_i2c_config_register, #function
	.proc	016
read_from_i2c_config_register:
	sethi	%hi(-52224), %g1
	or	%g1, 512, %g1
	jmp	%o7+8
	 ld	[%g1], %o0
	.size	read_from_i2c_config_register, .-read_from_i2c_config_register
	.align 4
	.global my_external_interrupt_handler
	.type	my_external_interrupt_handler, #function
	.proc	020
my_external_interrupt_handler:
	sethi	%hi(interrupt_counter), %g1
	ld	[%g1+%lo(interrupt_counter)], %g2
	add	%g2, 1, %g2
	st	%g2, [%g1+%lo(interrupt_counter)]
	jmp	%o7+8
	 nop
	.size	my_external_interrupt_handler, .-my_external_interrupt_handler
	.section	.rodata.str1.8
	.align 8
.LC1:
	.asciz	"Attention!! I2C is being configured!!\n"
	.align 8
.LC2:
	.asciz	"I2C is configured with value = 0x%x\n"
	.align 8
.LC3:
	.asciz	"END of Program Execution\n"
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	020
main:
	save	%sp, -96, %sp
	sethi	%hi(.LC1), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC1), %o0
	mov	255, %g2
	sethi	%hi(-52224), %g1
	or	%g1, 512, %g1
	mov	255, %o1
	st	%g2, [%g1]
	sethi	%hi(.LC2), %o0
	sethi	%hi(.LC3), %i0
	or	%o0, %lo(.LC2), %o0
	call	cortos_printf, 0
	 or	%i0, %lo(.LC3), %i0
	call	cortos_printf, 0
	 restore
	.size	main, .-main
	.global interrupt_flag
	.section	".bss"
	.align 4
	.type	interrupt_flag, #object
	.size	interrupt_flag, 4
interrupt_flag:
	.skip	4
	.global interrupt_counter
	.align 4
	.type	interrupt_counter, #object
	.size	interrupt_counter, 4
interrupt_counter:
	.skip	4
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
