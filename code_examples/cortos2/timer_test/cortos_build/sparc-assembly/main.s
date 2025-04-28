	.file	"main.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"Bit %2d: %d\n"
	.align 8
.LC1:
	.asciz	"\n"
	.section	".text"
	.align 4
	.global print_bitwise_reg_32bit
	.type	print_bitwise_reg_32bit, #function
	.proc	020
print_bitwise_reg_32bit:
	save	%sp, -96, %sp
	sethi	%hi(.LC0), %i4
	mov	31, %i5
	or	%i4, %lo(.LC0), %i4
	srl	%i0, %i5, %o2
.L5:
	mov	%i5, %o1
	mov	%i4, %o0
	call	cortos_printf, 0
	 and	%o2, 1, %o2
	add	%i5, -1, %i5
	cmp	%i5, -1
	bne	.L5
	 srl	%i0, %i5, %o2
	sethi	%hi(.LC1), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC1), %o0
	.size	print_bitwise_reg_32bit, .-print_bitwise_reg_32bit
	.section	.rodata.str1.8
	.align 8
.LC2:
	.asciz	"\nverify_timer_reg_value: Entered for ref value 0x%08X\n"
	.align 8
.LC3:
	.asciz	"Timer Register value = 0x%08X, is verified\n"
	.align 8
.LC4:
	.asciz	"ERROR: Timer Register value verification failed! Expected = 0x%08X, Actual = 0x%08X\n"
	.section	".text"
	.align 4
	.global verify_timer_reg_value
	.type	verify_timer_reg_value, #function
	.proc	016
verify_timer_reg_value:
	save	%sp, -96, %sp
	sethi	%hi(.LC2), %o0
	mov	%i0, %o1
	call	cortos_printf, 0
	 or	%o0, %lo(.LC2), %o0
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 nop
	xor	%o0, %i0, %g1
	and	%g1, -2, %g1
	subcc	%g0, %g1, %g0
	mov	%i0, %o1
	subx	%g0, -1, %i0
	cmp	%i0, 0
	bne	.L9
	 mov	%o0, %o2
	sethi	%hi(.LC4), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC4), %o0
	jmp	%i7+8
	 restore
.L9:
	sethi	%hi(.LC3), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC3), %o0
	jmp	%i7+8
	 restore
	.size	verify_timer_reg_value, .-verify_timer_reg_value
	.section	.rodata.str1.8
	.align 8
.LC5:
	.asciz	"\nmy_timer_interrupt_handler: Entered\n"
	.align 8
.LC6:
	.asciz	"my_timer_interrupt_handler: Entered. Interrupt control reg value(bypass) = 0x%08X\n"
	.align 8
.LC7:
	.asciz	"Printing bitwise value for Interrupt control reg\n"
	.align 8
.LC8:
	.asciz	"Timer reg is 0 when interrupt_handler is invoked! \n"
	.align 8
.LC9:
	.asciz	"ERROR: Timer reg is not 0 when interrupt_handler is invoked! \n"
	.align 8
.LC10:
	.asciz	"my_timer_interrupt_handler: Loop number: %0d\n"
	.align 8
.LC11:
	.asciz	"my_timer_interrupt_handler: NSAMPLES = %0d, exit_flag = %0b\n\n"
	.align 8
.LC12:
	.asciz	"Before disabling, Timer Register = 0x%08X\n"
	.align 8
.LC13:
	.asciz	"ICR cleared. ICR value = 0x%08X\n"
	.align 8
.LC14:
	.asciz	"disable_timer_val = 0x%08X, enable_timer_val = 0x%08X\n"
	.align 8
.LC15:
	.asciz	"my_timer_interrupt_handler: timer control reg written manually with entry 0x%08X\n"
	.align 8
.LC16:
	.asciz	"my_timer_interrupt_handler: Timer control reg disabled! Interrupt control reg value (bypass) = 0x%08X\n"
	.align 8
.LC17:
	.asciz	"my_timer_interrupt_handler: Timer control reg enabled! Interrupt control reg value (bypass) = 0x%08X\n"
	.section	".text"
	.align 4
	.global my_timer_interrupt_handler
	.type	my_timer_interrupt_handler, #function
	.proc	020
