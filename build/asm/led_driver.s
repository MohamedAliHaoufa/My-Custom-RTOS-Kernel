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
	.file	"led_driver.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "bsp/Src/led_driver.c"
	.align	1
	.global	LED_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	LED_Init, %function
LED_Init:
.LFB126:
	.loc 1 27 41
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
	str	r0, [r7, #4]
	.loc 1 29 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L4
	.loc 1 30 31
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	.loc 1 30 62
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	.loc 1 30 9
	mov	r1, r3
	mov	r0, r2
	bl	MCAL_GPIO_Init
	.loc 1 32 20
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	.loc 1 32 12
	cmp	r3, #0
	bne	.L3
	.loc 1 33 39
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	.loc 1 33 67
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #6]
	.loc 1 33 13
	movs	r2, #0
	mov	r1, r3
	bl	MCAL_GPIO_WritePin
	.loc 1 42 1
	b	.L4
.L3:
	.loc 1 34 27
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	.loc 1 34 19
	cmp	r3, #1
	bne	.L4
	.loc 1 35 39
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	.loc 1 35 67
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #6]
	.loc 1 35 13
	movs	r2, #1
	mov	r1, r3
	bl	MCAL_GPIO_WritePin
.L4:
	.loc 1 42 1
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE126:
	.size	LED_Init, .-LED_Init
	.align	1
	.global	LED_TurnOn
	.syntax unified
	.thumb
	.thumb_func
	.type	LED_TurnOn, %function
LED_TurnOn:
.LFB127:
	.loc 1 52 43
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
	str	r0, [r7, #4]
	.loc 1 54 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L8
	.loc 1 55 20
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	.loc 1 55 12
	cmp	r3, #0
	bne	.L7
	.loc 1 56 39
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	.loc 1 56 67
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #6]
	.loc 1 56 13
	movs	r2, #1
	mov	r1, r3
	bl	MCAL_GPIO_WritePin
	.loc 1 65 1
	b	.L8
.L7:
	.loc 1 57 27
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	.loc 1 57 19
	cmp	r3, #1
	bne	.L8
	.loc 1 58 39
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	.loc 1 58 67
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #6]
	.loc 1 58 13
	movs	r2, #0
	mov	r1, r3
	bl	MCAL_GPIO_WritePin
.L8:
	.loc 1 65 1
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE127:
	.size	LED_TurnOn, .-LED_TurnOn
	.align	1
	.global	LED_TurnOff
	.syntax unified
	.thumb
	.thumb_func
	.type	LED_TurnOff, %function
LED_TurnOff:
.LFB128:
	.loc 1 75 44
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
	str	r0, [r7, #4]
	.loc 1 77 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L12
	.loc 1 78 20
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	.loc 1 78 12
	cmp	r3, #0
	bne	.L11
	.loc 1 79 39
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	.loc 1 79 67
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #6]
	.loc 1 79 13
	movs	r2, #0
	mov	r1, r3
	bl	MCAL_GPIO_WritePin
	.loc 1 88 1
	b	.L12
.L11:
	.loc 1 80 27
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	.loc 1 80 19
	cmp	r3, #1
	bne	.L12
	.loc 1 81 39
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	.loc 1 81 67
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #6]
	.loc 1 81 13
	movs	r2, #1
	mov	r1, r3
	bl	MCAL_GPIO_WritePin
.L12:
	.loc 1 88 1
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE128:
	.size	LED_TurnOff, .-LED_TurnOff
	.align	1
	.global	LED_Toggle
	.syntax unified
	.thumb
	.thumb_func
	.type	LED_Toggle, %function
LED_Toggle:
.LFB129:
	.loc 1 98 43
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
	str	r0, [r7, #4]
	.loc 1 100 8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L15
	.loc 1 101 36
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	.loc 1 101 64
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #6]
	.loc 1 101 9
	mov	r1, r3
	mov	r0, r2
	bl	MCAL_GPIO_TogglePin
.L15:
	.loc 1 105 1
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE129:
	.size	LED_Toggle, .-LED_Toggle
.Letext0:
	.file 2 "/opt/st/stm32cubeclt_1.16.0/GNU-tools-for-STM32/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/opt/st/stm32cubeclt_1.16.0/GNU-tools-for-STM32/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "drivers/Inc/Platform_Types.h"
	.file 5 "CMSIS/Inc/stm32f4xx.h"
	.file 6 "drivers/Inc/stm32f401xx_gpio_driver.h"
	.file 7 "bsp/Inc/led_driver.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x336
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x1d
	.4byte	.LASF51
	.4byte	.LASF52
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0xf
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
	.uleb128 0x7
	.4byte	0x92
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x71
	.uleb128 0x7
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
	.uleb128 0x10
	.byte	0x28
	.byte	0x5
	.2byte	0x5cd
	.byte	0x9
	.4byte	0x169
	.uleb128 0x4
	.4byte	.LASF20
	.2byte	0x5cf
	.4byte	0xaf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.2byte	0x5d0
	.4byte	0xaf
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF22
	.2byte	0x5d1
	.4byte	0xaf
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF23
	.2byte	0x5d2
	.4byte	0xaf
	.byte	0xc
	.uleb128 0x8
	.ascii	"IDR\000"
	.2byte	0x5d3
	.4byte	0xaf
	.byte	0x10
	.uleb128 0x8
	.ascii	"ODR\000"
	.2byte	0x5d4
	.4byte	0xaf
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF24
	.2byte	0x5d5
	.4byte	0x9e
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF25
	.2byte	0x5d6
	.4byte	0x9e
	.byte	0x1a
	.uleb128 0x4
	.4byte	.LASF26
	.2byte	0x5d7
	.4byte	0xaf
	.byte	0x1c
	.uleb128 0x8
	.ascii	"AFR\000"
	.2byte	0x5d8
	.4byte	0x179
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	0xaf
	.4byte	0x179
	.uleb128 0x12
	.4byte	0x26
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0x169
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x5d9
	.byte	0x3
	.4byte	0xe6
	.uleb128 0xd
	.byte	0x10
	.byte	0x6
	.byte	0x28
	.4byte	0x1e2
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x29
	.byte	0xb
	.4byte	0xb4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x6
	.byte	0x2b
	.byte	0xb
	.4byte	0xb4
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x6
	.byte	0x2d
	.byte	0xc
	.4byte	0xc0
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0x2f
	.byte	0xc
	.4byte	0xcc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x6
	.byte	0x30
	.byte	0xc
	.4byte	0xcc
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x6
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
	.byte	0x7
	.byte	0x1
	.4byte	0x49
	.byte	0x7
	.byte	0x25
	.byte	0xe
	.4byte	0x20f
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x7
	.byte	0x29
	.byte	0x3
	.4byte	0x1ee
	.uleb128 0xd
	.byte	0x18
	.byte	0x7
	.byte	0x30
	.4byte	0x24b
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x7
	.byte	0x31
	.byte	0x16
	.4byte	0x24b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x7
	.byte	0x32
	.byte	0x16
	.4byte	0x1e2
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x7
	.byte	0x33
	.byte	0x16
	.4byte	0x20f
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.4byte	0x17e
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x7
	.byte	0x34
	.byte	0x3
	.4byte	0x21b
	.uleb128 0x15
	.4byte	0x250
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0xfe
	.4byte	0x276
	.uleb128 0x5
	.4byte	0x24b
	.uleb128 0x5
	.4byte	0xc0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0xe6
	.4byte	0x290
	.uleb128 0x5
	.4byte	0x24b
	.uleb128 0x5
	.4byte	0xc0
	.uleb128 0x5
	.4byte	0xb4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0xb7
	.4byte	0x2a5
	.uleb128 0x5
	.4byte	0x24b
	.uleb128 0x5
	.4byte	0x2a5
	.byte	0
	.uleb128 0xa
	.4byte	0x1e2
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x62
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2cd
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x62
	.byte	0x22
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.4byte	0x25c
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x4b
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f5
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x4b
	.byte	0x23
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x34
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x318
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x34
	.byte	0x22
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x1b
	.byte	0x20
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
.LASF32:
	.ascii	"GPIO_PinOPType\000"
.LASF50:
	.ascii	"GNU C11 12.3.1 20230626 -mcpu=cortex-m4 -mthumb -mf"
	.ascii	"loat-abi=soft -march=armv7e-m -g -O0 -std=gnu11\000"
.LASF51:
	.ascii	"bsp/Src/led_driver.c\000"
.LASF48:
	.ascii	"led_cfg\000"
.LASF46:
	.ascii	"LED_Toggle\000"
.LASF47:
	.ascii	"LED_TurnOff\000"
.LASF18:
	.ascii	"float\000"
.LASF31:
	.ascii	"GPIO_PinPuPdControl\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF15:
	.ascii	"uint8\000"
.LASF41:
	.ascii	"LED_Mode\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF30:
	.ascii	"GPIO_PinNumber\000"
.LASF37:
	.ascii	"LED_Mode_max\000"
.LASF44:
	.ascii	"MCAL_GPIO_WritePin\000"
.LASF8:
	.ascii	"__uint16_t\000"
.LASF19:
	.ascii	"double\000"
.LASF35:
	.ascii	"LED_Active_High\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF16:
	.ascii	"uint16\000"
.LASF39:
	.ascii	"LED_Port\000"
.LASF17:
	.ascii	"uint32\000"
.LASF33:
	.ascii	"GPIO_PinAltFunMode\000"
.LASF40:
	.ascii	"LED_Pin\000"
.LASF27:
	.ascii	"GPIO_TypeDef\000"
.LASF12:
	.ascii	"char\000"
.LASF21:
	.ascii	"OTYPER\000"
.LASF29:
	.ascii	"GPIO_PinSpeed\000"
.LASF2:
	.ascii	"long double\000"
.LASF23:
	.ascii	"PUPDR\000"
.LASF1:
	.ascii	"long long int\000"
.LASF49:
	.ascii	"LED_TurnOn\000"
.LASF52:
	.ascii	"/home/mohamed/Downloads/test/corrected4/makefile_rt"
	.ascii	"os_proteus_half_worked\000"
.LASF45:
	.ascii	"MCAL_GPIO_Init\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF42:
	.ascii	"LED_cfg_t\000"
.LASF5:
	.ascii	"short int\000"
.LASF43:
	.ascii	"MCAL_GPIO_TogglePin\000"
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
.LASF38:
	.ascii	"LED_Mode_t\000"
.LASF3:
	.ascii	"signed char\000"
.LASF36:
	.ascii	"LED_Active_Low\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF53:
	.ascii	"LED_Init\000"
.LASF11:
	.ascii	"long long unsigned int\000"
	.ident	"GCC: (GNU Tools for STM32 12.3.rel1.20240612-1315) 12.3.1 20230626"
