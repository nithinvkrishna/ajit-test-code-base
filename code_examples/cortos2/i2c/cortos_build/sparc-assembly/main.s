	.file	"main.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"\r\n"
	.align 8
.LC1:
	.asciz	"////////////////////////////////////////\r\n"
	.align 8
.LC2:
	.asciz	"///// INITIATING C PROGRAM START! //////\r\n"
	.align 8
.LC3:
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
	sethi	%hi(.LC0), %i0
	call	cortos_printf, 0
	 or	%i0, %lo(.LC0), %o0
	sethi	%hi(.LC1), %i5
	call	cortos_printf, 0
	 or	%i5, %lo(.LC1), %o0
	sethi	%hi(.LC2), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC2), %o0
	call	cortos_printf, 0
	 or	%i5, %lo(.LC1), %o0
	call	cortos_printf, 0
	 or	%i0, %lo(.LC0), %o0
	or	%i0, %lo(.LC0), %i0
	sethi	%hi(.LC3), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC3), %o0
	call	cortos_printf, 0
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
	.section	.rodata.str1.8
	.align 8
.LC4:
	.asciz	"[%s] Initiating Reset... \r\n"
	.align 8
.LC5:
	.asciz	"[%s] Reset Done! \r\n"
	.align 8
.LC6:
	.asciz	"[%s] Reset Failed! \r\n"
	.section	".text"
	.align 4
	.global reset_reg
	.type	reset_reg, #function
	.proc	020
reset_reg:
	save	%sp, -96, %sp
	sethi	%hi(.LC4), %o0
	mov	%i1, %o1
	call	cortos_printf, 0
	 or	%o0, %lo(.LC4), %o0
	st	%g0, [%i0]
	ld	[%i0], %g1
	cmp	%g1, 0
	be,a	.L6
	 sethi	%hi(.LC5), %i0
	sethi	%hi(.LC6), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC6), %o0
.L6:
	call	cortos_printf, 0
	 restore %i0, %lo(.LC5), %o0
	.size	reset_reg, .-reset_reg
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
	.global generate_random_32bit
	.type	generate_random_32bit, #function
	.proc	016
generate_random_32bit:
	sethi	%hi(305419264), %o0
	jmp	%o7+8
	 or	%o0, 632, %o0
	.size	generate_random_32bit, .-generate_random_32bit
	.section	.rodata.str1.8
	.align 8
.LC7:
	.asciz	"[%s] Reg data first read out matches data going to be written. So, creating new write data = 0x%08X\r\n"
	.section	".text"
	.align 4
	.global get_reg_wr_val
	.type	get_reg_wr_val, #function
	.proc	016
get_reg_wr_val:
	save	%sp, -96, %sp
	cmp	%i0, %i1
	be,a	.L12
	 sethi	%hi(305419264), %i1
	cmp	%i3, 1
.L13:
	bne	.L11
	 sethi	%hi(64512), %g1
	or	%g1, 1023, %g1
	and	%i1, %g1, %i1
.L11:
	jmp	%i7+8
	 restore %g0, %i1, %o0
.L12:
	mov	%i2, %o1
	or	%i1, 632, %o2
	sethi	%hi(.LC7), %o0
	or	%i1, 632, %i1
	call	cortos_printf, 0
	 or	%o0, %lo(.LC7), %o0
	b	.L13
	 cmp	%i3, 1
	.size	get_reg_wr_val, .-get_reg_wr_val
	.section	.rodata.str1.8
	.align 8
.LC8:
	.asciz	"[%s] read before write, value 0x%08X\r\n"
	.section	".text"
	.align 4
	.global reg_rd_before_wr
	.type	reg_rd_before_wr, #function
	.proc	016
reg_rd_before_wr:
	save	%sp, -96, %sp
	sethi	%hi(.LC8), %o0
	ld	[%i0], %i0
	mov	%i1, %o1
	mov	%i0, %o2
	call	cortos_printf, 0
	 or	%o0, %lo(.LC8), %o0
	jmp	%i7+8
	 restore
	.size	reg_rd_before_wr, .-reg_rd_before_wr
	.section	.rodata.str1.8
	.align 8