my_timer_interrupt_handler:
	save	%sp, -96, %sp
	sethi	%hi(.LC5), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC5), %o0
	call	__ajit_read_irc_control_register_via_bypass__, 0
	 sethi	%hi(.LC7), %i5
	mov	%o0, %o1
	mov	%o0, %i4
	sethi	%hi(.LC6), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC6), %o0
	call	cortos_printf, 0
	 or	%i5, %lo(.LC7), %o0
	call	print_bitwise_reg_32bit, 0
	 mov	%i4, %o0
	call	verify_timer_reg_value, 0
	 mov	0, %o0
	cmp	%o0, 0
	be,a	.L11
	 sethi	%hi(.LC9), %o0
	sethi	%hi(.LC8), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC8), %o0
	sethi	%hi(timer_interrupt_counter), %i3
.L25:
	sethi	%hi(.LC10), %o0
	ld	[%i3+%lo(timer_interrupt_counter)], %o1
	call	cortos_printf, 0
	 or	%o0, %lo(.LC10), %o0
	mov	100, %o1
	sethi	%hi(exit_flag), %i0
	sethi	%hi(.LC11), %o0
	ld	[%i0+%lo(exit_flag)], %o2
	call	cortos_printf, 0
	 or	%o0, %lo(.LC11), %o0
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 sethi	%hi(-268435456), %i4
	mov	%o0, %o1
	sethi	%hi(.LC12), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC12), %o0
	call	__ajit_write_irc_control_register_via_bypass__, 0
	 mov	0, %o0
	call	__ajit_read_irc_control_register_via_bypass__, 0
	 sethi	%hi(.LC15), %i2
	mov	%o0, %o1
	sethi	%hi(.LC13), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC13), %o0
	mov	0, %o1
	or	%i4, 1, %o2
	sethi	%hi(.LC14), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC14), %o0
	call	__ajit_write_timer_control_register_via_vmap__, 0
	 mov	0, %o0
	mov	0, %o1
	call	cortos_printf, 0
	 or	%i2, %lo(.LC15), %o0
	call	__ajit_read_irc_control_register_via_bypass__, 0
	 nop
	mov	%o0, %o1
	mov	%o0, %i1
	sethi	%hi(.LC16), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC16), %o0
	call	cortos_printf, 0
	 or	%i5, %lo(.LC7), %o0
	call	print_bitwise_reg_32bit, 0
	 mov	%i1, %o0
	call	__ajit_write_timer_control_register_via_vmap__, 0
	 or	%i4, 1, %o0
	or	%i4, 1, %o1
	call	cortos_printf, 0
	 or	%i2, %lo(.LC15), %o0
	call	__ajit_read_irc_control_register_via_bypass__, 0
	 nop
	mov	%o0, %o1
	mov	%o0, %i4
	sethi	%hi(.LC17), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC17), %o0
	call	cortos_printf, 0
	 or	%i5, %lo(.LC7), %o0
	call	print_bitwise_reg_32bit, 0
	 mov	%i4, %o0
	ld	[%i3+%lo(timer_interrupt_counter)], %g1
	cmp	%g1, 100
	ble	.L23
	 nop
.L13:
	ld	[%i3+%lo(timer_interrupt_counter)], %g1
	cmp	%g1, 99
	ble	.L27
	 mov	1, %g1
	st	%g1, [%i0+%lo(exit_flag)]
.L27:
	jmp	%i7+8
	 restore
.L11:
	call	cortos_printf, 0
	 or	%o0, %lo(.LC9), %o0
	b	.L25
	 sethi	%hi(timer_interrupt_counter), %i3
.L23:
	call	__ajit_get_clock_time, 0
	 nop
	ld	[%i3+%lo(timer_interrupt_counter)], %g1
	cmp	%g1, 0
	ble	.L15
	 sethi	%hi(last_time_64), %g1
	ldd	[%g1+%lo(last_time_64)], %g2
	sethi	%hi(min_interval), %g4
	subcc	%o1, %g3, %g3
	ldd	[%g4+%lo(min_interval)], %i4
	subx	%o0, %g2, %g2
	cmp	%i4, %g2
	bleu	.L24
	 nop
