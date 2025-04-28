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
	.global small_delay
	.type	small_delay, #function
	.proc	020
small_delay:
	sethi	%hi(9216), %g1
	or	%g1, 784, %g1
	add	%sp, -80, %sp
	st	%g1, [%sp+76]
	ld	[%sp+76], %g1
	cmp	%g1, 0
	ble	.L4
	 nop
.L7:
	ld	[%sp+76], %g1
	add	%g1, -1, %g1
	st	%g1, [%sp+76]
	ld	[%sp+76], %g1
	cmp	%g1, 0
	bg	.L7
	 nop
.L4:
	jmp	%o7+8
	 sub	%sp, -80, %sp
	.size	small_delay, .-small_delay
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
	.align 4
	.global my_timer_interrupt_handler
	.type	my_timer_interrupt_handler, #function
	.proc	020
my_timer_interrupt_handler:
	mov	1, %g2
	sethi	%hi(interrupt_fired), %g1
	st	%g2, [%g1+%lo(interrupt_fired)]
	jmp	%o7+8
	 nop
	.size	my_timer_interrupt_handler, .-my_timer_interrupt_handler
	.section	.rodata.str1.8
	.align 8
.LC1:
	.asciz	"[TEST] test_timer_decrements_from_N_to_0 started...\n"
	.align 8
.LC2:
	.asciz	"[TEST] [PASS] Timer decremented correctly from N to 0.\n"
	.align 8
.LC3:
	.asciz	"[TEST] [FAIL] Timer did not decrement properly.\n"
	.section	".text"
	.align 4
	.global test_timer_decrements_from_N_to_0
	.type	test_timer_decrements_from_N_to_0, #function
	.proc	020
test_timer_decrements_from_N_to_0:
	save	%sp, -104, %sp
	sethi	%hi(.LC1), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC1), %o0
	call	clear_and_disable_timer, 0
	 sethi	%hi(9216), %i4
	call	__ajit_write_timer_control_register_via_vmap__, 0
	 mov	17, %o0
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 or	%i4, 784, %i4
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 mov	%o0, %i5
	and	%i5, -2, %i5
	and	%o0, -2, %g1
	cmp	%g1, %i5
	bgu	.L13
	 cmp	%g1, 0
.L24:
	be	.L14
	 nop
	st	%i4, [%fp-4]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bg	.L19
	 mov	%o0, %i5
.L23:
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 and	%i5, -2, %i5
	and	%o0, -2, %g1
	cmp	%g1, %i5
	bleu	.L24
	 cmp	%g1, 0
.L13:
	call	clear_and_disable_timer, 0
	 nop
	sethi	%hi(.LC3), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC3), %o0
	jmp	%i7+8
	 restore
.L19:
	ld	[%fp-4], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bg	.L19
	 mov	%o0, %i5
	b,a	.L23
.L14:
	call	clear_and_disable_timer, 0
	 nop
	sethi	%hi(.LC2), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC2), %o0
	jmp	%i7+8
	 restore
	.size	test_timer_decrements_from_N_to_0, .-test_timer_decrements_from_N_to_0
	.section	.rodata.str1.8
	.align 8
.LC4:
	.asciz	"[TEST] test_timer_stops_at_zero started...\n"
	.align 8
.LC5:
	.asciz	"[TEST] [PASS] Timer stopped at 0 without rollover.\n"
	.align 8
.LC6:
	.asciz	"[TEST] [FAIL] Timer did not stop properly at 0.\n"
	.section	".text"
	.align 4
	.global test_timer_stops_at_zero
	.type	test_timer_stops_at_zero, #function
	.proc	020
test_timer_stops_at_zero:
	save	%sp, -104, %sp
	sethi	%hi(.LC4), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC4), %o0
	call	clear_and_disable_timer, 0
	 sethi	%hi(9216), %i5
	call	__ajit_write_timer_control_register_via_vmap__, 0
	 mov	5, %o0
	or	%i5, 784, %i5
.L39:
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 nop
	andcc	%o0, -2, %g0
	be	.L40
	 nop
.L29:
	st	%i5, [%fp-8]
	ld	[%fp-8], %g1
	cmp	%g1, 0
	ble	.L39
	 nop
