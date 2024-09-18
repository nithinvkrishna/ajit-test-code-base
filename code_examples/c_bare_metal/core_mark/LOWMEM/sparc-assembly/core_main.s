	.file	"core_main.c"
	.section	".text"
	.align 4
	.global iterate
	.type	iterate, #function
	.proc	0120
iterate:
	save	%sp, -96, %sp
	sth	%g0, [%i0+56]
	sth	%g0, [%i0+58]
	sth	%g0, [%i0+60]
	sth	%g0, [%i0+62]
	ld	[%i0+28], %i4
	cmp	%i4, 0
	be	.L8
	 mov	0, %i5
	mov	1, %o1
.L10:
	call	core_bench_list, 0
	 mov	%i0, %o0
	lduh	[%i0+56], %o1
	sll	%o0, 16, %o0
	call	crcu16, 0
	 srl	%o0, 16, %o0
	mov	-1, %o1
	sth	%o0, [%i0+56]
	call	core_bench_list, 0
	 mov	%i0, %o0
	lduh	[%i0+56], %o1
	sll	%o0, 16, %o0
	call	crcu16, 0
	 srl	%o0, 16, %o0
	cmp	%i5, 0
	bne	.L3
	 sth	%o0, [%i0+56]
	sth	%o0, [%i0+58]
.L3:
	add	%i5, 1, %i5
	cmp	%i5, %i4
	bne	.L10
	 mov	1, %o1
.L8:
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	iterate, .-iterate
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"Note: iterations = %lu!\n"
	.align 8
.LC1:
	.asciz	"6k performance run parameters for coremark.\n"
	.align 8
.LC2:
	.asciz	"6k validation run parameters for coremark.\n"
	.align 8
.LC3:
	.asciz	"Profile generation run parameters for coremark.\n"
	.align 8
.LC4:
	.asciz	"2K performance run parameters for coremark.\n"
	.align 8
.LC5:
	.asciz	"2K validation run parameters for coremark.\n"
	.align 8
.LC6:
	.asciz	"[%u]ERROR! list crc 0x%04x - should be 0x%04x\n"
	.align 8
.LC7:
	.asciz	"[%u]ERROR! matrix crc 0x%04x - should be 0x%04x\n"
	.align 8
.LC8:
	.asciz	"[%u]ERROR! state crc 0x%04x - should be 0x%04x\n"
	.align 8
.LC9:
	.asciz	"CoreMark Size    : %lu\n"
	.align 8
.LC10:
	.asciz	"Total ticks      : %lu\n"
	.align 8
.LC11:
	.asciz	"Total time (secs): %d\n"
	.align 8
.LC12:
	.asciz	"Iterations/Sec   : %d\n"
	.align 8
.LC13:
	.asciz	"ERROR! Must execute for at least 10 secs for a valid result!\n"
	.align 8
.LC14:
	.asciz	"Iterations       : %lu\n"
	.align 8
.LC15:
	.asciz	"Compiler version : %s\n"
	.align 8
.LC16:
	.asciz	"sparc-linux-gcc 4.7.4"
	.align 8
.LC17:
	.asciz	"Compiler flags   : %s\n"
	.align 8
.LC18:
	.asciz	" -m32 -mcpu=v8 -nostdlib -ffreestanding -O3 -funroll-loops -fgcse-sm "
	.align 8
.LC19:
	.asciz	"Memory location  : %s\n"
	.align 8
.LC20:
	.asciz	"STATIC"
	.align 8
.LC21:
	.asciz	"seedcrc          : 0x%04x\n"
	.align 8
.LC22:
	.asciz	"[%d]crclist       : 0x%04x\n"
	.align 8
.LC23:
	.asciz	"[%d]crcmatrix     : 0x%04x\n"
	.align 8
.LC24:
	.asciz	"[%d]crcstate      : 0x%04x\n"
	.align 8
.LC25:
	.asciz	"[%d]crcfinal      : 0x%04x\n"
	.align 8
