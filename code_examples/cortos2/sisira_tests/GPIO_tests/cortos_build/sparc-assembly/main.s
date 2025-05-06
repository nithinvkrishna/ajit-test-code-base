	.file	"main.c"
	.section	".text"
	.align 4
	.global my_timer_interrupt_handler
	.type	my_timer_interrupt_handler, #function
	.proc	020
my_timer_interrupt_handler:
	jmp	%o7+8
	 nop
	.size	my_timer_interrupt_handler, .-my_timer_interrupt_handler
	.align 4
	.global gpio_write
	.type	gpio_write, #function
	.proc	020
gpio_write:
	or	%o7, %g0, %g1
	call	__ajit_write_gpio_32_via_vmap__, 0
	 or	%g1, %g0, %o7
	.size	gpio_write, .-gpio_write
	.align 4
	.global gpio_read
	.type	gpio_read, #function
	.proc	016
gpio_read:
	or	%o7, %g0, %g1
	call	__ajit_read_gpio_32_via_vmap__, 0
	 or	%g1, %g0, %o7
	.size	gpio_read, .-gpio_read
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"Test Pass : written_val :0x%04X = read_Val 0x%04X\n"
	.align 8
.LC1:
	.asciz	"Test Fail : written_val :0x%04X = read_Val 0x%04X\n"
	.section	".text"
	.align 4
	.global gpio_data_compare
	.type	gpio_data_compare, #function
	.proc	020
gpio_data_compare:
	save	%sp, -96, %sp
	call	__ajit_write_gpio_32_via_vmap__, 0
	 mov	%i0, %o0
	call	__ajit_read_gpio_32_via_vmap__, 0
	 mov	%i0, %i1
	cmp	%i0, %o0
	be	.L7
	 mov	%o0, %i2
	sethi	%hi(.LC1), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC1), %o0
.L7:
	sethi	%hi(.LC0), %i0
	mov	%i1, %i2
	call	cortos_printf, 0
	 restore %i0, %lo(.LC0), %o0
	.size	gpio_data_compare, .-gpio_data_compare
	.section	.rodata.str1.8
	.align 8
.LC2:
	.asciz	"Default GPIO register value: 0x%08X\n"
	.section	".text"
	.align 4
	.global check_default_gpio_value
	.type	check_default_gpio_value, #function
	.proc	020
check_default_gpio_value:
	save	%sp, -96, %sp
	call	__ajit_read_gpio_32_via_vmap__, 0
	 sethi	%hi(.LC2), %i0
	or	%i0, %lo(.LC2), %i0
	call	cortos_printf, 0
	 restore %g0, %o0, %o1
	.size	check_default_gpio_value, .-check_default_gpio_value
	.align 4
	.global configure_serial_device
	.type	configure_serial_device, #function
	.proc	020
configure_serial_device:
	save	%sp, -96, %sp
	mov	1, %o0
	mov	1, %o1
	call	__ajit_serial_configure_via_vmap__, 0
	 mov	1, %o2
	sethi	%hi(80000000), %o1
	mov	0, %i0
	sethi	%hi(114688), %o0
	call	__ajit_serial_set_baudrate_via_vmap__, 0
	 or	%o0, 512, %o0
	call	__ajit_serial_set_uart_reset_via_vmap__, 0
	 restore
	.size	configure_serial_device, .-configure_serial_device
	.section	.rodata.str1.8
	.align 8
.LC3:
	.asciz	"Main function starts\n"
	.align 8
.LC4:
	.asciz	"\nTest completed\n"
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	save	%sp, -96, %sp
	call	configure_serial_device, 0
	 mov	0, %i0
	sethi	%hi(.LC3), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC3), %o0
	call	check_default_gpio_value, 0
	 nop
	sethi	%hi(4096), %o0
	call	gpio_data_compare, 0
	 or	%o0, 564, %o0
	sethi	%hi(.LC4), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC4), %o0
	jmp	%i7+8
	 restore
	.size	main, .-main
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
