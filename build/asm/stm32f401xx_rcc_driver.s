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
	.file	"stm32f401xx_rcc_driver.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "drivers/Src/stm32f401xx_rcc_driver.c"
	.global	AHB_PreScaler
	.data
	.align	2
	.type	AHB_PreScaler, %object
	.size	AHB_PreScaler, 16
AHB_PreScaler:
	.short	2
	.short	4
	.short	8
	.short	16
	.short	64
	.short	128
	.short	256
	.short	512
	.global	APB1_PreScaler
	.align	2
	.type	APB1_PreScaler, %object
	.size	APB1_PreScaler, 4
APB1_PreScaler:
	.ascii	"\002\004\010\020"
	.section	.rodata
	.align	2
	.type	AHBPrescTable, %object
	.size	AHBPrescTable, 16
AHBPrescTable:
	.ascii	"\000\000\000\000\000\000\000\000\001\002\003\004\006"
	.ascii	"\007\010\011"
	.text
	.align	1
	.global	MCAL_RCC_Select_Clock
	.syntax unified
	.thumb
	.thumb_func
	.type	MCAL_RCC_Select_Clock, %function
MCAL_RCC_Select_Clock:
.LFB126:
	.loc 1 47 40
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
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 1 48 5
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L11
	cmp	r3, #2
	bgt	.L12
	cmp	r3, #0
	beq	.L4
	cmp	r3, #1
	beq	.L5
	.loc 1 69 31
	b	.L12
.L4:
	.loc 1 50 12
	ldr	r3, .L14
	ldr	r3, [r3]
	ldr	r2, .L14
	.loc 1 50 17
	orr	r3, r3, #1
	str	r3, [r2]
	.loc 1 51 14
	nop
