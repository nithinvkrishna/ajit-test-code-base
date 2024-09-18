	.file	"main.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"enabled serial.\n"
	.align 8
.LC1:
	.asciz	"enabled interrupt controller.\n"
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
	sethi	%hi(.LC0), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC0), %o0
	mov	0, %o0
	mov	0, %o1
	call	enableInterruptControllerAndAllInterrupts, 0
	 sethi	%hi(.LC1), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC1), %o0
	.size	setup, .-setup
	.align 4
	.global write_to_accelerator_register
	.type	write_to_accelerator_register, #function
	.proc	020
write_to_accelerator_register:
	sll	%o0, 2, %g1
	mov	%o1, %o0
	sethi	%hi(-45056), %o1
	add	%g1, %o1, %o1
	or	%o7, %g0, %g1
	call	__ajit_store_word_mmu_bypass__, 0
	 or	%g1, %g0, %o7
	.size	write_to_accelerator_register, .-write_to_accelerator_register
	.align 4
	.global read_from_accelerator_register
	.type	read_from_accelerator_register, #function
	.proc	016
read_from_accelerator_register:
	sll	%o0, 2, %o0
	sethi	%hi(-45056), %g1
	add	%o0, %g1, %o0
	or	%o7, %g0, %g1
	call	__ajit_load_word_mmu_bypass__, 0
	 or	%g1, %g0, %o7
	.size	read_from_accelerator_register, .-read_from_accelerator_register
	.align 4
	.global my_external_interrupt_handler
	.type	my_external_interrupt_handler, #function
	.proc	020
my_external_interrupt_handler:
	save	%sp, -96, %sp
	sethi	%hi(interrupt_counter), %g1
	ld	[%g1+%lo(interrupt_counter)], %g2
	add	%g2, 1, %g2
	mov	0, %o0
	st	%g2, [%g1+%lo(interrupt_counter)]
	call	__ajit_store_word_mmu_bypass__, 0
	 sethi	%hi(-45056), %o1
	call	__ajit_load_word_mmu_bypass__, 0
	 sethi	%hi(-45056), %o0
	mov	1, %g1
	sethi	%hi(interrupt_flag), %g2
	sub	%g1, %o0, %o0
	st	%o0, [%g2+%lo(interrupt_flag)]
	jmp	%i7+8
	 restore
	.size	my_external_interrupt_handler, .-my_external_interrupt_handler
	.section	.rodata.str1.8
	.align 8
.LC2:
	.asciz	"Register[%d] = 0x%x\n"
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	020
main:
	save	%sp, -96, %sp
	mov	0, %i5
	mov	%i5, %o0
.L11:
	call	write_to_accelerator_register, 0
	 mov	%i5, %o1
	add	%i5, 1, %i5
	cmp	%i5, 16
	bne,a	.L11
	 mov	%i5, %o0
	sethi	%hi(.LC2), %i4
	mov	0, %i5
	or	%i4, %lo(.LC2), %i4
.L7:
	call	read_from_accelerator_register, 0
	 mov	%i5, %o0
	mov	%i5, %o1
	mov	%o0, %o2
	call	cortos_printf, 0
	 mov	%i4, %o0
	add	%i5, 1, %i5
	cmp	%i5, 16
	bne	.L7
	 nop
	jmp	%i7+8
	 restore
	.size	main, .-main
	.common	test_array,128,8
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
