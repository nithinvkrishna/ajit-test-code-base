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
	.global run_timer_ISR_default_example
	.type	run_timer_ISR_default_example, #function
	.proc	020
run_timer_ISR_default_example:
	save	%sp, -96, %sp
	sethi	%hi(timer_interrupt_counter), %i3
	ld	[%i3+%lo(timer_interrupt_counter)], %g1
	cmp	%g1, 3
	ble	.L19
	 nop
.L9:
	ld	[%i3+%lo(timer_interrupt_counter)], %g1
	cmp	%g1, 2
	ble	.L22
	 mov	1, %g2
	sethi	%hi(exit_flag), %g1
	st	%g2, [%g1+%lo(exit_flag)]
.L22:
	jmp	%i7+8
	 restore
.L19:
	call	__ajit_get_clock_time, 0
	 nop
	ld	[%i3+%lo(timer_interrupt_counter)], %g1
	cmp	%g1, 0
	ble	.L11
	 sethi	%hi(last_time_64), %g1
	ldd	[%g1+%lo(last_time_64)], %g2
	sethi	%hi(min_interval), %g4
	subcc	%o1, %g3, %g3
	ldd	[%g4+%lo(min_interval)], %i4
	subx	%o0, %g2, %g2
	cmp	%i4, %g2
	bleu	.L20
	 nop
.L17:
	std	%g2, [%g4+%lo(min_interval)]
	sethi	%hi(max_interval), %g4
.L21:
	ldd	[%g4+%lo(max_interval)], %i4
	cmp	%g2, %i4
	bgu	.L18
	 nop
	bne	.L11
	 cmp	%g3, %i5
	bleu	.L11
	 nop
.L18:
	std	%g2, [%g4+%lo(max_interval)]
.L11:
	std	%o0, [%g1+%lo(last_time_64)]
	ld	[%i3+%lo(timer_interrupt_counter)], %g1
	add	%g1, 1, %g1
	st	%g1, [%i3+%lo(timer_interrupt_counter)]
	b,a	.L9
.L20:
	bne,a	.L21
	 sethi	%hi(max_interval), %g4
	cmp	%i5, %g3
	bleu,a	.L21
	 sethi	%hi(max_interval), %g4
	b,a	.L17
	.size	run_timer_ISR_default_example, .-run_timer_ISR_default_example
	.align 4
	.global my_timer_interrupt_handler
	.type	my_timer_interrupt_handler, #function
	.proc	020
my_timer_interrupt_handler:
	save	%sp, -96, %sp
	call	clear_and_disable_timer, 0
	 sethi	%hi(countdown_value), %i5
	ld	[%i5+%lo(countdown_value)], %g1
	add	%g1, -256, %g1
	st	%g1, [%i5+%lo(countdown_value)]
	ld	[%i5+%lo(countdown_value)], %g1
	cmp	%g1, 4095
	bgu	.L24
	 mov	-16, %g1
	st	%g1, [%i5+%lo(countdown_value)]
.L24:
	ld	[%i5+%lo(countdown_value)], %o0
	call	enable_and_write_timer, 0
	 nop
	call	run_timer_ISR_default_example, 0
	 nop
	ld	[%i5+%lo(countdown_value)], %g1
	sethi	%hi(isr_written_value), %i4
	st	%g1, [%i4+%lo(isr_written_value)]
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 nop
	sethi	%hi(isr_read_value), %g1
	st	%o0, [%g1+%lo(isr_read_value)]
	ld	[%g1+%lo(isr_read_value)], %g1
	ld	[%i4+%lo(isr_written_value)], %g2
	xor	%g2, %g1, %g1
	and	%g1, -2, %g1
	subcc	%g0, %g1, %g0
	sethi	%hi(isr_match_status), %g1
	subx	%g0, -1, %g2
	st	%g2, [%g1+%lo(isr_match_status)]
	mov	1, %g2
	sethi	%hi(verify_ready), %g1
	st	%g2, [%g1+%lo(verify_ready)]
	jmp	%i7+8
	 restore
	.size	my_timer_interrupt_handler, .-my_timer_interrupt_handler
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
	.asciz	"[ISR] [PASS] Written=0x%08X Read=0x%08X\n"
	.align 8
