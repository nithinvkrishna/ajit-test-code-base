	.file	"main.c"
	.section	".text"
	.align 4
	.global clear_and_disable_timer
	.type	clear_and_disable_timer, #function
	.proc	020
clear_and_disable_timer:
	mov	0, %o0
	or	%o7, %g0, %g1
	call	__ajit_write_timer_control_register_via_vmap__, 0
	 or	%g1, %g0, %o7
	.size	clear_and_disable_timer, .-clear_and_disable_timer
	.align 4
	.global enable_and_write_timer
	.type	enable_and_write_timer, #function
	.proc	020
enable_and_write_timer:
	or	%o0, 1, %o0
	or	%o7, %g0, %g1
	call	__ajit_write_timer_control_register_via_vmap__, 0
	 or	%g1, %g0, %o7
	.size	enable_and_write_timer, .-enable_and_write_timer
	.align 4
	.global read_timer_reg
	.type	read_timer_reg, #function
	.proc	016
read_timer_reg:
	or	%o7, %g0, %g1
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 or	%g1, %g0, %o7
	.size	read_timer_reg, .-read_timer_reg
	.align 4
	.global read_icr
	.type	read_icr, #function
	.proc	016
read_icr:
	or	%o7, %g0, %g1
	call	__ajit_read_irc_control_register_via_bypass__, 0
	 or	%g1, %g0, %o7
	.size	read_icr, .-read_icr
	.align 4
	.global generate_next_countdown_value
	.type	generate_next_countdown_value, #function
	.proc	016
generate_next_countdown_value:
	sethi	%hi(countdown_value), %g1
	ld	[%g1+%lo(countdown_value)], %g2
	add	%g2, -256, %g2
	st	%g2, [%g1+%lo(countdown_value)]
	ld	[%g1+%lo(countdown_value)], %g2
	cmp	%g2, 4095
	bgu	.L6
	 mov	-16, %g2
	st	%g2, [%g1+%lo(countdown_value)]
.L6:
	ld	[%g1+%lo(countdown_value)], %o0
	jmp	%o7+8
	 nop
	.size	generate_next_countdown_value, .-generate_next_countdown_value
	.align 4
	.global run_timer_ISR
	.type	run_timer_ISR, #function
	.proc	020
run_timer_ISR:
	sethi	%hi(timer_interrupt_counter), %g1
	ld	[%g1+%lo(timer_interrupt_counter)], %g2
	add	%g2, 1, %g2
	st	%g2, [%g1+%lo(timer_interrupt_counter)]
	ld	[%g1+%lo(timer_interrupt_counter)], %g1
	cmp	%g1, 2
	ble	.L10
	 mov	1, %g2
	sethi	%hi(exit_flag), %g1
	st	%g2, [%g1+%lo(exit_flag)]
.L10:
	jmp	%o7+8
	 nop
	.size	run_timer_ISR, .-run_timer_ISR
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"[MAIN] Serial configuration completed\n"
	.section	".text"
	.align 4
	.global configure_serial_device
	.type	configure_serial_device, #function
	.proc	020
configure_serial_device:
	save	%sp, -96, %sp
	mov	1, %o2
	mov	1, %o0
	call	__ajit_serial_configure_via_vmap__, 0
	 mov	1, %o1
	sethi	%hi(80000000), %o1
	sethi	%hi(114688), %o0
	call	__ajit_serial_set_baudrate_via_vmap__, 0
	 or	%o0, 512, %o0
	mov	0, %o0
	call	__ajit_serial_set_uart_reset_via_vmap__, 0
	 sethi	%hi(.LC0), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC0), %o0
	.size	configure_serial_device, .-configure_serial_device
	.section	.rodata.str1.8
	.align 8
.LC1:
	.asciz	"[%s] [PASS] Read after write test successful for this iteration\n"
	.align 8
.LC2:
	.asciz	"[%s] [ERROR] Read after write test failed for this iteration\n"
	.section	".text"
	.align 4
	.global print_status
	.type	print_status, #function
	.proc	020
