	.file	"main.c"
	.section	".text"
	.align 4
	.global mem_read
	.type	mem_read, #function
	.proc	016
mem_read:
	jmp	%o7+8
	 ld	[%o0], %o0
	.size	mem_read, .-mem_read
	.align 4
	.global mem_write
	.type	mem_write, #function
	.proc	020
mem_write:
	jmp	%o7+8
	 st	%o0, [%o1]
	.size	mem_write, .-mem_write
	.align 4
	.global get_32bit_rand
	.type	get_32bit_rand, #function
	.proc	016
get_32bit_rand:
	save	%sp, -96, %sp
	call	rand, 0
	 nop
	call	rand, 0
	 mov	%o0, %i0
	sll	%i0, 16, %i0
	sethi	%hi(64512), %g1
	or	%g1, 1023, %g1
	and	%o0, %g1, %o0
	or	%o0, %i0, %i0
	jmp	%i7+8
	 restore
	.size	get_32bit_rand, .-get_32bit_rand
	.align 4
	.global mem_compare
	.type	mem_compare, #function
	.proc	010
mem_compare:
	ld	[%sp+64], %g1
	mov	1, %g2
	st	%o0, [%g1]
	st	%o1, [%o2]
	stb	%o1, [%g1+4]
	stb	%o1, [%g1+5]
	stb	%g2, [%g1+6]
	jmp	%o7+12
	 mov	%g1, %o0
	.size	mem_compare, .-mem_compare
	.align 4
	.global my_timer_interrupt_handler
	.type	my_timer_interrupt_handler, #function
	.proc	020
my_timer_interrupt_handler:
	jmp	%o7+8
	 nop
	.size	my_timer_interrupt_handler, .-my_timer_interrupt_handler
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
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"Block %d, Random addr %d:%d , Write: 0x%X, Read: 0x%X, Pass: %s\n"
	.align 8
.LC1:
	.asciz	"Yes"
	.align 8
.LC2:
	.asciz	"mem_checks %d : %d\n"
	.section	".text"
	.align 4
	.global perform_mem_operations
	.type	perform_mem_operations, #function
	.proc	020
perform_mem_operations:
	save	%sp, -104, %sp
	mov	1234, %o0
	sethi	%hi(i.2559), %i2
	sethi	%hi(.LC1), %i0
	sethi	%hi(.LC0), %i1
	sethi	%hi(.LC2), %l0
	call	srand, 0
	 mov	0, %i4
	sethi	%hi(1048576), %l1
	or	%i2, %lo(i.2559), %i2
	or	%i0, %lo(.LC1), %i0
	or	%i1, %lo(.LC0), %i1
	or	%l0, %lo(.LC2), %l0
.L8:
	mov	0, %i5
.L9:
	call	rand, 0
	 nop
	sra	%o0, 31, %g1
	srl	%g1, 20, %g1
	add	%o0, %g1, %i3
	and	%i3, 4095, %i3
	call	get_32bit_rand, 0
	 sub	%i3, %g1, %i3
	st	%o0, [%i3+%i4]
	mov	%o0, %o4
	mov	%i5, %o2
	st	%i0, [%sp+92]
	add	%i3, %i4, %o3
	mov	%i1, %o0
	ld	[%i2], %o1
	call	cortos_printf, 0
	 and	%o4, 0xff, %o5
	add	%i5, 1, %i5
	cmp	%i5, 3
	bne	.L9
	 mov	%i4, %o2
	mov	%l0, %o0
	call	cortos_printf, 0
	 ld	[%i2], %o1
	ld	[%i2], %g1
	add	%g1, 1, %g1
	sub	%i4, -4096, %i4
	cmp	%i4, %l1
	bne	.L8
	 st	%g1, [%i2]
	jmp	%i7+8
	 restore
	.size	perform_mem_operations, .-perform_mem_operations
	.section	.rodata.str1.8
	.align 8
.LC3:
	.asciz	"Main function starts\n"
	.align 8
.LC4:
	.asciz	"end of execution\n"
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
	call	perform_mem_operations, 0
	 nop
	sethi	%hi(.LC4), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC4), %o0
	jmp	%i7+8
	 restore
	.size	main, .-main
	.local	i.2559
	.common	i.2559,4,4
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
