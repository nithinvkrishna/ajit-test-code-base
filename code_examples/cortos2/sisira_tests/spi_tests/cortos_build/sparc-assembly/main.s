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
	.global read_spi_busybit
	.type	read_spi_busybit, #function
	.proc	020
read_spi_busybit:
	save	%sp, -96, %sp
.L3:
	call	__ajit_read_spi_master_register_via_vmap__, 0
	 mov	2, %o0
	andcc	%o0, 1, %g0
	bne	.L3
	 nop
	jmp	%i7+8
	 restore
	.size	read_spi_busybit, .-read_spi_busybit
	.align 4
	.global spi_config_wr
	.type	spi_config_wr, #function
	.proc	020
spi_config_wr:
	mov	%o0, %o1
	mov	3, %o0
	or	%o7, %g0, %g1
	call	__ajit_write_spi_master_register_via_vmap__, 0
	 or	%g1, %g0, %o7
	.size	spi_config_wr, .-spi_config_wr
	.align 4
	.global spi_config_rd
	.type	spi_config_rd, #function
	.proc	014
spi_config_rd:
	mov	3, %o0
	or	%o7, %g0, %g1
	call	__ajit_read_spi_master_register_via_vmap__, 0
	 or	%g1, %g0, %o7
	.size	spi_config_rd, .-spi_config_rd
	.align 4
	.global spi_status_reg_wr
	.type	spi_status_reg_wr, #function
	.proc	020
spi_status_reg_wr:
	mov	2, %o0
	mov	11, %o1
	or	%o7, %g0, %g1
	call	__ajit_write_spi_master_register_via_vmap__, 0
	 or	%g1, %g0, %o7
	.size	spi_status_reg_wr, .-spi_status_reg_wr
	.align 4
	.global spi_write_data
	.type	spi_write_data, #function
	.proc	020
spi_write_data:
	save	%sp, -96, %sp
	sethi	%hi(config_val), %g1
	call	spi_config_wr, 0
	 ldub	[%g1+%lo(config_val)], %o0
	call	read_spi_busybit, 0
	 nop
	mov	%i0, %o0
	call	__ajit_write_spi_master_register_via_vmap__, 0
	 mov	%i1, %o1
	call	spi_status_reg_wr, 0
	 nop
	call	read_spi_busybit, 0
	 restore
	.size	spi_write_data, .-spi_write_data
	.align 4
	.global spi_read_data
	.type	spi_read_data, #function
	.proc	014
spi_read_data:
	save	%sp, -96, %sp
	call	read_spi_busybit, 0
	 nop
	call	spi_status_reg_wr, 0
	 nop
	call	read_spi_busybit, 0
	 nop
	call	__ajit_read_spi_master_register_via_vmap__, 0
	 restore
	.size	spi_read_data, .-spi_read_data
	.align 4
	.global spi_data_compare
	.type	spi_data_compare, #function
	.proc	010
spi_data_compare:
	save	%sp, -96, %sp
	mov	0, %o0
	ld	[%fp+64], %i5
	call	spi_write_data, 0
	 mov	%i2, %o1
	mov	0, %o0
	call	spi_read_data, 0
	 mov	%i5, %i0
	jmp	%i7+12
	 restore
	.size	spi_data_compare, .-spi_data_compare
	.align 4
	.global spi_config_compare
	.type	spi_config_compare, #function
	.proc	010
spi_config_compare:
	save	%sp, -96, %sp
	mov	%i0, %o0
	call	spi_config_wr, 0
	 ld	[%fp+64], %i5
	call	spi_config_rd, 0
	 mov	%i5, %i0
	jmp	%i7+12
	 restore
	.size	spi_config_compare, .-spi_config_compare
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"SPI %s R/W PASS: 0x%02X == 0x%02X\n"
	.align 8
.LC1:
	.asciz	"SPI %s R/W FAIL: Wrote 0x%02X, Read 0x%02X\n"
	.section	".text"
	.align 4
	.global print_result
	.type	print_result, #function
	.proc	020
print_result:
	ldub	[%o0+6], %g1
	ld	[%o0], %o1
	ldub	[%o0+4], %o2
	cmp	%g1, 0
	bne	.L15
	 ldub	[%o0+5], %o3
	sethi	%hi(.LC1), %o0
	and	%o2, 0xff, %o2
	or	%o0, %lo(.LC1), %o0
	and	%o3, 0xff, %o3
	or	%o7, %g0, %g1
	call	cortos_printf, 0
	 or	%g1, %g0, %o7
.L15:
	sethi	%hi(.LC0), %o0
	and	%o2, 0xff, %o2
	or	%o0, %lo(.LC0), %o0
	and	%o3, 0xff, %o3
	or	%o7, %g0, %g1
	call	cortos_printf, 0
	 or	%g1, %g0, %o7
	.size	print_result, .-print_result
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
.LC2:
	.asciz	"Main function starts\n"
	.align 8
.LC3:
	.asciz	"\nTest completed\n"
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	save	%sp, -128, %sp
	sethi	%hi(.LC2), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC2), %o0
	call	configure_serial_device, 0
	 mov	0, %i0
	sethi	%hi(config_val), %g1
	call	spi_config_wr, 0
	 ldub	[%g1+%lo(config_val)], %o0
	call	spi_config_rd, 0
	 nop
	mov	35, %o1
	call	spi_write_data, 0
	 mov	0, %o0
	call	spi_read_data, 0
	 mov	0, %o0
	mov	36, %o1
	call	spi_write_data, 0
	 mov	0, %o0
	call	spi_read_data, 0
	 mov	0, %o0
	ldd	[%fp-24], %g2
	add	%fp, -32, %o0
	call	print_result, 0
	 std	%g2, [%fp-32]
	ldd	[%fp-16], %g2
	add	%fp, -32, %o0
	call	print_result, 0
	 std	%g2, [%fp-32]
	ldd	[%fp-8], %g2
	add	%fp, -32, %o0
	call	print_result, 0
	 std	%g2, [%fp-32]
	sethi	%hi(.LC3), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC3), %o0
	jmp	%i7+8
	 restore
	.size	main, .-main
	.global config_val
	.section	".data"
	.type	config_val, #object
	.size	config_val, 1
config_val:
	.byte	21
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
