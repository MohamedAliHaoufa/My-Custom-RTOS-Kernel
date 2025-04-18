	.cpu cortex-m4
	.arch armv7e-m
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"rtos_fifo_queue.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "RTOS/Src/rtos_fifo_queue.c"
	.align	1
	.global	FIFO_init
	.syntax unified
	.thumb
	.thumb_func
	.type	FIFO_init, %function
FIFO_init:
.LFB126:
	.loc 1 18 84
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 20 4
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L2
	.loc 1 21 10
	movs	r3, #3
	b	.L3
.L2:
	.loc 1 23 13
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #12]
	.loc 1 24 19
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	.loc 1 24 13
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	.loc 1 25 19
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	.loc 1 25 13
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	.loc 1 26 15
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #16]
	.loc 1 27 15
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	.loc 1 29 9
	movs	r3, #0
.L3:
	.loc 1 31 1
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE126:
	.size	FIFO_init, .-FIFO_init
	.align	1
	.global	FIFO_enqueue
	.syntax unified
	.thumb
	.thumb_func
	.type	FIFO_enqueue, %function
FIFO_enqueue:
.LFB127:
	.loc 1 35 64
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 39 11
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	.loc 1 39 5
	cmp	r3, #0
	beq	.L5
	.loc 1 39 26 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	.loc 1 39 18 discriminator 1
	cmp	r3, #0
	bne	.L6
.L5:
	.loc 1 40 10
	movs	r3, #3
	b	.L7
.L6:
	.loc 1 44 11
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	.loc 1 44 25
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	.loc 1 44 5
	cmp	r2, r3
	bne	.L8
	.loc 1 44 41 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	.loc 1 44 58 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	.loc 1 44 33 discriminator 1
	cmp	r2, r3
	bne	.L8
	.loc 1 45 10
	movs	r3, #1
	b	.L7
.L8:
	.loc 1 47 8
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	.loc 1 47 15
	ldr	r2, [r7]
	str	r2, [r3]
	.loc 1 48 6
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	.loc 1 48 15
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 53 10
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	.loc 1 53 40
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #12]
	.loc 1 53 22
	mov	r1, r2
	.loc 1 53 56
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #16]
	.loc 1 53 51
	lsls	r2, r2, #2
	.loc 1 53 47
	add	r2, r2, r1
	.loc 1 53 68
	subs	r2, r2, #4
	.loc 1 53 5
	cmp	r3, r2
	bne	.L9
	.loc 1 54 20
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	.loc 1 54 14
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	b	.L10
.L9:
	.loc 1 56 7
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	.loc 1 56 13
	adds	r2, r3, #4
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
.L10:
	.loc 1 58 9
	movs	r3, #0
.L7:
	.loc 1 61 1
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE127:
	.size	FIFO_enqueue, .-FIFO_enqueue
	.align	1
	.global	FIFO_dequeue
	.syntax unified
	.thumb
	.thumb_func
	.type	FIFO_dequeue, %function
FIFO_dequeue:
.LFB128:
	.loc 1 65 66
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 67 11
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	.loc 1 67 5
	cmp	r3, #0
	beq	.L12
	.loc 1 67 26 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	.loc 1 67 18 discriminator 1
	cmp	r3, #0
	bne	.L13
.L12:
	.loc 1 68 10
	movs	r3, #3
	b	.L14
.L13:
	.loc 1 71 10
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	.loc 1 71 24
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	.loc 1 71 5
	cmp	r2, r3
	bne	.L15
	.loc 1 72 10
	movs	r3, #2
	b	.L14
.L15:
	.loc 1 76 16
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	.loc 1 76 10
	ldr	r2, [r3]
	.loc 1 76 8
	ldr	r3, [r7]
	str	r2, [r3]
	.loc 1 77 6
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	.loc 1 77 15
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 80 10
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	.loc 1 80 40
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #12]
	.loc 1 80 22
	mov	r1, r2
	.loc 1 80 56
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #16]
	.loc 1 80 51
	lsls	r2, r2, #2
	.loc 1 80 47
	add	r2, r2, r1
	.loc 1 80 68
	subs	r2, r2, #4
	.loc 1 80 5
	cmp	r3, r2
	bne	.L16
	.loc 1 81 20
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	.loc 1 81 14
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	b	.L17
.L16:
	.loc 1 83 7
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	.loc 1 83 13
	adds	r2, r3, #4
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L17:
	.loc 1 85 9
	movs	r3, #0
