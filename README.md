# My-Custom-RTOS-Scheduler-for-Smart-Car-Management-on-STM32F401VE

## Short Description  
Preemptive RTOS scheduler for ARM Cortex‑M4 (STM32F401VE), optimized for smart car management systems

---

## Long Description  
**My Custom RTOS Scheduler for Smart Car Management on STM32F401VE** is a lightweight, preemptive real‑time kernel engineered specifically for ARM Cortex‑M4 microcontrollers. Designed with automotive‑grade precision in mind, this scheduler provides deterministic task management, minimal latency, and an ultra‑small memory footprint, making it ideal for embedded control in smart car management systems. The scheduler core is written in C, ensuring portability across all Cortex‑M4 devices, and features:

- **Priority‑based Scheduling:** Implements a fixed‑priority preemptive algorithm with round‑robin time slicing to guarantee timely task execution.  
- **Dynamic Task Management:** Supports runtime task creation, deletion, and priority adjustment for flexible application workflows.  
- **Inter‑Task Synchronization:** Includes mutexes, semaphores, and event flags to coordinate resource sharing without race conditions.  
- **Low Overhead:** Optimized context switch routines and configurable tick rates yield a minimal RAM and flash footprint.  

This project comes with comprehensive documentation, example integrations for smart car sensor and actuator modules, and a modular architecture that allows easy extension or adaptation to other Cortex‑M4 platforms.

---

## Key Highlights  
- **Target Platform:** STM32F401VE (ARM Cortex‑M4) and compatible Cortex‑M4 MCUs.  
- **Use Case:** Embedded control for smart car management, including real‑time sensor sampling, actuator control, and communication scheduling.  
- **Language & Toolchain:** ANSI C, GCC ARM Embedded, CMSIS‑compliant startup.  

---

## Getting Started  
1. Clone the repository and navigate to the `src/` directory.  
2. Configure your MCU-specific definitions in `rtos_config.h`.  
3. Build with your preferred ARM Cortex‑M4 toolchain (e.g., GCC ARM Embedded).  
4. Flash onto STM32F401VE and run provided demos for sensor polling and motor control.  

---

## Topics & Tags  
`rtos` · `cortex-m4` · `stm32f401ve` · `embedded` · `smart-car-management`