.LC9:
	.asciz	"[%s] read after write, value 0x%08X\r\n"
	.section	".text"
	.align 4
	.global reg_rd_after_wr
	.type	reg_rd_after_wr, #function
	.proc	016
reg_rd_after_wr:
	save	%sp, -96, %sp
	sethi	%hi(.LC9), %o0
	ld	[%i0], %i0
	mov	%i1, %o1
	mov	%i0, %o2
	call	cortos_printf, 0
	 or	%o0, %lo(.LC9), %o0
	jmp	%i7+8
	 restore
	.size	reg_rd_after_wr, .-reg_rd_after_wr
	.section	.rodata.str1.8
	.align 8
.LC10:
	.asciz	"[%s] writing value 0x%08X\r\n"
	.section	".text"
	.align 4
	.global write_reg
	.type	write_reg, #function
	.proc	016
write_reg:
	save	%sp, -96, %sp
	mov	%i1, %o1
	call	reg_rd_before_wr, 0
	 mov	%i0, %o0
	mov	%i1, %o2
	mov	%i2, %o3
	sethi	%hi(-12206080), %o1
	call	get_reg_wr_val, 0
	 or	%o1, 298, %o1
	mov	%i1, %o1
	mov	%o0, %i5
	st	%o0, [%i0]
	mov	%i5, %o2
	sethi	%hi(.LC10), %o0
	mov	%i5, %i0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC10), %o0
	jmp	%i7+8
	 restore
	.size	write_reg, .-write_reg
	.section	.rodata.str1.8
	.align 8
.LC11:
	.asciz	"[%s] is a PARTIAL_WRITE register\r\n"
	.align 8
.LC12:
	.asciz	"[%s] is a FULL_WRITE register\r\n"
	.align 8
.LC13:
	.asciz	"[%s] is a READ_ONLY register\r\n"
	.align 8
.LC14:
	.asciz	"[%s] Test Status - PASS: (Address: %p) - Written: 0x%08X, Read: 0x%08X\r\n"
	.align 8
.LC15:
	.asciz	"[%s] Test Status - FAIL: (Address: %p) - Written: 0x%08X, Read: 0x%08X\r\n"
	.section	".text"
	.align 4
	.global check_results
	.type	check_results, #function
	.proc	020
check_results:
	save	%sp, -96, %sp
	mov	%i0, %l0
	mov	%i2, %i5
	cmp	%i4, 1
	be	.L22
	 mov	%i1, %o1
	cmp	%i4, 2
	be,a	.L23
	 sethi	%hi(.LC12), %o0
	sethi	%hi(.LC13), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC13), %o0
	cmp	%i3, %i5
.L25:
	be	.L26
	 sethi	%hi(.LC14), %i0
	sethi	%hi(.LC15), %i0
.L27:
	mov	%l0, %i2
	or	%i0, %lo(.LC15), %i0
	call	cortos_printf, 0
	 restore %g0, %i5, %o4
.L23:
	call	cortos_printf, 0
	 or	%o0, %lo(.LC12), %o0
	cmp	%i3, %i5
	bne	.L27
	 sethi	%hi(.LC15), %i0
	sethi	%hi(.LC14), %i0
.L26:
	mov	%l0, %i2
	or	%i0, %lo(.LC14), %i0
	call	cortos_printf, 0
	 restore %g0, %i3, %o4
.L22:
	sethi	%hi(.LC11), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC11), %o0
	b	.L25
	 cmp	%i3, %i5
	.size	check_results, .-check_results
	.section	.rodata.str1.8
	.align 8
.LC16:
	.asciz	"[%s] Skipping write and scoreboarding...\r\n"
	.section	".text"
	.align 4
	.global run_test
	.type	run_test, #function
	.proc	020