print_status:
	cmp	%o0, 0
	bne	.L14
	 sethi	%hi(.LC2), %o0
	or	%o0, %lo(.LC2), %o0
	or	%o7, %g0, %g1
	call	cortos_printf, 0
	 or	%g1, %g0, %o7
.L14:
	sethi	%hi(.LC1), %o0
	or	%o0, %lo(.LC1), %o0
	or	%o7, %g0, %g1
	call	cortos_printf, 0
	 or	%g1, %g0, %o7
	.size	print_status, .-print_status
	.align 4
	.global read_psr
	.type	read_psr, #function
	.proc	016
read_psr:
#APP
! 107 "../main.c" 1
	rd %psr, %o0
! 0 "" 2
#NO_APP
	jmp	%o7+8
	 nop
	.size	read_psr, .-read_psr
	.align 4
	.global my_timer_interrupt_handler
	.type	my_timer_interrupt_handler, #function
	.proc	020
my_timer_interrupt_handler:
	save	%sp, -96, %sp
	sethi	%hi(current_log_index), %i5
	ldub	[%i5+%lo(current_log_index)], %i4
	call	__ajit_read_irc_control_register_via_bypass__, 0
	 nop
	and	%i4, 0xff, %g1
	ldub	[%i5+%lo(current_log_index)], %g2
	sll	%g1, 3, %g3
	sethi	%hi(interrupt_logs), %i4
	sll	%g1, 5, %g1
	or	%i4, %lo(interrupt_logs), %i4
	add	%g3, %g1, %g1
	add	%i4, %g1, %g1
	st	%o0, [%g1+20]
#APP
! 107 "../main.c" 1
	rd %psr, %g1
! 0 "" 2
#NO_APP
	and	%g2, 0xff, %g2
	sll	%g2, 3, %g3
	sll	%g2, 5, %g2
	add	%g3, %g2, %g2
	add	%i4, %g2, %g2
	ldub	[%i5+%lo(current_log_index)], %i3
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 st	%g1, [%g2+28]
	and	%i3, 0xff, %g1
	sll	%g1, 3, %g2
	sll	%g1, 5, %g1
	add	%g2, %g1, %g1
	call	clear_and_disable_timer, 0
	 st	%o0, [%i4+%g1]
	ldub	[%i5+%lo(current_log_index)], %i3
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 nop
	ldub	[%i5+%lo(current_log_index)], %g2
	sethi	%hi(countdown_value), %g1
	ld	[%g1+%lo(countdown_value)], %g4
	add	%g4, -256, %g4
	and	%i3, 0xff, %g3
	st	%g4, [%g1+%lo(countdown_value)]
	sll	%g3, 3, %i3
	ld	[%g1+%lo(countdown_value)], %g4
	sll	%g3, 5, %g3
	add	%i3, %g3, %g3
	add	%i4, %g3, %g3
	cmp	%g4, 4095
	bgu	.L17
	 st	%o0, [%g3+4]
	mov	-16, %g3
	st	%g3, [%g1+%lo(countdown_value)]
.L17:
	sll	%g2, 3, %g3
	ld	[%g1+%lo(countdown_value)], %g4
	sll	%g2, 5, %g2
	or	%g4, 1, %g4
	ldub	[%i5+%lo(current_log_index)], %g1
	add	%g3, %g2, %g2
	sll	%g1, 3, %g3
	add	%i4, %g2, %g2
	sll	%g1, 5, %g1
	add	%g3, %g1, %g1
	add	%i4, %g1, %g1
	st	%g4, [%g2+8]
	call	enable_and_write_timer, 0
	 ld	[%g1+8], %o0
	ldub	[%i5+%lo(current_log_index)], %i3
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 nop
	and	%i3, 0xff, %g2
	sll	%g2, 3, %g1
	sll	%g2, 5, %g2
	add	%g1, %g2, %g2
	add	%i4, %g2, %g2
	ldub	[%i5+%lo(current_log_index)], %i3
	call	__ajit_read_irc_control_register_via_bypass__, 0
	 st	%o0, [%g2+12]
	and	%i3, 0xff, %g1
	ldub	[%i5+%lo(current_log_index)], %g2
	sll	%g1, 3, %g3
	sll	%g1, 5, %g1
	add	%g3, %g1, %g1
	add	%i4, %g1, %g1
	st	%o0, [%g1+24]