.L21:
	std	%g2, [%g4+%lo(min_interval)]
	sethi	%hi(max_interval), %g4
.L26:
	ldd	[%g4+%lo(max_interval)], %i4
	cmp	%g2, %i4
	bgu	.L22
	 nop
	bne	.L15
	 cmp	%g3, %i5
	bleu	.L15
	 nop
.L22:
	std	%g2, [%g4+%lo(max_interval)]
.L15:
	std	%o0, [%g1+%lo(last_time_64)]
	ld	[%i3+%lo(timer_interrupt_counter)], %g1
	add	%g1, 1, %g1
	st	%g1, [%i3+%lo(timer_interrupt_counter)]
	b,a	.L13
.L24:
	bne,a	.L26
	 sethi	%hi(max_interval), %g4
	cmp	%i5, %g3
	bleu,a	.L26
	 sethi	%hi(max_interval), %g4
	b,a	.L21
	.size	my_timer_interrupt_handler, .-my_timer_interrupt_handler
	.section	.rodata.str1.8
	.align 8
.LC18:
	.asciz	"\nverify_timer_zero_bit: Entered for value 0x%08X\n"
	.align 8
.LC19:
	.asciz	"verify_timer_zero_bit: Timer Register zero bit is successfully verified\n"
	.align 8
.LC20:
	.asciz	"verify_timer_zero_bit: ERROR: Timer Register zero bit verification failed!\n"
	.section	".text"
	.align 4
	.global verify_timer_zero_bit
	.type	verify_timer_zero_bit, #function
	.proc	016
verify_timer_zero_bit:
	save	%sp, -96, %sp
	sethi	%hi(.LC18), %o0
	mov	%i0, %o1
	call	cortos_printf, 0
	 or	%o0, %lo(.LC18), %o0
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 nop
	xor	%o0, %i0, %o0
	and	%o0, 1, %i0
	subcc	%g0, %i0, %g0
	subx	%g0, -1, %i0
	cmp	%i0, 0
	bne,a	.L31
	 sethi	%hi(.LC19), %o0
	sethi	%hi(.LC20), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC20), %o0
	jmp	%i7+8
	 restore
.L31:
	call	cortos_printf, 0
	 or	%o0, %lo(.LC19), %o0
	jmp	%i7+8
	 restore
	.size	verify_timer_zero_bit, .-verify_timer_zero_bit
	.section	.rodata.str1.8
	.align 8
.LC21:
	.asciz	"\ntimer_reg_read_after_write_test: Entered for value 0x%08X\n"
	.align 8
.LC22:
	.asciz	"timer_reg_read_after_write_test(0x%08X): PASSED!\n"
	.align 8
.LC23:
	.asciz	"timer_reg_read_after_write_test(0x%08X): ERROR: FAILED!\n"
	.section	".text"
	.align 4
	.global timer_reg_read_after_write_test
	.type	timer_reg_read_after_write_test, #function
	.proc	020
timer_reg_read_after_write_test:
	save	%sp, -96, %sp
	sethi	%hi(.LC21), %o0
	mov	%i0, %o1
	call	cortos_printf, 0
	 or	%o0, %lo(.LC21), %o0
	call	__ajit_write_timer_control_register_via_vmap__, 0
	 or	%i0, 1, %o0
	mov	%i0, %o0
	call	verify_timer_reg_value, 0
	 mov	%i0, %i1
	cmp	%o0, 0
	bne,a	.L34
	 sethi	%hi(.LC22), %i0
	sethi	%hi(.LC23), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC23), %o0
.L34:
	call	cortos_printf, 0
	 restore %i0, %lo(.LC22), %o0
	.size	timer_reg_read_after_write_test, .-timer_reg_read_after_write_test
	.section	.rodata.str1.8
	.align 8
.LC24:
	.asciz	"\ntimer_reg_countdown_test: Entered for value 0x%08X\n"
	.align 8
.LC25:
	.asciz	"Timer reg is enabled correctly\n"
	.align 8
.LC26:
	.asciz	"ERROR: Timer reg is not enabled\n"
	.align 8
