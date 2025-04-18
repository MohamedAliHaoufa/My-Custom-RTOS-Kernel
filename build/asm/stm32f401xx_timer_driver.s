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
	.file	"stm32f401xx_timer_driver.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "drivers/Src/stm32f401xx_timer_driver.c"
	.align	1
	.global	Timer2_init
	.syntax unified
	.thumb
	.thumb_func
	.type	Timer2_init, %function
Timer2_init:
.LFB126:
	.loc 1 33 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 35 8
	ldr	r3, .L3
	ldr	r3, [r3, #64]
	ldr	r2, .L3
	.loc 1 35 18
	orr	r3, r3, #1
	str	r3, [r2, #64]
	.loc 1 38 9
	mov	r3, #1073741824
	.loc 1 38 15
	movs	r2, #7
	strh	r2, [r3, #40]	@ movhi
	.loc 1 41 9
	mov	r3, #1073741824
	.loc 1 41 15
	movw	r2, #50000
	str	r2, [r3, #44]
	.loc 1 44 9
	mov	r3, #1073741824
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	mov	r2, #1073741824
	.loc 1 44 15
	orr	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	.loc 1 47 11
	nop
.L2:
	.loc 1 47 19 discriminator 1
	mov	r3, #1073741824
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r3, r3
	.loc 1 47 25 discriminator 1
	and	r3, r3, #1
	.loc 1 47 12 discriminator 1
	cmp	r3, #0
	beq	.L2
	.loc 1 48 1
	nop
	nop
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L4:
	.align	2
.L3:
	.word	1073887232
	.cfi_endproc
.LFE126:
	.size	Timer2_init, .-Timer2_init
	.align	1
	.global	dus
	.syntax unified
	.thumb
	.thumb_func
	.type	dus, %function
dus:
.LFB127:
	.loc 1 62 1
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
	.loc 1 64 9
	mov	r3, #1073741824
	.loc 1 64 15
	movs	r2, #0
	str	r2, [r3, #36]
	.loc 1 67 11
	nop
.L6:
	.loc 1 67 16 discriminator 1
	mov	r3, #1073741824
	ldr	r2, [r3, #36]
	.loc 1 67 22 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L6
	.loc 1 68 1
	nop
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
.LFE127:
	.size	dus, .-dus
	.align	1
	.global	dms
	.syntax unified
	.thumb
	.thumb_func
	.type	dms, %function
dms:
.LFB128:
	.loc 1 81 1
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
	str	r0, [r7, #4]
	.loc 1 82 9
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 83 12
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 83 5
	b	.L8
.L9:
	.loc 1 85 9 discriminator 3
	mov	r0, #1000
	bl	dus
	.loc 1 83 26 discriminator 3
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L8:
	.loc 1 83 19 discriminator 1
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L9
	.loc 1 87 1
	nop
	nop
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE128:
	.size	dms, .-dms
.Letext0:
	.file 2 "/opt/st/stm32cubeclt_1.16.0/GNU-tools-for-STM32/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/opt/st/stm32cubeclt_1.16.0/GNU-tools-for-STM32/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "CMSIS/Inc/stm32f4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x4a1
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x1d
	.4byte	.LASF70
	.4byte	.LASF71
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x39
	.byte	0x19
	.4byte	0x63
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x57
	.uleb128 0x5
	.4byte	0x92
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x71
	.uleb128 0x5
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF16
	.uleb128 0xb
	.4byte	0xa3
	.4byte	0xd2
	.uleb128 0xc
	.4byte	0x26
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x98
	.2byte	0x66d
	.4byte	0x272
	.uleb128 0x3
	.ascii	"CR\000"
	.2byte	0x66f
	.4byte	0xaf
	.byte	0
	.uleb128 0x1
	.4byte	.LASF17
	.2byte	0x670
	.4byte	0xaf
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF18
	.2byte	0x671
	.4byte	0xaf
	.byte	0x8
	.uleb128 0x3
	.ascii	"CIR\000"
	.2byte	0x672
	.4byte	0xaf
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF19
	.2byte	0x673
	.4byte	0xaf
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF20
	.2byte	0x674
	.4byte	0xaf
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF21
	.2byte	0x675
	.4byte	0xaf
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF22
	.2byte	0x676
	.4byte	0xa3
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF23
	.2byte	0x677
	.4byte	0xaf
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF24
	.2byte	0x678
	.4byte	0xaf
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF25
	.2byte	0x679
	.4byte	0xc2
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF26
	.2byte	0x67a
	.4byte	0xaf
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF27
	.2byte	0x67b
	.4byte	0xaf
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF28
	.2byte	0x67c
	.4byte	0xaf
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF29
	.2byte	0x67d
	.4byte	0xa3
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF30
	.2byte	0x67e
	.4byte	0xaf
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF31
	.2byte	0x67f
	.4byte	0xaf
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF32
	.2byte	0x680
	.4byte	0xc2
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF33
	.2byte	0x681
	.4byte	0xaf
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF34
	.2byte	0x682
	.4byte	0xaf
	.byte	0x54
	.uleb128 0x1
	.4byte	.LASF35
	.2byte	0x683
	.4byte	0xaf
	.byte	0x58
	.uleb128 0x1
	.4byte	.LASF36
	.2byte	0x684
	.4byte	0xa3
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF37
	.2byte	0x685
	.4byte	0xaf
	.byte	0x60
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x686
	.4byte	0xaf
	.byte	0x64
	.uleb128 0x1
	.4byte	.LASF39
	.2byte	0x687
	.4byte	0xc2
	.byte	0x68
	.uleb128 0x1
	.4byte	.LASF40
	.2byte	0x688
	.4byte	0xaf
	.byte	0x70
	.uleb128 0x3
	.ascii	"CSR\000"
	.2byte	0x689
	.4byte	0xaf
	.byte	0x74
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x68a
	.4byte	0xc2
	.byte	0x78
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x68b
	.4byte	0xaf
	.byte	0x80
	.uleb128 0x1
	.4byte	.LASF43
	.2byte	0x68c
	.4byte	0xaf
	.byte	0x84
	.uleb128 0x1
	.4byte	.LASF44
	.2byte	0x68d
	.4byte	0xaf
	.byte	0x88
	.uleb128 0x1
	.4byte	.LASF45
	.2byte	0x68e
	.4byte	0xaf
	.byte	0x8c
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x68f
	.4byte	0xaf
	.byte	0x90
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x690
	.4byte	0xaf
	.byte	0x94
	.byte	0
	.uleb128 0x7
	.4byte	.LASF48
	.2byte	0x692
	.4byte	0xd2
	.uleb128 0x6
	.byte	0x54
	.2byte	0x750
	.4byte	0x434
	.uleb128 0x3
	.ascii	"CR1\000"
	.2byte	0x752
	.4byte	0x9e
	.byte	0
	.uleb128 0x1
	.4byte	.LASF22
	.2byte	0x753
	.4byte	0x92
	.byte	0x2
	.uleb128 0x3
	.ascii	"CR2\000"
	.2byte	0x754
	.4byte	0x9e
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.2byte	0x755
	.4byte	0x92
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF49
	.2byte	0x756
	.4byte	0x9e
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF29
	.2byte	0x757
	.4byte	0x92
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF50
	.2byte	0x758
	.4byte	0x9e
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF32
	.2byte	0x759
	.4byte	0x92
	.byte	0xe
	.uleb128 0x3
	.ascii	"SR\000"
	.2byte	0x75a
	.4byte	0x9e
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF36
	.2byte	0x75b
	.4byte	0x92
	.byte	0x12
	.uleb128 0x3
	.ascii	"EGR\000"
	.2byte	0x75c
	.4byte	0x9e
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF39
	.2byte	0x75d
	.4byte	0x92
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF51
	.2byte	0x75e
	.4byte	0x9e
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x75f
	.4byte	0x92
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF52
	.2byte	0x760
	.4byte	0x9e
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF53
	.2byte	0x761
	.4byte	0x92
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF54
	.2byte	0x762
	.4byte	0x9e
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF55
	.2byte	0x763
	.4byte	0x92
	.byte	0x22
	.uleb128 0x3
	.ascii	"CNT\000"
	.2byte	0x764
	.4byte	0xaf
	.byte	0x24
	.uleb128 0x3
	.ascii	"PSC\000"
	.2byte	0x765
	.4byte	0x9e
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF56
	.2byte	0x766
	.4byte	0x92
	.byte	0x2a
	.uleb128 0x3
	.ascii	"ARR\000"
	.2byte	0x767
	.4byte	0xaf
	.byte	0x2c
	.uleb128 0x3
	.ascii	"RCR\000"
	.2byte	0x768
	.4byte	0x9e
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF57
	.2byte	0x769
	.4byte	0x92
	.byte	0x32
	.uleb128 0x1
	.4byte	.LASF58
	.2byte	0x76a
	.4byte	0xaf
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF59
	.2byte	0x76b
	.4byte	0xaf
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF60
	.2byte	0x76c
	.4byte	0xaf
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF61
	.2byte	0x76d
	.4byte	0xaf
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF62
	.2byte	0x76e
	.4byte	0x9e
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x76f
	.4byte	0x92
	.byte	0x46
	.uleb128 0x3
	.ascii	"DCR\000"
	.2byte	0x770
	.4byte	0x9e
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF64
	.2byte	0x771
	.4byte	0x92
	.byte	0x4a
	.uleb128 0x1
	.4byte	.LASF65
	.2byte	0x772
	.4byte	0x9e
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF66
	.2byte	0x773
	.4byte	0x92
	.byte	0x4e
	.uleb128 0x3
	.ascii	"OR\000"
	.2byte	0x774
	.4byte	0x9e
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF67
	.2byte	0x775
	.4byte	0x92
	.byte	0x52
	.byte	0
	.uleb128 0x7
	.4byte	.LASF68
	.2byte	0x776
	.4byte	0x27d
	.uleb128 0xd
	.ascii	"dms\000"
	.byte	0x1
	.byte	0x50
	.byte	0x6
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46f
	.uleb128 0x8
	.ascii	"ms\000"
	.byte	0x50
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.ascii	"i\000"
	.byte	0x1
	.byte	0x52
	.byte	0x9
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.ascii	"dus\000"
	.byte	0x1
	.byte	0x3d
	.byte	0x6
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x492
	.uleb128 0x8
	.ascii	"us\000"
	.byte	0x3d
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
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
	.sleb128 3
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.byte	0
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
.LASF33:
	.ascii	"AHB1LPENR\000"
.LASF54:
	.ascii	"CCER\000"
.LASF23:
	.ascii	"APB1RSTR\000"
.LASF27:
	.ascii	"AHB2ENR\000"
.LASF65:
	.ascii	"DMAR\000"
.LASF51:
	.ascii	"CCMR1\000"
.LASF52:
	.ascii	"CCMR2\000"
.LASF5:
	.ascii	"short int\000"
.LASF40:
	.ascii	"BDCR\000"
.LASF46:
	.ascii	"CKGATENR\000"
.LASF43:
	.ascii	"PLLI2SCFGR\000"
.LASF2:
	.ascii	"long double\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF8:
	.ascii	"__uint16_t\000"
.LASF42:
	.ascii	"SSCGR\000"
.LASF35:
	.ascii	"AHB3LPENR\000"
.LASF18:
	.ascii	"CFGR\000"
.LASF30:
	.ascii	"APB1ENR\000"
.LASF70:
	.ascii	"drivers/Src/stm32f401xx_timer_driver.c\000"
.LASF45:
	.ascii	"DCKCFGR\000"
.LASF15:
	.ascii	"float\000"
.LASF28:
	.ascii	"AHB3ENR\000"
.LASF72:
	.ascii	"Timer2_init\000"
.LASF1:
	.ascii	"long long int\000"
.LASF58:
	.ascii	"CCR1\000"
.LASF59:
	.ascii	"CCR2\000"
.LASF60:
	.ascii	"CCR3\000"
.LASF61:
	.ascii	"CCR4\000"
.LASF48:
	.ascii	"RCC_TypeDef\000"
.LASF47:
	.ascii	"DCKCFGR2\000"
.LASF24:
	.ascii	"APB2RSTR\000"
.LASF66:
	.ascii	"RESERVED13\000"
.LASF68:
	.ascii	"TIM_TypeDef\000"
.LASF49:
	.ascii	"SMCR\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF57:
	.ascii	"RESERVED10\000"
.LASF63:
	.ascii	"RESERVED11\000"
.LASF64:
	.ascii	"RESERVED12\000"
.LASF31:
	.ascii	"APB2ENR\000"
.LASF67:
	.ascii	"RESERVED14\000"
.LASF3:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF20:
	.ascii	"AHB2RSTR\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF50:
	.ascii	"DIER\000"
.LASF17:
	.ascii	"PLLCFGR\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF37:
	.ascii	"APB1LPENR\000"
.LASF71:
	.ascii	"/home/mohamed/Downloads/test/corrected4/makefile_rt"
	.ascii	"os_proteus_half_worked\000"
.LASF12:
	.ascii	"char\000"
.LASF7:
	.ascii	"long int\000"
.LASF62:
	.ascii	"BDTR\000"
.LASF34:
	.ascii	"AHB2LPENR\000"
.LASF22:
	.ascii	"RESERVED0\000"
.LASF25:
	.ascii	"RESERVED1\000"
.LASF29:
	.ascii	"RESERVED2\000"
.LASF32:
	.ascii	"RESERVED3\000"
.LASF36:
	.ascii	"RESERVED4\000"
.LASF39:
	.ascii	"RESERVED5\000"
.LASF41:
	.ascii	"RESERVED6\000"
.LASF53:
	.ascii	"RESERVED7\000"
.LASF55:
	.ascii	"RESERVED8\000"
.LASF56:
	.ascii	"RESERVED9\000"
.LASF26:
	.ascii	"AHB1ENR\000"
.LASF69:
	.ascii	"GNU C11 12.3.1 20230626 -mcpu=cortex-m4 -mthumb -mf"
	.ascii	"loat-abi=soft -march=armv7e-m -g -O0 -std=gnu11\000"
.LASF19:
	.ascii	"AHB1RSTR\000"
.LASF16:
	.ascii	"double\000"
.LASF44:
	.ascii	"PLLSAICFGR\000"
.LASF38:
	.ascii	"APB2LPENR\000"
.LASF21:
	.ascii	"AHB3RSTR\000"
	.ident	"GCC: (GNU Tools for STM32 12.3.rel1.20240612-1315) 12.3.1 20230626"
