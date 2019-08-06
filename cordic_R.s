	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"cordic_R.c"
	.text
	.align	2
	.global	cordic_R_fixed_point
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	cordic_R_fixed_point, %function
cordic_R_fixed_point:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:z_table
	ldr	r3, [r2]
	movt	ip, #:upper16:z_table
	push	{r4, r5, r6, r7, lr}
	ldr	r4, [r0]
	ldr	lr, [ip]
	ldr	r5, [r1]
	cmp	r3, #0
	addlt	r3, r3, lr
	subge	r3, r3, lr
	addlt	lr, r4, r5
	subge	lr, r4, r5
	sublt	r4, r5, r4
	addge	r4, r4, r5
	ldr	r7, [ip, #4]
	cmp	r3, #0
	asr	r6, r4, #1
	asr	r5, lr, #1
	sublt	r4, r4, r5
	addlt	lr, lr, r6
	subge	lr, lr, r6
	addge	r4, r4, r5
	addlt	r3, r3, r7
	subge	r3, r3, r7
	ldr	r7, [ip, #8]
	cmp	r3, #0
	asr	r6, r4, #2
	asr	r5, lr, #2
	sublt	r4, r4, r5
	addlt	lr, lr, r6
	subge	lr, lr, r6
	addge	r4, r4, r5
	addlt	r3, r3, r7
	subge	r3, r3, r7
	ldr	r7, [ip, #12]
	cmp	r3, #0
	asr	r6, r4, #3
	asr	r5, lr, #3
	sublt	r4, r4, r5
	addlt	lr, lr, r6
	subge	lr, lr, r6
	addge	r4, r4, r5
	addlt	r3, r3, r7
	subge	r3, r3, r7
	ldr	r7, [ip, #16]
	cmp	r3, #0
	asr	r6, r4, #4
	asr	r5, lr, #4
	sublt	r4, r4, r5
	addlt	lr, lr, r6
	subge	lr, lr, r6
	addge	r4, r4, r5
	addlt	r3, r3, r7
	subge	r3, r3, r7
	ldr	r7, [ip, #20]
	cmp	r3, #0
	asr	r6, r4, #5
	asr	r5, lr, #5
	sublt	r4, r4, r5
	addlt	lr, lr, r6
	subge	lr, lr, r6
	addge	r4, r4, r5
	addlt	r3, r3, r7
	subge	r3, r3, r7
	ldr	r7, [ip, #24]
	cmp	r3, #0
	asr	r6, r4, #6
	asr	r5, lr, #6
	sublt	r4, r4, r5
	addlt	lr, lr, r6
	subge	lr, lr, r6
	addge	r4, r4, r5
	addlt	r3, r3, r7
	subge	r3, r3, r7
	ldr	r7, [ip, #28]
	cmp	r3, #0
	asr	r6, r4, #7
	asr	r5, lr, #7
	sublt	r4, r4, r5
	addlt	lr, lr, r6
	subge	lr, lr, r6
	addge	r4, r4, r5
	addlt	r3, r3, r7
	subge	r3, r3, r7
	ldr	r7, [ip, #32]
	cmp	r3, #0
	asr	r6, r4, #8
	asr	r5, lr, #8
	sublt	r4, r4, r5
	addlt	lr, lr, r6
	subge	lr, lr, r6
	addge	r4, r4, r5
	addlt	r3, r3, r7
	subge	r3, r3, r7
	ldr	r7, [ip, #36]
	cmp	r3, #0
	asr	r6, r4, #9
	asr	r5, lr, #9
	sublt	r4, r4, r5
	addlt	lr, lr, r6
	subge	lr, lr, r6
	addge	r4, r4, r5
	addlt	r3, r3, r7
	subge	r3, r3, r7
	ldr	r7, [ip, #40]
	cmp	r3, #0
	asr	r6, r4, #10
	asr	r5, lr, #10
	sublt	r4, r4, r5
	addlt	lr, lr, r6
	subge	lr, lr, r6
	addge	r4, r4, r5
	addlt	r3, r3, r7
	subge	r3, r3, r7
	ldr	r7, [ip, #44]
	cmp	r3, #0
	asr	r6, r4, #11
	asr	r5, lr, #11
	sublt	r4, r4, r5
	addlt	lr, lr, r6
	subge	lr, lr, r6
	addge	r4, r4, r5
	addlt	r3, r3, r7
	subge	r3, r3, r7
	ldr	r7, [ip, #48]
	cmp	r3, #0
	asr	r6, r4, #12
	asr	r5, lr, #12
	sublt	r4, r4, r5
	addlt	lr, lr, r6
	subge	lr, lr, r6
	addge	r4, r4, r5
	addlt	r3, r3, r7
	subge	r3, r3, r7
	ldr	r7, [ip, #52]
	cmp	r3, #0
	asr	r6, r4, #13
	asr	r5, lr, #13
	sublt	r4, r4, r5
	addlt	lr, lr, r6
	subge	lr, lr, r6
	addge	r4, r4, r5
	addlt	r3, r3, r7
	subge	r3, r3, r7
	ldr	r7, [ip, #56]
	cmp	r3, #0
	asr	r6, r4, #14
	asr	r5, lr, #14
	sublt	r4, r4, r5
	addlt	lr, r6, lr
	subge	lr, lr, r6
	addge	r4, r5, r4
	ldr	r6, [ip, #60]
	addlt	r3, r7, r3
	subge	r3, r3, r7
	cmp	r3, #0
	asr	r5, r4, #15
	asr	ip, lr, #15
	addlt	r3, r3, r6
	addlt	lr, lr, r5
	sublt	r4, r4, ip
	subge	r3, r3, r6
	subge	lr, lr, r5
	addge	r4, r4, ip
	str	lr, [r0]
	str	r4, [r1]
	str	r3, [r2]
	pop	{r4, r5, r6, r7, pc}
	.size	cordic_R_fixed_point, .-cordic_R_fixed_point
	.comm	z_table,60,4
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
