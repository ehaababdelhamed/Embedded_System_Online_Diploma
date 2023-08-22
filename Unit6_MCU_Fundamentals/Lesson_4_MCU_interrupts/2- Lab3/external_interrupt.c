/*
 * external_interrupt.c
 *
 *  Created on: ???/???/????
 *      Author: Ehab Mohamed
 */
#include "Register.h"
#include "external_interrupt.h"
#include <avr/interrupt.h>

static void (*g_INT0_callBackFun)();
static void (*g_INT1_callBackFun)();
static void (*g_INT2_callBackFun)();


//Function for initialization external interrupt
void EINTx_init(INT_NUM_e intNum ,EDGE_e edge){
	switch(intNum){
	case EINT0:
		//Configure the action for interrupt 0 (rising - falling - Both - Low Level)
		MCUCR &= 0xfC;
		MCUCR|=(edge<<0);
		break;
	case EINT1:
		//Configure the action for interrupt 1 (rising - falling - Both - Low Level)
		MCUCR &= 0xf3;
		MCUCR|=(edge<<2);
		break;
	case EINT2:
		//Configure the action for interrupt 2 (rising - falling)
		if(edge == FAILIGN_EDGE){
			MCUCSR&=~(1<<6);
		}else if(edge == RISING_EDGE){
			MCUCSR|=(1<<6);
		}
		break;
	}
}

//Function to enable external interrupt
void EINTx_enable(INT_NUM_e intNum){
	GICR|=(1<<intNum);
}
//Function to disable external interrupt
void EINTx_disable(INT_NUM_e intNum){
	GICR&=~(1<<intNum);
}

//Function to set call back function for external interrupt
void EINTx_setCallBackFunc(INT_NUM_e intNum,void (*callBackFun)()){
	switch(intNum){
	case EINT0:
		g_INT0_callBackFun=callBackFun;
		break;
	case EINT1:
		g_INT1_callBackFun=callBackFun;
		break;
	case EINT2:
		g_INT2_callBackFun=callBackFun;
		break;
	}
}


//interrupt service routine for external interrupt 0
ISR(INT0_vect){
	(*g_INT0_callBackFun)();
}

//interrupt service routine for external interrupt 1
ISR(INT1_vect){
	(*g_INT1_callBackFun)();
}

//interrupt service routine for external interrupt 2
ISR(INT2_vect){
	(*g_INT2_callBackFun)();
}
