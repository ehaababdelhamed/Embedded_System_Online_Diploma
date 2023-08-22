/*
 * Register.h
 *
 *  Created on: Aug 21, 2023
 *      Author: Ehab Mohamed
 */

#ifndef REGISTER_H_
#define REGISTER_H_


//GPIO Registers
#define GPIOA_BASE 		(0x40010800)
#define GPIOA_CRL 		(*(volatile uint32*)(GPIOA_BASE + 0x00)) //GPIOA_Control_Reg
#define GPIOA_CRH 		(*(volatile uint32*)(GPIOA_BASE + 0x04)) //GPIOA_Contorl_Reg
#define GPIOA_ODR 		(*(volatile uint32*)(GPIOA_BASE + 0x0c))	 //GPIOA_Data_Reg


//RCC_Registers
#define RCC_BASE 		(0x40021000)
#define RCC_APB2ENR 	(*(volatile uint32*)(RCC_BASE + 0x18)) //APB2 Enable Clock Register

//EXTI_Registers
#define EXTI_BASE 		(0x40010400)
#define EXTI_IMR 	(*(volatile uint32*)(EXTI_BASE + 0x00))
#define EXTI_RTSR 	(*(volatile uint32*)(EXTI_BASE + 0x08))
#define EXTI_FTSR 	(*(volatile uint32*)(EXTI_BASE + 0x0C))
#define EXTI_PR	 	(*(volatile uint32*)(EXTI_BASE + 0x14)) //Write 1 to clear


//AFIO_Registers
#define AFIO_BASE 		(0x40010000)
#define AFIO_EXTICR1	(*(volatile uint32*)(AFIO_BASE + 0x08))
#define AFIO_EXTICR2	(*(volatile uint32*)(AFIO_BASE + 0x0C))
#define AFIO_EXTICR3	(*(volatile uint32*)(AFIO_BASE + 0x10))
#define AFIO_EXTICR4	(*(volatile uint32*)(AFIO_BASE + 0x14))

#define NIVC_ER_ISR0_31 *(volatile uint32*)(0xE000E100+0X0)




#endif /* REGISTER_H_ */
