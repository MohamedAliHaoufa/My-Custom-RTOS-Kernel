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
	.file	"stm32f401xx_spi_driver.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "drivers/Src/stm32f401xx_spi_driver.c"
	.global	Global_SPI_Config
	.bss
	.align	2
	.type	Global_SPI_Config, %object
	.size	Global_SPI_Config, 8
Global_SPI_Config:
	.space	8
	.text
	.align	1
	.global	MCAL_SPI_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	MCAL_SPI_Init, %function
MCAL_SPI_Init:
.LFB126:
	.loc 1 46 1
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
	str	r1, [r7]
	.loc 1 47 14
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	.loc 1 48 14
	movs	r3, #0
	strh	r3, [r7, #12]	@ movhi
	.loc 1 50 8
	ldr	r3, [r7, #4]
	ldr	r2, .L9
	cmp	r3, r2
	bne	.L2
	.loc 1 52 39
	ldr	r2, .L9+4
	ldr	r3, [r7]
	str	r3, [r2]
	.loc 1 53 9
	movs	r0, #11
	bl	MCAL_RCC_Enable_Peripheral
	b	.L3
.L2:
	.loc 1 57 39
	ldr	r2, .L9+4
	ldr	r3, [r7]
	str	r3, [r2, #4]
	.loc 1 58 9
	movs	r0, #12
	bl	MCAL_RCC_Enable_Peripheral
.L3:
	.loc 1 61 16
	ldrh	r3, [r7, #14]	@ movhi
	orr	r3, r3, #64
	strh	r3, [r7, #14]	@ movhi
	.loc 1 62 25
	ldr	r3, [r7]
	ldrh	r2, [r3]
	.loc 1 62 16
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	.loc 1 63 25
	ldr	r3, [r7]
	ldrh	r2, [r3, #2]
	.loc 1 63 16
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	.loc 1 64 25
	ldr	r3, [r7]
	ldrh	r2, [r3, #6]
	.loc 1 64 16
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	.loc 1 65 25
	ldr	r3, [r7]
	ldrh	r2, [r3, #4]
	.loc 1 65 16
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	.loc 1 66 25
	ldr	r3, [r7]
	ldrh	r2, [r3, #8]
	.loc 1 66 16
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	.loc 1 67 25
	ldr	r3, [r7]
	ldrh	r2, [r3, #10]
	.loc 1 67 16
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	.loc 1 69 15
	ldr	r3, [r7]
	ldrh	r3, [r3, #12]
	.loc 1 69 8
	cmp	r3, #4
	bne	.L4
	.loc 1 71 20
	ldrh	r3, [r7, #12]	@ movhi
	orr	r3, r3, #4
	strh	r3, [r7, #12]	@ movhi
	b	.L5
.L4:
	.loc 1 73 20
	ldr	r3, [r7]
	ldrh	r3, [r3, #12]
	.loc 1 73 13
	cmp	r3, #0
	beq	.L5
	.loc 1 79 29
	ldr	r3, [r7]
	ldrh	r2, [r3, #12]
	.loc 1 79 20
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
.L5:
	.loc 1 82 25
	ldr	r3, [r7]
	ldrh	r2, [r3, #14]
	.loc 1 82 16
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	.loc 1 84 15
	ldr	r3, [r7]
	ldrh	r3, [r3, #16]
	.loc 1 84 8
	cmp	r3, #0
	beq	.L7
	.loc 1 86 29
	ldr	r3, [r7]
	ldrh	r2, [r3, #16]
	.loc 1 86 20
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	.loc 1 87 12
	ldr	r3, [r7, #4]
	ldr	r2, .L9
	cmp	r3, r2
	bne	.L8
	.loc 1 89 13
	ldr	r3, .L9+8
	ldr	r3, [r3]
	ldr	r2, .L9+8
	orr	r3, r3, #8
	str	r3, [r2]
	b	.L7
.L8:
	.loc 1 93 13
	ldr	r3, .L9+8
	ldr	r3, [r3]
	ldr	r2, .L9+8
	orr	r3, r3, #16
	str	r3, [r2]
.L7:
	.loc 1 97 15
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3]	@ movhi
	.loc 1 98 15
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #12]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	.loc 1 99 1
	nop
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	1073819648
	.word	Global_SPI_Config
	.word	-536813308
	.cfi_endproc
.LFE126:
	.size	MCAL_SPI_Init, .-MCAL_SPI_Init
	.align	1
	.global	MCAL_SPI_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	MCAL_SPI_DeInit, %function
MCAL_SPI_DeInit:
.LFB127:
	.loc 1 113 1
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
	.loc 1 114 8
	ldr	r3, [r7, #4]
	ldr	r2, .L15
	cmp	r3, r2
	bne	.L12
	.loc 1 116 9
	ldr	r3, .L15+4
	ldr	r3, [r3]
	ldr	r2, .L15+4
	bic	r3, r3, #8
	str	r3, [r2]
	.loc 1 117 9
	movs	r0, #11
	bl	MCAL_RCC_Reset_Peripheral
	.loc 1 124 1
	b	.L14
.L12:
	.loc 1 121 9
	ldr	r3, .L15+4
	ldr	r3, [r3]
	ldr	r2, .L15+4
	bic	r3, r3, #16
	str	r3, [r2]
	.loc 1 122 9
	movs	r0, #12
	bl	MCAL_RCC_Reset_Peripheral
.L14:
	.loc 1 124 1
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L16:
	.align	2
.L15:
	.word	1073819648
	.word	-536813180
	.cfi_endproc
.LFE127:
	.size	MCAL_SPI_DeInit, .-MCAL_SPI_DeInit
	.align	1
	.global	MCAL_SPI_SendData
	.syntax unified
	.thumb
	.thumb_func
	.type	MCAL_SPI_SendData, %function
MCAL_SPI_SendData:
.LFB128:
	.loc 1 140 1
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
	mov	r3, r2
	strb	r3, [r7, #7]
	.loc 1 141 8
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L18
	.loc 1 143 15
	nop
.L19:
	.loc 1 143 22 discriminator 1
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #8]	@ movhi
	uxth	r3, r3
	.loc 1 143 27 discriminator 1
	and	r3, r3, #2
	.loc 1 143 16 discriminator 1
	cmp	r3, #0
	beq	.L19
.L18:
	.loc 1 145 16
	ldr	r3, [r7, #8]
	ldrh	r2, [r3]
	.loc 1 145 14
	ldr	r3, [r7, #12]
	strh	r2, [r3, #12]	@ movhi
	.loc 1 146 1
	nop
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
.LFE128:
	.size	MCAL_SPI_SendData, .-MCAL_SPI_SendData
	.align	1
	.global	MCAL_SPI_ReceiveData
	.syntax unified
	.thumb
	.thumb_func
	.type	MCAL_SPI_ReceiveData, %function
MCAL_SPI_ReceiveData:
.LFB129:
	.loc 1 162 1
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
	mov	r3, r2
	strb	r3, [r7, #7]
	.loc 1 163 8
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L21
	.loc 1 165 15
	nop
.L22:
	.loc 1 165 22 discriminator 1
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #8]	@ movhi
	uxth	r3, r3
	.loc 1 165 27 discriminator 1
	and	r3, r3, #1
	.loc 1 165 16 discriminator 1
	cmp	r3, #0
	beq	.L22
.L21:
	.loc 1 167 22
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r2, r3
	.loc 1 167 16
	ldr	r3, [r7, #8]
	strh	r2, [r3]	@ movhi
	.loc 1 168 1
	nop
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
.LFE129:
	.size	MCAL_SPI_ReceiveData, .-MCAL_SPI_ReceiveData
	.align	1
	.global	MCAL_SPI_GPIO_Set_Pins
	.syntax unified
	.thumb
	.thumb_func
	.type	MCAL_SPI_GPIO_Set_Pins, %function
MCAL_SPI_GPIO_Set_Pins:
.LFB130:
	.loc 1 183 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 186 8
	ldr	r3, [r7, #4]
	ldr	r2, .L33
	cmp	r3, r2
	bne	.L24
	.loc 1 189 30
	ldr	r3, .L33+4
	ldr	r3, [r3]
	.loc 1 189 42
	ldrh	r3, [r3]
	.loc 1 189 12
	cmp	r3, #4
	bne	.L25
	.loc 1 191 38
	ldr	r3, .L33+4
	ldr	r3, [r3]
	.loc 1 191 50
	ldrh	r3, [r3, #12]
	.loc 1 191 13
	cmp	r3, #0
	beq	.L26
	cmp	r3, #4
	bne	.L27
	.loc 1 195 39
	movs	r3, #2
	strb	r3, [r7, #8]
	.loc 1 196 43
	movs	r3, #2
	strb	r3, [r7, #9]
	.loc 1 197 44
	movs	r3, #4
	strh	r3, [r7, #10]	@ movhi
	.loc 1 198 49
	movs	r3, #2
	str	r3, [r7, #12]
	.loc 1 199 44
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 1 200 48
	movs	r3, #5
	str	r3, [r7, #20]
	.loc 1 201 21
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, .L33+8
	bl	MCAL_GPIO_Init
	.loc 1 202 21
	b	.L27
.L26:
	.loc 1 205 39
	movs	r3, #2
	strb	r3, [r7, #8]
	.loc 1 206 43
	movs	r3, #2
	strb	r3, [r7, #9]
	.loc 1 207 44
	movs	r3, #4
	strh	r3, [r7, #10]	@ movhi
	.loc 1 208 49
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 209 44
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 1 210 48
	movs	r3, #5
	str	r3, [r7, #20]
	.loc 1 211 21
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, .L33+8
	bl	MCAL_GPIO_Init
	.loc 1 212 21
	nop
.L27:
	.loc 1 215 36
	movs	r3, #5
	strh	r3, [r7, #10]	@ movhi
	.loc 1 216 13
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, .L33+8
	bl	MCAL_GPIO_Init
	.loc 1 217 36
	movs	r3, #6
	strh	r3, [r7, #10]	@ movhi
	.loc 1 218 13
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, .L33+8
	bl	MCAL_GPIO_Init
	.loc 1 219 36
	movs	r3, #7
	strh	r3, [r7, #10]	@ movhi
	.loc 1 220 13
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, .L33+8
	bl	MCAL_GPIO_Init
	.loc 1 274 1
	b	.L32
.L25:
	.loc 1 225 36
	movs	r3, #4
	strh	r3, [r7, #10]	@ movhi
	.loc 1 226 13
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, .L33+8
	bl	MCAL_GPIO_Init
	.loc 1 227 36
	movs	r3, #5
	strh	r3, [r7, #10]	@ movhi
	.loc 1 228 13
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, .L33+8
	bl	MCAL_GPIO_Init
	.loc 1 229 36
	movs	r3, #6
	strh	r3, [r7, #10]	@ movhi
	.loc 1 230 13
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, .L33+8
	bl	MCAL_GPIO_Init
	.loc 1 231 36
	movs	r3, #7
	strh	r3, [r7, #10]	@ movhi
	.loc 1 232 13
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, .L33+8
	bl	MCAL_GPIO_Init
	.loc 1 274 1
	b	.L32
.L24:
	.loc 1 238 30
	ldr	r3, .L33+4
	ldr	r3, [r3, #4]
	.loc 1 238 42
	ldrh	r3, [r3]
	.loc 1 238 12
	cmp	r3, #4
	bne	.L29
	.loc 1 240 38
	ldr	r3, .L33+4
	ldr	r3, [r3, #4]
	.loc 1 240 50
	ldrh	r3, [r3, #12]
	.loc 1 240 13
	cmp	r3, #0
	beq	.L30
	cmp	r3, #4
	bne	.L31
	.loc 1 243 44
	movs	r3, #12
	strh	r3, [r7, #10]	@ movhi
	.loc 1 244 21
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, .L33+12
	bl	MCAL_GPIO_Init
	.loc 1 245 21
	b	.L31
.L30:
	.loc 1 248 44
	movs	r3, #12
	strh	r3, [r7, #10]	@ movhi
	.loc 1 249 49
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 250 21
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, .L33+12
	bl	MCAL_GPIO_Init
	.loc 1 251 21
	nop
.L31:
	.loc 1 254 36
	movs	r3, #13
	strh	r3, [r7, #10]	@ movhi
	.loc 1 255 13
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, .L33+12
	bl	MCAL_GPIO_Init
	.loc 1 256 36
	movs	r3, #14
	strh	r3, [r7, #10]	@ movhi
	.loc 1 257 13
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, .L33+12
	bl	MCAL_GPIO_Init
	.loc 1 258 36
	movs	r3, #15
	strh	r3, [r7, #10]	@ movhi
	.loc 1 259 13
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, .L33+12
	bl	MCAL_GPIO_Init
	.loc 1 274 1
	b	.L32
.L29:
	.loc 1 264 36
	movs	r3, #12
	strh	r3, [r7, #10]	@ movhi
	.loc 1 265 13
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, .L33+12
	bl	MCAL_GPIO_Init
	.loc 1 266 36
	movs	r3, #13
	strh	r3, [r7, #10]	@ movhi
	.loc 1 267 13
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, .L33+12
	bl	MCAL_GPIO_Init
	.loc 1 268 36
	movs	r3, #14
	strh	r3, [r7, #10]	@ movhi
	.loc 1 269 13
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, .L33+12
	bl	MCAL_GPIO_Init
	.loc 1 270 36
	movs	r3, #15
	strh	r3, [r7, #10]	@ movhi
	.loc 1 271 13
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, .L33+12
	bl	MCAL_GPIO_Init
.L32:
	.loc 1 274 1
	nop
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L34:
	.align	2
.L33:
	.word	1073819648
	.word	Global_SPI_Config
	.word	1073872896
	.word	1073873920
	.cfi_endproc
.LFE130:
	.size	MCAL_SPI_GPIO_Set_Pins, .-MCAL_SPI_GPIO_Set_Pins
	.align	1
	.global	MCAL_SPI_Tx_Rx
	.syntax unified
	.thumb
	.thumb_func
	.type	MCAL_SPI_Tx_Rx, %function
MCAL_SPI_Tx_Rx:
.LFB131:
	.loc 1 290 1
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
	mov	r3, r2
	strb	r3, [r7, #7]
	.loc 1 291 8
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L36
	.loc 1 293 15
	nop
.L37:
	.loc 1 293 22 discriminator 1
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #8]	@ movhi
	uxth	r3, r3
	.loc 1 293 27 discriminator 1
	and	r3, r3, #2
	.loc 1 293 16 discriminator 1
	cmp	r3, #0
	beq	.L37
.L36:
	.loc 1 295 16
	ldr	r3, [r7, #8]
	ldrh	r2, [r3]
	.loc 1 295 14
	ldr	r3, [r7, #12]
	strh	r2, [r3, #12]	@ movhi
	.loc 1 297 8
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L38
	.loc 1 299 15
	nop
.L39:
	.loc 1 299 22 discriminator 1
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #8]	@ movhi
	uxth	r3, r3
	.loc 1 299 27 discriminator 1
	and	r3, r3, #1
	.loc 1 299 16 discriminator 1
	cmp	r3, #0
	beq	.L39
.L38:
	.loc 1 301 26
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r2, r3
	.loc 1 301 20
	ldr	r3, [r7, #8]
	strh	r2, [r3]	@ movhi
	.loc 1 302 1
	nop
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
.LFE131:
	.size	MCAL_SPI_Tx_Rx, .-MCAL_SPI_Tx_Rx
	.align	1
	.global	SPI1_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI1_IRQHandler, %function
SPI1_IRQHandler:
.LFB132:
	.loc 1 314 1
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
	.loc 1 316 25
	ldr	r3, .L41
	ldrh	r3, [r3, #8]	@ movhi
	uxth	r3, r3
	.loc 1 316 42
	asrs	r3, r3, #1
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 316 17
	ldrb	r3, [r7, #4]
	bfi	r3, r2, #0, #1
	strb	r3, [r7, #4]
	.loc 1 317 25
	ldr	r3, .L41
	ldrh	r3, [r3, #8]	@ movhi
	uxth	r3, r3
	.loc 1 317 42
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 317 17
	ldrb	r3, [r7, #4]
	bfi	r3, r2, #1, #1
	strb	r3, [r7, #4]
	.loc 1 318 26
	ldr	r3, .L41
	ldrh	r3, [r3, #8]	@ movhi
	uxth	r3, r3
	.loc 1 318 43
	asrs	r3, r3, #4
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 318 18
	ldrb	r3, [r7, #4]
	bfi	r3, r2, #2, #1
	strb	r3, [r7, #4]
	.loc 1 319 22
	ldr	r3, .L41+4
	ldr	r3, [r3]
	.loc 1 319 34
	ldr	r3, [r3, #20]
	.loc 1 319 5
	ldrb	r0, [r7, #4]
	blx	r3
.LVL0:
	.loc 1 320 1
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L42:
	.align	2
.L41:
	.word	1073819648
	.word	Global_SPI_Config
	.cfi_endproc
.LFE132:
	.size	SPI1_IRQHandler, .-SPI1_IRQHandler
	.align	1
	.global	SPI2_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI2_IRQHandler, %function
SPI2_IRQHandler:
.LFB133:
	.loc 1 332 1
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
	.loc 1 334 25
	ldr	r3, .L44
	ldrh	r3, [r3, #8]	@ movhi
	uxth	r3, r3
	.loc 1 334 42
	asrs	r3, r3, #1
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 334 17
	ldrb	r3, [r7, #4]
	bfi	r3, r2, #0, #1
	strb	r3, [r7, #4]
	.loc 1 335 25
	ldr	r3, .L44
	ldrh	r3, [r3, #8]	@ movhi
	uxth	r3, r3
	.loc 1 335 42
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 335 17
	ldrb	r3, [r7, #4]
	bfi	r3, r2, #1, #1
	strb	r3, [r7, #4]
	.loc 1 336 26
	ldr	r3, .L44
	ldrh	r3, [r3, #8]	@ movhi
	uxth	r3, r3
	.loc 1 336 43
	asrs	r3, r3, #4
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 336 18
	ldrb	r3, [r7, #4]
	bfi	r3, r2, #2, #1
	strb	r3, [r7, #4]
	.loc 1 337 22
	ldr	r3, .L44+4
	ldr	r3, [r3, #4]
	.loc 1 337 34
	ldr	r3, [r3, #20]
	.loc 1 337 5
	ldrb	r0, [r7, #4]
	blx	r3
.LVL1:
	.loc 1 338 1
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L45:
	.align	2
.L44:
	.word	1073756160
	.word	Global_SPI_Config
	.cfi_endproc
.LFE133:
	.size	SPI2_IRQHandler, .-SPI2_IRQHandler
.Letext0:
	.file 2 "/opt/st/stm32cubeclt_1.16.0/GNU-tools-for-STM32/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/opt/st/stm32cubeclt_1.16.0/GNU-tools-for-STM32/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "drivers/Inc/Platform_Types.h"
	.file 5 "CMSIS/Inc/stm32f4xx.h"
	.file 6 "drivers/Inc/stm32f401xx_gpio_driver.h"
	.file 7 "drivers/Inc/stm32f401xx_spi_driver.h"
	.file 8 "drivers/Inc/stm32f401xx_rcc_driver.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x600
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x1d
	.4byte	.LASF88
	.4byte	.LASF89
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x1a
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
	.uleb128 0x4
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
	.uleb128 0x4
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
	.uleb128 0x4
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
	.uleb128 0x3
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
	.uleb128 0x9
	.4byte	0xaa
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x7d
	.uleb128 0x9
	.4byte	0xbb
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x45
	.byte	0x1d
	.4byte	0x55
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x47
	.byte	0x1d
	.4byte	0x6f
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x4a
	.byte	0x1d
	.4byte	0x89
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF20
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF21
	.uleb128 0xd
	.byte	0x28
	.2byte	0x5cd
	.4byte	0x17f
	.uleb128 0x1
	.4byte	.LASF22
	.2byte	0x5cf
	.4byte	0xc7
	.byte	0
	.uleb128 0x1
	.4byte	.LASF23
	.2byte	0x5d0
	.4byte	0xc7
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF24
	.2byte	0x5d1
	.4byte	0xc7
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF25
	.2byte	0x5d2
	.4byte	0xc7
	.byte	0xc
	.uleb128 0x6
	.ascii	"IDR\000"
	.2byte	0x5d3
	.4byte	0xc7
	.byte	0x10
	.uleb128 0x6
	.ascii	"ODR\000"
	.2byte	0x5d4
	.4byte	0xc7
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF26
	.2byte	0x5d5
	.4byte	0xb6
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF27
	.2byte	0x5d6
	.4byte	0xb6
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF28
	.2byte	0x5d7
	.4byte	0xc7
	.byte	0x1c
	.uleb128 0x6
	.ascii	"AFR\000"
	.2byte	0x5d8
	.4byte	0x18e
	.byte	0x20
	.byte	0
	.uleb128 0xe
	.4byte	0xc7
	.4byte	0x18e
	.uleb128 0xf
	.4byte	0x26
	.byte	0
	.uleb128 0x9
	.4byte	0x17f
	.uleb128 0x10
	.4byte	.LASF29
	.2byte	0x5d9
	.4byte	0xfe
	.uleb128 0xd
	.byte	0x24
	.2byte	0x6fa
	.4byte	0x27d
	.uleb128 0x6
	.ascii	"CR1\000"
	.2byte	0x6fc
	.4byte	0xb6
	.byte	0
	.uleb128 0x1
	.4byte	.LASF30
	.2byte	0x6fd
	.4byte	0xaa
	.byte	0x2
	.uleb128 0x6
	.ascii	"CR2\000"
	.2byte	0x6fe
	.4byte	0xb6
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.2byte	0x6ff
	.4byte	0xaa
	.byte	0x6
	.uleb128 0x6
	.ascii	"SR\000"
	.2byte	0x700
	.4byte	0xb6
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF32
	.2byte	0x701
	.4byte	0xaa
	.byte	0xa
	.uleb128 0x6
	.ascii	"DR\000"
	.2byte	0x702
	.4byte	0xb6
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF33
	.2byte	0x703
	.4byte	0xaa
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF34
	.2byte	0x704
	.4byte	0xb6
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF35
	.2byte	0x705
	.4byte	0xaa
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF36
	.2byte	0x706
	.4byte	0xb6
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF37
	.2byte	0x707
	.4byte	0xaa
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x708
	.4byte	0xb6
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF39
	.2byte	0x709
	.4byte	0xaa
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF40
	.2byte	0x70a
	.4byte	0xb6
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF41
	.2byte	0x70b
	.4byte	0xaa
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x70c
	.4byte	0xb6
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF43
	.2byte	0x70d
	.4byte	0xaa
	.byte	0x22
	.byte	0
	.uleb128 0x10
	.4byte	.LASF44
	.2byte	0x70e
	.4byte	0x19e
	.uleb128 0x11
	.byte	0x10
	.byte	0x6
	.byte	0x28
	.4byte	0x2df
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x6
	.byte	0x29
	.byte	0xb
	.4byte	0xcc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x6
	.byte	0x2b
	.byte	0xb
	.4byte	0xcc
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0x6
	.byte	0x2d
	.byte	0xc
	.4byte	0xd8
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x6
	.byte	0x2f
	.byte	0xc
	.4byte	0xe4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x6
	.byte	0x30
	.byte	0xc
	.4byte	0xe4
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x6
	.byte	0x31
	.byte	0xc
	.4byte	0xe4
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x6
	.byte	0x32
	.byte	0x3
	.4byte	0x288
	.uleb128 0x1b
	.4byte	.LASF90
	.byte	0x1
	.byte	0x7
	.byte	0x21
	.byte	0x8
	.4byte	0x327
	.uleb128 0x12
	.ascii	"TXE\000"
	.byte	0x23
	.4byte	0x9e
	.byte	0
	.uleb128 0x12
	.ascii	"RXE\000"
	.byte	0x24
	.4byte	0x9e
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0x25
	.4byte	0x9e
	.byte	0x1
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x26
	.4byte	0x9e
	.byte	0x5
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.byte	0x18
	.byte	0x7
	.byte	0x30
	.4byte	0x3b2
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0x7
	.byte	0x32
	.byte	0xe
	.4byte	0xaa
	.byte	0
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x7
	.byte	0x33
	.byte	0xe
	.4byte	0xaa
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x7
	.byte	0x34
	.byte	0xe
	.4byte	0xaa
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x7
	.byte	0x35
	.byte	0xe
	.4byte	0xaa
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x7
	.byte	0x36
	.byte	0xe
	.4byte	0xaa
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x7
	.byte	0x37
	.byte	0xe
	.4byte	0xaa
	.byte	0xa
	.uleb128 0x1c
	.ascii	"NSS\000"
	.byte	0x7
	.byte	0x38
	.byte	0xe
	.4byte	0xaa
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x7
	.byte	0x39
	.byte	0xe
	.4byte	0xaa
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x7
	.byte	0x3a
	.byte	0xe
	.4byte	0xaa
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0x7
	.byte	0x3b
	.byte	0xb
	.4byte	0x3bd
	.byte	0x14
	.byte	0
	.uleb128 0x1d
	.4byte	0x3bd
	.uleb128 0x8
	.4byte	0x2eb
	.byte	0
	.uleb128 0x7
	.4byte	0x3b2
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x7
	.byte	0x3c
	.byte	0x3
	.4byte	0x327
	.uleb128 0x1e
	.4byte	.LASF91
	.byte	0x7
	.byte	0x1
	.4byte	0x55
	.byte	0x7
	.byte	0x41
	.byte	0x6
	.4byte	0x3ed
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	0x3fc
	.4byte	0x3fc
	.uleb128 0xf
	.4byte	0x26
	.byte	0
	.uleb128 0x7
	.4byte	0x3c2
	.uleb128 0x1f
	.4byte	.LASF92
	.byte	0x1
	.byte	0x19
	.byte	0x12
	.4byte	0x3ed
	.uleb128 0x5
	.byte	0x3
	.4byte	Global_SPI_Config
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x6
	.byte	0xb7
	.4byte	0x429
	.uleb128 0x8
	.4byte	0x429
	.uleb128 0x8
	.4byte	0x42e
	.byte	0
	.uleb128 0x7
	.4byte	0x193
	.uleb128 0x7
	.4byte	0x2df
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x8
	.byte	0x67
	.4byte	0x444
	.uleb128 0x8
	.4byte	0x9e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x8
	.byte	0x5d
	.4byte	0x455
	.uleb128 0x8
	.4byte	0x9e
	.byte	0
	.uleb128 0x15
	.4byte	.LASF69
	.2byte	0x14b
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x479
	.uleb128 0x16
	.4byte	.LASF71
	.2byte	0x14d
	.4byte	0x2eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x15
	.4byte	.LASF70
	.2byte	0x139
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49d
	.uleb128 0x16
	.4byte	.LASF71
	.2byte	0x13b
	.4byte	0x2eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x20
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x121
	.byte	0x6
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4dc
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x23
	.4byte	0x4dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x34
	.4byte	0x4e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x5d
	.4byte	0x3ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x7
	.4byte	0x27d
	.uleb128 0x7
	.4byte	0xaa
	.uleb128 0x17
	.4byte	.LASF76
	.byte	0xb6
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x517
	.uleb128 0x5
	.4byte	.LASF77
	.byte	0xb6
	.byte	0x2b
	.4byte	0x4dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0xb8
	.byte	0x16
	.4byte	0x2df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0xa1
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x556
	.uleb128 0x5
	.4byte	.LASF77
	.byte	0xa1
	.byte	0x29
	.4byte	0x4dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF80
	.byte	0xa1
	.byte	0x3a
	.4byte	0x4e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x5
	.4byte	.LASF75
	.byte	0xa1
	.byte	0x5f
	.4byte	0x3ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x8b
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x595
	.uleb128 0x5
	.4byte	.LASF77
	.byte	0x8b
	.byte	0x26
	.4byte	0x4dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF82
	.byte	0x8b
	.byte	0x37
	.4byte	0x4e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x5
	.4byte	.LASF75
	.byte	0x8b
	.byte	0x5c
	.4byte	0x3ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x17
	.4byte	.LASF83
	.byte	0x70
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b8
	.uleb128 0x5
	.4byte	.LASF77
	.byte	0x70
	.byte	0x24
	.4byte	0x4dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x21
	.4byte	.LASF93
	.byte	0x1
	.byte	0x2d
	.byte	0x6
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF77
	.byte	0x2d
	.byte	0x22
	.4byte	0x4dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF84
	.byte	0x2d
	.byte	0x39
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x2f
	.byte	0xe
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x30
	.byte	0xe
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 289
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 1
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x16
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
	.sleb128 3
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x16
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
	.sleb128 22
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
.LASF29:
	.ascii	"GPIO_TypeDef\000"
.LASF54:
	.ascii	"Device_Mode\000"
.LASF84:
	.ascii	"Config\000"
.LASF24:
	.ascii	"OSPEEDR\000"
.LASF53:
	.ascii	"Reserved\000"
.LASF13:
	.ascii	"char\000"
.LASF63:
	.ascii	"S_SPI_Config_t\000"
.LASF58:
	.ascii	"Clock_Polarity\000"
.LASF5:
	.ascii	"short int\000"
.LASF73:
	.ascii	"SPIX\000"
.LASF81:
	.ascii	"MCAL_SPI_SendData\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF40:
	.ascii	"I2SCFGR\000"
.LASF72:
	.ascii	"MCAL_SPI_Tx_Rx\000"
.LASF7:
	.ascii	"__uint16_t\000"
.LASF80:
	.ascii	"pRXBuffer\000"
.LASF70:
	.ascii	"SPI1_IRQHandler\000"
.LASF36:
	.ascii	"RXCRCR\000"
.LASF33:
	.ascii	"RESERVED3\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF69:
	.ascii	"SPI2_IRQHandler\000"
.LASF17:
	.ascii	"uint8\000"
.LASF68:
	.ascii	"MCAL_RCC_Enable_Peripheral\000"
.LASF23:
	.ascii	"OTYPER\000"
.LASF20:
	.ascii	"float\000"
.LASF38:
	.ascii	"TXCRCR\000"
.LASF1:
	.ascii	"long long int\000"
.LASF59:
	.ascii	"Clock_Phase\000"
.LASF25:
	.ascii	"PUPDR\000"
.LASF9:
	.ascii	"long int\000"
.LASF90:
	.ascii	"S_IRQ_SRC\000"
.LASF27:
	.ascii	"BSRRH\000"
.LASF22:
	.ascii	"MODER\000"
.LASF6:
	.ascii	"__uint8_t\000"
.LASF83:
	.ascii	"MCAL_SPI_DeInit\000"
.LASF66:
	.ascii	"MCAL_GPIO_Init\000"
.LASF46:
	.ascii	"GPIO_PinSpeed\000"
.LASF85:
	.ascii	"tmpreg_CR1\000"
.LASF86:
	.ascii	"tmpreg_CR2\000"
.LASF2:
	.ascii	"long double\000"
.LASF64:
	.ascii	"Enabled\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF55:
	.ascii	"Communication_Mode\000"
.LASF61:
	.ascii	"IRQ_Enable\000"
.LASF3:
	.ascii	"signed char\000"
.LASF78:
	.ascii	"PConfig\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF57:
	.ascii	"Frame_Format\000"
.LASF88:
	.ascii	"drivers/Src/stm32f401xx_spi_driver.c\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF47:
	.ascii	"GPIO_PinNumber\000"
.LASF79:
	.ascii	"MCAL_SPI_ReceiveData\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF93:
	.ascii	"MCAL_SPI_Init\000"
.LASF44:
	.ascii	"SPI_TypeDef\000"
.LASF89:
	.ascii	"/home/mohamed/Downloads/test/corrected4/makefile_rt"
	.ascii	"os_proteus_half_worked\000"
.LASF52:
	.ascii	"ERRI\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF51:
	.ascii	"GPIO_PinConfig_t\000"
.LASF42:
	.ascii	"I2SPR\000"
.LASF75:
	.ascii	"Polling_En\000"
.LASF34:
	.ascii	"CRCPR\000"
.LASF18:
	.ascii	"uint16\000"
.LASF30:
	.ascii	"RESERVED0\000"
.LASF31:
	.ascii	"RESERVED1\000"
.LASF32:
	.ascii	"RESERVED2\000"
.LASF19:
	.ascii	"uint32\000"
.LASF35:
	.ascii	"RESERVED4\000"
.LASF37:
	.ascii	"RESERVED5\000"
.LASF39:
	.ascii	"RESERVED6\000"
.LASF41:
	.ascii	"RESERVED7\000"
.LASF43:
	.ascii	"RESERVED8\000"
.LASF21:
	.ascii	"double\000"
.LASF74:
	.ascii	"TX_RX_pBuffer\000"
.LASF45:
	.ascii	"GPIO_MODE\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF50:
	.ascii	"GPIO_PinAltFunMode\000"
.LASF67:
	.ascii	"MCAL_RCC_Reset_Peripheral\000"
.LASF91:
	.ascii	"SPI_PollingMechanism\000"
.LASF62:
	.ascii	"P_IRQ_CallBack\000"
.LASF92:
	.ascii	"Global_SPI_Config\000"
.LASF49:
	.ascii	"GPIO_PinOPType\000"
.LASF56:
	.ascii	"Payload_Length\000"
.LASF82:
	.ascii	"pTXBuffer\000"
.LASF87:
	.ascii	"GNU C11 12.3.1 20230626 -mcpu=cortex-m4 -mthumb -mf"
	.ascii	"loat-abi=soft -march=armv7e-m -g -O0 -std=gnu11\000"
.LASF77:
	.ascii	"SPIx\000"
.LASF76:
	.ascii	"MCAL_SPI_GPIO_Set_Pins\000"
.LASF48:
	.ascii	"GPIO_PinPuPdControl\000"
.LASF26:
	.ascii	"BSRRL\000"
.LASF28:
	.ascii	"LCKR\000"
.LASF71:
	.ascii	"irq_src\000"
.LASF60:
	.ascii	"SPI_Prescaler\000"
.LASF65:
	.ascii	"Disabled\000"
	.ident	"GCC: (GNU Tools for STM32 12.3.rel1.20240612-1315) 12.3.1 20230626"