run_test:
	save	%sp, -96, %sp
	sethi	%hi(.LC0), %i5
	call	cortos_printf, 0
	 or	%i5, %lo(.LC0), %o0
	cmp	%i2, 0
	be	.L31
	 mov	%i2, %o2
	mov	%i0, %o0
	call	write_reg, 0
	 mov	%i1, %o1
	mov	%i1, %o1
	mov	%o0, %i4
	call	reg_rd_after_wr, 0
	 mov	%i0, %o0
	mov	%i1, %o1
	mov	%o0, %o2
	mov	%i4, %o3
	mov	%i0, %o0
	mov	%i2, %o4
	call	check_results, 0
	 or	%i5, %lo(.LC0), %i0
	call	cortos_printf, 0
	 restore
.L31:
	mov	%i1, %o1
	sethi	%hi(.LC13), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC13), %o0
	mov	%i1, %o1
	sethi	%hi(.LC16), %o0
	or	%i5, %lo(.LC0), %i0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC16), %o0
	call	cortos_printf, 0
	 restore
	.size	run_test, .-run_test
	.section	.rodata.str1.8
	.align 8
.LC17:
	.asciz	"--------------------------------------------------\r\n"
	.align 8
.LC18:
	.asciz	"Starting ADDR_IO register tests...\r\n"
	.align 8
.LC19:
	.asciz	"ADDR_IO_MIN"
	.align 8
.LC20:
	.asciz	"Completed ADDR_IO register tests!\r\n"
	.section	".text"
	.align 4
	.global run_addr_io_tests
	.type	run_addr_io_tests, #function
	.proc	020
run_addr_io_tests:
	save	%sp, -96, %sp
	sethi	%hi(.LC17), %i5
	call	cortos_printf, 0
	 or	%i5, %lo(.LC17), %o0
	sethi	%hi(.LC18), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC18), %o0
	call	cortos_printf, 0
	 or	%i5, %lo(.LC17), %o0
	mov	0, %o2
	sethi	%hi(-65536), %o0
	sethi	%hi(.LC19), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC19), %o1
	call	cortos_printf, 0
	 or	%i5, %lo(.LC17), %o0
	sethi	%hi(.LC20), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC20), %o0
	or	%i5, %lo(.LC17), %o0
	call	cortos_printf, 0
	 sethi	%hi(.LC0), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC0), %o0
	.size	run_addr_io_tests, .-run_addr_io_tests
	.section	.rodata.str1.8
	.align 8
.LC21:
	.asciz	"Starting ADDR_SCRATCH_PAD_MEMORY register tests...\r\n"
	.align 8
.LC22:
	.asciz	"ADDR_SCRATCH_PAD_MEMORY_MIN"
	.align 8
.LC23:
	.asciz	"ADDR_SCRATCH_PAD_MEMORY_MAX"
	.align 8
.LC24:
	.asciz	"Completed ADDR_SCRATCH_PAD_MEMORY register tests!\r\n"
	.section	".text"
	.align 4
	.global run_addr_scratch_pad_memory_tests
	.type	run_addr_scratch_pad_memory_tests, #function
	.proc	020
run_addr_scratch_pad_memory_tests:
	save	%sp, -96, %sp
	sethi	%hi(.LC17), %i5
	call	cortos_printf, 0
	 or	%i5, %lo(.LC17), %o0
	sethi	%hi(.LC21), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC21), %o0
	call	cortos_printf, 0
	 or	%i5, %lo(.LC17), %o0
	sethi	%hi(-54272), %o0
	mov	2, %o2
	sethi	%hi(.LC22), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC22), %o1
	mov	2, %o2
	sethi	%hi(-54272), %o0
	sethi	%hi(.LC23), %o1
	or	%o0, 1020, %o0
	call	run_test, 0
	 or	%o1, %lo(.LC23), %o1
	call	cortos_printf, 0
	 or	%i5, %lo(.LC17), %o0
	sethi	%hi(.LC24), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC24), %o0
	or	%i5, %lo(.LC17), %o0
	call	cortos_printf, 0
	 sethi	%hi(.LC0), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC0), %o0
	.size	run_addr_scratch_pad_memory_tests, .-run_addr_scratch_pad_memory_tests
	.section	.rodata.str1.8
	.align 8
.LC25:
	.asciz	"Starting ADDR_INTERRUPT_CONTROLLER register tests...\r\n"
	.align 8
.LC26:
	.asciz	"ADDR_INTERRUPT_CONTROLLER_MIN"
	.align 8
