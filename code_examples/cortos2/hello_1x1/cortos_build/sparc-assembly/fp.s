	.file	"fp.c"
	.section	".text"
	.align 4
	.global fp
	.type	fp, #function
	.proc	06
fp:
	add	%sp, -80, %sp
	st	%o0, [%sp+76]
	ld	[%sp+76], %f8
	st	%o1, [%sp+76]
	ld	[%sp+76], %f9
	sub	%sp, -80, %sp
	jmp	%o7+8
	 fmuls	%f8, %f9, %f0
	.size	fp, .-fp
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