.L14:
	.loc 1 86 1
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE128:
	.size	FIFO_dequeue, .-FIFO_dequeue
	.align	1
	.global	FIFO_is_full
	.syntax unified
	.thumb
	.thumb_func
	.type	FIFO_is_full, %function
FIFO_is_full:
.LFB129:
	.loc 1 93 46
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 95 10
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	.loc 1 95 4
	cmp	r3, #0
	beq	.L19
	.loc 1 95 25 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	.loc 1 95 17 discriminator 1
	cmp	r3, #0
	beq	.L19
	.loc 1 95 40 discriminator 2
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	.loc 1 95 32 discriminator 2
	cmp	r3, #0
	bne	.L20
.L19:
	.loc 1 96 10
	movs	r3, #3
	b	.L21
.L20:
	.loc 1 97 9
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	.loc 1 97 26
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	.loc 1 97 4
	cmp	r2, r3
	bne	.L22
	.loc 1 98 10
	movs	r3, #1
	b	.L21
.L22:
	.loc 1 100 9
	movs	r3, #0
.L21:
	.loc 1 101 1
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE129:
	.size	FIFO_is_full, .-FIFO_is_full
	.align	1
	.global	FIFO_print
	.syntax unified
	.thumb
	.thumb_func
	.type	FIFO_print, %function
FIFO_print:
.LFB130:
	.loc 1 105 35
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 122 1
	nop
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE130:
	.size	FIFO_print, .-FIFO_print
.Letext0:
	.file 2 "RTOS/Inc/task_scheduler.h"
	.file 3 "RTOS/Inc/rtos_fifo_queue.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x317
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x1d
	.4byte	.LASF50
	.4byte	.LASF51
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	0x78
	.uleb128 0xc
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	0x2d
	.byte	0x2
	.byte	0x26
	.byte	0x6
	.4byte	0xa5
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0x2d
	.byte	0x2
	.byte	0x2d
	.byte	0x7
	.4byte	0xbe
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x2
	.byte	0x2c
	.byte	0x1
	.4byte	0xe2
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x2
	.byte	0x30
	.byte	0x4
	.4byte	0xa5
	.byte	0
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x2
	.byte	0x31
	.byte	0x10
	.4byte	0x65
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x44
	.byte	0x2
	.byte	0x1d
	.byte	0x9
	.4byte	0x16e
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x2
	.byte	0x1e
	.byte	0xf
	.4byte	0x65
	.byte	0
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x2
	.byte	0x1f
	.byte	0x10
	.4byte	0x2d
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x2
	.byte	0x20
	.byte	0x9
	.4byte	0x73
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x2
	.byte	0x21
	.byte	0x10
	.4byte	0x2d
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x2
	.byte	0x22
	.byte	0xf
	.4byte	0x65
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x2
	.byte	0x23
	.byte	0xf
	.4byte	0x65
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x2
	.byte	0x24
	.byte	0x10
	.4byte	0x16e
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x2
	.byte	0x25
	.byte	0x7
	.4byte	0x173
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x2
	.byte	0x2b
	.byte	0x3
	.4byte	0x80
	.byte	0x3a
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x2
	.byte	0x32
	.byte	0x3
	.4byte	0xbe
	.byte	0x3c
	.byte	0
	.uleb128 0x5
	.4byte	0x65
	.uleb128 0xd
	.4byte	0x79
	.4byte	0x183
	.uleb128 0xe
	.4byte	0x65
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x2
	.byte	0x33
	.4byte	0xe2
	.uleb128 0x5
	.4byte	0x183
	.uleb128 0x7
	.byte	0x14
	.byte	0x3
	.byte	0x17
	.byte	0x9
	.4byte	0x1de
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x3
	.byte	0x18
	.byte	0xf
	.4byte	0x65
	.byte	0
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x3
	.byte	0x19
	.byte	0x10
	.4byte	0x1de
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x3
	.byte	0x1a
	.byte	0x10
	.4byte	0x1de
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x3
	.byte	0x1b
	.byte	0x10
	.4byte	0x1de
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x3
	.byte	0x1c
	.byte	0x10
	.4byte	0x65
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	0x18e
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x3
	.byte	0x1d
	.4byte	0x193
	.uleb128 0x6
	.4byte	0x2d
	.byte	0x3
	.byte	0x1f
	.byte	0xd
	.4byte	0x213
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x3
	.byte	0x25
	.4byte	0x1ee
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x1
	.byte	0x69
	.byte	0x6
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x243
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x69
	.byte	0x1e
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x5
	.4byte	0x1e3
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x5d
	.4byte	0x213
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26f
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x5d
	.byte	0x29
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x41
	.4byte	0x213
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a4
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x41
	.byte	0x29
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x41
	.byte	0x3d
	.4byte	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x23
	.4byte	0x213
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d9
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x23
	.byte	0x29
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x23
	.byte	0x3b
	.4byte	0x18e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x1
	.byte	0x12
	.byte	0xf
	.4byte	0x213
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x12
	.byte	0x26
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x12
	.byte	0x39
	.4byte	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x12
	.byte	0x4d
	.4byte	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF13:
	.ascii	"Waiting\000"