.LC27:
	.asciz	"ADDR_INTERRUPT_CONTROLLER_CONTROL_REGISTER"
	.align 8
.LC28:
	.asciz	"ADDR_INTERRUPT_CONTROLLER_IPI_BASE"
	.align 8
.LC29:
	.asciz	"Completed ADDR_INTERRUPT_CONTROLLER register tests!\r\n"
	.section	".text"
	.align 4
	.global run_addr_interrupt_controller_tests
	.type	run_addr_interrupt_controller_tests, #function
	.proc	020
run_addr_interrupt_controller_tests:
	save	%sp, -96, %sp
	sethi	%hi(.LC17), %i5
	call	cortos_printf, 0
	 or	%i5, %lo(.LC17), %o0
	sethi	%hi(.LC25), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC25), %o0
	call	cortos_printf, 0
	 or	%i5, %lo(.LC17), %o0
	sethi	%hi(-53248), %o0
	mov	1, %o2
	sethi	%hi(.LC26), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC26), %o1
	sethi	%hi(-53248), %o0
	mov	1, %o2
	sethi	%hi(.LC27), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC27), %o1
	mov	2, %o2
	sethi	%hi(-53248), %o0
	sethi	%hi(.LC28), %o1
	or	%o0, 128, %o0
	call	run_test, 0
	 or	%o1, %lo(.LC28), %o1
	call	cortos_printf, 0
	 or	%i5, %lo(.LC17), %o0
	sethi	%hi(.LC29), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC29), %o0
	or	%i5, %lo(.LC17), %o0
	call	cortos_printf, 0
	 sethi	%hi(.LC0), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC0), %o0
	.size	run_addr_interrupt_controller_tests, .-run_addr_interrupt_controller_tests
	.align 4
	.global reset_addr_interrupt_controller_registers
	.type	reset_addr_interrupt_controller_registers, #function
	.proc	020
reset_addr_interrupt_controller_registers:
	save	%sp, -96, %sp
	sethi	%hi(-53248), %o0
	sethi	%hi(.LC26), %o1
	call	reset_reg, 0
	 or	%o1, %lo(.LC26), %o1
	sethi	%hi(-53248), %o0
	sethi	%hi(.LC27), %o1
	call	reset_reg, 0
	 or	%o1, %lo(.LC27), %o1
	sethi	%hi(-53248), %o0
	sethi	%hi(.LC28), %o1
	or	%o0, 128, %o0
	or	%o1, %lo(.LC28), %o1
	call	reset_reg, 0
	 sethi	%hi(.LC0), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC0), %o0
	.size	reset_addr_interrupt_controller_registers, .-reset_addr_interrupt_controller_registers
	.section	.rodata.str1.8
	.align 8
.LC30:
	.asciz	"Starting I2C register tests...\r\n"
	.align 8
.LC31:
	.asciz	"ADDR_I2C_MASTER_MIN"
	.align 8
.LC32:
	.asciz	"ADDR_I2C_MASTER_CONFIG_REGISTER"
	.align 8
.LC33:
	.asciz	"ADDR_I2C_MASTER_COMMAND_REGISTER"
	.align 8
.LC34:
	.asciz	"ADDR_I2C_MASTER_STATUS_REGISTER"
	.align 8
.LC35:
	.asciz	"ADDR_I2C_MASTER_MAX"
	.align 8
.LC36:
	.asciz	"Completed I2C register tests!\r\n"
	.section	".text"
	.align 4
	.global run_i2c_tests
	.type	run_i2c_tests, #function
	.proc	020