.L6:
	.loc 1 51 21 discriminator 1
	ldr	r3, .L14
	ldr	r3, [r3]
	.loc 1 51 15 discriminator 1
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L6
	.loc 1 52 12
	ldr	r3, .L14
	ldr	r3, [r3, #8]
	ldr	r2, .L14
	.loc 1 52 19
	bic	r3, r3, #3
	str	r3, [r2, #8]
	.loc 1 53 14
	nop
.L7:
	.loc 1 53 28 discriminator 1
	ldr	r3, .L14
	ldr	r3, [r3, #8]
	.loc 1 53 35 discriminator 1
	lsrs	r3, r3, #2
	.loc 1 53 41 discriminator 1
	and	r3, r3, #3
	.loc 1 53 20 discriminator 1
	cmp	r3, #0
	bne	.L7
	.loc 1 54 12
	ldr	r3, .L14
	ldr	r3, [r3]
	ldr	r2, .L14
	.loc 1 54 17
	bic	r3, r3, #65536
	str	r3, [r2]
	.loc 1 55 12
	ldr	r3, .L14
	ldr	r3, [r3]
	ldr	r2, .L14
	.loc 1 55 17
	bic	r3, r3, #16777216
	str	r3, [r2]
	.loc 1 56 9
	b	.L8
.L5:
	.loc 1 58 12
	ldr	r3, .L14
	ldr	r3, [r3]
	ldr	r2, .L14
	.loc 1 58 17
	orr	r3, r3, #65536
	str	r3, [r2]
	.loc 1 59 14
	nop
.L9:
	.loc 1 59 21 discriminator 1
	ldr	r3, .L14
	ldr	r3, [r3]
	.loc 1 59 15 discriminator 1
	and	r3, r3, #131072
	cmp	r3, #0
	beq	.L9
	.loc 1 60 12
	ldr	r3, .L14
	ldr	r3, [r3, #8]
	ldr	r2, .L14
	.loc 1 60 19
	bic	r3, r3, #3
	str	r3, [r2, #8]
	.loc 1 61 12
	ldr	r3, .L14
	ldr	r3, [r3, #8]
	ldr	r2, .L14
	.loc 1 61 19
	orr	r3, r3, #1
	str	r3, [r2, #8]
	.loc 1 62 14
	nop
.L10:
	.loc 1 62 28 discriminator 1
	ldr	r3, .L14
	ldr	r3, [r3, #8]
	.loc 1 62 35 discriminator 1
	lsrs	r3, r3, #2
	.loc 1 62 41 discriminator 1
	and	r3, r3, #3
	.loc 1 62 20 discriminator 1
	cmp	r3, #1
	bne	.L10
	.loc 1 63 12
	ldr	r3, .L14
	ldr	r3, [r3]
	ldr	r2, .L14
	.loc 1 63 17
	bic	r3, r3, #1
	str	r3, [r2]
	.loc 1 64 12
	ldr	r3, .L14
	ldr	r3, [r3]
	ldr	r2, .L14
	.loc 1 64 17
	bic	r3, r3, #16777216
	str	r3, [r2]
	.loc 1 65 9
	b	.L8
.L11:
	.loc 1 68 9
	nop
	b	.L13
.L12:
	.loc 1 69 31
	nop
.L8:
.L13:
	.loc 1 71 1
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
.L15:
	.align	2
.L14:
	.word	1073887232
	.cfi_endproc
.LFE126:
	.size	MCAL_RCC_Select_Clock, .-MCAL_RCC_Select_Clock
	.align	1
	.global	MCAL_RCC_Enable_Peripheral
	.syntax unified
	.thumb
	.thumb_func
	.type	MCAL_RCC_Enable_Peripheral, %function
MCAL_RCC_Enable_Peripheral:
.LFB127:
	.loc 1 82 50
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
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 1 83 5
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #17
	bhi	.L35
	adr	r2, .L19
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L19:
	.word	.L33+1
	.word	.L32+1
	.word	.L31+1
	.word	.L30+1
	.word	.L29+1
	.word	.L35+1
	.word	.L35+1
	.word	.L35+1
	.word	.L28+1
	.word	.L27+1
	.word	.L26+1
	.word	.L25+1
	.word	.L24+1
	.word	.L23+1
	.word	.L22+1
	.word	.L21+1
	.word	.L20+1
	.word	.L18+1
	.p2align 1
.L33:
	.loc 1 84 25
	ldr	r3, .L36
	ldr	r3, [r3, #48]
	ldr	r2, .L36
	.loc 1 84 35
	orr	r3, r3, #1
	str	r3, [r2, #48]
	.loc 1 84 47
	b	.L34
.L32:
	.loc 1 85 25
	ldr	r3, .L36
	ldr	r3, [r3, #48]
	ldr	r2, .L36
	.loc 1 85 35
	orr	r3, r3, #2
	str	r3, [r2, #48]
	.loc 1 85 47
	b	.L34
.L31:
	.loc 1 86 25
	ldr	r3, .L36
	ldr	r3, [r3, #48]
	ldr	r2, .L36
	.loc 1 86 35
	orr	r3, r3, #4
	str	r3, [r2, #48]
	.loc 1 86 47
	b	.L34
.L30:
	.loc 1 87 25
	ldr	r3, .L36
	ldr	r3, [r3, #48]
	ldr	r2, .L36
	.loc 1 87 35
	orr	r3, r3, #8
	str	r3, [r2, #48]
	.loc 1 87 47
	b	.L34
.L29:
	.loc 1 88 25
	ldr	r3, .L36
	ldr	r3, [r3, #48]
	ldr	r2, .L36
	.loc 1 88 35
	orr	r3, r3, #16
	str	r3, [r2, #48]
	.loc 1 88 47
	b	.L34
.L28:
	.loc 1 89 25
	ldr	r3, .L36
	ldr	r3, [r3, #68]
	ldr	r2, .L36
	.loc 1 89 35
	orr	r3, r3, #16
	str	r3, [r2, #68]
	.loc 1 89 47
	b	.L34
.L27:
	.loc 1 90 25
	ldr	r3, .L36
	ldr	r3, [r3, #64]
	ldr	r2, .L36
	.loc 1 90 35
	orr	r3, r3, #131072
	str	r3, [r2, #64]
	.loc 1 90 47
	b	.L34
.L26:
	.loc 1 91 25
	ldr	r3, .L36
	ldr	r3, [r3, #68]
	ldr	r2, .L36
	.loc 1 91 35
	orr	r3, r3, #32
	str	r3, [r2, #68]
	.loc 1 91 47
	b	.L34
.L25:
	.loc 1 92 25
	ldr	r3, .L36
	ldr	r3, [r3, #68]
	ldr	r2, .L36
	.loc 1 92 35
	orr	r3, r3, #4096
	str	r3, [r2, #68]
	.loc 1 92 47
	b	.L34
.L24:
	.loc 1 93 25
	ldr	r3, .L36
	ldr	r3, [r3, #64]
	ldr	r2, .L36
	.loc 1 93 35
	orr	r3, r3, #16384
	str	r3, [r2, #64]
	.loc 1 93 47
	b	.L34
.L23:
	.loc 1 94 25
	ldr	r3, .L36
	ldr	r3, [r3, #64]
	ldr	r2, .L36
	.loc 1 94 35
	orr	r3, r3, #2097152
	str	r3, [r2, #64]
	.loc 1 94 47
	b	.L34
.L22:
	.loc 1 95 25
	ldr	r3, .L36
	ldr	r3, [r3, #64]
	ldr	r2, .L36
	.loc 1 95 35
	orr	r3, r3, #4194304
	str	r3, [r2, #64]
	.loc 1 95 47
	b	.L34
.L21:
	.loc 1 96 25
	ldr	r3, .L36
	ldr	r3, [r3, #48]
	ldr	r2, .L36
	.loc 1 96 35
	orr	r3, r3, #4096
	str	r3, [r2, #48]
	.loc 1 96 47
	b	.L34
.L20:
	.loc 1 97 25
	ldr	r3, .L36
	ldr	r3, [r3, #64]
	ldr	r2, .L36
	.loc 1 97 35
	orr	r3, r3, #1
	str	r3, [r2, #64]
	.loc 1 97 47
	b	.L34
.L18:
	.loc 1 98 25
	ldr	r3, .L36
	ldr	r3, [r3, #68]
	ldr	r2, .L36
	.loc 1 98 35
	orr	r3, r3, #16384
	str	r3, [r2, #68]
	.loc 1 98 47
	b	.L34
.L35:
	.loc 1 99 31
	nop
.L34:
	.loc 1 101 1
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
.L37:
	.align	2
.L36:
	.word	1073887232
	.cfi_endproc
.LFE127:
	.size	MCAL_RCC_Enable_Peripheral, .-MCAL_RCC_Enable_Peripheral
	.align	1
	.global	MCAL_RCC_Reset_Peripheral
	.syntax unified
	.thumb
	.thumb_func
	.type	MCAL_RCC_Reset_Peripheral, %function
MCAL_RCC_Reset_Peripheral:
.LFB128:
	.loc 1 112 49
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
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 1 113 5
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #17
	bhi	.L57
	adr	r2, .L41
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L41:
	.word	.L55+1
	.word	.L54+1
	.word	.L53+1
	.word	.L52+1
	.word	.L51+1
	.word	.L57+1
	.word	.L57+1
	.word	.L57+1
	.word	.L50+1
	.word	.L49+1
	.word	.L48+1
	.word	.L47+1
	.word	.L46+1
	.word	.L45+1
	.word	.L44+1
	.word	.L43+1
	.word	.L42+1
	.word	.L40+1
	.p2align 1
.L55:
	.loc 1 114 25
	ldr	r3, .L58
	ldr	r3, [r3, #16]
	ldr	r2, .L58
	.loc 1 114 36
	orr	r3, r3, #1
	str	r3, [r2, #16]
	.loc 1 114 48
	b	.L56
.L54:
	.loc 1 115 25
	ldr	r3, .L58
	ldr	r3, [r3, #16]
	ldr	r2, .L58
	.loc 1 115 36
	orr	r3, r3, #2
	str	r3, [r2, #16]
	.loc 1 115 48
	b	.L56
.L53:
	.loc 1 116 25
	ldr	r3, .L58
	ldr	r3, [r3, #16]
	ldr	r2, .L58
	.loc 1 116 36
	orr	r3, r3, #4
	str	r3, [r2, #16]
	.loc 1 116 48
	b	.L56
.L52:
	.loc 1 117 25
	ldr	r3, .L58
	ldr	r3, [r3, #16]
	ldr	r2, .L58
	.loc 1 117 36
	orr	r3, r3, #8
	str	r3, [r2, #16]
	.loc 1 117 48
	b	.L56
.L51:
	.loc 1 118 25
	ldr	r3, .L58
	ldr	r3, [r3, #16]
	ldr	r2, .L58
	.loc 1 118 36
	orr	r3, r3, #16
	str	r3, [r2, #16]
	.loc 1 118 48
	b	.L56
.L50:
	.loc 1 119 25
	ldr	r3, .L58
	ldr	r3, [r3, #36]
	ldr	r2, .L58
	.loc 1 119 36
	orr	r3, r3, #16
	str	r3, [r2, #36]
	.loc 1 119 48
	b	.L56
.L49:
	.loc 1 120 25
	ldr	r3, .L58
	ldr	r3, [r3, #32]
	ldr	r2, .L58
	.loc 1 120 36
	orr	r3, r3, #131072
	str	r3, [r2, #32]
	.loc 1 120 48
	b	.L56
.L48:
	.loc 1 121 25
	ldr	r3, .L58
	ldr	r3, [r3, #36]
	ldr	r2, .L58
	.loc 1 121 36
	orr	r3, r3, #32
	str	r3, [r2, #36]
	.loc 1 121 48
	b	.L56
.L47:
	.loc 1 122 25
	ldr	r3, .L58
	ldr	r3, [r3, #36]
	ldr	r2, .L58
	.loc 1 122 36
	orr	r3, r3, #4096
	str	r3, [r2, #36]
	.loc 1 122 48
	b	.L56
.L46:
	.loc 1 123 25
	ldr	r3, .L58
	ldr	r3, [r3, #32]
	ldr	r2, .L58
	.loc 1 123 36
	orr	r3, r3, #16384
	str	r3, [r2, #32]
	.loc 1 123 48
	b	.L56
.L45:
	.loc 1 124 25
	ldr	r3, .L58
	ldr	r3, [r3, #32]
	ldr	r2, .L58
	.loc 1 124 36
	orr	r3, r3, #2097152
	str	r3, [r2, #32]
	.loc 1 124 48
	b	.L56
.L44:
	.loc 1 125 25
	ldr	r3, .L58
	ldr	r3, [r3, #32]
	ldr	r2, .L58
	.loc 1 125 36
	orr	r3, r3, #4194304
	str	r3, [r2, #32]
	.loc 1 125 48
	b	.L56
.L43:
	.loc 1 126 25
	ldr	r3, .L58
	ldr	r3, [r3, #16]
	ldr	r2, .L58
	.loc 1 126 36
	orr	r3, r3, #4096
	str	r3, [r2, #16]
	.loc 1 126 48
	b	.L56
.L42:
	.loc 1 127 25
	ldr	r3, .L58
	ldr	r3, [r3, #32]
	ldr	r2, .L58
	.loc 1 127 36
	orr	r3, r3, #1
	str	r3, [r2, #32]
	.loc 1 127 48
	b	.L56
.L40:
	.loc 1 128 25
	ldr	r3, .L58
	ldr	r3, [r3, #36]
	ldr	r2, .L58
	.loc 1 128 36
	orr	r3, r3, #16384
	str	r3, [r2, #36]
	.loc 1 128 48
	b	.L56
.L57:
	.loc 1 129 31
	nop
.L56:
	.loc 1 131 1
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
.L59:
	.align	2
.L58:
	.word	1073887232
	.cfi_endproc
.LFE128:
	.size	MCAL_RCC_Reset_Peripheral, .-MCAL_RCC_Reset_Peripheral
	.align	1
	.global	MCAL_RCC_GetSYS_CLKFreq
	.syntax unified
	.thumb
	.thumb_func
	.type	MCAL_RCC_GetSYS_CLKFreq, %function
MCAL_RCC_GetSYS_CLKFreq:
.LFB129:
	.loc 1 142 37
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
	.loc 1 144 16
	ldr	r3, .L67
	ldr	r3, [r3, #8]
	.loc 1 144 23
	lsrs	r3, r3, #2
	.loc 1 144 28
	and	r3, r3, #3
	.loc 1 144 5
	cmp	r3, #2
	beq	.L61
	cmp	r3, #2
	bhi	.L62
	cmp	r3, #0
	beq	.L63
	cmp	r3, #1
	beq	.L64
	b	.L62
.L63:
	.loc 1 146 17
	ldr	r3, .L67+4
	str	r3, [r7, #4]
	.loc 1 147 9
	b	.L65
.L64:
	.loc 1 149 17
	ldr	r3, .L67+8
	str	r3, [r7, #4]
	.loc 1 150 9
	b	.L65
.L61:
	.loc 1 153 19
	bl	RCC_GetPLLOutputClock
	str	r0, [r7, #4]
	.loc 1 154 9
	b	.L65
.L62:
	.loc 1 155 22
	movs	r3, #0
	str	r3, [r7, #4]
	.loc 1 155 27
	nop
.L65:
	.loc 1 157 12
	ldr	r3, [r7, #4]
	.loc 1 158 1
	mov	r0, r3
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L68:
	.align	2
.L67:
	.word	1073887232
	.word	16000000
	.word	25000000
	.cfi_endproc
.LFE129:
	.size	MCAL_RCC_GetSYS_CLKFreq, .-MCAL_RCC_GetSYS_CLKFreq
	.align	1
	.global	MCAL_RCC_GetHCLKFreq
	.syntax unified
	.thumb
	.thumb_func
	.type	MCAL_RCC_GetHCLKFreq, %function
MCAL_RCC_GetHCLKFreq:
.LFB130:
	.loc 1 169 34
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 170 13
	bl	MCAL_RCC_GetSYS_CLKFreq
	mov	r2, r0
	.loc 1 170 61
	ldr	r3, .L71
	ldr	r3, [r3, #8]
	.loc 1 170 68
	lsrs	r3, r3, #4
	.loc 1 170 74
	and	r3, r3, #7
	.loc 1 170 55
	ldr	r1, .L71+4
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	.loc 1 170 39
	lsr	r3, r2, r3
	.loc 1 171 1
	mov	r0, r3
	pop	{r7, pc}
.L72:
	.align	2
.L71:
	.word	1073887232
	.word	AHBPrescTable
	.cfi_endproc
.LFE130:
	.size	MCAL_RCC_GetHCLKFreq, .-MCAL_RCC_GetHCLKFreq
	.align	1
	.global	MCAL_RCC_GetPCLK1Freq
	.syntax unified
	.thumb
	.thumb_func
	.type	MCAL_RCC_GetPCLK1Freq, %function
MCAL_RCC_GetPCLK1Freq:
.LFB131:
	.loc 1 182 35
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
	.loc 1 183 21
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 186 19
	ldr	r3, .L82
	ldr	r3, [r3, #8]
	.loc 1 186 26
	lsrs	r3, r3, #12
	.loc 1 186 43
	uxtb	r3, r3
	.loc 1 186 12
	and	r3, r3, #3
	strb	r3, [r7, #9]
	.loc 1 188 8
	ldrb	r3, [r7, #9]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L74
	.loc 1 190 19
	ldr	r3, .L82+4
	str	r3, [r7, #12]
	b	.L75
.L74:
	.loc 1 192 13
	ldrb	r3, [r7, #9]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L76
	.loc 1 194 19
	ldr	r3, .L82+8
	str	r3, [r7, #12]
	b	.L75
.L76:
	.loc 1 196 13
	ldrb	r3, [r7, #9]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L75
	.loc 1 198 21
	bl	RCC_GetPLLOutputClock
	str	r0, [r7, #12]
.L75:
	.loc 1 201 17
	ldr	r3, .L82
	ldr	r3, [r3, #8]
	.loc 1 201 24
	movs	r2, #240
	lsrs	r3, r3, r2
	.loc 1 201 42
	uxtb	r3, r3
	.loc 1 201 10
	and	r3, r3, #15
	strb	r3, [r7, #8]
	.loc 1 203 8
	ldrb	r3, [r7, #8]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L77
	.loc 1 205 14
	movs	r3, #1
	strb	r3, [r7, #11]
	b	.L78
.L77:
	.loc 1 209 35
	ldrb	r3, [r7, #8]	@ zero_extendqisi2
	subs	r3, r3, #8
	.loc 1 209 29
	ldr	r2, .L82+12
	ldrh	r3, [r2, r3, lsl #1]
	.loc 1 209 14
	strb	r3, [r7, #11]
.L78:
	.loc 1 212 17
	ldr	r3, .L82
	ldr	r3, [r3, #8]
	.loc 1 212 24
	mov	r2, #7168
	lsrs	r3, r3, r2
	.loc 1 212 43
	uxtb	r3, r3
	.loc 1 212 10
	and	r3, r3, #7
	strb	r3, [r7, #8]
	.loc 1 214 8
	ldrb	r3, [r7, #8]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L79
	.loc 1 216 15
	movs	r3, #1
	strb	r3, [r7, #10]
	b	.L80
.L79:
	.loc 1 220 37
	ldrb	r3, [r7, #8]	@ zero_extendqisi2
	subs	r3, r3, #4
	.loc 1 220 15
	ldr	r2, .L82+16
	ldrb	r3, [r2, r3]
	strb	r3, [r7, #10]
.L80:
	.loc 1 223 24
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r2, [r7, #12]
	udiv	r2, r2, r3
	.loc 1 223 32
	ldrb	r3, [r7, #10]	@ zero_extendqisi2
	.loc 1 223 11
	udiv	r3, r2, r3
	str	r3, [r7, #4]
	.loc 1 225 12
	ldr	r3, [r7, #4]
	.loc 1 226 1
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L83:
	.align	2
.L82:
	.word	1073887232
	.word	16000000
	.word	25000000
	.word	AHB_PreScaler
	.word	APB1_PreScaler
	.cfi_endproc
.LFE131:
	.size	MCAL_RCC_GetPCLK1Freq, .-MCAL_RCC_GetPCLK1Freq
	.align	1
	.global	MCAL_RCC_GetPCLK2Freq
	.syntax unified
	.thumb
	.thumb_func
	.type	MCAL_RCC_GetPCLK2Freq, %function
MCAL_RCC_GetPCLK2Freq:
.LFB132:
	.loc 1 238 35
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
	.loc 1 239 14
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 240 26
	ldr	r3, .L92
	ldr	r3, [r3, #8]
	.loc 1 240 33
	lsrs	r3, r3, #12
	.loc 1 240 50
	uxtb	r3, r3
	.loc 1 240 13
	and	r3, r3, #3
	strb	r3, [r7, #9]
	.loc 1 243 8
	ldrb	r3, [r7, #9]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L85
	.loc 1 245 21
	ldr	r3, .L92+4
	str	r3, [r7, #12]
	b	.L86
.L85:
	.loc 1 249 21
	ldr	r3, .L92+8
	str	r3, [r7, #12]
.L86:
	.loc 1 252 15
	ldr	r3, .L92
	ldr	r3, [r3, #8]
	.loc 1 252 22
	movs	r2, #240
	lsrs	r3, r3, r2
	.loc 1 252 9
	and	r3, r3, #15
	str	r3, [r7, #4]
	.loc 1 254 8
	ldr	r3, [r7, #4]
	cmp	r3, #7
	bhi	.L87
	.loc 1 256 14
	movs	r3, #1
	strb	r3, [r7, #11]
	b	.L88
.L87:
	.loc 1 260 34
	ldr	r3, [r7, #4]
	subs	r3, r3, #8
	.loc 1 260 29
	ldr	r2, .L92+12
	ldrh	r3, [r2, r3, lsl #1]
	.loc 1 260 14
	strb	r3, [r7, #11]
.L88:
	.loc 1 263 15
	ldr	r3, .L92
	ldr	r3, [r3, #8]
	.loc 1 263 22
	mov	r2, #57344
	lsrs	r3, r3, r2
	.loc 1 263 9
	and	r3, r3, #7
	str	r3, [r7, #4]
	.loc 1 265 8
	ldr	r3, [r7, #4]
	cmp	r3, #3
	bhi	.L89
	.loc 1 267 15
	movs	r3, #1
	strb	r3, [r7, #10]
	b	.L90
.L89:
	.loc 1 271 36
	ldr	r3, [r7, #4]
	subs	r3, r3, #4
	.loc 1 271 15
	ldr	r2, .L92+16
	ldrb	r3, [r2, r3]
	strb	r3, [r7, #10]
.L90:
	.loc 1 274 26
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r2, [r7, #12]
	udiv	r2, r2, r3
	.loc 1 274 34
	ldrb	r3, [r7, #10]	@ zero_extendqisi2
	.loc 1 274 11
	udiv	r3, r2, r3
	str	r3, [r7]
	.loc 1 276 12
	ldr	r3, [r7]
	.loc 1 277 1
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
.L93:
	.align	2
.L92:
	.word	1073887232
	.word	16000000
	.word	25000000
	.word	AHB_PreScaler
	.word	APB1_PreScaler
	.cfi_endproc
.LFE132:
	.size	MCAL_RCC_GetPCLK2Freq, .-MCAL_RCC_GetPCLK2Freq
	.align	1
	.global	RCC_GetPLLOutputClock
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_GetPLLOutputClock, %function
RCC_GetPLLOutputClock:
.LFB133:
	.loc 1 289 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 290 14
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 291 14
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 1 292 14
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 293 14
	movs	r3, #0
	str	r3, [r7, #8]
	.loc 1 296 16
	ldr	r3, .L98
	ldr	r3, [r3, #4]
	.loc 1 296 26
	movw	r2, #32704
	lsrs	r3, r3, r2
	.loc 1 296 10
	ubfx	r3, r3, #0, #9
	str	r3, [r7, #16]
	.loc 1 297 16
	ldr	r3, .L98
	ldr	r3, [r3, #4]
	.loc 1 297 26
	movs	r2, #63
	lsrs	r3, r3, r2
	.loc 1 297 10
	and	r3, r3, #63
	str	r3, [r7, #12]
	.loc 1 298 17
	ldr	r3, .L98
	ldr	r3, [r3, #4]
	.loc 1 298 27
	mov	r2, #196608
	lsrs	r3, r3, r2
	.loc 1 298 48
	and	r3, r3, #3
	.loc 1 298 10
	adds	r3, r3, #1
	str	r3, [r7, #8]
	.loc 1 301 13
	ldr	r3, .L98
	ldr	r3, [r3, #4]
	.loc 1 301 23
	and	r3, r3, #4194304
	.loc 1 301 8
	cmp	r3, #0
	beq	.L95
	.loc 1 304 22
	ldr	r3, .L98+4
	str	r3, [r7, #20]
	b	.L96
.L95:
	.loc 1 309 22
	ldr	r3, .L98+8
	str	r3, [r7, #20]
.L96:
	.loc 1 313 52
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	.loc 1 313 44
	ldr	r2, [r7, #20]
	mul	r2, r3, r2
	.loc 1 313 67
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	.loc 1 313 72
	ldr	r1, [r7, #8]
	mul	r3, r1, r3
	lsls	r3, r3, #1
	.loc 1 313 14
	udiv	r3, r2, r3
	str	r3, [r7, #4]
	.loc 1 315 12
	ldr	r3, [r7, #4]
	.loc 1 316 1
	mov	r0, r3
	adds	r7, r7, #28
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L99:
	.align	2
.L98:
	.word	1073887232
	.word	25000000
	.word	16000000
	.cfi_endproc
.LFE133:
	.size	RCC_GetPLLOutputClock, .-RCC_GetPLLOutputClock
.Letext0:
	.file 2 "/opt/st/stm32cubeclt_1.16.0/GNU-tools-for-STM32/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/opt/st/stm32cubeclt_1.16.0/GNU-tools-for-STM32/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "drivers/Inc/Platform_Types.h"
	.file 5 "CMSIS/Inc/stm32f4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x4f9
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x1d
	.4byte	.LASF81
	.4byte	.LASF82
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0xf
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
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x55
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x39
	.byte	0x19
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x89
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x49
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x63
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x7d
	.uleb128 0x10
	.4byte	0xb6
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x45
	.byte	0x1d
	.4byte	0x55
	.uleb128 0xa
	.4byte	0xc7
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x4a
	.byte	0x1d
	.4byte	0x89
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF19
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF20
	.uleb128 0x6
	.4byte	0xb6
	.4byte	0x102
	.uleb128 0x7
	.4byte	0x26
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.byte	0x98
	.byte	0x5
	.2byte	0x66d
	.byte	0x9
	.4byte	0x2a4
	.uleb128 0x8
	.ascii	"CR\000"
	.2byte	0x66f
	.4byte	0xc2
	.byte	0
	.uleb128 0x1
	.4byte	.LASF21
	.2byte	0x670
	.4byte	0xc2
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF22
	.2byte	0x671
	.4byte	0xc2
	.byte	0x8
	.uleb128 0x8
	.ascii	"CIR\000"
	.2byte	0x672
	.4byte	0xc2
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF23
	.2byte	0x673
	.4byte	0xc2
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF24
	.2byte	0x674
	.4byte	0xc2
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF25
	.2byte	0x675
	.4byte	0xc2
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF26
	.2byte	0x676
	.4byte	0xb6
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF27
	.2byte	0x677
	.4byte	0xc2
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF28
	.2byte	0x678
	.4byte	0xc2
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF29
	.2byte	0x679
	.4byte	0xf2
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF30
	.2byte	0x67a
	.4byte	0xc2
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF31
	.2byte	0x67b
	.4byte	0xc2
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF32
	.2byte	0x67c
	.4byte	0xc2
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF33
	.2byte	0x67d
	.4byte	0xb6
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF34
	.2byte	0x67e
	.4byte	0xc2
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF35
	.2byte	0x67f
	.4byte	0xc2
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF36
	.2byte	0x680
	.4byte	0xf2
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF37
	.2byte	0x681
	.4byte	0xc2
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x682
	.4byte	0xc2
	.byte	0x54
	.uleb128 0x1
	.4byte	.LASF39
	.2byte	0x683
	.4byte	0xc2
	.byte	0x58
	.uleb128 0x1
	.4byte	.LASF40
	.2byte	0x684
	.4byte	0xb6
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x685
	.4byte	0xc2
	.byte	0x60
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x686
	.4byte	0xc2
	.byte	0x64
	.uleb128 0x1
	.4byte	.LASF43
	.2byte	0x687
	.4byte	0xf2
	.byte	0x68
	.uleb128 0x1
	.4byte	.LASF44
	.2byte	0x688
	.4byte	0xc2
	.byte	0x70
	.uleb128 0x8
	.ascii	"CSR\000"
	.2byte	0x689
	.4byte	0xc2
	.byte	0x74
	.uleb128 0x1
	.4byte	.LASF45
	.2byte	0x68a
	.4byte	0xf2
	.byte	0x78
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x68b
	.4byte	0xc2
	.byte	0x80
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x68c
	.4byte	0xc2
	.byte	0x84
	.uleb128 0x1
	.4byte	.LASF48
	.2byte	0x68d
	.4byte	0xc2
	.byte	0x88
	.uleb128 0x1
	.4byte	.LASF49
	.2byte	0x68e
	.4byte	0xc2
	.byte	0x8c
	.uleb128 0x1
	.4byte	.LASF50
	.2byte	0x68f
	.4byte	0xc2
	.byte	0x90
	.uleb128 0x1
	.4byte	.LASF51
	.2byte	0x690
	.4byte	0xc2
	.byte	0x94
	.byte	0
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x5
	.2byte	0x692
	.byte	0x3
	.4byte	0x102
	.uleb128 0x6
	.4byte	0xaa
	.4byte	0x2c1
	.uleb128 0x7
	.4byte	0x26
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x16
	.byte	0xa
	.4byte	0x2b1
	.uleb128 0x5
	.byte	0x3
	.4byte	AHB_PreScaler
	.uleb128 0x6
	.4byte	0x9e
	.4byte	0x2e2
	.uleb128 0x7
	.4byte	0x26
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x1d
	.byte	0x9
	.4byte	0x2d2
	.uleb128 0x5
	.byte	0x3
	.4byte	APB1_PreScaler
	.uleb128 0x6
	.4byte	0xd3
	.4byte	0x303
	.uleb128 0x7
	.4byte	0x26
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0x2f3
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x24
	.byte	0x14
	.4byte	0x303
	.uleb128 0x5
	.byte	0x3
	.4byte	AHBPrescTable
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x120
	.byte	0xa
	.4byte	0xb6
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37b
	.uleb128 0x5
	.4byte	.LASF56
	.2byte	0x122
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF57
	.2byte	0x123
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x5
	.4byte	.LASF58
	.2byte	0x124
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF59
	.2byte	0x125
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF60
	.2byte	0x139
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x1
	.byte	0xee
	.byte	0x8
	.4byte	0xd8
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3eb
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xef
	.byte	0xe
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.ascii	"tmp\000"
	.byte	0x1
	.byte	0xef
	.byte	0x1f
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xef
	.byte	0x24
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xf0
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -15
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xf1
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xf1
	.byte	0x13
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0xb6
	.4byte	0xd8
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x458
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0xb7
	.byte	0xe
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0xb7
	.byte	0x15
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0xb8
	.byte	0xd
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -15
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xb8
	.byte	0x15
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xb8
	.byte	0x1b
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xb8
	.byte	0x21
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x1
	.byte	0xa9
	.byte	0x8
	.4byte	0xd8
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x8e
	.4byte	0xd8
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x495
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x8f
	.byte	0xc
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x70
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b8
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x70
	.byte	0x26
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x52
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4db
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x52
	.byte	0x27
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0x1
	.byte	0x2f
	.byte	0x6
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x2f
	.byte	0x22
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.sleb128 8
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
	.uleb128 0x7a
	.uleb128 0x19
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
.LASF37:
	.ascii	"AHB1LPENR\000"
.LASF19:
	.ascii	"float\000"
.LASF27:
	.ascii	"APB1RSTR\000"
.LASF31:
	.ascii	"AHB2ENR\000"
.LASF60:
	.ascii	"pllOutputFreq\000"
.LASF5:
	.ascii	"short int\000"
.LASF44:
	.ascii	"BDCR\000"
.LASF50:
	.ascii	"CKGATENR\000"
.LASF47:
	.ascii	"PLLI2SCFGR\000"
.LASF75:
	.ascii	"ret_val\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF7:
	.ascii	"__uint16_t\000"
.LASF46:
	.ascii	"SSCGR\000"
.LASF39:
	.ascii	"AHB3LPENR\000"
.LASF22:
	.ascii	"CFGR\000"
.LASF62:
	.ascii	"MCAL_RCC_GetPCLK2Freq\000"
.LASF54:
	.ascii	"APB1_PreScaler\000"
.LASF36:
	.ascii	"RESERVED3\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF64:
	.ascii	"pclk2\000"
.LASF34:
	.ascii	"APB1ENR\000"
.LASF55:
	.ascii	"AHBPrescTable\000"
.LASF71:
	.ascii	"clksrc\000"
.LASF73:
	.ascii	"apb1p\000"
.LASF49:
	.ascii	"DCKCFGR\000"
.LASF69:
	.ascii	"pclk1\000"
.LASF53:
	.ascii	"AHB_PreScaler\000"
.LASF32:
	.ascii	"AHB3ENR\000"
.LASF72:
	.ascii	"temp\000"
.LASF1:
	.ascii	"long long int\000"
.LASF81:
	.ascii	"drivers/Src/stm32f401xx_rcc_driver.c\000"
.LASF9:
	.ascii	"long int\000"
.LASF66:
	.ascii	"ahbp\000"
.LASF52:
	.ascii	"RCC_TypeDef\000"
.LASF51:
	.ascii	"DCKCFGR2\000"
.LASF83:
	.ascii	"MCAL_RCC_GetHCLKFreq\000"
.LASF28:
	.ascii	"APB2RSTR\000"
.LASF6:
	.ascii	"__uint8_t\000"
.LASF58:
	.ascii	"pllm\000"
.LASF57:
	.ascii	"plln\000"
.LASF2:
	.ascii	"long double\000"
.LASF59:
	.ascii	"pllp\000"
.LASF61:
	.ascii	"RCC_GetPLLOutputClock\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF56:
	.ascii	"pllInputFreq\000"
.LASF35:
	.ascii	"APB2ENR\000"
.LASF3:
	.ascii	"signed char\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF67:
	.ascii	"apb2p\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF24:
	.ascii	"AHB2RSTR\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF70:
	.ascii	"systemClk\000"
.LASF21:
	.ascii	"PLLCFGR\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF41:
	.ascii	"APB1LPENR\000"
.LASF82:
	.ascii	"/home/mohamed/Downloads/test/corrected4/makefile_rt"
	.ascii	"os_proteus_half_worked\000"
.LASF13:
	.ascii	"char\000"
.LASF17:
	.ascii	"uint8\000"
.LASF63:
	.ascii	"systemClock\000"
.LASF38:
	.ascii	"AHB2LPENR\000"
.LASF26:
	.ascii	"RESERVED0\000"
.LASF29:
	.ascii	"RESERVED1\000"
.LASF33:
	.ascii	"RESERVED2\000"
.LASF18:
	.ascii	"uint32\000"
.LASF40:
	.ascii	"RESERVED4\000"
.LASF43:
	.ascii	"RESERVED5\000"
.LASF45:
	.ascii	"RESERVED6\000"
.LASF79:
	.ascii	"clock\000"
.LASF20:
	.ascii	"double\000"
.LASF77:
	.ascii	"MCAL_RCC_Enable_Peripheral\000"
.LASF30:
	.ascii	"AHB1ENR\000"
.LASF76:
	.ascii	"MCAL_RCC_Reset_Peripheral\000"
.LASF84:
	.ascii	"MCAL_RCC_Select_Clock\000"
.LASF78:
	.ascii	"peripheral\000"
.LASF68:
	.ascii	"MCAL_RCC_GetPCLK1Freq\000"
.LASF80:
	.ascii	"GNU C11 12.3.1 20230626 -mcpu=cortex-m4 -mthumb -mf"
	.ascii	"loat-abi=soft -march=armv7e-m -g -O0 -std=gnu11\000"
.LASF23:
	.ascii	"AHB1RSTR\000"
.LASF25:
	.ascii	"AHB3RSTR\000"
.LASF74:
	.ascii	"MCAL_RCC_GetSYS_CLKFreq\000"
.LASF48:
	.ascii	"PLLSAICFGR\000"
.LASF65:
	.ascii	"clkSrc\000"
.LASF42:
	.ascii	"APB2LPENR\000"
	.ident	"GCC: (GNU Tools for STM32 12.3.rel1.20240612-1315) 12.3.1 20230626"