#APP
! 107 "../main.c" 1
	rd %psr, %g3
! 0 "" 2
#NO_APP
	sethi	%hi(timer_interrupt_counter), %g1
	and	%g2, 0xff, %g2
	ld	[%g1+%lo(timer_interrupt_counter)], %g4
	sll	%g2, 3, %i3
	add	%g4, 1, %g4
	sll	%g2, 5, %g2
	st	%g4, [%g1+%lo(timer_interrupt_counter)]
	add	%i3, %g2, %g2
	ld	[%g1+%lo(timer_interrupt_counter)], %g1
	add	%i4, %g2, %g2
	cmp	%g1, 2
	ble	.L18
	 st	%g3, [%g2+32]
	mov	1, %g2
	sethi	%hi(exit_flag), %g1
	st	%g2, [%g1+%lo(exit_flag)]
.L18:
	ldub	[%i5+%lo(current_log_index)], %g3
	ldub	[%i5+%lo(current_log_index)], %g1
	ldub	[%i5+%lo(current_log_index)], %g2
	sll	%g2, 3, %i3
	and	%g1, 0xff, %g1
	sll	%g2, 5, %g2
	add	%i3, %g2, %g2
	sll	%g1, 3, %i3
	sll	%g1, 5, %g1
	add	%i3, %g1, %g1
	and	%g3, 0xff, %g3
	add	%i4, %g2, %g2
	sll	%g3, 3, %i2
	ld	[%g2+8], %g2
	sll	%g3, 5, %g3
	add	%i2, %g3, %g3
	add	%i4, %g3, %g3
	add	%i4, %g1, %i4
	ld	[%i4+12], %g1
	xor	%g2, %g1, %g1
	and	%g1, -2, %g1
	ldub	[%i5+%lo(current_log_index)], %g4
	subcc	%g0, %g1, %g0
	add	%g4, 1, %g4
	subx	%g0, -1, %g1
	stb	%g4, [%i5+%lo(current_log_index)]
	st	%g1, [%g3+16]
	jmp	%i7+8
	 restore
	.size	my_timer_interrupt_handler, .-my_timer_interrupt_handler
	.section	.rodata.str1.8
	.align 8
.LC3:
	.asciz	"[MAIN] Program starting ISR Test...\n"
	.align 8
.LC4:
	.asciz	"[MAIN] Interrupt controller enabled\n"
	.align 8
.LC5:
	.asciz	"\n"
	.align 8
.LC6:
	.asciz	"Program is running. Max iteration = %0d."
	.align 8
.LC7:
	.asciz	" Current loop number: %0d\n"
	.align 8
.LC8:
	.asciz	"Max Timer iteration reached.\n"
	.align 8
.LC9:
	.asciz	"------------------------------\n"
	.align 8
.LC10:
	.asciz	"STARTING LOG ANALYSIS...\n"
	.align 8
.LC11:
	.asciz	"[INITIAL CONFIG DATA LOG] init_icr_rd_val   = 0x%08X\n"
	.align 8
.LC12:
	.asciz	"[INITIAL CONFIG DATA LOG] init_val          = 0x%08X\n"
	.align 8
.LC13:
	.asciz	"[INITIAL CONFIG DATA LOG] init_wr_val       = 0x%08X\n"
	.align 8
.LC14:
	.asciz	"[INITIAL CONFIG DATA LOG] init_raw_val      = 0x%08X\n"
	.align 8
.LC15:
	.asciz	"INITIAL CONFIG DATA"
	.align 8
.LC16:
	.asciz	"[INTERRUPT HANDLER DATA LOG] [INDEX: %0d] timer_val_after_entry = 0x%08X\n"
	.align 8
.LC17:
	.asciz	"[INTERRUPT HANDLER DATA LOG] [INDEX: %0d] timer_val_after_clear = 0x%08X\n"
	.align 8
.LC18:
	.asciz	"[INTERRUPT HANDLER DATA LOG] [INDEX: %0d] new_countdown_val     = 0x%08X\n"
	.align 8
