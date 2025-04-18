/**
 * @file stm32f401xx.h
 * @author Mohamed Ali Haoufa
 * @brief Header file containing all the necessary information about the STM32F401xx MCU.
 * 
 * This file provides definitions, memory maps, and register structures 
 * for the STM32F401xx series of microcontrollers. It includes base addresses 
 * for various memory regions and peripheral registers.
 * 
 * @version 1.0
 * @date 2024-11-12
 * 
 * @attention
 * This file is designed specifically for the STM32F401xx series microcontrollers. Ensure that 
 * all references and addresses are compliant with the specific microcontroller variant being used.
 * 
 * @copyright
 * (c) 2024
 */

#ifndef INC_STM32F401XX_H_
#define INC_STM32F401XX_H_

/** @defgroup STM32F401XX_HEADER STM32F401xx MCU Header File
 * @{
 * @brief Header file containing all the necessary information about the STM32F401xx MCU.
 */

//----------------------------------------------
// Section: Includes
//----------------------------------------------

#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "Platform_Types.h"
#include "stm32f4xx.h"

//----------------------------------------------
// Section: Memory Base Addresses
//----------------------------------------------

/** @defgroup MEMORY_BASE_ADDRESSES Memory Base Addresses
 * @{
 */

/** @brief Base address of Flash memory */
#define FLASH_MEMORY_BASE                  0x08000000UL  

/** @brief Base address of System memory */
#define SYSTEM_MEMORY_BASE                 0x1FFFF000UL  

/** @brief Base address of SRAM memory */
#define SRAM_MEMORY_BASE                   0x20000000UL  

/** @brief Base address of Peripheral registers */
#define PERIPHERALS_BASE                   0x40000000UL  

/** @brief Base address of Cortex-M4 internal peripherals */
#define CORTEX_M4_INTERNAL_BASE            0xE0000000UL  

/** @} */ // MEMORY_BASE_ADDRESSES

//----------------------------------------------
// Section: Base Addresses for Cortex-M4 Peripherals
//----------------------------------------------

/** @defgroup CORTEX_M4_BASE_ADDRESSES Cortex-M4 Peripherals Base Addresses
 * @{
 */

/** @brief Base address of SysTick Timer */
#define STK_BASE                           0xE000E010UL  

/** @} */ // CORTEX_M4_BASE_ADDRESSES

//----------------------------------------------
// Section: Base Addresses for AHB Peripherals
//----------------------------------------------


//----------------------------------------------
// Section: Base Addresses for APB2 Peripherals
//----------------------------------------------


//----------------------------------------------
// Section: Base Addresses for APB1 Peripherals
//----------------------------------------------


/********************************** START : Peripheral register definition structure **********************************************/
/**
 * @defgroup Peripheral_Registers Peripheral Register Definitions
 * @{
 * @brief Structures defining the register layouts for various peripherals.
 */

/** @defgroup SysTick_SysTick_Registers SysTick Timer Register Map
 * @{
 * @brief SysTick Timer Register Map.
 */
typedef struct {
    vuint32_t CTRL;            /*!< Control and Status Register */
    vuint32_t LOAD;            /*!< Reload Value Register */
    vuint32_t VAL;             /*!< Current Value Register */
    vuint32_t CALIB;           /*!< Calibration Value Register */
} STK_TypeDef;
/** @} */

/** @defgroup SYSCFG_Syscfg_Registers SYSCFG Register Map
 * @{
 * @brief SYSCFG (System Configuration) Register Map.
 */
typedef struct {
    vuint32_t MEMRMP;       /*!< SYSCFG Memory Remap Register */
    vuint32_t PMC;          /*!< SYSCFG Peripheral Mode Configuration Register */
    vuint32_t EXTICR[4];    /*!< SYSCFG External Interrupt Configuration Registers */
    uint32    RESERVED1[2]; /*!< Reserved */
    vuint32_t CMPCR;        /*!< SYSCFG Compensation Cell Control Register */
    uint32    RESERVED2[2]; /*!< Reserved */
    vuint32_t CFGR;         /*!< SYSCFG Configuration Register */
} SYSCFG_RegDef_t;
/** @} */

/** @defgroup TIM1_Tim1_Registers TIM1 Register Map
 * @{
 * @brief TIM1 (Timer 1) Register Map.
 */