.LC27:
	.asciz	"Previous value = 0x%08X\n"
	.align 8
.LC28:
	.asciz	"Current value = 0x%08X\n"
	.section	".text"
	.align 4
	.global timer_reg_countdown_test
	.type	timer_reg_countdown_test, #function
	.proc	020
timer_reg_countdown_test:
	save	%sp, -96, %sp
	sethi	%hi(.LC24), %o0
	mov	%i0, %o1
	call	cortos_printf, 0
	 or	%o0, %lo(.LC24), %o0
	or	%i0, 1, %i5
	call	__ajit_write_timer_control_register_via_vmap__, 0
	 mov	%i5, %o0
	call	verify_timer_zero_bit, 0
	 mov	%i5, %o0
	cmp	%o0, 0
	be,a	.L36
	 sethi	%hi(.LC26), %o0
	sethi	%hi(.LC25), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC25), %o0
	mov	%i0, %o1
.L40:
	sethi	%hi(.LC27), %o0
	sethi	%hi(.LC28), %i4
	or	%o0, %lo(.LC27), %o0
	call	cortos_printf, 0
	 mov	101, %i5
	or	%i4, %lo(.LC28), %i4
.L38:
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 nop
	mov	%o0, %o1
	call	cortos_printf, 0
	 mov	%i4, %o0
	addcc	%i5, -1, %i5
	bne	.L38
	 nop
	jmp	%i7+8
	 restore
.L36:
	call	cortos_printf, 0
	 or	%o0, %lo(.LC26), %o0
	b	.L40
	 mov	%i0, %o1
	.size	timer_reg_countdown_test, .-timer_reg_countdown_test
	.section	.rodata.str1.8
	.align 8
.LC29:
	.asciz	"------------------------------\n"
	.align 8
.LC30:
	.asciz	"Starting Timer Basic Tests...\n"
	.align 8
.LC31:
	.asciz	"------------------------------\n\n"
	.align 8
.LC32:
	.asciz	"Timer Tests Completed.\n"
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	save	%sp, -96, %sp
	mov	1, %o2
	mov	1, %o0
	call	__ajit_serial_configure_via_vmap__, 0
	 mov	1, %o1
	sethi	%hi(80000000), %o1
	sethi	%hi(114688), %o0
	call	__ajit_serial_set_baudrate_via_vmap__, 0
	 or	%o0, 512, %o0
	call	__ajit_serial_set_uart_reset_via_vmap__, 0
	 mov	0, %o0
	mov	0, %o1
	call	enableInterruptControllerAndAllInterrupts, 0
	 mov	0, %o0
	sethi	%hi(.LC29), %i4
	call	cortos_printf, 0
	 or	%i4, %lo(.LC29), %o0
	sethi	%hi(.LC30), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC30), %o0
	sethi	%hi(.LC31), %i5
	call	cortos_printf, 0
	 or	%i5, %lo(.LC31), %o0
	call	timer_reg_read_after_write_test, 0
	 mov	69, %o0
	call	timer_reg_read_after_write_test, 0
	 mov	149, %o0
	call	cortos_printf, 0
	 or	%i4, %lo(.LC29), %o0
	sethi	%hi(.LC32), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC32), %o0
	mov	0, %i0
	call	cortos_printf, 0
	 or	%i5, %lo(.LC31), %o0
	jmp	%i7+8
	 restore
	.size	main, .-main
	.global max_interval
	.section	".bss"
	.align 8
	.type	max_interval, #object
	.size	max_interval, 8
max_interval:
	.skip	8
	.global min_interval
	.section	".data"
	.align 8
	.type	min_interval, #object
	.size	min_interval, 8
min_interval:
	.long	0
	.long	10000000
	.global last_time_64
	.section	".bss"
	.align 8
	.type	last_time_64, #object
	.size	last_time_64, 8
last_time_64:
	.skip	8
	.global exit_flag
	.align 4
	.type	exit_flag, #object
	.size	exit_flag, 4
exit_flag:
	.skip	4
	.global timer_interrupt_counter
	.align 4
	.type	timer_interrupt_counter, #object
	.size	timer_interrupt_counter, 4
timer_interrupt_counter:
	.skip	4
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
