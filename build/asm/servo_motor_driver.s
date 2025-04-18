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
	.file	"servo_motor_driver.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "bsp/Src/servo_motor_driver.c"
	.align	1
	.global	Servo1_Entry_Gate_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	Servo1_Entry_Gate_Init, %function
Servo1_Entry_Gate_Init:
.LFB126:
	.loc 1 26 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 28 29
	movs	r3, #8
	strh	r3, [r7, #2]	@ movhi
	.loc 1 29 24
	movs	r3, #1
	strb	r3, [r7]
	.loc 1 30 29
	movs	r3, #0
	str	r3, [r7, #8]
	.loc 1 31 34
	movs	r3, #0
	str	r3, [r7, #4]
	.loc 1 32 28
	movs	r3, #2
	strb	r3, [r7, #1]
	.loc 1 34 5
	mov	r3, r7
	mov	r1, r3
	ldr	r0, .L2
	bl	MCAL_GPIO_Init
	.loc 1 35 1
	nop
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	1073873920
	.cfi_endproc
.LFE126:
	.size	Servo1_Entry_Gate_Init, .-Servo1_Entry_Gate_Init
	.align	1
	.global	Servo1_Entry_Gate
	.syntax unified
	.thumb
	.thumb_func
	.type	Servo1_Entry_Gate, %function
Servo1_Entry_Gate:
.LFB127:
	.loc 1 48 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 1 49 7
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L5
	.loc 1 52 9
	movs	r2, #1
	movs	r1, #8
	ldr	r0, .L8
	bl	MCAL_GPIO_WritePin
	.loc 1 53 9
	mov	r0, #500
	bl	dus
	.loc 1 54 9
	movs	r2, #0
	movs	r1, #8
	ldr	r0, .L8
	bl	MCAL_GPIO_WritePin
	.loc 1 63 1
	b	.L7
.L5:
	.loc 1 56 12
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L7
	.loc 1 59 9
	movs	r2, #1
	movs	r1, #8
	ldr	r0, .L8
	bl	MCAL_GPIO_WritePin
	.loc 1 60 9
	movw	r0, #2994
	bl	dus
	.loc 1 61 9
	movs	r2, #0
	movs	r1, #8
	ldr	r0, .L8
	bl	MCAL_GPIO_WritePin
.L7:
	.loc 1 63 1
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L9:
	.align	2
.L8:
	.word	1073873920
	.cfi_endproc
.LFE127:
	.size	Servo1_Entry_Gate, .-Servo1_Entry_Gate
	.align	1
	.global	Servo2_Exit_Gate_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	Servo2_Exit_Gate_Init, %function
Servo2_Exit_Gate_Init:
.LFB128:
	.loc 1 75 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 77 29
	movs	r3, #9
	strh	r3, [r7, #2]	@ movhi
	.loc 1 78 24
	movs	r3, #1
	strb	r3, [r7]
	.loc 1 79 29
	movs	r3, #0
	str	r3, [r7, #8]
	.loc 1 80 34
	movs	r3, #0
	str	r3, [r7, #4]
	.loc 1 81 28
	movs	r3, #2
	strb	r3, [r7, #1]
	.loc 1 83 5
	mov	r3, r7
	mov	r1, r3
	ldr	r0, .L11
	bl	MCAL_GPIO_Init
	.loc 1 84 1
	nop
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L12:
	.align	2
.L11:
	.word	1073873920
	.cfi_endproc
.LFE128:
	.size	Servo2_Exit_Gate_Init, .-Servo2_Exit_Gate_Init
	.align	1
	.global	Servo2_Exit_Gate
	.syntax unified
	.thumb
	.thumb_func
	.type	Servo2_Exit_Gate, %function
Servo2_Exit_Gate:
.LFB129:
	.loc 1 97 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 1 98 7
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L14
	.loc 1 101 9
	movs	r2, #1
	movs	r1, #9
	ldr	r0, .L17
	bl	MCAL_GPIO_WritePin
	.loc 1 102 9
	mov	r0, #500
	bl	dus
	.loc 1 103 9
	movs	r2, #0
	movs	r1, #9
	ldr	r0, .L17
	bl	MCAL_GPIO_WritePin
	.loc 1 112 1
	b	.L16
.L14:
	.loc 1 105 12
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L16
	.loc 1 108 9
	movs	r2, #1
	movs	r1, #9
	ldr	r0, .L17
	bl	MCAL_GPIO_WritePin
	.loc 1 109 9
	movw	r0, #2994
	bl	dus
	.loc 1 110 9
	movs	r2, #0
	movs	r1, #9
	ldr	r0, .L17
	bl	MCAL_GPIO_WritePin
.L16:
	.loc 1 112 1
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L18:
	.align	2
.L17:
	.word	1073873920
	.cfi_endproc
.LFE129:
	.size	Servo2_Exit_Gate, .-Servo2_Exit_Gate
.Letext0:
	.file 2 "/opt/st/stm32cubeclt_1.16.0/GNU-tools-for-STM32/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/opt/st/stm32cubeclt_1.16.0/GNU-tools-for-STM32/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "drivers/Inc/Platform_Types.h"
	.file 5 "CMSIS/Inc/stm32f4xx.h"
	.file 6 "drivers/Inc/stm32f401xx_gpio_driver.h"
	.file 7 "drivers/Inc/stm32f401xx_timer_driver.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2b9
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1d
	.4byte	.LASF43
	.4byte	.LASF44
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x39
	.byte	0x19
	.4byte	0x63
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x57
	.uleb128 0x6
	.4byte	0x92
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x71
	.uleb128 0x6
	.4byte	0xa3
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x45
	.byte	0x1d
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x47
	.byte	0x1d
	.4byte	0x63
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x4a
	.byte	0x1d
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x4
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.4byte	.LASF19
	.uleb128 0xf
	.byte	0x28
	.byte	0x5
	.2byte	0x5cd
	.byte	0x9
	.4byte	0x169
	.uleb128 0x3
	.4byte	.LASF20
	.2byte	0x5cf
	.4byte	0xaf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.2byte	0x5d0
	.4byte	0xaf
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF22
	.2byte	0x5d1
	.4byte	0xaf
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF23
	.2byte	0x5d2
	.4byte	0xaf
	.byte	0xc
	.uleb128 0x7
	.ascii	"IDR\000"
	.2byte	0x5d3
	.4byte	0xaf
	.byte	0x10
	.uleb128 0x7
	.ascii	"ODR\000"
	.2byte	0x5d4
	.4byte	0xaf
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF24
	.2byte	0x5d5
	.4byte	0x9e
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF25
	.2byte	0x5d6
	.4byte	0x9e
	.byte	0x1a
	.uleb128 0x3
	.4byte	.LASF26
	.2byte	0x5d7
	.4byte	0xaf
	.byte	0x1c
	.uleb128 0x7
	.ascii	"AFR\000"
	.2byte	0x5d8
	.4byte	0x179
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	0xaf
	.4byte	0x179
	.uleb128 0x11
	.4byte	0x26
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x169
	.uleb128 0x12
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x5d9
	.byte	0x3
	.4byte	0xe6
	.uleb128 0x13
	.byte	0x10
	.byte	0x6
	.byte	0x28
	.byte	0x9
	.4byte	0x1dd
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x29
	.byte	0xb
	.4byte	0xb4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x2b
	.byte	0xb
	.4byte	0xb4
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x2d
	.byte	0xc
	.4byte	0xc0
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x2f
	.byte	0xc
	.4byte	0xcc
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x30
	.byte	0xc
	.4byte	0xcc
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x31
	.byte	0xc
	.4byte	0xcc
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x6
	.byte	0x32
	.byte	0x3
	.4byte	0x18b
	.uleb128 0x14
	.ascii	"dus\000"
	.byte	0x7
	.byte	0x6c
	.byte	0x6
	.4byte	0x1fb
	.uleb128 0x5
	.4byte	0x2d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0xe6
	.4byte	0x215
	.uleb128 0x5
	.4byte	0x215
	.uleb128 0x5
	.4byte	0xc0
	.uleb128 0x5
	.4byte	0xb4
	.byte	0
	.uleb128 0xa
	.4byte	0x17e
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0xb7
	.4byte	0x22f
	.uleb128 0x5
	.4byte	0x215
	.uleb128 0x5
	.4byte	0x22f
	.byte	0
	.uleb128 0xa
	.4byte	0x1dd
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x60
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x257
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x60
	.byte	0x1d
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x4a
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x279
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x4c
	.4byte	0x1dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x2f
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29c
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x2f
	.byte	0x1e
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x1
	.byte	0x19
	.byte	0x6
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x1b
	.4byte	0x1dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
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
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 22
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x7c
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
.LASF26:
	.ascii	"LCKR\000"
.LASF28:
	.ascii	"GPIO_MODE\000"
.LASF22:
	.ascii	"OSPEEDR\000"
.LASF20:
	.ascii	"MODER\000"
.LASF43:
	.ascii	"bsp/Src/servo_motor_driver.c\000"
.LASF32:
	.ascii	"GPIO_PinOPType\000"
.LASF38:
	.ascii	"Servo2_Exit_Gate_Init\000"
.LASF42:
	.ascii	"GNU C11 12.3.1 20230626 -mcpu=cortex-m4 -mthumb -mf"
	.ascii	"loat-abi=soft -march=armv7e-m -g -O0 -std=gnu11\000"
.LASF21:
	.ascii	"OTYPER\000"
.LASF40:
	.ascii	"Direction\000"
.LASF45:
	.ascii	"Servo1_Entry_Gate_Init\000"
.LASF39:
	.ascii	"Servo1_Entry_Gate\000"
.LASF18:
	.ascii	"float\000"
.LASF31:
	.ascii	"GPIO_PinPuPdControl\000"
.LASF41:
	.ascii	"PinCinfg\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF15:
	.ascii	"uint8\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF30:
	.ascii	"GPIO_PinNumber\000"
.LASF35:
	.ascii	"MCAL_GPIO_WritePin\000"
.LASF8:
	.ascii	"__uint16_t\000"
.LASF19:
	.ascii	"double\000"
.LASF37:
	.ascii	"Servo2_Exit_Gate\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF16:
	.ascii	"uint16\000"
.LASF17:
	.ascii	"uint32\000"
.LASF33:
	.ascii	"GPIO_PinAltFunMode\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF27:
	.ascii	"GPIO_TypeDef\000"
.LASF12:
	.ascii	"char\000"
.LASF29:
	.ascii	"GPIO_PinSpeed\000"
.LASF2:
	.ascii	"long double\000"
.LASF23:
	.ascii	"PUPDR\000"
.LASF1:
	.ascii	"long long int\000"
.LASF44:
	.ascii	"/home/mohamed/Downloads/test/corrected4/makefile_rt"
	.ascii	"os_proteus_half_worked\000"
.LASF36:
	.ascii	"MCAL_GPIO_Init\000"
.LASF5:
	.ascii	"short int\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF25:
	.ascii	"BSRRH\000"
.LASF7:
	.ascii	"long int\000"
.LASF24:
	.ascii	"BSRRL\000"
.LASF34:
	.ascii	"GPIO_PinConfig_t\000"
.LASF3:
	.ascii	"signed char\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF11:
	.ascii	"long long unsigned int\000"
	.ident	"GCC: (GNU Tools for STM32 12.3.rel1.20240612-1315) 12.3.1 20230626"