.LC19:
	.asciz	"[INTERRUPT HANDLER DATA LOG] [INDEX: %0d] timer_raw_val         = 0x%08X\n"
	.align 8
.LC20:
	.asciz	"[INTERRUPT HANDLER DATA LOG] [INDEX: %0d] raw_match_status      = %0d\n"
	.align 8
.LC21:
	.asciz	"[INTERRUPT HANDLER DATA LOG] [INDEX: %0d] icr_value_after_entry = 0x%08X\n"
	.align 8
.LC22:
	.asciz	"[INTERRUPT HANDLER DATA LOG] [INDEX: %0d] icr_value_after_write = 0x%08X\n"
	.align 8
.LC23:
	.asciz	"[INTERRUPT HANDLER DATA LOG] [INDEX: %0d] psr_value_after_entry = 0x%08X\n"
	.align 8
.LC24:
	.asciz	"[INTERRUPT HANDLER DATA LOG] [INDEX: %0d] psr_value_after_write = 0x%08X\n"
	.align 8
.LC25:
	.asciz	"READ AFTER WRITE TEST"
	.align 8
.LC26:
	.asciz	"LOG DATA ANALYSIS COMPLETED\n"
	.align 8
.LC27:
	.asciz	"[MAIN] Program execution completed\n"
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	save	%sp, -96, %sp
	call	configure_serial_device, 0
	 sethi	%hi(init_config), %i0
	sethi	%hi(.LC3), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC3), %o0
	mov	0, %o1
	call	enableInterruptControllerAndAllInterrupts, 0
	 mov	0, %o0
	sethi	%hi(.LC4), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC4), %o0
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 nop
	call	__ajit_read_irc_control_register_via_bypass__, 0
	 st	%o0, [%i0+%lo(init_config)]
	sethi	%hi(countdown_value), %g1
	ld	[%g1+%lo(countdown_value)], %g2
	or	%i0, %lo(init_config), %i2
	st	%g2, [%i2+4]
	st	%o0, [%i2+16]
	ld	[%g1+%lo(countdown_value)], %o0
	call	enable_and_write_timer, 0
	 sethi	%hi(.LC5), %i1
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 sethi	%hi(exit_flag), %i4
	ld	[%i2+4], %g1
	xor	%o0, %g1, %g1
	and	%g1, -2, %g1
	subcc	%g0, %g1, %g0
	subx	%g0, -1, %g1
	st	%o0, [%i2+8]
	st	%g1, [%i2+12]
	call	cortos_printf, 0
	 or	%i1, %lo(.LC5), %o0
	sethi	%hi(.LC6), %o0
	sethi	%hi(.LC7), %g1
	mov	0, %i5
	sethi	%hi(current_log_index), %i3
	or	%i4, %lo(exit_flag), %i4
	or	%o0, %lo(.LC6), %l1
	b	.L27
	 or	%g1, %lo(.LC7), %l0
.L22:
	ldub	[%i3+%lo(current_log_index)], %g1
	cmp	%g1, %i5
	be	.L28
	 mov	3, %o1
