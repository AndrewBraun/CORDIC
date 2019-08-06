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
	.file	"cordic_V.c"
	.text
	.align	2
	.global	cordic_V_fixed_point
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	cordic_V_fixed_point, %function
cordic_V_fixed_point:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:z_table
	push	{r4, r5, r6, r7, lr}
	ldr	r5, [r1]
	ldr	lr, [r0]
	movt	ip, #:upper16:z_table
	ldr	r4, [ip]
	cmp	r5, #0
	subge	r3, r5, lr
	addlt	r3, lr, r5
	addge	lr, lr, r5
	sublt	lr, lr, r5
	asr	r7, lr, #1
	asr	r6, r3, #1
	rsblt	r4, r4, #0
	ldr	r5, [ip, #4]
	cmp	r3, #0
	subge	r3, r3, r7
	addlt	r3, r3, r7
	addge	lr, lr, r6
	sublt	lr, lr, r6
	asr	r7, lr, #2
	asr	r6, r3, #2
	addge	r4, r4, r5
	sublt	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #8]
	subge	r3, r3, r7
	addlt	r3, r3, r7
	addge	lr, lr, r6
	sublt	lr, lr, r6
	asr	r7, lr, #3
	asr	r6, r3, #3
	addge	r4, r4, r5
	sublt	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #12]
	subge	r3, r3, r7
	addlt	r3, r3, r7
	addge	lr, lr, r6
	sublt	lr, lr, r6
	asr	r7, lr, #4
	asr	r6, r3, #4
	addge	r4, r4, r5
	sublt	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #16]
	subge	r3, r3, r7
	addlt	r3, r3, r7
	addge	lr, lr, r6
	sublt	lr, lr, r6
	asr	r7, lr, #5
	asr	r6, r3, #5
	addge	r4, r4, r5
	sublt	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #20]
	subge	r3, r3, r7
	addlt	r3, r3, r7
	addge	lr, lr, r6
	sublt	lr, lr, r6
	asr	r7, lr, #6
	asr	r6, r3, #6
	addge	r4, r4, r5
	sublt	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #24]
	subge	r3, r3, r7
	addlt	r3, r3, r7
	addge	lr, lr, r6
	sublt	lr, lr, r6
	asr	r7, lr, #7
	asr	r6, r3, #7
	addge	r4, r4, r5
	sublt	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #28]
	subge	r3, r3, r7
	addlt	r3, r3, r7
	addge	lr, lr, r6
	sublt	lr, lr, r6
	asr	r7, lr, #8
	asr	r6, r3, #8
	addge	r4, r4, r5
	sublt	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #32]
	subge	r3, r3, r7
	addlt	r3, r3, r7
	addge	lr, lr, r6
	sublt	lr, lr, r6
	asr	r7, lr, #9
	asr	r6, r3, #9
	addge	r4, r4, r5
	sublt	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #36]
	subge	r3, r3, r7
	addlt	r3, r3, r7
	addge	lr, lr, r6
	sublt	lr, lr, r6
	asr	r7, lr, #10
	asr	r6, r3, #10
	addge	r4, r4, r5
	sublt	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #40]
	subge	r3, r3, r7
	addlt	r3, r3, r7
	addge	lr, lr, r6
	sublt	lr, lr, r6
	asr	r7, lr, #11
	asr	r6, r3, #11
	addge	r4, r4, r5
	sublt	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #44]
	subge	r3, r3, r7
	addlt	r3, r3, r7
	addge	lr, lr, r6
	sublt	lr, lr, r6
	asr	r7, lr, #12
	asr	r6, r3, #12
	addge	r4, r4, r5
	sublt	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #48]
	subge	r3, r3, r7
	addlt	r3, r3, r7
	addge	lr, lr, r6
	sublt	lr, lr, r6
	asr	r7, lr, #13
	asr	r6, r3, #13
	addge	r4, r4, r5
	sublt	r4, r4, r5
	cmp	r3, #0
	ldr	r5, [ip, #52]
	subge	r3, r3, r7
	addge	lr, lr, r6
	addlt	r3, r3, r7
	sublt	lr, lr, r6
	asr	r7, r3, #14
	addge	r4, r4, r5
	sublt	r4, r4, r5
	ldr	r6, [ip, #56]
	cmp	r3, #0
	asr	r5, lr, #14
	ldr	ip, [ip, #60]
	subge	r3, r3, r5
	addge	lr, r7, lr
	addlt	r3, r5, r3
	sublt	lr, lr, r7
	asr	r5, r3, #15
	addge	r4, r6, r4
	sublt	r4, r4, r6
	cmp	r3, #0
	asr	r6, lr, #15
	subge	r3, r3, r6
	addge	lr, lr, r5
	addge	ip, r4, ip
	addlt	r3, r3, r6
	sublt	lr, lr, r5
	sublt	ip, r4, ip
	str	lr, [r0]
	str	r3, [r1]
	str	ip, [r2]
	pop	{r4, r5, r6, r7, pc}
	.size	cordic_V_fixed_point, .-cordic_V_fixed_point
	.comm	z_table,60,4
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