.LC26:
	.asciz	"Correct operation validated. See readme.txt for run and reporting rules.\n"
	.align 8
.LC27:
	.asciz	"Errors detected\n"
	.align 8
.LC28:
	.asciz	"Cannot validate operation for these seed values, please compare with results on a known platform.\n"
	.section	".text"
	.align 4
	.global ajit_main
	.type	ajit_main, #function
	.proc	020
ajit_main:
	save	%sp, -2176, %sp
	call	portable_init, 0
	 add	%fp, -2006, %o0
	call	get_seed_32, 0
	 mov	1, %o0
	sth	%o0, [%fp-2072]
	call	get_seed_32, 0
	 mov	2, %o0
	sth	%o0, [%fp-2070]
	call	get_seed_32, 0
	 mov	3, %o0
	sth	%o0, [%fp-2068]
	call	get_seed_32, 0
	 mov	4, %o0
	st	%o0, [%fp-2044]
	call	get_seed_32, 0
	 mov	5, %o0
	orcc	%o0, 0, %g1
	be,a	.L12
	 mov	7, %g1
	and	%g1, 1, %g4
	st	%g1, [%fp-2040]
	mov	%g4, %i3
.L13:
	ld	[%fp-2072], %g2
	cmp	%g2, 0
	bne	.L142
	 sethi	%hi(65536), %g3
	ldsh	[%fp-2068], %g2
	cmp	%g2, 0
	be,a	.L126
	 sth	%g0, [%fp-2072]
	subcc	%g0, %g4, %g0
.L154:
	add	%fp, -2000, %g2
	sth	%g0, [%fp-2008]
	st	%g2, [%fp-2064]
	addx	%g0, 0, %g3
	andcc	%g1, 2, %g2
	be	.L21
	 add	%g3, 1, %i5
	mov	%i5, %g3
.L21:
	andcc	%g1, 4, %i5
	be	.L23
	 add	%g3, 1, %i4
	mov	%i4, %g3
.L23:
	sll	%g3, 16, %g3
	mov	2000, %i4
	srl	%g3, 16, %g3
	wr	%g0, 0, %y
	nop
	nop
	nop
	udiv	%i4, %g3, %o0
	st	%o0, [%fp-2048]
	cmp	%g4, 0
	be	.L24
	 mov	0, %g3
	ld	[%fp-2064], %g4
	mov	1, %g3
	st	%g4, [%fp-2060]
.L24:
	cmp	%g2, 0
	be	.L143
	 cmp	%i5, 0
	sll	%g3, 16, %g4
	ld	[%fp-2064], %i4
	srl	%g4, 16, %g4
	add	%g3, 1, %g3
	smul	%g4, %o0, %g4
	add	%i4, %g4, %g4
	st	%g4, [%fp-2056]
.L143:
	be	.L144
	 cmp	%i3, 0
	sll	%g3, 16, %g3
	ld	[%fp-2064], %g4
	srl	%g3, 16, %g3
	smul	%g3, %o0, %g3
	add	%g4, %g3, %g3
	st	%g3, [%fp-2052]
.L144:
	be	.L145
	 cmp	%g2, 0
	ld	[%fp-2060], %o1
	call	core_list_init, 0
	 ldsh	[%fp-2072], %o2
	ld	[%fp-2040], %g1
	st	%o0, [%fp-2036]
	and	%g1, 2, %g2
	cmp	%g2, 0
.L145:
	bne,a	.L127
	 ldsh	[%fp-2072], %g1
.L28:
	andcc	%g1, 4, %g0
	bne	.L128
	 ld	[%fp-2048], %o0
	ld	[%fp-2044], %g1
.L138:
	cmp	%g1, 0
	be	.L129
	 mov	1, %g1
.L30:
	call	start_time, 0
	 mov	0, %i5
	call	get_seed_32, 0
	 mov	4, %o0
	sth	%g0, [%fp-2016]
	st	%o0, [%fp-2044]
	sth	%g0, [%fp-2014]
	sth	%g0, [%fp-2012]
	sth	%g0, [%fp-2010]
	cmp	%o0, 0
	be	.L46
	 mov	%o0, %i4
	mov	1, %o1