.L27:
	ld	[%i4], %g1
	cmp	%g1, 0
	be	.L22
	 nop
	call	cortos_printf, 0
	 or	%i1, %lo(.LC5), %o0
	sethi	%hi(.LC8), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC8), %o0
	call	cortos_printf, 0
	 or	%i1, %lo(.LC5), %o0
	sethi	%hi(.LC9), %i3
	call	cortos_printf, 0
	 or	%i3, %lo(.LC9), %o0
	sethi	%hi(.LC10), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC10), %o0
	call	cortos_printf, 0
	 or	%i3, %lo(.LC9), %o0
	call	cortos_printf, 0
	 or	%i1, %lo(.LC5), %o0
	ld	[%i2+16], %o1
	sethi	%hi(.LC11), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC11), %o0
	ld	[%i0+%lo(init_config)], %o1
	sethi	%hi(.LC12), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC12), %o0
	ld	[%i2+4], %o1
	sethi	%hi(.LC13), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC13), %o0
	ld	[%i2+8], %o1
	sethi	%hi(.LC14), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC14), %o0
	ld	[%i2+12], %o0
	sethi	%hi(.LC15), %o1
	call	print_status, 0
	 or	%o1, %lo(.LC15), %o1
	or	%i1, %lo(.LC5), %o0
	sethi	%hi(interrupt_logs+16), %i5
	sethi	%hi(.LC16), %l7
	sethi	%hi(.LC17), %l6
	sethi	%hi(.LC18), %l5
	sethi	%hi(.LC19), %l4
	sethi	%hi(.LC20), %l3
	sethi	%hi(.LC21), %l2
	sethi	%hi(.LC22), %l1
	sethi	%hi(.LC23), %l0
	sethi	%hi(.LC24), %i0
	sethi	%hi(.LC25), %i2
	call	cortos_printf, 0
	 mov	0, %i4
	or	%i5, %lo(interrupt_logs+16), %i5
	or	%l7, %lo(.LC16), %l7
	or	%l6, %lo(.LC17), %l6
	or	%l5, %lo(.LC18), %l5
	or	%l4, %lo(.LC19), %l4
	or	%l3, %lo(.LC20), %l3
	or	%l2, %lo(.LC21), %l2
	or	%l1, %lo(.LC22), %l1
	or	%l0, %lo(.LC23), %l0
	or	%i0, %lo(.LC24), %i0
	or	%i2, %lo(.LC25), %i2
.L23:
	ld	[%i5-16], %o2
	mov	%i4, %o1
	call	cortos_printf, 0
	 mov	%l7, %o0
	mov	%i4, %o1
	ld	[%i5-12], %o2
	call	cortos_printf, 0
	 mov	%l6, %o0
	mov	%i4, %o1
	ld	[%i5-8], %o2
	call	cortos_printf, 0
	 mov	%l5, %o0
	mov	%i4, %o1
	ld	[%i5-4], %o2
	call	cortos_printf, 0
	 mov	%l4, %o0
	mov	%i4, %o1
	ld	[%i5], %o2
	call	cortos_printf, 0
	 mov	%l3, %o0
	mov	%i4, %o1
	ld	[%i5+4], %o2
	call	cortos_printf, 0
	 mov	%l2, %o0
	mov	%i4, %o1
	ld	[%i5+8], %o2
	call	cortos_printf, 0
	 mov	%l1, %o0
	mov	%i4, %o1
	ld	[%i5+12], %o2
	call	cortos_printf, 0
	 mov	%l0, %o0
	ld	[%i5+16], %o2
	mov	%i4, %o1
	call	cortos_printf, 0
	 mov	%i0, %o0
	ld	[%i5], %o0
	call	print_status, 0
	 mov	%i2, %o1
	call	cortos_printf, 0
	 or	%i1, %lo(.LC5), %o0
	add	%i4, 1, %i4
	cmp	%i4, 3
	bne	.L23
	 add	%i5, 40, %i5
	call	cortos_printf, 0
	 or	%i3, %lo(.LC9), %o0
	sethi	%hi(.LC26), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC26), %o0
	call	cortos_printf, 0
	 or	%i3, %lo(.LC9), %o0
	sethi	%hi(.LC5), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC5), %o0
	mov	0, %i0
	sethi	%hi(.LC27), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC27), %o0
	jmp	%i7+8
	 restore
.L28:
	call	cortos_printf, 0
	 mov	%l1, %o0
	ldub	[%i3+%lo(current_log_index)], %o1
	mov	%l0, %o0
	add	%i5, 1, %i5
	call	cortos_printf, 0
	 add	%o1, 1, %o1
	b,a	.L27
	.size	main, .-main
	.global current_log_index
	.section	".bss"
	.type	current_log_index, #object
	.size	current_log_index, 1
current_log_index:
	.skip	1
	.common	interrupt_logs,120,4
	.common	init_config,20,4
	.global countdown_value
	.section	".data"
	.align 4
	.type	countdown_value, #object
	.size	countdown_value, 4
countdown_value:
	.long	-16
	.global exit_flag
	.section	".bss"
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
