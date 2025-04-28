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
	.global verify_timer_write_read
	.type	verify_timer_write_read, #function
	.proc	016
verify_timer_write_read:
	save	%sp, -96, %sp
	call	clear_and_disable_timer, 0
	 nop
	call	enable_and_write_timer, 0
	 mov	%i0, %o0
	call	__ajit_read_timer_control_register_via_vmap__, 0
	 nop
	call	clear_and_disable_timer, 0
	 mov	%o0, %i5
	sethi	%hi(ref_wr_data), %g1
	st	%i0, [%g1+%lo(ref_wr_data)]
	xor	%i5, %i0, %i0
	and	%i0, -2, %i0
	sethi	%hi(actual_rd_data), %g1
	subcc	%g0, %i0, %g0
	st	%i5, [%g1+%lo(actual_rd_data)]
	subx	%g0, -1, %i0
	jmp	%i7+8
	 restore
	.size	verify_timer_write_read, .-verify_timer_write_read
	.section	.rodata.str1.8
	.align 8
.LC1:
	.asciz	"[TEST] [PASS] [%s]: Written=0x%08X Read=0x%08X\n"
	.align 8
.LC2:
	.asciz	"[TEST] [FAIL] [%s]: Written=0x%08X Read=0x%08X\n"
	.section	".text"
	.align 4
	.global run_edge_case_test
	.type	run_edge_case_test, #function
	.proc	020
run_edge_case_test:
	save	%sp, -96, %sp
	call	verify_timer_write_read, 0
	 mov	%i1, %o0
	sethi	%hi(ref_wr_data), %g1
	ld	[%g1+%lo(ref_wr_data)], %i2
	cmp	%o0, 0
	bne	.L9
	 mov	%i0, %i1
	sethi	%hi(.LC2), %i0
	sethi	%hi(actual_rd_data), %g1
	or	%i0, %lo(.LC2), %i0
	ld	[%g1+%lo(actual_rd_data)], %i3
	call	cortos_printf, 0
	 restore
.L9:
	sethi	%hi(.LC1), %i0
	sethi	%hi(actual_rd_data), %g1
	or	%i0, %lo(.LC1), %i0
	ld	[%g1+%lo(actual_rd_data)], %i3
	call	cortos_printf, 0
	 restore
	.size	run_edge_case_test, .-run_edge_case_test
	.section	.rodata.str1.8
	.align 8
.LC3:
	.asciz	"Edge Case 0xFFFFFFFF"
	.align 8
.LC4:
	.asciz	"Edge Case 0x00000001"
	.align 8
.LC5:
	.asciz	"Edge Case 0x00000000"
	.section	".text"
	.align 4
	.global run_all_timer_edge_case_tests
	.type	run_all_timer_edge_case_tests, #function
	.proc	020
run_all_timer_edge_case_tests:
	save	%sp, -96, %sp
	mov	-1, %o1
	sethi	%hi(.LC3), %o0
	call	run_edge_case_test, 0
	 or	%o0, %lo(.LC3), %o0
	mov	1, %o1
	sethi	%hi(.LC4), %o0
	sethi	%hi(.LC5), %i0
	or	%o0, %lo(.LC4), %o0
	call	run_edge_case_test, 0
	 mov	0, %i1
	call	run_edge_case_test, 0
	 restore %i0, %lo(.LC5), %o0
	.size	run_all_timer_edge_case_tests, .-run_all_timer_edge_case_tests
	.align 4
	.global my_timer_interrupt_handler
	.type	my_timer_interrupt_handler, #function
	.proc	020
my_timer_interrupt_handler:
	jmp	%o7+8
	 nop
	.size	my_timer_interrupt_handler, .-my_timer_interrupt_handler
	.section	.rodata.str1.8
	.align 8
.LC6:
	.asciz	"[MAIN] Program starting Edge Case Tests...\n"
	.align 8
.LC7:
	.asciz	"[MAIN] Edge Case Tests completed\n"
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	save	%sp, -96, %sp
	call	configure_serial_device, 0
	 mov	0, %i0
	sethi	%hi(.LC6), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC6), %o0
	call	run_all_timer_edge_case_tests, 0
	 nop
	sethi	%hi(.LC7), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC7), %o0
	jmp	%i7+8
	 restore
	.size	main, .-main
	.global actual_rd_data
	.section	".bss"
	.align 4
	.type	actual_rd_data, #object
	.size	actual_rd_data, 4
actual_rd_data:
	.skip	4
	.global ref_wr_data
	.align 4
	.type	ref_wr_data, #object
	.size	ref_wr_data, 4
ref_wr_data:
	.skip	4
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