.L146:
	call	core_bench_list, 0
	 add	%fp, -2072, %o0
	lduh	[%fp-2016], %o1
	sll	%o0, 16, %o0
	call	crcu16, 0
	 srl	%o0, 16, %o0
	mov	-1, %o1
	sth	%o0, [%fp-2016]
	call	core_bench_list, 0
	 add	%fp, -2072, %o0
	lduh	[%fp-2016], %o1
	sll	%o0, 16, %o0
	call	crcu16, 0
	 srl	%o0, 16, %o0
	cmp	%i5, 0
	bne	.L45
	 sth	%o0, [%fp-2016]
	sth	%o0, [%fp-2014]
.L45:
	add	%i5, 1, %i5
	cmp	%i4, %i5
	bne,a	.L146
	 mov	1, %o1
.L46:
	call	stop_time, 0
	 nop
	call	get_time, 0
	 nop
	mov	0, %o1
	mov	%o0, %i1
	call	crc16, 0
	 ldsh	[%fp-2072], %o0
	sll	%o0, 16, %o1
	ldsh	[%fp-2070], %o0
	call	crc16, 0
	 srl	%o1, 16, %o1
	sll	%o0, 16, %o1
	ldsh	[%fp-2068], %o0
	call	crc16, 0
	 srl	%o1, 16, %o1
	sll	%o0, 16, %o1
	ldsh	[%fp-2046], %o0
	call	crc16, 0
	 srl	%o1, 16, %o1
	sll	%o0, 16, %o0
	sethi	%hi(30720), %g2
	srl	%o0, 16, %g1
	or	%g2, 773, %g2
	cmp	%g1, %g2
	be	.L41
	 st	%o0, [%fp-2076]
	cmp	%g1, %g2
	bleu	.L130
	 sethi	%hi(6144), %g2
	sethi	%hi(34816), %g2
	or	%g2, 514, %g2
	cmp	%g1, %g2
	be	.L42
	 sethi	%hi(59392), %g2
	or	%g2, 501, %g2
	cmp	%g1, %g2
	be	.L131
	 mov	3, %l7
	mov	-1, %i5
.L155:
	sethi	%hi(default_num_contexts), %i0
.L38:
	call	check_data_types, 0
	 nop
	and	%o0, 0xff, %o0
	ld	[%fp-2048], %o1
	add	%o0, %i5, %i5
	sethi	%hi(.LC9), %o0
	call	ee_printf, 0
	 or	%o0, %lo(.LC9), %o0
	mov	%i1, %o1
	sethi	%hi(.LC10), %o0
	call	ee_printf, 0
	 or	%o0, %lo(.LC10), %o0
	call	time_in_secs, 0
	 mov	%i1, %o0
	mov	%o0, %o1
	sethi	%hi(.LC11), %o0
	call	ee_printf, 0
	 or	%o0, %lo(.LC11), %o0
	mov	%i1, %o0
	call	time_in_secs, 0
	 mov	%i5, %i3
	cmp	%o0, 0
	bne	.L132
	 ld	[%fp-2044], %g1
.L54:
	call	time_in_secs, 0
	 mov	%i1, %o0
	cmp	%o0, 9
	bleu,a	.L133
	 add	%i5, 1, %i3
	ld	[%fp-2044], %g1