.LC2:
	.asciz	"[ISR] [FAIL] Written=0x%08X Read=0x%08X\n"
	.section	".text"
	.align 4
	.global print_isr_status
	.type	print_isr_status, #function
	.proc	020
print_isr_status:
	sethi	%hi(isr_match_status), %g1
	ld	[%g1+%lo(isr_match_status)], %g1
	cmp	%g1, 0
	sethi	%hi(isr_written_value), %g1
	ld	[%g1+%lo(isr_written_value)], %o1
	bne	.L28
	 sethi	%hi(.LC2), %o0
	sethi	%hi(isr_read_value), %g1
	or	%o0, %lo(.LC2), %o0
	ld	[%g1+%lo(isr_read_value)], %o2
	or	%o7, %g0, %g1
	call	cortos_printf, 0
	 or	%g1, %g0, %o7
.L28:
	sethi	%hi(.LC1), %o0
	sethi	%hi(isr_read_value), %g1
	or	%o0, %lo(.LC1), %o0
	ld	[%g1+%lo(isr_read_value)], %o2
	or	%o7, %g0, %g1
	call	cortos_printf, 0
	 or	%g1, %g0, %o7
	.size	print_isr_status, .-print_isr_status
	.section	.rodata.str1.8
	.align 8
.LC3:
	.asciz	"[MAIN] Program starting...\n"
	.align 8
.LC4:
	.asciz	"[MAIN] Interrupt controller enabled\n"
	.align 8
.LC5:
	.asciz	"[MAIN] [INIT] TimerRead=0x%08X\n"
	.align 8
.LC6:
	.asciz	"[MAIN] [INIT] ICRRead=0x%08X\n"
	.align 8
.LC7:
	.asciz	"[MAIN] [INIT] Timer initialized with: 0x%08X\n"
	.align 8
.LC8:
	.asciz	"[MAIN] Program execution completed\n"
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	save	%sp, -96, %sp
	call	configure_serial_device, 0
	 sethi	%hi(timer_init_val), %i5
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
	mov	%o0, %o1
	sethi	%hi(.LC5), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC5), %o0
	call	__ajit_read_irc_control_register_via_bypass__, 0
	 nop
	mov	%o0, %o1
	sethi	%hi(.LC6), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC6), %o0
	ld	[%i5+%lo(timer_init_val)], %o0
	call	enable_and_write_timer, 0
	 nop
	ld	[%i5+%lo(timer_init_val)], %o1
	sethi	%hi(.LC7), %o0
	sethi	%hi(exit_flag), %i5
	or	%o0, %lo(.LC7), %o0
	call	cortos_printf, 0
	 sethi	%hi(verify_ready), %i4
	b	.L38
	 or	%i5, %lo(exit_flag), %i5
.L32:
	ld	[%i4+%lo(verify_ready)], %g1
	cmp	%g1, 0
	bne	.L39
	 nop
.L38:
	ld	[%i5], %g1
	cmp	%g1, 0
	be	.L32
	 mov	0, %i0
	sethi	%hi(.LC8), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC8), %o0
	jmp	%i7+8
	 restore
.L39:
	st	%g0, [%i4+%lo(verify_ready)]
	call	print_isr_status, 0
	 nop
	b,a	.L38
	.size	main, .-main
	.global verify_ready
	.section	".bss"
	.align 4
	.type	verify_ready, #object
	.size	verify_ready, 4
verify_ready:
	.skip	4
	.global isr_match_status
	.align 4
	.type	isr_match_status, #object
	.size	isr_match_status, 4
isr_match_status:
	.skip	4
	.global isr_read_value
	.align 4
	.type	isr_read_value, #object
	.size	isr_read_value, 4
isr_read_value:
	.skip	4
	.global isr_written_value
	.align 4
	.type	isr_written_value, #object
	.size	isr_written_value, 4
isr_written_value:
	.skip	4
	.global timer_init_val
	.section	".data"
	.align 4
	.type	timer_init_val, #object
	.size	timer_init_val, 4
timer_init_val:
	.long	200001
	.global countdown_value
	.align 4
	.type	countdown_value, #object
	.size	countdown_value, 4
countdown_value:
	.long	-16
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