.L36:
	ld	[%fp-8], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-8]
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bg	.L36
	 nop
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 nop
	andcc	%o0, -2, %g0
	bne	.L29
	 nop
.L40:
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 nop
	sethi	%hi(9216), %g1
	or	%g1, 784, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	ble	.L33
	 mov	%o0, %i5
.L35:
	ld	[%fp-4], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bg	.L35
	 nop
.L33:
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 nop
	call	clear_and_disable_timer, 0
	 mov	%o0, %i4
	andcc	%i5, -2, %g0
	bne	.L32
	 andcc	%i4, -2, %g0
	be,a	.L41
	 sethi	%hi(.LC5), %o0
.L32:
	sethi	%hi(.LC6), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC6), %o0
	jmp	%i7+8
	 restore
.L41:
	call	cortos_printf, 0
	 or	%o0, %lo(.LC5), %o0
	jmp	%i7+8
	 restore
	.size	test_timer_stops_at_zero, .-test_timer_stops_at_zero
	.section	.rodata.str1.8
	.align 8
.LC7:
	.asciz	"[TEST_INTERRUPT_FIRES_AT_ZERO] Started...\n"
	.align 8
.LC8:
	.asciz	"[TEST_INTERRUPT_FIRES_AT_ZERO] Timeout exit reached.\n"
	.section	".text"
	.align 4
	.global test_interrupt_fires_at_zero
	.type	test_interrupt_fires_at_zero, #function
	.proc	020
test_interrupt_fires_at_zero:
	save	%sp, -96, %sp
	sethi	%hi(.LC7), %o0
	sethi	%hi(.LC8), %i0
	or	%o0, %lo(.LC7), %o0
	call	cortos_printf, 0
	 or	%i0, %lo(.LC8), %i0
	call	cortos_printf, 0
	 restore
	.size	test_interrupt_fires_at_zero, .-test_interrupt_fires_at_zero
	.section	.rodata.str1.8
	.align 8
.LC9:
	.asciz	"[TEST] test_interrupt_not_fired_early started...\n"
	.align 8
.LC10:
	.asciz	"[TEST] [FAIL] Interrupt fired before countdown reached 0.\n"
	.align 8
.LC11:
	.asciz	"[TEST] [PASS] No interrupt fired before countdown reached 0.\n"
	.section	".text"
	.align 4
	.global test_interrupt_not_fired_early
	.type	test_interrupt_not_fired_early, #function
	.proc	020
test_interrupt_not_fired_early:
	save	%sp, -104, %sp
	sethi	%hi(.LC9), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC9), %o0
	sethi	%hi(interrupt_fired), %i4
	st	%g0, [%i4+%lo(interrupt_fired)]
	call	clear_and_disable_timer, 0
	 sethi	%hi(9216), %i3
	call	__ajit_write_timer_control_register_via_vmap__, 0
	 mov	81, %o0
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 mov	20, %i5
	or	%i4, %lo(interrupt_fired), %i4
	or	%i3, 784, %i3
.L46:
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 nop
	ld	[%i4], %g1
	cmp	%g1, 0
	bne	.L44
	 nop
	st	%i3, [%fp-4]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	ble,a	.L54
	 addcc	%i5, -1, %i5
.L50:
	ld	[%fp-4], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bg	.L50
	 nop
	addcc	%i5, -1, %i5
.L54:
	bne	.L46
	 nop
	call	clear_and_disable_timer, 0
	 nop
	sethi	%hi(.LC11), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC11), %o0
	jmp	%i7+8
	 restore
.L44:
	call	clear_and_disable_timer, 0
	 nop
	sethi	%hi(.LC10), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC10), %o0
	jmp	%i7+8
	 restore
	.size	test_interrupt_not_fired_early, .-test_interrupt_not_fired_early
	.section	.rodata.str1.8
	.align 8
.LC12:
	.asciz	"[TEST] test_reenable_timer_after_interrupt started...\n"
	.align 8
.LC13:
	.asciz	"[TEST] [FAIL] Interrupt did not fire on first run.\n"
	.align 8