.L140:
	ld	[%i0+%lo(default_num_contexts)], %o1
	sethi	%hi(.LC14), %o0
	smul	%o1, %g1, %o1
	call	ee_printf, 0
	 or	%o0, %lo(.LC14), %o0
	sethi	%hi(.LC15), %o0
	sethi	%hi(.LC16), %o1
	or	%o0, %lo(.LC15), %o0
	call	ee_printf, 0
	 or	%o1, %lo(.LC16), %o1
	sethi	%hi(.LC17), %o0
	sethi	%hi(.LC18), %o1
	or	%o0, %lo(.LC17), %o0
	call	ee_printf, 0
	 or	%o1, %lo(.LC18), %o1
	sethi	%hi(.LC19), %o0
	sethi	%hi(.LC20), %o1
	or	%o0, %lo(.LC19), %o0
	call	ee_printf, 0
	 or	%o1, %lo(.LC20), %o1
	ld	[%fp-2076], %g1
	sethi	%hi(.LC21), %o0
	srl	%g1, 16, %o1
	call	ee_printf, 0
	 or	%o0, %lo(.LC21), %o0
	ld	[%fp-2040], %g2
	andcc	%g2, 1, %g0
	be	.L57
	 ld	[%i0+%lo(default_num_contexts)], %g1
	cmp	%g1, 0
	be	.L58
	 sethi	%hi(default_num_contexts), %i5
	sethi	%hi(.LC22), %i2
	mov	0, %i4
	or	%i5, %lo(default_num_contexts), %i5
	or	%i2, %lo(.LC22), %i2
	sll	%i4, 16, %o1
.L147:
	srl	%o1, 16, %o1
	sll	%o1, 2, %g2
	sll	%o1, 6, %g1
	add	%g2, %g1, %g1
	add	%fp, %g1, %g1
	mov	%i2, %o0
	call	ee_printf, 0
	 lduh	[%g1-2014], %o2
	add	%i4, 1, %i4
	ld	[%i5], %g1
	sll	%i4, 16, %g2
	srl	%g2, 16, %g2
	cmp	%g2, %g1
	blu	.L147
	 sll	%i4, 16, %o1
	ld	[%fp-2040], %g2
.L57:
	andcc	%g2, 2, %g0
	be	.L148
	 andcc	%g2, 4, %g0
	cmp	%g1, 0
	be,a	.L141
	 sll	%i3, 16, %i3
	sethi	%hi(default_num_contexts), %i5
	sethi	%hi(.LC23), %i2
	mov	0, %i4
	or	%i5, %lo(default_num_contexts), %i5
	or	%i2, %lo(.LC23), %i2
	sll	%i4, 16, %o1
.L149:
	srl	%o1, 16, %o1
	sll	%o1, 2, %g2
	sll	%o1, 6, %g1
	add	%g2, %g1, %g1
	add	%fp, %g1, %g1
	mov	%i2, %o0
	call	ee_printf, 0
	 lduh	[%g1-2012], %o2
	add	%i4, 1, %i4
	ld	[%i5], %g1
	sll	%i4, 16, %g2
	srl	%g2, 16, %g2
	cmp	%g2, %g1
	blu	.L149
	 sll	%i4, 16, %o1
	ld	[%fp-2040], %g2
.L60:
	andcc	%g2, 4, %g0
.L148:
	be	.L150
	 cmp	%g1, 0
	be,a	.L141
	 sll	%i3, 16, %i3
	sethi	%hi(default_num_contexts), %i5
	sethi	%hi(.LC24), %i2
	mov	0, %i4
	or	%i5, %lo(default_num_contexts), %i5
	or	%i2, %lo(.LC24), %i2
	sll	%i4, 16, %o1
.L151:
	srl	%o1, 16, %o1
	sll	%o1, 2, %g2
	sll	%o1, 6, %g1
	add	%g2, %g1, %g1
	add	%fp, %g1, %g1
	mov	%i2, %o0
	call	ee_printf, 0
	 lduh	[%g1-2010], %o2
	add	%i4, 1, %i4
	ld	[%i5], %g1
	sll	%i4, 16, %g2
	srl	%g2, 16, %g2
	cmp	%g2, %g1
	blu	.L151
	 sll	%i4, 16, %o1
	cmp	%g1, 0
.L150:
	be,a	.L141
	 sll	%i3, 16, %i3
	sethi	%hi(default_num_contexts), %i5
	sethi	%hi(.LC25), %i2
	mov	0, %i4
	or	%i5, %lo(default_num_contexts), %i5
	or	%i2, %lo(.LC25), %i2
	sll	%i4, 16, %o1