run_i2c_tests:
	save	%sp, -96, %sp
	sethi	%hi(.LC17), %i4
	call	cortos_printf, 0
	 or	%i4, %lo(.LC17), %o0
	sethi	%hi(.LC30), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC30), %o0
	call	cortos_printf, 0
	 or	%i4, %lo(.LC17), %o0
	sethi	%hi(-52224), %i5
	mov	2, %o2
	or	%i5, 512, %o0
	sethi	%hi(.LC31), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC31), %o1
	or	%i5, 512, %o0
	mov	2, %o2
	sethi	%hi(.LC32), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC32), %o1
	or	%i5, 516, %o0
	mov	2, %o2
	sethi	%hi(.LC33), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC33), %o1
	or	%i5, 520, %o0
	mov	2, %o2
	sethi	%hi(.LC34), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC34), %o1
	mov	2, %o2
	or	%i5, 520, %o0
	sethi	%hi(.LC35), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC35), %o1
	call	cortos_printf, 0
	 or	%i4, %lo(.LC17), %o0
	sethi	%hi(.LC36), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC36), %o0
	or	%i4, %lo(.LC17), %o0
	call	cortos_printf, 0
	 sethi	%hi(.LC0), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC0), %o0
	.size	run_i2c_tests, .-run_i2c_tests
	.section	.rodata.str1.8
	.align 8
.LC37:
	.asciz	"Starting GPIO register tests...\r\n"
	.align 8
.LC38:
	.asciz	"ADDR_GPIO_MIN"
	.align 8
.LC39:
	.asciz	"ADDR_GPIO_DOUT_REGISTER"
	.align 8
.LC40:
	.asciz	"ADDR_GPIO_DIN_REGISTER"
	.align 8
.LC41:
	.asciz	"ADDR_CONFIG_UART_BAUD_CONTROL_REGISTER"
	.align 8
.LC42:
	.asciz	"ADDR_GPIO_MAX"
	.align 8
.LC43:
	.asciz	"Completed GPIO register tests!\r\n"
	.section	".text"
	.align 4
	.global run_gpio_tests
	.type	run_gpio_tests, #function
	.proc	020
run_gpio_tests:
	save	%sp, -96, %sp
	sethi	%hi(.LC17), %i5
	call	cortos_printf, 0
	 or	%i5, %lo(.LC17), %o0
	sethi	%hi(.LC37), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC37), %o0
	call	cortos_printf, 0
	 or	%i5, %lo(.LC17), %o0
	sethi	%hi(-52224), %o0
	mov	2, %o2
	sethi	%hi(.LC38), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC38), %o1
	sethi	%hi(-52224), %o0
	mov	2, %o2
	sethi	%hi(.LC39), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC39), %o1
	sethi	%hi(-52224), %i4
	mov	2, %o2
	or	%i4, 4, %o0
	sethi	%hi(.LC40), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC40), %o1
	or	%i4, 8, %o0
	mov	2, %o2
	sethi	%hi(.LC41), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC41), %o1
	mov	2, %o2
	or	%i4, 12, %o0
	sethi	%hi(.LC42), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC42), %o1
	call	cortos_printf, 0
	 or	%i5, %lo(.LC17), %o0
	sethi	%hi(.LC43), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC43), %o0
	or	%i5, %lo(.LC17), %o0
	call	cortos_printf, 0
	 sethi	%hi(.LC0), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC0), %o0
	.size	run_gpio_tests, .-run_gpio_tests
	.section	.rodata.str1.8
	.align 8
.LC44:
	.asciz	"Starting SPI register tests...\r\n"
	.align 8
.LC45:
	.asciz	"ADDR_SPI_MIN"
	.align 8
.LC46:
	.asciz	"ADDR_SPI_DATA_REGISTER_LOW"
	.align 8
.LC47:
	.asciz	"ADDR_SPI_DATA_REGISTER_HIGH"
	.align 8
.LC48:
	.asciz	"ADDR_SPI_COMMAND_STATUS_REGISTER"
	.align 8
.LC49:
	.asciz	"ADDR_SPI_CONFIG_REGISTER"
	.align 8
.LC50:
	.asciz	"ADDR_SPI_MAX"
	.align 8
.LC51:
	.asciz	"Completed SPI register tests!\r\n"
	.section	".text"
	.align 4
	.global run_spi_tests
	.type	run_spi_tests, #function
	.proc	020