.LASF12:
	.ascii	"Running\000"
.LASF26:
	.ascii	"TaskName\000"
.LASF17:
	.ascii	"Blocking\000"
.LASF44:
	.ascii	"item\000"
.LASF15:
	.ascii	"Enable\000"
.LASF11:
	.ascii	"Suspend\000"
.LASF49:
	.ascii	"GNU C11 12.3.1 20230626 -mcpu=cortex-m4 -mthumb -mf"
	.ascii	"loat-abi=soft -march=armv7e-m -g -O0 -std=gnu11\000"
.LASF50:
	.ascii	"RTOS/Src/rtos_fifo_queue.c\000"
.LASF41:
	.ascii	"fifo\000"
.LASF35:
	.ascii	"FIFO_Buf_t\000"
.LASF19:
	.ascii	"Stack_Size\000"
.LASF21:
	.ascii	"p_TaskEntry\000"
.LASF25:
	.ascii	"Current_PSP\000"
.LASF39:
	.ascii	"FIFO_NULL\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF47:
	.ascii	"FIFO_init\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF14:
	.ascii	"ready\000"
.LASF34:
	.ascii	"Task_ref\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF43:
	.ascii	"FIFO_dequeue\000"
.LASF27:
	.ascii	"TaskState\000"
.LASF48:
	.ascii	"buff\000"
.LASF29:
	.ascii	"counter\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF18:
	.ascii	"Ticks_Count\000"
.LASF2:
	.ascii	"short int\000"
.LASF42:
	.ascii	"FIFO_is_full\000"
.LASF30:
	.ascii	"head\000"
.LASF45:
	.ascii	"FIFO_enqueue\000"
.LASF32:
	.ascii	"base\000"
.LASF40:
	.ascii	"Buffer_status\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF37:
	.ascii	"FIFO_FULL\000"
.LASF10:
	.ascii	"char\000"
.LASF20:
	.ascii	"priority\000"
.LASF6:
	.ascii	"long long int\000"
.LASF36:
	.ascii	"FIFO_NO_ERROR\000"
.LASF46:
	.ascii	"FIFO_print\000"
.LASF51:
	.ascii	"/home/mohamed/Downloads/test/corrected4/makefile_rt"
	.ascii	"os_proteus_half_worked\000"
.LASF38:
	.ascii	"FIFO_EMPTY\000"
.LASF22:
	.ascii	"AutoStart\000"
.LASF16:
	.ascii	"Disable\000"
.LASF31:
	.ascii	"tail\000"
.LASF4:
	.ascii	"long int\000"
.LASF28:
	.ascii	"TimingWaiting\000"
.LASF9:
	.ascii	"long double\000"
.LASF0:
	.ascii	"signed char\000"
.LASF24:
	.ascii	"_E_PSP_Task\000"
.LASF33:
	.ascii	"length\000"
.LASF23:
	.ascii	"_S_PSP_Task\000"
	.ident	"GCC: (GNU Tools for STM32 12.3.rel1.20240612-1315) 12.3.1 20230626"
