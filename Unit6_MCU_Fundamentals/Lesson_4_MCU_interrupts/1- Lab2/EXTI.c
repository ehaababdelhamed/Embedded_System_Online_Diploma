/*
 * EXTI.c
 *
 *  Created on: Aug 21, 2023
 *      Author: Ehab Mohamed
 */
#include "EXTI.h"
#include "Register.h"

void (*g_EXTI0_callBackfunc)(void);
void (*g_EXTI1_callBackfunc)(void);
void (*g_EXTI2_callBackfunc)(void);
void (*g_EXTI3_callBackfunc)(void);
void (*g_EXTI4_callBackfunc)(void);
void (*g_EXTI9_5_callBackfunc)(void);
void (*g_EXTI10_15_callBackfunc)(void);

void EXTI_init(EXTI_Config_t* EXTIConfig){
	//Map EXTx to Portx
	if(EXTIConfig->port_num==PA){
		AFIO_EXTICR1&=~(uint32)((0xf<<((EXTIConfig->ext_int_Num)*4)));
	}else{
		AFIO_EXTICR1&=~(uint32)((0xf<<((EXTIConfig->ext_int_Num)*4)));
		AFIO_EXTICR1|=(uint32)((EXTIConfig->port_num<<((EXTIConfig->ext_int_Num)*4)));
	}
	//Enable Rising Edge
	if(EXTIConfig->edge == RAISING ||EXTIConfig->edge == BOTH_EDGE ){
		EXTI_RTSR|=(1<<EXTIConfig->ext_int_Num);
	}
	//Enable Falling Edge Edge
	if(EXTIConfig->edge == FAILING || EXTIConfig->edge == BOTH_EDGE ){
		EXTI_FTSR|=(1<<EXTIConfig->ext_int_Num);
	}
}

void EXTI_enable(EXTI_NUM_e EXTIx){
	//Enable interrupt request for EXTIx
	EXTI_IMR|=(1<<EXTIx);
}

void EXTI_disable(EXTI_NUM_e EXTIx){
	//Enable interrupt request for EXTIx
	EXTI_IMR&=~(1<<EXTIx);
}

void EXTI0_setCallBackFun(void (*callBackFunc)(void)){
	//set Call back function to global pointer to function
	g_EXTI0_callBackfunc=callBackFunc;
}

void EXTI1_setCallBackFun(void (*callBackFunc)(void)){
	//set Call back function to global pointer to function
	g_EXTI1_callBackfunc=callBackFunc;
}

void EXTI2_setCallBackFun(void (*callBackFunc)(void)){
	//set Call back function to global pointer to function
	g_EXTI2_callBackfunc=callBackFunc;
}

void EXTI3_setCallBackFun(void (*callBackFunc)(void)){
	//set Call back function to global pointer to function
	g_EXTI3_callBackfunc=callBackFunc;
}

void EXTI4_setCallBackFun(void (*callBackFunc)(void)){
	//set Call back function to global pointer to function
	g_EXTI4_callBackfunc=callBackFunc;
}

void EXTI9_5_setCallBackFun(void (*callBackFunc)(void)){
	//set Call back function to global pointer to function
	g_EXTI9_5_callBackfunc=callBackFunc;
}

void EXTI10_15_setCallBackFun(void (*callBackFunc)(void)){
	//set Call back function to global pointer to function
	g_EXTI10_15_callBackfunc=callBackFunc;
}


void EXTI0_IRQHandler(){		/* EXTI Line0 interrupt*/
	EXTI_PR|=(1<<0);
	(*g_EXTI0_callBackfunc)();
}
void EXTI1_IRQHandler(){		/* EXTI Line1 interrupt*/
	EXTI_PR|=(1<<1);
	(*g_EXTI1_callBackfunc)();
}

void EXTI2_IRQHandler(){		/* EXTI Line2 interrupt*/
	EXTI_PR|=(1<<2);
	(*g_EXTI2_callBackfunc)();
}
void EXTI3_IRQHandler(){		/* EXTI Line3 interrupt*/
	EXTI_PR|=(1<<3);
	(*g_EXTI3_callBackfunc)();
}
void EXTI4_IRQHandler(){		/* EXTI Line4 interrupt*/
	EXTI_PR|=(1<<4);
	(*g_EXTI4_callBackfunc)();
}
void EXTI9_5_IRQHandler(){		/* EXTI Line[9:5] interrupt*/
	if(EXTI_PR & (1<<5)){
		EXTI_PR|=(1<<5);
	}else if(EXTI_PR & (1<<6)){
		EXTI_PR|=(1<<6);
	}else if(EXTI_PR & (1<<7)){
		EXTI_PR|=(1<<7);
	}else if(EXTI_PR & (1<<8)){
		EXTI_PR|=(1<<8);
	}else if(EXTI_PR & (1<<9)){
		EXTI_PR|=(1<<9);
	}
	(*g_EXTI9_5_callBackfunc)();
}
void EXTI15_10_IRQHandler(){  	/* EXTI Line[15:10] interrupts*/
	if(EXTI_PR & (1<<10)){
		EXTI_PR|=(1<<10);
	}else if(EXTI_PR & (1<<11)){
		EXTI_PR|=(1<<11);
	}else if(EXTI_PR & (1<<12)){
		EXTI_PR|=(1<<12);
	}else if(EXTI_PR & (1<<13)){
		EXTI_PR|=(1<<13);
	}else if(EXTI_PR & (1<<14)){
		EXTI_PR|=(1<<14);
	}else if(EXTI_PR & (1<<15)){
		EXTI_PR|=(1<<15);
	}
	(*g_EXTI9_5_callBackfunc)();
}
