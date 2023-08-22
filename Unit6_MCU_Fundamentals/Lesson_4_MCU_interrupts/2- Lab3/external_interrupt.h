/*
 * external_interrupt.h
 *
 *  Created on: ???/???/????
 *      Author: Ehab Mohamed
 */

#ifndef EXTERNAL_INTERRUPT_H_
#define EXTERNAL_INTERRUPT_H_

typedef enum{
	EINT1 = 5,
	EINT0,
	EINT2
}INT_NUM_e;

typedef enum{
	LOW_LEVEL,
	BOTH_EDGES,
	FAILIGN_EDGE,
	RISING_EDGE
}EDGE_e;

//Function for initialization external interrupt
void EINTx_init(INT_NUM_e intNum ,EDGE_e edge);
//Function to enable external interrupt
void EINTx_enable(INT_NUM_e intNum);
//Function to disable external interrupt
void EINTx_disable(INT_NUM_e intNum);
//Function to set call back function for external interrupt
void EINTx_setCallBackFunc(INT_NUM_e intNum,void (*callBackFun)());


#endif /* EXTERNAL_INTERRUPT_H_ */
