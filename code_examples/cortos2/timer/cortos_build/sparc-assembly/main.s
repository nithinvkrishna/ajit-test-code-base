	.file	"main.c"
	.section	".text"
	.align 4
	.global my_timer_interrupt_handler
	.type	my_timer_interrupt_handler, #function
	.proc	020
my_timer_interrupt_handler:
	save	%sp, -96, %sp
	call	__ajit_write_timer_control_register_via_vmap__, 0
	 mov	0, %o0
	sethi	%hi(199680), %o0
	call	__ajit_write_timer_control_register_via_vmap__, 0
	 or	%o0, 321, %o0
	sethi	%hi(timer_interrupt_counter), %i3
	ld	[%i3+%lo(timer_interrupt_counter)], %g1
	cmp	%g1, 1024
	ble	.L13
	 nop
.L2:
	ld	[%i3+%lo(timer_interrupt_counter)], %g1
	cmp	%g1, 1023
	ble	.L16
	 mov	1, %g2
	sethi	%hi(exit_flag), %g1
	st	%g2, [%g1+%lo(exit_flag)]
.L16:
	jmp	%i7+8
	 restore
.L13:
	call	__ajit_get_clock_time, 0
	 nop
	ld	[%i3+%lo(timer_interrupt_counter)], %g1
	cmp	%g1, 0
	ble	.L4
	 sethi	%hi(last_time_64), %g1
	ldd	[%g1+%lo(last_time_64)], %g2
	sethi	%hi(min_interval), %g4
	subcc	%o1, %g3, %g3
	ldd	[%g4+%lo(min_interval)], %i4
	subx	%o0, %g2, %g2
	cmp	%i4, %g2
	bleu	.L14
	 nop
.L10:
	std	%g2, [%g4+%lo(min_interval)]
	sethi	%hi(max_interval), %g4
.L15:
	ldd	[%g4+%lo(max_interval)], %i4
	cmp	%g2, %i4
	bgu	.L11
	 nop
	bne	.L4
	 cmp	%g3, %i5
	bleu	.L4
	 nop
.L11:
	std	%g2, [%g4+%lo(max_interval)]
.L4:
	std	%o0, [%g1+%lo(last_time_64)]
	ld	[%i3+%lo(timer_interrupt_counter)], %g1
	add	%g1, 1, %g1
	st	%g1, [%i3+%lo(timer_interrupt_counter)]
	b,a	.L2
.L14:
	bne,a	.L15
	 sethi	%hi(max_interval), %g4
	cmp	%i5, %g3
	bleu,a	.L15
	 sethi	%hi(max_interval), %g4
	b,a	.L10
	.size	my_timer_interrupt_handler, .-my_timer_interrupt_handler
	.align 4
	.global isAPrime
	.type	isAPrime, #function
	.proc	04
isAPrime:
	srl	%o0, 31, %g3
	add	%g3, %o0, %g3
	sra	%g3, 1, %g3
	cmp	%g3, 2
	ble	.L22
	 add	%g3, %g3, %g1
	cmp	%g1, %o0
	be	.L24
	 mov	2, %g1
	b	.L25
	 add	%g1, 1, %g1
.L21:
	sra	%o0, 31, %g4
	wr	%g4, 0, %y
	nop
	nop
	nop
	sdiv	%o0, %g1, %g2
	smul	%g2, %g1, %g2
	cmp	%g2, %o0
	be	.L24
	 add	%g1, 1, %g1
.L25:
	cmp	%g1, %g3
	bne	.L21
	 nop
.L22:
	jmp	%o7+8
	 mov	1, %o0
.L24:
	jmp	%o7+8
	 mov	0, %o0
	.size	isAPrime, .-isAPrime
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"Starting\n"
	.align 8
.LC1:
	.asciz	"found %d primes.\n"
	.align 8
.LC2:
	.asciz	"Inter-interrupt interval over %d interrupts:\n Min=%u Max=%u\n"
	.align 8
.LC3:
	.asciz	"%d is a prime.\n"
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
	sethi	%hi(.LC0), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC0), %o0
	mov	0, %o0
	call	enableInterruptControllerAndAllInterrupts, 0
	 mov	0, %o1
	sethi	%hi(199680), %o0
	sethi	%hi(exit_flag), %i3
	or	%o0, 321, %o0
	sethi	%hi(.LC3), %i2
	mov	0, %i4
	call	__ajit_write_timer_control_register_via_vmap__, 0
	 mov	1, %i5
	or	%i3, %lo(exit_flag), %i3
	or	%i2, %lo(.LC3), %i2
.L35:
	ld	[%i3], %g1
	cmp	%g1, 0
	bne	.L39
	 mov	%i4, %o1
.L32:
	add	%i5, 1, %i5
	sra	%i5, 1, %g3
	cmp	%g3, 2
	ble	.L28
	 add	%g3, %g3, %g1
	cmp	%i5, %g1
	be	.L35
	 mov	2, %g1
	b	.L40
	 add	%g1, 1, %g1
.L31:
	sra	%i5, 31, %g4
	wr	%g4, 0, %y
	nop
	nop
	nop
	sdiv	%i5, %g1, %g2
	smul	%g2, %g1, %g2
	cmp	%i5, %g2
	be	.L35
	 add	%g1, 1, %g1
.L40:
	cmp	%g1, %g3
	bne	.L31
	 nop
.L28:
	mov	%i2, %o0
	call	cortos_printf, 0
	 mov	%i5, %o1
	ld	[%i3], %g1
	cmp	%g1, 0
	be	.L32
	 add	%i4, 1, %i4
	mov	%i4, %o1
.L39:
	sethi	%hi(.LC1), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC1), %o0
	sethi	%hi(timer_interrupt_counter), %g1
	ld	[%g1+%lo(timer_interrupt_counter)], %o1
	sethi	%hi(min_interval), %g1
	ldd	[%g1+%lo(min_interval)], %i4
	sethi	%hi(max_interval), %g1
	ldd	[%g1+%lo(max_interval)], %g2
	mov	%i5, %o2
	mov	%g3, %o3
	sethi	%hi(.LC2), %o0
	mov	0, %i0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC2), %o0
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