.L152:
	srl	%o1, 16, %o1
	sll	%o1, 2, %g2
	sll	%o1, 6, %g1
	add	%g2, %g1, %g1
	add	%fp, %g1, %g1
	mov	%i2, %o0
	call	ee_printf, 0
	 lduh	[%g1-2016], %o2
	add	%i4, 1, %i4
	ld	[%i5], %g1
	sll	%i4, 16, %g2
	srl	%g2, 16, %g2
	cmp	%g2, %g1
	blu	.L152
	 sll	%i4, 16, %o1
	sll	%i3, 16, %i3
.L141:
	sra	%i3, 16, %i3
	cmp	%i3, 0
	be,a	.L134
	 sethi	%hi(.LC26), %o0
	ble,a	.L70
	 sethi	%hi(.LC28), %o0
	sethi	%hi(.LC27), %o0
	call	ee_printf, 0
	 or	%o0, %lo(.LC27), %o0
	call	portable_fini, 0
	 add	%fp, -2006, %o0
	jmp	%i7+8
	 restore
.L129:
	add	%g1, %g1, %g2
.L158:
	sll	%g1, 3, %g1
	add	%g2, %g1, %g1
	call	start_time, 0
	 st	%g1, [%fp-2044]
	sth	%g0, [%fp-2016]
	sth	%g0, [%fp-2014]
	sth	%g0, [%fp-2012]
	sth	%g0, [%fp-2010]
	ld	[%fp-2044], %i4
	cmp	%i4, 0
	be	.L35
	 mov	0, %i5
	mov	1, %o1
.L153:
	call	core_bench_list, 0
	 add	%fp, -2072, %o0
	lduh	[%fp-2016], %o1
	sll	%o0, 16, %o0
	call	crcu16, 0
	 srl	%o0, 16, %o0
	mov	-1, %o1
	sth	%o0, [%fp-2016]
	call	core_bench_list, 0
	 add	%fp, -2072, %o0
	lduh	[%fp-2016], %o1
	sll	%o0, 16, %o0
	call	crcu16, 0
	 srl	%o0, 16, %o0
	cmp	%i5, 0
	bne	.L34
	 sth	%o0, [%fp-2016]
	sth	%o0, [%fp-2014]
.L34:
	add	%i5, 1, %i5
	cmp	%i5, %i4
	bne	.L153
	 mov	1, %o1
.L35:
	call	stop_time, 0
	 nop
	call	get_time, 0
	 nop
	call	time_in_secs, 0
	 nop
	cmp	%o0, 0
	bne	.L135
	 ld	[%fp-2044], %g1
	b	.L158
	 add	%g1, %g1, %g2
.L128:
	ldsh	[%fp-2072], %o1
	call	core_init_state, 0
	 ld	[%fp-2052], %o2
	b	.L138
	 ld	[%fp-2044], %g1
.L127:
	ldsh	[%fp-2070], %o2
	ld	[%fp-2048], %o0
	sll	%o2, 16, %o2
	ld	[%fp-2056], %o1
	or	%o2, %g1, %o2
	call	core_init_matrix, 0
	 add	%fp, -2032, %o3
	b	.L28
	 ld	[%fp-2040], %g1
.L126:
	sth	%g0, [%fp-2070]
	mov	102, %g3
	ld	[%fp-2072], %g2
	sth	%g3, [%fp-2068]
	sethi	%hi(65536), %g3
.L142:
	cmp	%g2, %g3
	bne	.L154
	 subcc	%g0, %g4, %g0
	ldsh	[%fp-2068], %g2
	cmp	%g2, 0
	bne	.L154
	 subcc	%g0, %g4, %g0
	sethi	%hi(13312), %g2
	mov	102, %g3
	or	%g2, 21, %g2
	sth	%g3, [%fp-2068]
	sth	%g2, [%fp-2072]
	b	.L154
	 sth	%g2, [%fp-2070]