.LC14:
	.asciz	"[TEST] [PASS] Timer re-enabled and interrupt fired again.\n"
	.align 8
.LC15:
	.asciz	"[TEST] [FAIL] Timer re-enable failed.\n"
	.section	".text"
	.align 4
	.global test_reenable_timer_after_interrupt
	.type	test_reenable_timer_after_interrupt, #function
	.proc	020
test_reenable_timer_after_interrupt:
	save	%sp, -104, %sp
	sethi	%hi(.LC12), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC12), %o0
	sethi	%hi(interrupt_fired), %i5
	st	%g0, [%i5+%lo(interrupt_fired)]
	call	clear_and_disable_timer, 0
	 sethi	%hi(9216), %i4
	call	__ajit_write_timer_control_register_via_vmap__, 0
	 mov	5, %o0
	or	%i4, 784, %i4
.L79:
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 nop
	andcc	%o0, -2, %g0
	be	.L59
	 nop
.L81:
	ld	[%i5+%lo(interrupt_fired)], %g1
	cmp	%g1, 0
	bne	.L59
	 nop
	st	%i4, [%fp-8]
	ld	[%fp-8], %g1
	cmp	%g1, 0
	ble	.L79
	 nop
.L74:
	ld	[%fp-8], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-8]
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bg	.L74
	 nop
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 nop
	andcc	%o0, -2, %g0
	bne	.L81
	 nop
.L59:
	ld	[%i5+%lo(interrupt_fired)], %g1
	cmp	%g1, 0
	be	.L82
	 sethi	%hi(interrupt_fired), %g1
	mov	5, %o0
	st	%g0, [%g1+%lo(interrupt_fired)]
	call	__ajit_write_timer_control_register_via_vmap__, 0
	 sethi	%hi(9216), %i4
	or	%i4, 784, %i4
.L80:
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 nop
	andcc	%o0, -2, %g0
	be	.L66
	 nop
.L83:
	ld	[%i5+%lo(interrupt_fired)], %g1
	cmp	%g1, 0
	bne	.L66
	 nop
	st	%i4, [%fp-4]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	ble	.L80
	 nop
.L73:
	ld	[%fp-4], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	bg	.L73
	 nop
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 nop
	andcc	%o0, -2, %g0
	bne	.L83
	 nop
.L66:
	call	clear_and_disable_timer, 0
	 nop
	ld	[%i5+%lo(interrupt_fired)], %g1
	cmp	%g1, 0
	bne,a	.L84
	 sethi	%hi(.LC14), %o0
	sethi	%hi(.LC15), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC15), %o0
	jmp	%i7+8
	 restore
.L84:
	call	cortos_printf, 0
	 or	%o0, %lo(.LC14), %o0
	jmp	%i7+8
	 restore
.L82:
	sethi	%hi(.LC13), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC13), %o0
	jmp	%i7+8
	 restore
	.size	test_reenable_timer_after_interrupt, .-test_reenable_timer_after_interrupt
	.section	.rodata.str1.8
	.align 8
.LC16:
	.asciz	"[MAIN] Program starting Timer Behavior Tests...\n"
	.align 8
.LC17:
	.asciz	"[MAIN] Interrupt controller enabled\n"
	.align 8
.LC18:
	.asciz	"[MAIN] All Timer Behavior Tests completed\n"
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	save	%sp, -96, %sp
	call	configure_serial_device, 0
	 mov	0, %i0
	sethi	%hi(.LC16), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC16), %o0
	mov	0, %o1
	call	enableInterruptControllerAndAllInterrupts, 0
	 mov	0, %o0
	sethi	%hi(.LC17), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC17), %o0
	call	test_interrupt_fires_at_zero, 0
	 nop
	call	test_interrupt_not_fired_early, 0
	 nop
	call	test_reenable_timer_after_interrupt, 0
	 nop
	sethi	%hi(.LC18), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC18), %o0
	jmp	%i7+8
	 restore
	.size	main, .-main
	.global interrupt_fired
	.section	".bss"
	.align 4
	.type	interrupt_fired, #object
	.size	interrupt_fired, 4
interrupt_fired:
	.skip	4
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