run_spi_tests:
	save	%sp, -96, %sp
	sethi	%hi(.LC17), %i4
	call	cortos_printf, 0
	 or	%i4, %lo(.LC17), %o0
	sethi	%hi(.LC44), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC44), %o0
	call	cortos_printf, 0
	 or	%i4, %lo(.LC17), %o0
	sethi	%hi(-53248), %i5
	mov	2, %o2
	or	%i5, 768, %o0
	sethi	%hi(.LC45), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC45), %o1
	or	%i5, 768, %o0
	mov	2, %o2
	sethi	%hi(.LC46), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC46), %o1
	or	%i5, 772, %o0
	mov	2, %o2
	sethi	%hi(.LC47), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC47), %o1
	or	%i5, 776, %o0
	mov	2, %o2
	sethi	%hi(.LC48), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC48), %o1
	or	%i5, 780, %o0
	mov	2, %o2
	sethi	%hi(.LC49), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC49), %o1
	mov	2, %o2
	or	%i5, 780, %o0
	sethi	%hi(.LC50), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC50), %o1
	call	cortos_printf, 0
	 or	%i4, %lo(.LC17), %o0
	sethi	%hi(.LC51), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC51), %o0
	or	%i4, %lo(.LC17), %o0
	call	cortos_printf, 0
	 sethi	%hi(.LC0), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC0), %o0
	.size	run_spi_tests, .-run_spi_tests
	.section	.rodata.str1.8
	.align 8
.LC52:
	.asciz	"Starting TIMER register tests...\r\n"
	.align 8
.LC53:
	.asciz	"ADDR_TIMER_MIN"
	.align 8
.LC54:
	.asciz	"ADDR_TIMER_CONTROL_REGISTER"
	.align 8
.LC55:
	.asciz	"ADDR_TIMER_MAX"
	.align 8
.LC56:
	.asciz	"Completed TIMER register tests!\r\n"
	.section	".text"
	.align 4
	.global run_timer_tests
	.type	run_timer_tests, #function
	.proc	020
run_timer_tests:
	save	%sp, -96, %sp
	sethi	%hi(.LC17), %i5
	call	cortos_printf, 0
	 or	%i5, %lo(.LC17), %o0
	sethi	%hi(.LC52), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC52), %o0
	call	cortos_printf, 0
	 or	%i5, %lo(.LC17), %o0
	sethi	%hi(-53248), %i4
	mov	2, %o2
	or	%i4, 256, %o0
	sethi	%hi(.LC53), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC53), %o1
	or	%i4, 256, %o0
	mov	2, %o2
	sethi	%hi(.LC54), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC54), %o1
	mov	2, %o2
	or	%i4, 284, %o0
	sethi	%hi(.LC55), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC55), %o1
	call	cortos_printf, 0
	 or	%i5, %lo(.LC17), %o0
	sethi	%hi(.LC56), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC56), %o0
	or	%i5, %lo(.LC17), %o0
	call	cortos_printf, 0
	 sethi	%hi(.LC0), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC0), %o0
	.size	run_timer_tests, .-run_timer_tests
	.section	.rodata.str1.8
	.align 8
.LC57:
	.asciz	"Starting ADDR_TRACE_LOGGER register tests...\r\n"
	.align 8
.LC58:
	.asciz	"ADDR_TRACE_LOGGER_MIN"
	.align 8
.LC59:
	.asciz	"ADDR_TRACE_LOGGER_CONTROL_REGISTER"
	.align 8
.LC60:
	.asciz	"ADDR_TRACE_LOGGER_MIN_ADDR_REGISTER"
	.align 8
.LC61:
	.asciz	"ADDR_TRACE_LOGGER_MAX_ADDR_REGISTER"
	.align 8
.LC62:
	.asciz	"ADDR_TRACE_LOGGER_TRIGGER_REGISTER"
	.align 8
.LC63:
	.asciz	"ADDR_TRACE_LOGGER_SAMPLE_COUNT_REGISTER"
	.align 8
.LC64:
	.asciz	"ADDR_TRACE_LOGGER_MAX"
	.align 8
.LC65:
	.asciz	"Completed ADDR_TRACE_LOGGER register tests!\r\n"
	.section	".text"
	.align 4
	.global run_addr_trace_logger_tests
	.type	run_addr_trace_logger_tests, #function
	.proc	020