.L135:
	mov	10, %g1
	wr	%g0, 0, %y
	nop
	nop
	nop
	udiv	%g1, %o0, %o1
	ld	[%fp-2044], %g1
	sethi	%hi(.LC0), %o0
	add	%o1, 1, %o1
	or	%o0, %lo(.LC0), %o0
	smul	%o1, %g1, %o1
	call	ee_printf, 0
	 st	%o1, [%fp-2044]
	b,a	.L30
.L12:
	mov	1, %i3
	st	%g1, [%fp-2040]
	b	.L13
	 mov	1, %g4
.L130:
	or	%g2, 242, %g2
	cmp	%g1, %g2
	be	.L39
	 sethi	%hi(19456), %g2
	or	%g2, 687, %g2
	cmp	%g1, %g2
	bne,a	.L155
	 mov	-1, %i5
	sethi	%hi(.LC3), %o0
	mov	2, %l7
	call	ee_printf, 0
	 or	%o0, %lo(.LC3), %o0
	sethi	%hi(default_num_contexts), %i0
.L139:
	ld	[%i0+%lo(default_num_contexts)], %g1
	cmp	%g1, 0
	be	.L38
	 mov	0, %i5
	mov	0, %l3
	mov	0, %i2
	or	%i0, %lo(default_num_contexts), %i5
	sethi	%hi(list_known_crc), %l2
	sethi	%hi(matrix_known_crc), %l1
	b	.L53
	 sethi	%hi(state_known_crc), %l0
.L137:
	add	%fp, %g3, %g3
	lduh	[%g3-2008], %g1
.L51:
	add	%i2, 1, %i2
	add	%g1, %l3, %g1
	sll	%i2, 16, %g3
	ld	[%i5], %g2
	srl	%g3, 16, %g3
	cmp	%g3, %g2
	bgeu	.L136
	 mov	%g1, %l3
.L53:
	sll	%i2, 16, %i3
	srl	%i3, 16, %i3
	sll	%i3, 2, %l6
	sll	%i3, 6, %l5
	add	%l6, %l5, %l4
	add	%fp, %l4, %i4
	sth	%g0, [%i4-2008]
	ld	[%i4-2040], %g1
	andcc	%g1, 1, %g0
	be	.L156
	 andcc	%g1, 2, %g0
	or	%l2, %lo(list_known_crc), %o4
	add	%l7, %l7, %o7
	lduh	[%i4-2014], %o2
	lduh	[%o4+%o7], %o3
	cmp	%o2, %o3
	be	.L48
	 mov	%i3, %o1
	sethi	%hi(.LC6), %o0
	call	ee_printf, 0
	 or	%o0, %lo(.LC6), %o0
	lduh	[%i4-2008], %o7
	ld	[%i4-2040], %g1
	add	%o7, 1, %o7
	sth	%o7, [%i4-2008]
.L48:
	andcc	%g1, 2, %g0
.L156:
	be	.L157
	 andcc	%g1, 4, %g0
	add	%fp, %l4, %i4
	or	%l1, %lo(matrix_known_crc), %o4
	add	%l7, %l7, %o7
	lduh	[%i4-2012], %o2
	lduh	[%o4+%o7], %o3
	cmp	%o2, %o3
	be	.L49
	 mov	%i3, %o1
	sethi	%hi(.LC7), %o0
	call	ee_printf, 0
	 or	%o0, %lo(.LC7), %o0
	lduh	[%i4-2008], %o7
	ld	[%i4-2040], %g1
	add	%o7, 1, %o7
	sth	%o7, [%i4-2008]
.L49:
	andcc	%g1, 4, %g0
