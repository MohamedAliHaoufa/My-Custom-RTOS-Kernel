/**
 * @file           task_scheduler.h
 * @author         Mohamed Ali Haoufa
 * @brief          
 * @version        0.1
 * @date           2025-04-15
 *
 *
 * @copyright      Copyright (c) 2024 Mohamed Ali Haoufa. All rights reserved.
 */

#ifndef INC_SCHEDULER_H_
#define INC_SCHEDULER_H_

#include "cortex_mx_os_porting.h"

typedef enum{
	NoError,
	Ready_Queue_init_error,
	Task_exceeded_StackSize,
	MutexisReacedToMaxNumberOfUsers

}MHxRTOS_errorID;


typedef struct{
	unsigned int Stack_Size;
	unsigned char priority;
	void (*p_TaskEntry)(void); //pointer to Tack C Function
	unsigned char AutoStart ;
	unsigned int _S_PSP_Task ;//Not Entered by the user
	unsigned int _E_PSP_Task ;//Not Entered by the user
	unsigned int* Current_PSP ;//Not Entered by the user
	char TaskName[30] ;
	enum{
		Suspend,
		Running,
		Waiting,
		ready
	}TaskState	;//Not Entered by the user
struct{
		enum{
			Enable,
			Disable
		}Blocking;
		unsigned int Ticks_Count ;
	}TimingWaiting;
}Task_ref;

typedef struct {
	unsigned char* Ppayload;
	unsigned int   PayloadSize ;
	Task_ref* 	   CurrentTUser ;
	Task_ref* 	   NextTUser ;
	char 		   MutexName[30]  ;
} Mutex_ref;

#define element_type Task_ref*


//APIs
MHxRTOS_errorID MHxRTOS_init(void);
MHxRTOS_errorID MHxRTOS_CreateTask(Task_ref* Tref);
void MHxRTOS_ActivateTask (Task_ref* Tref);
void MHxRTOS_TerminateTask (Task_ref* Tref);
void MHxRTOS_STARTOS() ;
void MHxRTOS_TaskWait(unsigned int NoTICKS,Task_ref* SelfTref);
void MHxRTOS_Update_TasksWaitingTime(void);
void Decide_whatNext(void);

MHxRTOS_errorID MHxRTOS_AcquireMutex(Mutex_ref* Mref , Task_ref* Tref);
void MHxRTOS_ReleaseMutex(Mutex_ref* Mref);
#endif /* INC_SCHEDULER_H_ */
