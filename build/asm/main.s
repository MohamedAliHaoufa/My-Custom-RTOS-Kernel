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
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "Src/main.c"
	.global	test
	.bss
	.align	2
	.type	test, %object
	.size	test, 4
test:
	.space	4
	.global	error
	.type	error, %object
	.size	error, 1
error:
	.space	1
	.global	Gpioled
	.align	2
	.type	Gpioled, %object
	.size	Gpioled, 16
Gpioled:
	.space	16
	.global	Task1
	.align	2
	.type	Task1, %object
	.size	Task1, 68
Task1:
	.space	68
	.global	Task2
	.align	2
	.type	Task2, %object
	.size	Task2, 68
Task2:
	.space	68
	.global	Task3
	.align	2
	.type	Task3, %object
	.size	Task3, 68
Task3:
	.space	68
	.global	Task4
	.align	2
	.type	Task4, %object
	.size	Task4, 68
Task4:
	.space	68
	.global	Task1LED
	.type	Task1LED, %object
	.size	Task1LED, 1
Task1LED:
	.space	1
	.global	Task2LED
	.type	Task2LED, %object
	.size	Task2LED, 1
Task2LED:
	.space	1
	.global	Task3LED
	.type	Task3LED, %object
	.size	Task3LED, 1
Task3LED:
	.space	1
	.global	Task4LED
	.type	Task4LED, %object
	.size	Task4LED, 1
Task4LED:
	.space	1
	.global	Mutex1
	.align	2
	.type	Mutex1, %object
	.size	Mutex1, 48
Mutex1:
	.space	48
	.global	payload
	.data
	.align	2
	.type	payload, %object
	.size	payload, 3
payload:
	.ascii	"\001\002\003"
	.text
	.align	1
	.global	task1
	.syntax unified
	.thumb
	.thumb_func
	.type	task1, %function
task1:
.LFB126:
	.loc 1 45 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
.L4:
	.loc 1 49 18
	ldr	r3, .L5
	ldrb	r3, [r3]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, .L5
	strb	r2, [r3]
	.loc 1 50 14
	ldr	r3, .L5+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L5+4
	str	r3, [r2]
	.loc 1 51 2
	movs	r2, #1
	movs	r1, #12
	ldr	r0, .L5+8
	bl	MCAL_GPIO_WritePin
	.loc 1 53 19
	ldr	r3, .L5+4
	ldr	r3, [r3]
	.loc 1 53 12
	cmp	r3, #100
	bne	.L2
	.loc 1 55 13
	ldr	r1, .L5+12
	ldr	r0, .L5+16
	bl	MHxRTOS_AcquireMutex
	.loc 1 56 13
	ldr	r0, .L5+20
	bl	MHxRTOS_ActivateTask
.L2:
	.loc 1 58 19
	ldr	r3, .L5+4
	ldr	r3, [r3]
	.loc 1 58 12
	cmp	r3, #200
	bne	.L4
	.loc 1 60 19
	ldr	r3, .L5+4
	movs	r2, #0
	str	r2, [r3]
	.loc 1 61 13
	ldr	r0, .L5+16
	bl	MHxRTOS_ReleaseMutex
	.loc 1 49 18
	b	.L4
.L6:
	.align	2
.L5:
	.word	Task1LED
	.word	Count.3
	.word	1073875968
	.word	Task1
	.word	Mutex1
	.word	Task2
	.cfi_endproc
.LFE126:
	.size	task1, .-task1
	.align	1
	.global	task2
	.syntax unified
	.thumb
	.thumb_func
	.type	task2, %function
task2:
.LFB127:
	.loc 1 66 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
.L10:
	.loc 1 70 18
	ldr	r3, .L11
	ldrb	r3, [r3]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, .L11
	strb	r2, [r3]
	.loc 1 71 14
	ldr	r3, .L11+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L11+4
	str	r3, [r2]
	.loc 1 72 2
	movs	r2, #1
	movs	r1, #13
	ldr	r0, .L11+8
	bl	MCAL_GPIO_WritePin
	.loc 1 74 19
	ldr	r3, .L11+4
	ldr	r3, [r3]
	.loc 1 74 12
	cmp	r3, #100
	bne	.L8
	.loc 1 76 13
	ldr	r0, .L11+12
	bl	MHxRTOS_ActivateTask
.L8:
	.loc 1 78 19
	ldr	r3, .L11+4
	ldr	r3, [r3]
	.loc 1 78 12
	cmp	r3, #200
	bne	.L10
	.loc 1 80 19
	ldr	r3, .L11+4
	movs	r2, #0
	str	r2, [r3]
	.loc 1 81 13
	ldr	r0, .L11+16
	bl	MHxRTOS_TerminateTask
	.loc 1 70 18
	b	.L10