.L157:
	be	.L137
	 add	%l6, %l5, %g3
	add	%fp, %l4, %i4
	or	%l0, %lo(state_known_crc), %g2
	add	%l7, %l7, %g1
	lduh	[%i4-2010], %o2
	lduh	[%g2+%g1], %o3
	cmp	%o2, %o3
	bne,a	.L52
	 sethi	%hi(.LC8), %o0
	lduh	[%i4-2008], %g1
	add	%i2, 1, %i2
	add	%g1, %l3, %g1
	sll	%i2, 16, %g3
	ld	[%i5], %g2
	srl	%g3, 16, %g3
	cmp	%g3, %g2
	blu	.L53
	 mov	%g1, %l3
.L136:
	b	.L38
	 mov	%g1, %i5
.L131:
	sethi	%hi(.LC4), %o0
	call	ee_printf, 0
	 or	%o0, %lo(.LC4), %o0
	b	.L139
	 sethi	%hi(default_num_contexts), %i0
.L52:
	mov	%i3, %o1
	call	ee_printf, 0
	 or	%o0, %lo(.LC8), %o0
	lduh	[%i4-2008], %g2
	add	%g2, 1, %g2
	mov	%g2, %g1
	b	.L51
	 sth	%g2, [%i4-2008]
.L134:
	call	ee_printf, 0
	 or	%o0, %lo(.LC26), %o0
	call	portable_fini, 0
	 add	%fp, -2006, %o0
	jmp	%i7+8
	 restore
.L133:
	sethi	%hi(.LC13), %o0
	call	ee_printf, 0
	 or	%o0, %lo(.LC13), %o0
	b	.L140
	 ld	[%fp-2044], %g1
.L132:
	ld	[%i0+%lo(default_num_contexts)], %i4
	mov	%i1, %o0
	call	time_in_secs, 0
	 smul	%i4, %g1, %i4
	wr	%g0, 0, %y
	nop
	nop
	nop
	udiv	%i4, %o0, %o1
	sethi	%hi(.LC12), %o0
	call	ee_printf, 0
	 or	%o0, %lo(.LC12), %o0
	b,a	.L54
.L70:
	call	ee_printf, 0
	 or	%o0, %lo(.LC28), %o0
	call	portable_fini, 0
	 add	%fp, -2006, %o0
	jmp	%i7+8
	 restore
.L42:
	mov	0, %l7
	sethi	%hi(.LC1), %o0
	call	ee_printf, 0
	 or	%o0, %lo(.LC1), %o0
	b	.L139
	 sethi	%hi(default_num_contexts), %i0
.L41:
	mov	1, %l7
	sethi	%hi(.LC2), %o0
	call	ee_printf, 0
	 or	%o0, %lo(.LC2), %o0
	b	.L139
	 sethi	%hi(default_num_contexts), %i0
.L39:
	mov	4, %l7
	sethi	%hi(.LC5), %o0
	call	ee_printf, 0
	 or	%o0, %lo(.LC5), %o0
	b	.L139
	 sethi	%hi(default_num_contexts), %i0
.L58:
	andcc	%g2, 2, %g0
	be	.L60
	 mov	0, %g1
	b	.L141
	 sll	%i3, 16, %i3
	.size	ajit_main, .-ajit_main
	.global mem_name
	.section	.rodata.str1.8
	.align 8
.LC29:
	.asciz	"Static"
	.align 8
.LC30:
	.asciz	"Heap"
	.align 8
.LC31:
	.asciz	"Stack"
	.section	".data"
	.align 4
	.type	mem_name, #object
	.size	mem_name, 12
mem_name:
	.long	.LC29
	.long	.LC30
	.long	.LC31
	.section	".rodata"
	.align 2
	.type	list_known_crc, #object
	.size	list_known_crc, 10
list_known_crc:
	.half	-11088
	.half	13120
	.half	27257
	.half	-6380
	.half	-7231
	.align 2
	.type	matrix_known_crc, #object
	.size	matrix_known_crc, 10
matrix_known_crc:
	.half	-16814
	.half	4505
	.half	22024
	.half	8151
	.half	1863
	.align 2
	.type	state_known_crc, #object
	.size	state_known_crc, 10
state_known_crc:
	.half	24135
	.half	14783
	.half	-6748
	.half	-29126
	.half	-29308
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
