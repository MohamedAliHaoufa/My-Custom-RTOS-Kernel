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
	.file	"eeprom_flash.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "bsp/Src/eeprom_flash.c"
	.global	buffer
	.bss
	.align	2
	.type	buffer, %object
	.size	buffer, 256
buffer:
	.space	256
	.text
	.align	1
	.global	EEPROM_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	EEPROM_Init, %function
EEPROM_Init:
.LFB126:
	.loc 1 34 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 41 44
	movs	r3, #64
	str	r3, [r7, #24]
	.loc 1 42 29
	mov	r3, #1024
	str	r3, [r7, #20]
	.loc 1 43 23
	ldr	r3, .L2
	str	r3, [r7]
	.loc 1 44 22
	movs	r3, #0
	str	r3, [r7, #8]
	.loc 1 45 36
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 1 46 29
	movs	r3, #0
	str	r3, [r7, #4]
	.loc 1 48 5
	ldr	r0, .L2+4
	bl	MCAL_I2C_Set_GPIO
	.loc 1 49 5
	mov	r3, r7
	mov	r1, r3
	ldr	r0, .L2+4
	bl	MCAL_I2C_Init
	.loc 1 50 1
	nop
	adds	r7, r7, #32
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	100000
	.word	1073763328
	.cfi_endproc
.LFE126:
	.size	EEPROM_Init, .-EEPROM_Init
	.align	1
	.global	EEPROM_Write_NBytes
	.syntax unified
	.thumb
	.thumb_func
	.type	EEPROM_Write_NBytes, %function
EEPROM_Write_NBytes:
.LFB127:
	.loc 1 64 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
	add	r7, sp, #8
	.cfi_def_cfa 7, 32
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	.loc 1 67 42
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #8
	.loc 1 67 17
	uxtb	r2, r3
	.loc 1 67 15
	ldr	r3, .L8
	strb	r2, [r3]
	.loc 1 68 17
	ldr	r3, [r7, #12]
	uxtb	r2, r3
	.loc 1 68 15
	ldr	r3, .L8
	strb	r2, [r3, #1]
	.loc 1 70 12
	movs	r3, #2
	strb	r3, [r7, #23]
	.loc 1 70 5
	b	.L5
.L6:
	.loc 1 72 26 discriminator 3
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	subs	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r2, r2, r3
	.loc 1 72 15 discriminator 3
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	.loc 1 72 26 discriminator 3
	ldrb	r1, [r2]	@ zero_extendqisi2
	.loc 1 72 19 discriminator 3
	ldr	r2, .L8
	strb	r1, [r2, r3]
	.loc 1 70 41 discriminator 3
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #23]
.L5:
	.loc 1 70 19 discriminator 1
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	adds	r2, r3, #1
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r2, r3
	bge	.L6
	.loc 1 75 72
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	adds	r3, r3, #2
	.loc 1 75 5
	mov	r2, r3
	movs	r3, #0
	str	r3, [sp, #4]
	movs	r3, #0
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, .L8
	movs	r1, #80
	ldr	r0, .L8+4
	bl	MCAL_I2C_Master_Tx
	.loc 1 77 12
	movs	r3, #0
	.loc 1 78 1
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L9:
	.align	2
.L8:
	.word	buffer
	.word	1073763328
	.cfi_endproc
.LFE127:
	.size	EEPROM_Write_NBytes, .-EEPROM_Write_NBytes
	.align	1
	.global	EEPROM_Read_byte
	.syntax unified
	.thumb
	.thumb_func
	.type	EEPROM_Read_byte, %function
EEPROM_Read_byte:
.LFB128:
	.loc 1 92 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #8
	.cfi_def_cfa 7, 24
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	.loc 1 93 42
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #8
	.loc 1 93 17
	uxtb	r2, r3
	.loc 1 93 15
	ldr	r3, .L12
	strb	r2, [r3]
	.loc 1 94 17
	ldr	r3, [r7, #12]
	uxtb	r2, r3
	.loc 1 94 15
	ldr	r3, .L12
	strb	r2, [r3, #1]
	.loc 1 96 5
	movs	r3, #0
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp]
	movs	r3, #2
	ldr	r2, .L12
	movs	r1, #80
	ldr	r0, .L12+4
	bl	MCAL_I2C_Master_Tx
	.loc 1 97 5
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #1
	str	r2, [sp, #4]
	movs	r2, #0
	str	r2, [sp]
	ldr	r2, [r7, #8]
	movs	r1, #80
	ldr	r0, .L12+4
	bl	MCAL_I2C_Master_Rx
	.loc 1 99 12
	movs	r3, #0
	.loc 1 100 1
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L13:
	.align	2
.L12:
	.word	buffer
	.word	1073763328
	.cfi_endproc
.LFE128:
	.size	EEPROM_Read_byte, .-EEPROM_Read_byte
.Letext0:
	.file 2 "/opt/st/stm32cubeclt_1.16.0/GNU-tools-for-STM32/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/opt/st/stm32cubeclt_1.16.0/GNU-tools-for-STM32/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "CMSIS/Inc/stm32f4xx.h"
	.file 5 "drivers/Inc/stm32f401xx_i2c_driver.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x46e
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x1d
	.4byte	.LASF71
	.4byte	.LASF72
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x55
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x39
	.byte	0x19
	.4byte	0x6f
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x89
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x9
	.4byte	0x55
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x49
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x63
	.uleb128 0xf
	.4byte	0xaf
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x7d
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x10
	.byte	0x28
	.byte	0x4
	.2byte	0x5f6
	.byte	0x9
	.4byte	0x1d4
	.uleb128 0x7
	.ascii	"CR1\000"
	.2byte	0x5f8
	.4byte	0xbb
	.byte	0
	.uleb128 0x2
	.4byte	.LASF19
	.2byte	0x5f9
	.4byte	0xaf
	.byte	0x2
	.uleb128 0x7
	.ascii	"CR2\000"
	.2byte	0x5fa
	.4byte	0xbb
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF20
	.2byte	0x5fb
	.4byte	0xaf
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF21
	.2byte	0x5fc
	.4byte	0xbb
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF22
	.2byte	0x5fd
	.4byte	0xaf
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF23
	.2byte	0x5fe
	.4byte	0xbb
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF24
	.2byte	0x5ff
	.4byte	0xaf
	.byte	0xe
	.uleb128 0x7
	.ascii	"DR\000"
	.2byte	0x600
	.4byte	0xbb
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF25
	.2byte	0x601
	.4byte	0xaf
	.byte	0x12
	.uleb128 0x7
	.ascii	"SR1\000"
	.2byte	0x602
	.4byte	0xbb
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF26
	.2byte	0x603
	.4byte	0xaf
	.byte	0x16
	.uleb128 0x7
	.ascii	"SR2\000"
	.2byte	0x604
	.4byte	0xbb
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF27
	.2byte	0x605
	.4byte	0xaf
	.byte	0x1a
	.uleb128 0x7
	.ascii	"CCR\000"
	.2byte	0x606
	.4byte	0xbb
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF28
	.2byte	0x607
	.4byte	0xaf
	.byte	0x1e
	.uleb128 0x2
	.4byte	.LASF29
	.2byte	0x608
	.4byte	0xbb
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF30
	.2byte	0x609
	.4byte	0xaf
	.byte	0x22
	.uleb128 0x2
	.4byte	.LASF31
	.2byte	0x60a
	.4byte	0xbb
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF32
	.2byte	0x60b
	.4byte	0xaf
	.byte	0x26
	.byte	0
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x60c
	.byte	0x3
	.4byte	0xda
	.uleb128 0x12
	.4byte	.LASF73
	.byte	0x8
	.byte	0x5
	.byte	0x26
	.byte	0x8
	.4byte	0x21f
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x28
	.byte	0xe
	.4byte	0xaf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x29
	.byte	0xe
	.4byte	0xaf
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x2a
	.byte	0xe
	.4byte	0xaf
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x2b
	.byte	0xe
	.4byte	0xaf
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.4byte	0x55
	.byte	0x32
	.4byte	0x248
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF43
	.byte	0x5
	.byte	0x38
	.byte	0x3
	.4byte	0x21f
	.uleb128 0x13
	.byte	0x20
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.4byte	0x2b2
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x3f
	.byte	0xe
	.4byte	0xc0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x40
	.byte	0xe
	.4byte	0xc0
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x41
	.byte	0xe
	.4byte	0xc0
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x42
	.byte	0x20
	.4byte	0x1e1
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x43
	.byte	0xe
	.4byte	0xc0
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x44
	.byte	0xe
	.4byte	0xc0
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x45
	.byte	0xc
	.4byte	0x2bd
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.4byte	0x2bd
	.uleb128 0x1
	.4byte	0x248
	.byte	0
	.uleb128 0x9
	.4byte	0x2b2
	.uleb128 0x5
	.4byte	.LASF51
	.byte	0x5
	.byte	0x46
	.byte	0x3
	.4byte	0x254
	.uleb128 0xb
	.4byte	0x55
	.byte	0x4c
	.4byte	0x2e5
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF54
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.4byte	0x2ce
	.uleb128 0xb
	.4byte	0x55
	.byte	0x55
	.4byte	0x308
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF57
	.byte	0x5
	.byte	0x58
	.byte	0x3
	.4byte	0x2f1
	.uleb128 0x15
	.4byte	0xa3
	.4byte	0x324
	.uleb128 0x16
	.4byte	0x26
	.byte	0xff
	.byte	0
	.uleb128 0x17
	.4byte	.LASF74
	.byte	0x1
	.byte	0x12
	.byte	0x9
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	buffer
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0xed
	.4byte	0x35f
	.uleb128 0x1
	.4byte	0x35f
	.uleb128 0x1
	.4byte	0xaf
	.uleb128 0x1
	.4byte	0x364
	.uleb128 0x1
	.4byte	0xc0
	.uleb128 0x1
	.4byte	0x2e5
	.uleb128 0x1
	.4byte	0x308
	.byte	0
	.uleb128 0x9
	.4byte	0x1d4
	.uleb128 0x9
	.4byte	0xa3
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0xdf
	.4byte	0x392
	.uleb128 0x1
	.4byte	0x35f
	.uleb128 0x1
	.4byte	0xaf
	.uleb128 0x1
	.4byte	0x364
	.uleb128 0x1
	.4byte	0xc0
	.uleb128 0x1
	.4byte	0x2e5
	.uleb128 0x1
	.4byte	0x308
	.byte	0
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0xbf
	.4byte	0x3a7
	.uleb128 0x1
	.4byte	0x35f
	.uleb128 0x1
	.4byte	0x3a7
	.byte	0
	.uleb128 0x9
	.4byte	0x2c2
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0xd1
	.4byte	0x3bc
	.uleb128 0x1
	.4byte	0x35f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x5b
	.4byte	0x55
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ff
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x5b
	.byte	0x2d
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x5b
	.byte	0x46
	.4byte	0x364
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x5b
	.byte	0x57
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x3f
	.4byte	0x55
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44f
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x3f
	.byte	0x30
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x3f
	.byte	0x4f
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x3f
	.byte	0x5e
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x18
	.ascii	"i\000"
	.byte	0x1
	.byte	0x41
	.byte	0xd
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x19
	.4byte	.LASF75
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.4byte	.LASF69
	.byte	0x1
	.byte	0x27
	.byte	0x14
	.4byte	0x2c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0xb
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
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
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
.LASF43:
	.ascii	"Slave_State\000"
.LASF54:
	.ascii	"StopCondition\000"
.LASF65:
	.ascii	"EEPROM_Read_byte\000"
.LASF48:
	.ascii	"I2C_Ack_Conrtol\000"
.LASF38:
	.ascii	"I2C_EV_Stop\000"
.LASF75:
	.ascii	"EEPROM_Init\000"
.LASF5:
	.ascii	"short int\000"
.LASF41:
	.ascii	"I2C_Ev_Data_Req\000"
.LASF73:
	.ascii	"S_I2C_Slave_address\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF66:
	.ascii	"EEPROM_Write_NBytes\000"
.LASF63:
	.ascii	"dataout\000"
.LASF7:
	.ascii	"__uint16_t\000"
.LASF61:
	.ascii	"MCAL_I2C_Set_GPIO\000"
.LASF50:
	.ascii	"P_Slave_Event_CallBack\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF47:
	.ascii	"I2C_Slave_address\000"
.LASF59:
	.ascii	"MCAL_I2C_Master_Tx\000"
.LASF17:
	.ascii	"float\000"
.LASF72:
	.ascii	"/home/mohamed/Downloads/test/corrected4/makefile_rt"
	.ascii	"os_proteus_half_worked\000"
.LASF64:
	.ascii	"datalen\000"
.LASF1:
	.ascii	"long long int\000"
.LASF34:
	.ascii	"Enable_Dual_Address\000"
.LASF67:
	.ascii	"bytes\000"
.LASF6:
	.ascii	"__uint8_t\000"
.LASF60:
	.ascii	"MCAL_I2C_Init\000"
.LASF51:
	.ascii	"S_I2C_Config_t\000"
.LASF33:
	.ascii	"I2C_TypeDef\000"
.LASF68:
	.ascii	"Data_Length\000"
.LASF31:
	.ascii	"FLTR\000"
.LASF46:
	.ascii	"I2C_Mode\000"
.LASF2:
	.ascii	"long double\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF3:
	.ascii	"signed char\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF53:
	.ascii	"WithoutStop\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF40:
	.ascii	"I2C_Ev_Address_Matched\000"
.LASF37:
	.ascii	"I2C_Addressing_Mode\000"
.LASF62:
	.ascii	"Memory_address\000"
.LASF13:
	.ascii	"char\000"
.LASF9:
	.ascii	"long int\000"
.LASF39:
	.ascii	"I2C_Error_AF\000"
.LASF42:
	.ascii	"I2C_Ev_Data_RCV\000"
.LASF69:
	.ascii	"I2C1CFG\000"
.LASF21:
	.ascii	"OAR1\000"
.LASF23:
	.ascii	"OAR2\000"
.LASF35:
	.ascii	"PrimaryAddress\000"
.LASF58:
	.ascii	"MCAL_I2C_Master_Rx\000"
.LASF74:
	.ascii	"buffer\000"
.LASF19:
	.ascii	"RESERVED0\000"
.LASF20:
	.ascii	"RESERVED1\000"
.LASF22:
	.ascii	"RESERVED2\000"
.LASF24:
	.ascii	"RESERVED3\000"
.LASF25:
	.ascii	"RESERVED4\000"
.LASF26:
	.ascii	"RESERVED5\000"
.LASF27:
	.ascii	"RESERVED6\000"
.LASF28:
	.ascii	"RESERVED7\000"
.LASF30:
	.ascii	"RESERVED8\000"
.LASF32:
	.ascii	"RESERVED9\000"
.LASF70:
	.ascii	"GNU C11 12.3.1 20230626 -mcpu=cortex-m4 -mthumb -mf"
	.ascii	"loat-abi=soft -march=armv7e-m -g -O0 -std=gnu11\000"
.LASF55:
	.ascii	"Start\000"
.LASF45:
	.ascii	"I2C_stretchmode\000"
.LASF56:
	.ascii	"Repeated\000"
.LASF52:
	.ascii	"WithStop\000"
.LASF71:
	.ascii	"bsp/Src/eeprom_flash.c\000"
.LASF18:
	.ascii	"double\000"
.LASF29:
	.ascii	"TRISE\000"
.LASF44:
	.ascii	"I2C_Speed\000"
.LASF36:
	.ascii	"SecondaryAddress\000"
.LASF57:
	.ascii	"Repeated_Start\000"
.LASF49:
	.ascii	"General_Call_Address_Detection\000"
	.ident	"GCC: (GNU Tools for STM32 12.3.rel1.20240612-1315) 12.3.1 20230626"