.L12:
	.align	2
.L11:
	.word	Task2LED
	.word	Count.2
	.word	1073875968
	.word	Task3
	.word	Task2
	.cfi_endproc
.LFE127:
	.size	task2, .-task2
	.align	1
	.global	task3
	.syntax unified
	.thumb
	.thumb_func
	.type	task3, %function
task3:
.LFB128:
	.loc 1 86 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
.L16:
	.loc 1 90 18
	ldr	r3, .L17
	ldrb	r3, [r3]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, .L17
	strb	r2, [r3]
	.loc 1 91 14
	ldr	r3, .L17+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L17+4
	str	r3, [r2]
	.loc 1 92 2
	movs	r2, #1
	movs	r1, #14
	ldr	r0, .L17+8
	bl	MCAL_GPIO_WritePin
	.loc 1 94 19
	ldr	r3, .L17+4
	ldr	r3, [r3]
	.loc 1 94 12
	cmp	r3, #100
	bne	.L14
	.loc 1 96 13
	ldr	r0, .L17+12
	bl	MHxRTOS_ActivateTask
.L14:
	.loc 1 98 19
	ldr	r3, .L17+4
	ldr	r3, [r3]
	.loc 1 98 12
	cmp	r3, #200
	bne	.L16
	.loc 1 100 19
	ldr	r3, .L17+4
	movs	r2, #0
	str	r2, [r3]
	.loc 1 101 13
	ldr	r0, .L17+16
	bl	MHxRTOS_TerminateTask
	.loc 1 90 18
	b	.L16
.L18:
	.align	2
.L17:
	.word	Task3LED
	.word	Count.1
	.word	1073875968
	.word	Task4
	.word	Task3
	.cfi_endproc
.LFE128:
	.size	task3, .-task3
	.align	1
	.global	task4
	.syntax unified
	.thumb
	.thumb_func
	.type	task4, %function
task4:
.LFB129:
	.loc 1 106 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
.L22:
	.loc 1 110 18
	ldr	r3, .L23
	ldrb	r3, [r3]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, .L23
	strb	r2, [r3]
	.loc 1 111 14
	ldr	r3, .L23+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L23+4
	str	r3, [r2]
	.loc 1 112 2
	movs	r2, #1
	movs	r1, #15
	ldr	r0, .L23+8
	bl	MCAL_GPIO_WritePin
	.loc 1 114 19
	ldr	r3, .L23+4
	ldr	r3, [r3]
	.loc 1 114 12
	cmp	r3, #3
	bne	.L20
	.loc 1 116 13
	ldr	r1, .L23+12
	ldr	r0, .L23+16
	bl	MHxRTOS_AcquireMutex
.L20:
	.loc 1 118 19
	ldr	r3, .L23+4
	ldr	r3, [r3]
	.loc 1 118 12
	cmp	r3, #200
	bne	.L22
	.loc 1 120 19
	ldr	r3, .L23+4
	movs	r2, #0
	str	r2, [r3]
	.loc 1 121 13
	ldr	r0, .L23+16
	bl	MHxRTOS_ReleaseMutex
	.loc 1 122 13
	ldr	r0, .L23+12
	bl	MHxRTOS_TerminateTask
	.loc 1 110 18
	b	.L22
.L24:
	.align	2
.L23:
	.word	Task4LED
	.word	Count.0
	.word	1073875968
	.word	Task4
	.word	Mutex1
	.cfi_endproc
.LFE129:
	.size	task4, .-task4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Mutex1\000"
	.align	2
.LC1:
	.ascii	"task_1\000"
	.align	2
.LC2:
	.ascii	"task_2\000"
	.align	2
.LC3:
	.ascii	"task_3\000"
	.align	2
.LC4:
	.ascii	"task_4\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.type	main, %function
main:
.LFB130:
	.loc 1 129 1
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
.LBB7:
.LBB8:
	.file 2 "CMSIS/Inc/core_cmFunc.h"
	.loc 2 361 3
	.syntax unified