run_addr_trace_logger_tests:
	save	%sp, -96, %sp
	sethi	%hi(.LC17), %i4
	call	cortos_printf, 0
	 or	%i4, %lo(.LC17), %o0
	sethi	%hi(.LC57), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC57), %o0
	call	cortos_printf, 0
	 or	%i4, %lo(.LC17), %o0
	sethi	%hi(-52224), %i5
	mov	2, %o2
	or	%i5, 256, %o0
	sethi	%hi(.LC58), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC58), %o1
	or	%i5, 256, %o0
	mov	2, %o2
	sethi	%hi(.LC59), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC59), %o1
	or	%i5, 260, %o0
	mov	2, %o2
	sethi	%hi(.LC60), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC60), %o1
	or	%i5, 264, %o0
	mov	2, %o2
	sethi	%hi(.LC61), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC61), %o1
	or	%i5, 268, %o0
	mov	2, %o2
	sethi	%hi(.LC62), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC62), %o1
	or	%i5, 272, %o0
	mov	2, %o2
	sethi	%hi(.LC63), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC63), %o1
	mov	2, %o2
	or	%i5, 284, %o0
	sethi	%hi(.LC64), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC64), %o1
	call	cortos_printf, 0
	 or	%i4, %lo(.LC17), %o0
	sethi	%hi(.LC65), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC65), %o0
	or	%i4, %lo(.LC17), %o0
	call	cortos_printf, 0
	 sethi	%hi(.LC0), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC0), %o0
	.size	run_addr_trace_logger_tests, .-run_addr_trace_logger_tests
	.section	.rodata.str1.8
	.align 8
.LC66:
	.asciz	"Starting ADDR_PERF_COUNTERS register tests...\r\n"
	.align 8
.LC67:
	.asciz	"ADDR_PERF_COUNTERS_MIN"
	.align 8
.LC68:
	.asciz	"Completed ADDR_PERF_COUNTERS register tests!\r\n"
	.section	".text"
	.align 4
	.global run_addr_perf_counters_tests
	.type	run_addr_perf_counters_tests, #function
	.proc	020
run_addr_perf_counters_tests:
	save	%sp, -96, %sp
	sethi	%hi(.LC17), %i5
	call	cortos_printf, 0
	 or	%i5, %lo(.LC17), %o0
	sethi	%hi(.LC66), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC66), %o0
	call	cortos_printf, 0
	 or	%i5, %lo(.LC17), %o0
	mov	0, %o2
	sethi	%hi(-49152), %o0
	sethi	%hi(.LC67), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC67), %o1
	call	cortos_printf, 0
	 or	%i5, %lo(.LC17), %o0
	sethi	%hi(.LC68), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC68), %o0
	or	%i5, %lo(.LC17), %o0
	call	cortos_printf, 0
	 sethi	%hi(.LC0), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC0), %o0
	.size	run_addr_perf_counters_tests, .-run_addr_perf_counters_tests
	.section	.rodata.str1.8
	.align 8
.LC69:
	.asciz	"Starting SERIAL register tests...\r\n"
	.align 8
.LC70:
	.asciz	"ADDR_SERIAL_TX_REGISTER"
	.align 8
.LC71:
	.asciz	"ADDR_SERIAL_RX_REGISTER"
	.align 8
.LC72:
	.asciz	"ADDR_SERIAL_1_MIN"
	.align 8
.LC73:
	.asciz	"ADDR_SERIAL_1_CONTROL_REGISTER"
	.align 8
.LC74:
	.asciz	"ADDR_SERIAL_1_TX_REGISTER"
	.align 8
.LC75:
	.asciz	"ADDR_SERIAL_1_RX_REGISTER"
	.align 8
.LC76:
	.asciz	"ADDR_SERIAL_1_BAUD_CONTROL_REGISTER"
	.align 8
.LC77:
	.asciz	"ADDR_SERIAL_1_BAUD_LIMIT_REGISTER"
	.align 8
.LC78:
	.asciz	"ADDR_SERIAL_1_BAUD_FREQUENCY_REGISTER"
	.align 8
.LC79:
	.asciz	"Completed SERIAL register tests!\r\n"
	.section	".text"
	.align 4
	.global run_serial_tests
	.type	run_serial_tests, #function
	.proc	020
