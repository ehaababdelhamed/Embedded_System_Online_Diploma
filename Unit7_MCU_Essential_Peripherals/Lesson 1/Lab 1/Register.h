/*
 * Register.h
 *
 *  Created on: Aug 21, 2023
 *      Author: Ehab Mohamed
 */

#ifndef REGISTER_H_
#define REGISTER_H_

#include "Platform_Types.h"

//GPIO Registers
#define GPIOA_BASE 		(0x40010800)
#define GPIOA_CRL 		(*(volatile uint32*)(GPIOA_BASE + 0x00)) 	//GPIOA_Control_Reg
#define GPIOA_CRH 		(*(volatile uint32*)(GPIOA_BASE + 0x04)) 	//GPIOA_Contorl_Reg
#define GPIOA_IDR		(*(volatile uint32*)(GPIOA_BASE + 0x08)) 	//GPIOA_Contorl_Reg
#define GPIOA_ODR 		(*(volatile uint32*)(GPIOA_BASE + 0x0c))	//GPIOA_Data_Reg
#define GPIOA_BSRR 		(*(volatile uint32*)(GPIOA_BASE + 0x10))	//GPIOA_Set_Reset_Reg
#define GPIOA_BRR 		(*(volatile uint32*)(GPIOA_BASE + 0x14))	//GPIOA_Reset_Reg
#define GPIOA_LCKR 		(*(volatile uint32*)(GPIOA_BASE + 0x18))	//GPIOA_Lock_Reg


#define GPIOB_BASE 		(0x40010C00)
#define GPIOB_CRL 		(*(volatile uint32*)(GPIOB_BASE + 0x00)) 	//GPIOB_Control_Reg
#define GPIOB_CRH 		(*(volatile uint32*)(GPIOB_BASE + 0x04)) 	//GPIOB_Contorl_Reg
#define GPIOB_IDR		(*(volatile uint32*)(GPIOB_BASE + 0x08)) 	//GPIOB_Contorl_Reg
#define GPIOB_ODR 		(*(volatile uint32*)(GPIOB_BASE + 0x0c))	//GPIOB_Data_Reg
#define GPIOB_BSRR 		(*(volatile uint32*)(GPIOB_BASE + 0x10))	//GPIOB_Set_Reset_Reg
#define GPIOB_BRR 		(*(volatile uint32*)(GPIOB_BASE + 0x14))	//GPIOB_Reset_Reg
#define GPIOB_LCKR 		(*(volatile uint32*)(GPIOB_BASE + 0x18))	//GPIOB_Lock_Reg

#define GPIOC_BASE 		(0x40010800)
#define GPIOC_CRL 		(*(volatile uint32*)(GPIOC_BASE + 0x00)) 	//GPIOC_Control_Reg
#define GPIOC_CRH 		(*(volatile uint32*)(GPIOC_BASE + 0x04)) 	//GPIOC_Contorl_Reg
#define GPIOC_IDR		(*(volatile uint32*)(GPIOC_BASE + 0x08)) 	//GPIOC_Contorl_Reg
#define GPIOC_ODR 		(*(volatile uint32*)(GPIOC_BASE + 0x0c))	//GPIOC_Data_Reg
#define GPIOC_BSRR 		(*(volatile uint32*)(GPIOC_BASE + 0x10))	//GPIOC_Set_Reset_Reg
#define GPIOC_BRR 		(*(volatile uint32*)(GPIOC_BASE + 0x14))	//GPIOC_Reset_Reg
#define GPIOC_LCKR 		(*(volatile uint32*)(GPIOC_BASE + 0x18))	//GPIOC_Lock_Reg

//RCC_Registers
#define RCC_BASE 		(0x40021000)
#define RCC_APB2ENR 	(*(volatile uint32*)(RCC_BASE + 0x18)) //APB2 Enable Clock Register




#endif /* REGISTER_H_ */