typedef struct {
    uint32 CR1;         /*!< TIM1 Control Register 1 */
    uint32 CR2;         /*!< TIM1 Control Register 2 */
    uint32 SMCR;        /*!< TIM1 Slave Mode Control Register */
    uint32 DIER;        /*!< TIM1 DMA/Interrupt Enable Register */
    uint32 SR;          /*!< TIM1 Status Register */
    uint32 EGR;         /*!< TIM1 Event Generation Register */
    uint32 CCMR1;       /*!< TIM1 Capture/Compare Mode Register 1 */
    uint32 CCMR2;       /*!< TIM1 Capture/Compare Mode Register 2 */
    uint32 CCER;        /*!< TIM1 Capture/Compare Enable Register */
    uint32 CNT;         /*!< TIM1 Counter Register */
    uint32 PSC;         /*!< TIM1 Prescaler Register */
    uint32 ARR;         /*!< TIM1 Auto-Reload Register */
    uint32 RCR;         /*!< TIM1 Repetition Counter Register */
    uint32 CCR1;        /*!< TIM1 Capture/Compare Register 1 */
    uint32 CCR2;        /*!< TIM1 Capture/Compare Register 2 */
    uint32 CCR3;        /*!< TIM1 Capture/Compare Register 3 */
    uint32 CCR4;        /*!< TIM1 Capture/Compare Register 4 */
    uint32 BDTR;        /*!< TIM1 Break and Dead-Time Register */
    uint32 DCR;         /*!< TIM1 DMA Control Register */
    uint32 DMAR;        /*!< TIM1 DMA Address Register */
    uint32 OR;          /*!< TIM1 Option Register */
} TIM1_TypeDef;
/** @} */

/** @} Peripheral Definitions */
/********************************** END : Peripheral Definitions ***************************************************/


/* Peripheral instances ------------------------------------------------------*/

/********************************** START : Peripheral instances definitions **********************************************/
/** @defgroup Peripheral_Instances Peripheral Instances
 * @{
 * @brief Peripheral instances for various hardware modules in the STM32 microcontroller.
 */


/** @defgroup SysTick_SysTick_Instance SysTick Timer Instance
 * @{
 * @brief Instance of the SysTick Timer.
 */
#define STK         ((STK_TypeDef*)STK_BASE) /**< Pointer to the SysTick Timer registers. */
/** @} */

/** @} End of Peripheral Instances */

/** @defgroup I2C_Registers I2C Registers
 * @{
 * @brief Bit definitions for the I2C peripheral registers.
 */

#define I2C_CR2_FREQ_Pos                    (0U)       /*!< Position of Peripheral Clock Frequency bits */
#define I2C_CR2_FREQ_Msk                    (0x3FUL << I2C_CR2_FREQ_Pos)  /*!< Bit mask for Peripheral Clock Frequency */
#define I2C_OAR2_ADD2_Pos                   (1U)                                   /*!< Position of Second Address bit */

/** @} RCC_Bit_Positions */



/**
 * @defgroup GPIO_Base_Address_to_Code GPIO Base Address to Code Conversion Macros
 * @{
 * @brief Macros for converting GPIO base addresses to corresponding port codes.
 */

/**
 * @brief Macro to convert GPIO base address to port code.
 *
 * @param x GPIOx base address.
 * @return Corresponding port code for the given GPIO base address.
 */
#define GPIO_BASEADDR_TO_CODE(x)  (   (x == GPIOA)?0:\
                                      (x == GPIOB)?1:\
                                      (x == GPIOC)?2:\
                                      (x == GPIOD)?3:\
                                      (x == GPIOE)?4:0 )

/** @} GPIO_Base_Address_to_Code */

/** @} */


#include "stm32f401xx_gpio_driver.h"        /**< Include GPIO driver header file */
#include "stm32f401xx_rcc_driver.h"         /**< Include RCC driver header file */
#include "stm32f401xx_usart_driver.h"       /**< Include USART driver header file */
#include "stm32f401xx_i2c_driver.h"       /**< Include I2C driver header file */
#include "stm32f401xx_spi_driver.h"       /**< Include SPI driver header file */
#include "stm32f401xx_nvic_driver.h"        /**< Include NVIC driver header file */
#include "stm32f401xx_systick_driver.h"     /**< Include SYSTICK driver header file */
#include "stm32f401xx_timer_driver.h"       /**< Include TIMER driver header file */

/** @} */

#endif /* INC_STM32F401XX_H_ */