run_serial_tests:
	save	%sp, -96, %sp
	sethi	%hi(.LC17), %i4
	call	cortos_printf, 0
	 or	%i4, %lo(.LC17), %o0
	sethi	%hi(.LC69), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC69), %o0
	call	cortos_printf, 0
	 or	%i4, %lo(.LC17), %o0
	sethi	%hi(-53248), %i5
	mov	2, %o2
	or	%i5, 516, %o0
	sethi	%hi(.LC70), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC70), %o1
	or	%i5, 520, %o0
	mov	2, %o2
	sethi	%hi(.LC71), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC71), %o1
	or	%i5, 576, %o0
	mov	2, %o2
	sethi	%hi(.LC72), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC72), %o1
	or	%i5, 576, %o0
	mov	2, %o2
	sethi	%hi(.LC73), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC73), %o1
	or	%i5, 580, %o0
	mov	2, %o2
	sethi	%hi(.LC74), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC74), %o1
	or	%i5, 584, %o0
	mov	2, %o2
	sethi	%hi(.LC75), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC75), %o1
	or	%i5, 588, %o0
	mov	2, %o2
	sethi	%hi(.LC76), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC76), %o1
	or	%i5, 588, %o0
	mov	2, %o2
	sethi	%hi(.LC77), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC77), %o1
	mov	2, %o2
	or	%i5, 592, %o0
	sethi	%hi(.LC78), %o1
	call	run_test, 0
	 or	%o1, %lo(.LC78), %o1
	call	cortos_printf, 0
	 or	%i4, %lo(.LC17), %o0
	sethi	%hi(.LC79), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC79), %o0
	or	%i4, %lo(.LC17), %o0
	call	cortos_printf, 0
	 sethi	%hi(.LC0), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC0), %o0
	.size	run_serial_tests, .-run_serial_tests
	.align 4
	.global run_register_tests
	.type	run_register_tests, #function
	.proc	020
run_register_tests:
	save	%sp, -96, %sp
	call	reset_addr_interrupt_controller_registers, 0
	 nop
	call	run_addr_io_tests, 0
	 nop
	call	run_addr_interrupt_controller_tests, 0
	 nop
	call	run_addr_scratch_pad_memory_tests, 0
	 nop
	call	run_i2c_tests, 0
	 nop
	call	run_gpio_tests, 0
	 nop
	call	run_spi_tests, 0
	 nop
	call	run_timer_tests, 0
	 nop
	call	run_addr_trace_logger_tests, 0
	 nop
	call	run_addr_perf_counters_tests, 0
	 nop
	call	run_serial_tests, 0
	 restore
	.size	run_register_tests, .-run_register_tests
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
.LC80:
	.asciz	"**************************************************\r\n"
	.align 8
.LC81:
	.asciz	"************ STARTING REGISTER TESTS *************\r\n"
	.align 8
.LC82:
	.asciz	"************ FINISHED REGISTER TESTS! ************\r\n"
	.align 8
.LC83:
	.asciz	"\tEND OF PROGRAM EXECUTION\r\n"
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	020
main:
	save	%sp, -96, %sp
	sethi	%hi(.LC0), %i4
	call	cortos_printf, 0
	 or	%i4, %lo(.LC0), %o0
	sethi	%hi(.LC80), %i5
	call	cortos_printf, 0
	 or	%i5, %lo(.LC80), %o0
	sethi	%hi(.LC81), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC81), %o0
	call	cortos_printf, 0
	 or	%i5, %lo(.LC80), %o0
	call	run_register_tests, 0
	 sethi	%hi(.LC1), %i0
	call	cortos_printf, 0
	 or	%i5, %lo(.LC80), %o0
	sethi	%hi(.LC82), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC82), %o0
	call	cortos_printf, 0
	 or	%i5, %lo(.LC80), %o0
	call	cortos_printf, 0
	 or	%i4, %lo(.LC0), %o0
	call	cortos_printf, 0
	 or	%i0, %lo(.LC1), %o0
	or	%i0, %lo(.LC1), %i0
	sethi	%hi(.LC83), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC83), %o0
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
