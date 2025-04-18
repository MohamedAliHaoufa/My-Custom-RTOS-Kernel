/**
 * @file           main.c
 * @author         Mohamed Ali Haoufa
 * @brief          Contains the main program logic for managing STM32F401xx MCU-based peripherals.
 * @version        0.1
 * @date           2024-11-12
 *
 * This file includes the initialization and control logic for peripherals
 * such as LEDs, LCDs, UART, PIR sensors, and servo motors. It operates
 * the system based on a state machine, managing various hardware components.
 *
 * @copyright      Copyright (c) 2024 Mohamed Ali Haoufa. All rights reserved.
 */
#include <stdint.h>
#include "core_cm4.h"
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
//#include "stm32f401xx.h"
#include "stm32f401xx_gpio_driver.h"
#include "stm32f401xx_systick_driver.h"
#include "lcd_driver.h"
#include "keypad_driver.h"
#include "stm32f401xx_usart_driver.h"
#include "stm32f401xx_spi_driver.h"
#include "stm32f401xx_i2c_driver.h"
#include "eeprom_flash.h"
#include "task_scheduler.h"


void SysTick_Callback(void);

uint32_t test = 0;



MHxRTOS_errorID error;
GPIO_PinConfig_t Gpioled;

Task_ref Task1, Task2, Task3, Task4;
unsigned char Task1LED, Task2LED, Task3LED, Task4LED;
Mutex_ref Mutex1;
unsigned char payload[3] = {1, 2, 3};
void task1()
{
    static int Count = 0;
    while (1)
    {
        Task1LED ^= 1;
        Count++;
	MCAL_GPIO_WritePin(GPIOD, (uint16) 12, GPIO_PIN_SET);

        if (Count == 100)
        {
            MHxRTOS_AcquireMutex(&Mutex1, &Task1);
            MHxRTOS_ActivateTask(&Task2);
        }
        if (Count == 200)
        {
            Count = 0;
            MHxRTOS_ReleaseMutex(&Mutex1);
        }
    }
}
void task2()
{
    static int Count = 0;
    while (1)
    {
        Task2LED ^= 1;
        Count++;
	MCAL_GPIO_WritePin(GPIOD, (uint16) 13, GPIO_PIN_SET);

        if (Count == 100)
        {
            MHxRTOS_ActivateTask(&Task3);
        }
        if (Count == 200)
        {
            Count = 0;
            MHxRTOS_TerminateTask(&Task2);
        }
    }
}
void task3()
{
    static int Count = 0;
    while (1)
    {
        Task3LED ^= 1;
        Count++;
	MCAL_GPIO_WritePin(GPIOD, (uint16) 14, GPIO_PIN_SET);

        if (Count == 100)
        {
            MHxRTOS_ActivateTask(&Task4);
        }
        if (Count == 200)
        {
            Count = 0;
            MHxRTOS_TerminateTask(&Task3);
        }
    }
}
void task4()
{
    static int Count = 0;
    while (1)
    {
        Task4LED ^= 1;
        Count++;
	MCAL_GPIO_WritePin(GPIOD, (uint16) 15, GPIO_PIN_SET);

        if (Count == 3)
        {
            MHxRTOS_AcquireMutex(&Mutex1, &Task4);
        }
        if (Count == 200)
        {
            Count = 0;
            MHxRTOS_ReleaseMutex(&Mutex1);
            MHxRTOS_TerminateTask(&Task4);
	    
        }
    }
}
// priority inversion Example
int main(void)
{
   // verifies if i'm in privileged mode (0) or unprivileged mode (1)
    if(__get_CONTROL() & 0x1){
      test = 7; // unprivileged mode
    }else {
      test = 10; // privileged mode
    }


    MCAL_RCC_Enable_Peripheral(RCC_GPIOD);
    
    //pin configuration
    Gpioled.GPIO_MODE = GPIO_MODE_OUT;
    Gpioled.GPIO_PinOPType = GPIO_OP_TYPE_PP;
    Gpioled.GPIO_PinSpeed = GPIO_SPEED_MEDIUM;
    Gpioled.GPIO_PinPuPdControl = GPIO_NO_PUPD;

    for(int i=0;i<16;i++){
    Gpioled.GPIO_PinNumber = i;
    MCAL_GPIO_Init(GPIOD, &Gpioled);
    }

    MCAL_GPIO_WritePin(GPIOD, (uint16) 1, GPIO_PIN_SET);
    MCAL_GPIO_WritePin(GPIOD, (uint16) 2, GPIO_PIN_SET);

    
    // HW_Init (Initialize ClockTree, RestController)
    HW_init();
    if (MHxRTOS_init() != NoError)
        while (1);

    Mutex1.PayloadSize = 3;
    Mutex1.Ppayload = payload;
    strcpy(Mutex1.MutexName, "Mutex1");
    Task1.Stack_Size = 1024;
    Task1.p_TaskEntry = task1;
    Task1.priority = 4;
    strcpy(Task1.TaskName, "task_1");
    Task2.Stack_Size = 1024;
    Task2.p_TaskEntry = task2;
    Task2.priority = 3;
    strcpy(Task2.TaskName, "task_2");
    Task3.Stack_Size = 1024;
    Task3.p_TaskEntry = task3;
    Task3.priority = 2;
    strcpy(Task3.TaskName, "task_3");
    Task4.Stack_Size = 1024;
    Task4.p_TaskEntry = task4;
    Task4.priority = 1;
    strcpy(Task4.TaskName, "task_4");
    error += MHxRTOS_CreateTask(&Task1);
    error += MHxRTOS_CreateTask(&Task2);
    error += MHxRTOS_CreateTask(&Task3);
    error += MHxRTOS_CreateTask(&Task4);
    
    // Configure SysTick
    STK_config_t systick_cfg;
    systick_cfg.clock_config = MCAL_RCC_GetSYS_CLKFreq();
    systick_cfg.interrupt_config = STK_INTERRUPT_ENABLED;
    systick_cfg.reload_value = 16000 - 1;  // For 1ms interval at 16MHz clock
    systick_cfg.running_mode = STK_PERIODIC_MODE;
    systick_cfg.Callback_Function = SysTick_Callback;
    MCAL_STK_Config(&systick_cfg);
    __enable_irq();
    // Start SysTick timer
    MCAL_STK_StartTimer();


    
    MHxRTOS_ActivateTask(&Task1);

    MHxRTOS_STARTOS();
    
    while (1);
}

void SysTick_Callback(void)
{
}
