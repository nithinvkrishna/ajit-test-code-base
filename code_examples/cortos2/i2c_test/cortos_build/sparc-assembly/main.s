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
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"I2C Configuration Failed\n"
	.align 8
.LC1:
	.asciz	"I2C Configured Successfully\n"
	.align 8
.LC2:
	.asciz	"Writing 0x%X to Device: 0x%X, Register: 0x%X\n"
	.align 8
.LC3:
	.asciz	"Reading from Device: 0x%X, Register: 0x%X\n"
	.align 8
.LC4:
	.asciz	"Read Data: 0x%X\n"
	.align 8
.LC5:
	.asciz	"PASS: Data matched!\n"
	.align 8
.LC6:
	.asciz	"FAIL: Data mismatch. Expected 0x%X, but read 0x%X\n"
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	020
main:
	save	%sp, -96, %sp
	sethi	%hi(49999872), %o0
	sethi	%hi(99328), %o1
	or	%o0, 128, %o0
	call	ajit_configure_i2c_master, 0
	 or	%o1, 672, %o1
	cmp	%o0, 0
	bne	.L11
	 sethi	%hi(.LC1), %o0
	call	printf, 0
	 or	%o0, %lo(.LC1), %o0
	mov	171, %o1
	mov	80, %o2
	mov	16, %o3
	sethi	%hi(.LC2), %o0
	call	printf, 0
	 or	%o0, %lo(.LC2), %o0
	mov	80, %o0
	mov	0, %o1
	mov	16, %o2
	call	ajit_i2c_master_access_slave_memory_device, 0
	 mov	171, %o3
.L4:
	call	ajit_i2c_master_is_ready, 0
	 nop
	cmp	%o0, 0
	be	.L4
	 mov	80, %o1
	mov	16, %o2
	sethi	%hi(.LC3), %o0
	call	printf, 0
	 or	%o0, %lo(.LC3), %o0
	mov	1, %o1
	mov	16, %o2
	mov	0, %o3
	call	ajit_i2c_master_access_slave_memory_device, 0
	 mov	80, %o0
	and	%o0, 0xff, %i2
	sethi	%hi(.LC4), %o0
	mov	%i2, %o1
	call	printf, 0
	 or	%o0, %lo(.LC4), %o0
	cmp	%i2, 171
	be	.L12
	 mov	171, %i1
	sethi	%hi(.LC6), %i0
	call	printf, 0
	 restore %i0, %lo(.LC6), %o0
.L11:
	sethi	%hi(.LC0), %i0
	call	printf, 0
	 restore %i0, %lo(.LC0), %o0
.L12:
	sethi	%hi(.LC5), %i0
	call	printf, 0
	 restore %i0, %lo(.LC5), %o0
	.size	main, .-main
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
