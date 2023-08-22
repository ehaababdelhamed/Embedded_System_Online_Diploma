/*
 * EXTI.h
 *
 *  Created on: Aug 21, 2023
 *      Author: Ehab Mohamed
 */

#ifndef EXTI_H_
#define EXTI_H_

#include "Platform_Types.h"

typedef enum{
	EXTI0,EXTI1,EXTI2,EXTI3,
	EXTI4=0,EXTI5,EXTI6,EXTI7,
	EXTI8=0,EXTI9,EXTI10,EXT11,
	EXTI12=0,EXTI13,EXTI14,EXTI15
}EXTI_NUM_e;

typedef enum{
	PA,PB,PC,PD,PE,PF,PG
}EXTI_PORT_e;

typedef enum{
	RAISING,FAILING,BOTH_EDGE
}EXTI_EDGE_e;

typedef struct{
	EXTI_NUM_e ext_int_Num;
	EXTI_PORT_e port_num;
	EXTI_EDGE_e edge;
}EXTI_Config_t;

void EXTI_init(EXTI_Config_t* EXTIConfig);
void EXTI_enable(EXTI_NUM_e EXTIx);
void EXTI_disable(EXTI_NUM_e EXTIx);



void EXTI0_setCallBackFun(void (*callBackFunc)(void));
void EXTI1_setCallBackFun(void (*callBackFunc)(void));
void EXTI2_setCallBackFun(void (*callBackFunc)(void));
void EXTI3_setCallBackFun(void (*callBackFunc)(void));
void EXTI4_setCallBackFun(void (*callBackFunc)(void));
void EXTI9_5_setCallBackFun(void (*callBackFunc)(void));
void EXTI10_15_setCallBackFun(void (*callBackFunc)(void));




#endif /* EXTI_H_ */