@ 361 "CMSIS/Inc/core_cmFunc.h" 1
	MRS r3, control
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #16]
	.loc 2 362 9
	ldr	r3, [r7, #16]
.LBE8:
.LBE7:
	.loc 1 131 24
	and	r3, r3, #1
	.loc 1 131 7
	cmp	r3, #0
	beq	.L27
	.loc 1 132 12
	ldr	r3, .L34
	movs	r2, #7
	str	r2, [r3]
	b	.L28
.L27:
	.loc 1 134 12
	ldr	r3, .L34
	movs	r2, #10
	str	r2, [r3]
.L28:
	.loc 1 138 5
	movs	r0, #3
	bl	MCAL_RCC_Enable_Peripheral
	.loc 1 141 23
	ldr	r3, .L34+4
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 142 28
	ldr	r3, .L34+4
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 143 27
	ldr	r3, .L34+4
	movs	r2, #1
	strb	r2, [r3, #1]
	.loc 1 144 33
	ldr	r3, .L34+4
	movs	r2, #0
	str	r2, [r3, #4]
.LBB9:
	.loc 1 146 13
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 146 5
	b	.L29
.L30:
	.loc 1 147 28 discriminator 3
	ldr	r3, [r7, #20]
	uxth	r2, r3
	ldr	r3, .L34+4
	strh	r2, [r3, #2]	@ movhi
	.loc 1 148 5 discriminator 3
	ldr	r1, .L34+4
	ldr	r0, .L34+8
	bl	MCAL_GPIO_Init
	.loc 1 146 23 discriminator 3
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L29:
	.loc 1 146 18 discriminator 1
	ldr	r3, [r7, #20]
	cmp	r3, #15
	ble	.L30
.LBE9:
	.loc 1 151 5
	movs	r2, #1
	movs	r1, #1
	ldr	r0, .L34+8
	bl	MCAL_GPIO_WritePin
	.loc 1 152 5
	movs	r2, #1
	movs	r1, #2
	ldr	r0, .L34+8
	bl	MCAL_GPIO_WritePin
	.loc 1 156 5
	bl	HW_init
	.loc 1 157 9
	bl	MHxRTOS_init
	mov	r3, r0
	.loc 1 157 8
	cmp	r3, #0
	beq	.L31
.L32:
	.loc 1 158 15 discriminator 1
	nop
	b	.L32
.L31:
	.loc 1 160 24
	ldr	r3, .L34+12
	movs	r2, #3
	str	r2, [r3, #4]
	.loc 1 161 21
	ldr	r3, .L34+12
	ldr	r2, .L34+16
	str	r2, [r3]
	.loc 1 162 5
	ldr	r3, .L34+20
	ldr	r2, .L34+24
	ldm	r2, {r0, r1}
	str	r0, [r3]
	adds	r3, r3, #4
	strh	r1, [r3]	@ movhi
	adds	r3, r3, #2
	lsrs	r2, r1, #16
	strb	r2, [r3]
	.loc 1 163 22
	ldr	r3, .L34+28
	mov	r2, #1024
	str	r2, [r3]
	.loc 1 164 23
	ldr	r3, .L34+28
	ldr	r2, .L34+32
	str	r2, [r3, #8]
	.loc 1 165 20
	ldr	r3, .L34+28
	movs	r2, #4
	strb	r2, [r3, #4]
	.loc 1 166 5
	ldr	r3, .L34+36
	ldr	r2, .L34+40
	ldm	r2, {r0, r1}
	str	r0, [r3]
	adds	r3, r3, #4
	strh	r1, [r3]	@ movhi
	adds	r3, r3, #2
	lsrs	r2, r1, #16
	strb	r2, [r3]
	.loc 1 167 22
	ldr	r3, .L34+44
	mov	r2, #1024
	str	r2, [r3]
	.loc 1 168 23
	ldr	r3, .L34+44
	ldr	r2, .L34+48
	str	r2, [r3, #8]
	.loc 1 169 20
	ldr	r3, .L34+44
	movs	r2, #3
	strb	r2, [r3, #4]
	.loc 1 170 5
	ldr	r3, .L34+52
	ldr	r2, .L34+56
	ldm	r2, {r0, r1}
	str	r0, [r3]
	adds	r3, r3, #4
	strh	r1, [r3]	@ movhi
	adds	r3, r3, #2
	lsrs	r2, r1, #16
	strb	r2, [r3]
	.loc 1 171 22
	ldr	r3, .L34+60
	mov	r2, #1024
	str	r2, [r3]
	.loc 1 172 23
	ldr	r3, .L34+60
	ldr	r2, .L34+64
	str	r2, [r3, #8]
	.loc 1 173 20
	ldr	r3, .L34+60
	movs	r2, #2
	strb	r2, [r3, #4]
	.loc 1 174 5
	ldr	r3, .L34+68
	ldr	r2, .L34+72
	ldm	r2, {r0, r1}
	str	r0, [r3]
	adds	r3, r3, #4
	strh	r1, [r3]	@ movhi
	adds	r3, r3, #2
	lsrs	r2, r1, #16
	strb	r2, [r3]
	.loc 1 175 22
	ldr	r3, .L34+76
	mov	r2, #1024
	str	r2, [r3]
	.loc 1 176 23
	ldr	r3, .L34+76
	ldr	r2, .L34+80
	str	r2, [r3, #8]
	.loc 1 177 20
	ldr	r3, .L34+76
	movs	r2, #1
	strb	r2, [r3, #4]
	.loc 1 178 5
	ldr	r3, .L34+84
	ldr	r2, .L34+88
	ldm	r2, {r0, r1}
	str	r0, [r3]
	adds	r3, r3, #4
	strh	r1, [r3]	@ movhi
	adds	r3, r3, #2
	lsrs	r2, r1, #16
	strb	r2, [r3]
	.loc 1 179 14
	ldr	r0, .L34+28
	bl	MHxRTOS_CreateTask
	mov	r3, r0
	mov	r2, r3
	.loc 1 179 11
	ldr	r3, .L34+92
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, .L34+92
	strb	r2, [r3]
	.loc 1 180 14
	ldr	r0, .L34+44
	bl	MHxRTOS_CreateTask
	mov	r3, r0
	mov	r2, r3
	.loc 1 180 11
	ldr	r3, .L34+92
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, .L34+92
	strb	r2, [r3]
	.loc 1 181 14
	ldr	r0, .L34+60
	bl	MHxRTOS_CreateTask
	mov	r3, r0
	mov	r2, r3
	.loc 1 181 11
	ldr	r3, .L34+92
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, .L34+92
	strb	r2, [r3]
	.loc 1 182 14
	ldr	r0, .L34+76
	bl	MHxRTOS_CreateTask
	mov	r3, r0
	mov	r2, r3
	.loc 1 182 11
	ldr	r3, .L34+92
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, .L34+92
	strb	r2, [r3]
	.loc 1 186 32
	bl	MCAL_RCC_GetSYS_CLKFreq
	mov	r3, r0
	.loc 1 186 30
	uxtb	r3, r3
	strb	r3, [r7, #5]
	.loc 1 187 34
	movs	r3, #2
	strb	r3, [r7, #6]
	.loc 1 188 30
	movw	r3, #15999
	str	r3, [r7, #8]
	.loc 1 189 30
	movs	r3, #1
	strb	r3, [r7, #4]
	.loc 1 190 35
	ldr	r3, .L34+96
	str	r3, [r7, #12]
	.loc 1 191 5
	adds	r3, r7, #4
	mov	r0, r3
	bl	MCAL_STK_Config
.LBB10:
.LBB11:
	.loc 2 336 3
	.syntax unified
@ 336 "CMSIS/Inc/core_cmFunc.h" 1
	cpsie i
@ 0 "" 2
	.loc 2 337 1
	.thumb
	.syntax unified
	nop
.LBE11:
.LBE10:
	.loc 1 194 5
	bl	MCAL_STK_StartTimer
	.loc 1 198 5
	ldr	r0, .L34+28
	bl	MHxRTOS_ActivateTask
	.loc 1 200 5
	bl	MHxRTOS_STARTOS
.L33:
	.loc 1 202 11 discriminator 2
	nop
	b	.L33
.L35:
	.align	2
.L34:
	.word	test
	.word	Gpioled
	.word	1073875968
	.word	Mutex1
	.word	payload
	.word	Mutex1+16
	.word	.LC0
	.word	Task1
	.word	task1
	.word	Task1+28
	.word	.LC1
	.word	Task2
	.word	task2
	.word	Task2+28
	.word	.LC2
	.word	Task3
	.word	task3
	.word	Task3+28
	.word	.LC3
	.word	Task4
	.word	task4
	.word	Task4+28
	.word	.LC4
	.word	error
	.word	SysTick_Callback
	.cfi_endproc
.LFE130:
	.size	main, .-main
	.align	1
	.global	SysTick_Callback
	.syntax unified
	.thumb
	.thumb_func
	.type	SysTick_Callback, %function
SysTick_Callback:
.LFB131:
	.loc 1 206 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 207 1
	nop
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE131:
	.size	SysTick_Callback, .-SysTick_Callback
	.bss
	.align	2
Count.3:
	.space	4
	.size	Count.3, 4
	.align	2
Count.2:
	.space	4
	.size	Count.2, 4
	.align	2
Count.1:
	.space	4
	.size	Count.1, 4
	.align	2
Count.0:
	.space	4
	.size	Count.0, 4
	.text
.Letext0:
	.file 3 "/opt/st/stm32cubeclt_1.16.0/GNU-tools-for-STM32/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/opt/st/stm32cubeclt_1.16.0/GNU-tools-for-STM32/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "CMSIS/Inc/stm32f4xx.h"
	.file 6 "drivers/Inc/Platform_Types.h"
	.file 7 "drivers/Inc/stm32f401xx_systick_driver.h"
	.file 8 "drivers/Inc/stm32f401xx_gpio_driver.h"
	.file 9 "RTOS/Inc/task_scheduler.h"
	.file 10 "drivers/Inc/stm32f401xx_rcc_driver.h"
	.file 11 "RTOS/Inc/cortex_mx_os_porting.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x737
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0x1d
	.4byte	.LASF107
	.4byte	.LASF108
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2b
	.byte	0x18
	.4byte	0x39
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x39
	.byte	0x19
	.4byte	0x53
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4f
	.byte	0x19
	.4byte	0x6d
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2d
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x47
	.uleb128 0xd
	.4byte	0x9c
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x61
	.uleb128 0xd
	.4byte	0xad
	.uleb128 0x18
	.byte	0x28
	.byte	0x5
	.2byte	0x5cd
	.byte	0x9
	.4byte	0x141
	.uleb128 0x8
	.4byte	.LASF15
	.2byte	0x5cf
	.4byte	0xb9
	.byte	0
	.uleb128 0x8
	.4byte	.LASF16
	.2byte	0x5d0
	.4byte	0xb9
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF17
	.2byte	0x5d1
	.4byte	0xb9
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF18
	.2byte	0x5d2
	.4byte	0xb9
	.byte	0xc
	.uleb128 0xe
	.ascii	"IDR\000"
	.2byte	0x5d3
	.4byte	0xb9
	.byte	0x10
	.uleb128 0xe
	.ascii	"ODR\000"
	.2byte	0x5d4
	.4byte	0xb9
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF19
	.2byte	0x5d5
	.4byte	0xa8
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF20
	.2byte	0x5d6
	.4byte	0xa8
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF21
	.2byte	0x5d7
	.4byte	0xb9
	.byte	0x1c
	.uleb128 0xe
	.ascii	"AFR\000"
	.2byte	0x5d8
	.4byte	0x151
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.4byte	0xb9
	.4byte	0x151
	.uleb128 0x10
	.4byte	0x89
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	0x141
	.uleb128 0x19
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x5d9
	.byte	0x3
	.4byte	0xbe
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF23
	.uleb128 0x7
	.4byte	0x16f
	.uleb128 0x1a
	.uleb128 0x7
	.4byte	0x39
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.uleb128 0xf
	.4byte	0x39
	.4byte	0x18c
	.uleb128 0x10
	.4byte	0x89
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x6
	.byte	0x45
	.byte	0x1d
	.4byte	0x39
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x6
	.byte	0x47
	.byte	0x1d
	.4byte	0x53
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x6
	.byte	0x4a
	.byte	0x1d
	.4byte	0x6d
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF28
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF29
	.uleb128 0xa
	.byte	0xc
	.byte	0x7
	.byte	0x30
	.byte	0x9
	.4byte	0x209
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x7
	.byte	0x31
	.byte	0xb
	.4byte	0x18c
	.byte	0
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x7
	.byte	0x32
	.byte	0xb
	.4byte	0x18c
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x7
	.byte	0x33
	.byte	0xb
	.4byte	0x18c
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x7
	.byte	0x34
	.byte	0xc
	.4byte	0x1a4
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x7
	.byte	0x35
	.byte	0xc
	.4byte	0x16a
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x7
	.byte	0x36
	.byte	0x3
	.4byte	0x1be
	.uleb128 0xa
	.byte	0x10
	.byte	0x8
	.byte	0x28
	.byte	0x9
	.4byte	0x26d
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x8
	.byte	0x29
	.byte	0xb
	.4byte	0x18c
	.byte	0
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x8
	.byte	0x2b
	.byte	0xb
	.4byte	0x18c
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x8
	.byte	0x2d
	.byte	0xc
	.4byte	0x198
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x8
	.byte	0x2f
	.byte	0xc
	.4byte	0x1a4
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x8
	.byte	0x30
	.byte	0xc
	.4byte	0x1a4
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x8
	.byte	0x31
	.byte	0xc
	.4byte	0x1a4
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x8
	.byte	0x32
	.byte	0x3
	.4byte	0x215
	.uleb128 0x7
	.4byte	0x156
	.uleb128 0x11
	.4byte	0x39
	.byte	0x14
	.byte	0xd
	.4byte	0x2a2
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0x9
	.byte	0x1a
	.byte	0x2
	.4byte	0x27e
	.uleb128 0x11
	.4byte	0x39
	.byte	0x26
	.byte	0x6
	.4byte	0x2d2
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.4byte	0x39
	.byte	0x2d
	.byte	0x7
	.4byte	0x2ea
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x9
	.byte	0x2c
	.byte	0x1
	.4byte	0x30e
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x9
	.byte	0x30
	.byte	0x4
	.4byte	0x2d2
	.byte	0
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x9
	.byte	0x31
	.byte	0x10
	.4byte	0x89
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x44
	.byte	0x9
	.byte	0x1d
	.byte	0x9
	.4byte	0x39a
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x9
	.byte	0x1e
	.byte	0xf
	.4byte	0x89
	.byte	0
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x9
	.byte	0x1f
	.byte	0x10
	.4byte	0x39
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x9
	.byte	0x20
	.byte	0x9
	.4byte	0x16a
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x9
	.byte	0x21
	.byte	0x10
	.4byte	0x39
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x9
	.byte	0x22
	.byte	0xf
	.4byte	0x89
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x9
	.byte	0x23
	.byte	0xf
	.4byte	0x89
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x9
	.byte	0x24
	.byte	0x10
	.4byte	0x39a
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x9
	.byte	0x25
	.byte	0x7
	.4byte	0x39f
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x9
	.byte	0x2b
	.byte	0x3
	.4byte	0x2ae
	.byte	0x3a
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x9
	.byte	0x32
	.byte	0x3
	.4byte	0x2ea
	.byte	0x3c
	.byte	0
	.uleb128 0x7
	.4byte	0x89
	.uleb128 0xf
	.4byte	0x175
	.4byte	0x3af
	.uleb128 0x10
	.4byte	0x89
	.byte	0x1d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0x9
	.byte	0x33
	.byte	0x2
	.4byte	0x30e
	.uleb128 0xa
	.byte	0x30
	.byte	0x9
	.byte	0x35
	.byte	0x9
	.4byte	0x406
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x9
	.byte	0x36
	.byte	0x11
	.4byte	0x170
	.byte	0
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x9
	.byte	0x37
	.byte	0x11
	.4byte	0x89
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x9
	.byte	0x38
	.byte	0x10
	.4byte	0x406
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x9
	.byte	0x39
	.byte	0x10
	.4byte	0x406
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x9
	.byte	0x3a
	.byte	0xc
	.4byte	0x39f
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0x3af
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x9
	.byte	0x3b
	.byte	0x3
	.4byte	0x3bb
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0x21
	.byte	0xa
	.4byte	0xad
	.uleb128 0x5
	.byte	0x3
	.4byte	test
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0x25
	.byte	0x11
	.4byte	0x2a2
	.uleb128 0x5
	.byte	0x3
	.4byte	error
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0x26
	.byte	0x12
	.4byte	0x26d
	.uleb128 0x5
	.byte	0x3
	.4byte	Gpioled
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0x28
	.byte	0xa
	.4byte	0x3af
	.uleb128 0x5
	.byte	0x3
	.4byte	Task1
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x28
	.byte	0x11
	.4byte	0x3af
	.uleb128 0x5
	.byte	0x3
	.4byte	Task2
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0x28
	.byte	0x18
	.4byte	0x3af
	.uleb128 0x5
	.byte	0x3
	.4byte	Task3
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0x28
	.byte	0x1f
	.4byte	0x3af
	.uleb128 0x5
	.byte	0x3
	.4byte	Task4
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0x29
	.byte	0xf
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	Task1LED
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x29
	.byte	0x19
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	Task2LED
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x29
	.byte	0x23
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	Task3LED
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0x29
	.byte	0x2d
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	Task4LED
	.uleb128 0x4
	.4byte	.LASF84
	.byte	0x2a
	.byte	0xb
	.4byte	0x40b
	.uleb128 0x5
	.byte	0x3
	.4byte	Mutex1
	.uleb128 0x4
	.4byte	.LASF85
	.byte	0x2b
	.byte	0xf
	.4byte	0x17c
	.uleb128 0x5
	.byte	0x3
	.4byte	payload
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0x9
	.byte	0x45
	.4byte	0x501
	.uleb128 0x13
	.byte	0
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0x7
	.byte	0x9a
	.4byte	0x50e
	.uleb128 0x13
	.byte	0
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x7
	.byte	0x7b
	.4byte	0x51f
	.uleb128 0x5
	.4byte	0x51f
	.byte	0
	.uleb128 0x7
	.4byte	0x209
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0xa
	.byte	0x70
	.byte	0xa
	.4byte	0xad
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x42
	.4byte	0x2a2
	.4byte	0x544
	.uleb128 0x5
	.4byte	0x406
	.byte	0
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0x9
	.byte	0x41
	.byte	0x11
	.4byte	0x2a2
	.uleb128 0x12
	.4byte	.LASF90
	.byte	0xb
	.byte	0x2e
	.4byte	0x55d
	.uleb128 0x13
	.byte	0
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x8
	.byte	0xb7
	.4byte	0x573
	.uleb128 0x5
	.4byte	0x279
	.uleb128 0x5
	.4byte	0x573
	.byte	0
	.uleb128 0x7
	.4byte	0x26d
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0xa
	.byte	0x5d
	.4byte	0x589
	.uleb128 0x5
	.4byte	0x90
	.byte	0
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x9
	.byte	0x44
	.4byte	0x59a
	.uleb128 0x5
	.4byte	0x406
	.byte	0
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x9
	.byte	0x4b
	.4byte	0x5ab
	.uleb128 0x5
	.4byte	0x5ab
	.byte	0
	.uleb128 0x7
	.4byte	0x40b
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x9
	.byte	0x43
	.4byte	0x5c1
	.uleb128 0x5
	.4byte	0x406
	.byte	0
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x4a
	.4byte	0x2a2
	.4byte	0x5da
	.uleb128 0x5
	.4byte	0x5ab
	.uleb128 0x5
	.4byte	0x406
	.byte	0
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x8
	.byte	0xe6
	.4byte	0x5f5
	.uleb128 0x5
	.4byte	0x279
	.uleb128 0x5
	.4byte	0x198
	.uleb128 0x5
	.4byte	0x18c
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF109
	.byte	0x1
	.byte	0xcd
	.byte	0x6
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF110
	.byte	0x1
	.byte	0x80
	.byte	0x5
	.4byte	0x82
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x678
	.uleb128 0xb
	.4byte	.LASF100
	.byte	0xb9
	.byte	0x12
	.4byte	0x209
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x64a
	.uleb128 0x1e
	.ascii	"i\000"
	.byte	0x1
	.byte	0x92
	.byte	0xd
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.4byte	0x710
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.byte	0x1
	.byte	0x83
	.byte	0x8
	.4byte	0x667
	.uleb128 0x20
	.4byte	0x722
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x21
	.4byte	0x730
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0xc0
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF102
	.byte	0x69
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69e
	.uleb128 0xb
	.4byte	.LASF101
	.byte	0x6b
	.byte	0x10
	.4byte	0x82
	.uleb128 0x5
	.byte	0x3
	.4byte	Count.0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF103
	.byte	0x55
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c4
	.uleb128 0xb
	.4byte	.LASF101
	.byte	0x57
	.byte	0x10
	.4byte	0x82
	.uleb128 0x5
	.byte	0x3
	.4byte	Count.1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF104
	.byte	0x41
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ea
	.uleb128 0xb
	.4byte	.LASF101
	.byte	0x43
	.byte	0x10
	.4byte	0x82
	.uleb128 0x5
	.byte	0x3
	.4byte	Count.2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF105
	.byte	0x2c
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x710
	.uleb128 0xb
	.4byte	.LASF101
	.byte	0x2e
	.byte	0x10
	.4byte	0x82
	.uleb128 0x5
	.byte	0x3
	.4byte	Count.3
	.byte	0
	.uleb128 0x22
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x165
	.byte	0x3d
	.4byte	0xad
	.byte	0x3
	.4byte	0x730
	.uleb128 0x23
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x167
	.byte	0xc
	.4byte	0xad
	.byte	0
	.uleb128 0x24
	.4byte	.LASF113
	.byte	0x2
	.2byte	0x14e
	.byte	0x39
	.byte	0x3
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
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.sleb128 6
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
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
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
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
.LASF97:
	.ascii	"MHxRTOS_CreateTask\000"
.LASF80:
	.ascii	"Task1LED\000"
.LASF111:
	.ascii	"__get_CONTROL\000"
.LASF112:
	.ascii	"result\000"
.LASF100:
	.ascii	"systick_cfg\000"
.LASF17:
	.ascii	"OSPEEDR\000"
.LASF89:
	.ascii	"MHxRTOS_init\000"
.LASF44:
	.ascii	"Ready_Queue_init_error\000"
.LASF59:
	.ascii	"AutoStart\000"
.LASF31:
	.ascii	"clock_config\000"
.LASF76:
	.ascii	"Task1\000"
.LASF77:
	.ascii	"Task2\000"
.LASF78:
	.ascii	"Task3\000"
.LASF79:
	.ascii	"Task4\000"
.LASF50:
	.ascii	"Waiting\000"
.LASF67:
	.ascii	"Ppayload\000"
.LASF94:
	.ascii	"MHxRTOS_TerminateTask\000"
.LASF110:
	.ascii	"main\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF99:
	.ascii	"MCAL_GPIO_WritePin\000"
.LASF48:
	.ascii	"Suspend\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF86:
	.ascii	"MHxRTOS_STARTOS\000"
.LASF2:
	.ascii	"short int\000"
.LASF66:
	.ascii	"Task_ref\000"
.LASF72:
	.ascii	"Mutex_ref\000"
.LASF26:
	.ascii	"uint16\000"
.LASF75:
	.ascii	"Gpioled\000"
.LASF71:
	.ascii	"MutexName\000"
.LASF93:
	.ascii	"MCAL_RCC_Enable_Peripheral\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF25:
	.ascii	"uint8\000"
.LASF54:
	.ascii	"Blocking\000"
.LASF81:
	.ascii	"Task2LED\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF90:
	.ascii	"HW_init\000"
.LASF16:
	.ascii	"OTYPER\000"
.LASF28:
	.ascii	"float\000"
.LASF9:
	.ascii	"long long int\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF18:
	.ascii	"PUPDR\000"
.LASF32:
	.ascii	"interrupt_config\000"
.LASF6:
	.ascii	"long int\000"
.LASF30:
	.ascii	"running_mode\000"
.LASF20:
	.ascii	"BSRRH\000"
.LASF34:
	.ascii	"Callback_Function\000"
.LASF15:
	.ascii	"MODER\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF113:
	.ascii	"__enable_irq\000"
.LASF84:
	.ascii	"Mutex1\000"
.LASF92:
	.ascii	"MCAL_GPIO_Init\000"
.LASF35:
	.ascii	"STK_config_t\000"
.LASF37:
	.ascii	"GPIO_PinSpeed\000"
.LASF64:
	.ascii	"TaskState\000"
.LASF95:
	.ascii	"MHxRTOS_ReleaseMutex\000"
.LASF52:
	.ascii	"Enable\000"
.LASF104:
	.ascii	"task2\000"
.LASF103:
	.ascii	"task3\000"
.LASF65:
	.ascii	"TimingWaiting\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF0:
	.ascii	"signed char\000"
.LASF82:
	.ascii	"Task3LED\000"
.LASF96:
	.ascii	"MHxRTOS_ActivateTask\000"
.LASF70:
	.ascii	"NextTUser\000"
.LASF53:
	.ascii	"Disable\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF61:
	.ascii	"_E_PSP_Task\000"
.LASF38:
	.ascii	"GPIO_PinNumber\000"
.LASF101:
	.ascii	"Count\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF107:
	.ascii	"Src/main.c\000"
.LASF108:
	.ascii	"/home/mohamed/Downloads/test/corrected4/makefile_rt"
	.ascii	"os_proteus_half_worked\000"
.LASF24:
	.ascii	"char\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF51:
	.ascii	"ready\000"
.LASF87:
	.ascii	"MCAL_STK_StartTimer\000"
.LASF45:
	.ascii	"Task_exceeded_StackSize\000"
.LASF60:
	.ascii	"_S_PSP_Task\000"
.LASF56:
	.ascii	"Stack_Size\000"
.LASF58:
	.ascii	"p_TaskEntry\000"
.LASF73:
	.ascii	"test\000"
.LASF43:
	.ascii	"NoError\000"
.LASF46:
	.ascii	"MutexisReacedToMaxNumberOfUsers\000"
.LASF85:
	.ascii	"payload\000"
.LASF27:
	.ascii	"uint32\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF29:
	.ascii	"double\000"
.LASF36:
	.ascii	"GPIO_MODE\000"
.LASF83:
	.ascii	"Task4LED\000"
.LASF41:
	.ascii	"GPIO_PinAltFunMode\000"
.LASF68:
	.ascii	"PayloadSize\000"
.LASF47:
	.ascii	"MHxRTOS_errorID\000"
.LASF105:
	.ascii	"task1\000"
.LASF109:
	.ascii	"SysTick_Callback\000"
.LASF55:
	.ascii	"Ticks_Count\000"
.LASF102:
	.ascii	"task4\000"
.LASF23:
	.ascii	"long double\000"
.LASF42:
	.ascii	"GPIO_PinConfig_t\000"
.LASF40:
	.ascii	"GPIO_PinOPType\000"
.LASF98:
	.ascii	"MHxRTOS_AcquireMutex\000"
.LASF69:
	.ascii	"CurrentTUser\000"
.LASF57:
	.ascii	"priority\000"
.LASF106:
	.ascii	"GNU C11 12.3.1 20230626 -mcpu=cortex-m4 -mthumb -mf"
	.ascii	"loat-abi=soft -march=armv7e-m -g -O0 -std=gnu11\000"
.LASF33:
	.ascii	"reload_value\000"
.LASF74:
	.ascii	"error\000"
.LASF63:
	.ascii	"TaskName\000"
.LASF49:
	.ascii	"Running\000"
.LASF39:
	.ascii	"GPIO_PinPuPdControl\000"
.LASF19:
	.ascii	"BSRRL\000"
.LASF88:
	.ascii	"MCAL_RCC_GetSYS_CLKFreq\000"
.LASF21:
	.ascii	"LCKR\000"
.LASF22:
	.ascii	"GPIO_TypeDef\000"
.LASF91:
	.ascii	"MCAL_STK_Config\000"
.LASF62:
	.ascii	"Current_PSP\000"
	.ident	"GCC: (GNU Tools for STM32 12.3.rel1.20240612-1315) 12.3.1 20230626"
