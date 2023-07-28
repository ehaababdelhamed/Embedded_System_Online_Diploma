/********************************************************************************
 * file           : main.c
 * author         : Ehab Mohamed Abdlehamed
 * brief          : Toggle led using Tiva C board
 *******************************************************************************/


#include "Platform_Types.h"

#define SYSCTL_BASE 		0x400FE000
#define GPIO_PORTF_BASE 	0x40025000
#define SYSCTL_RCGC2_R 		(*(volatile uint32*)(SYSCTL_BASE+0x108))

/*
#define GPIO_PORTF_DIR_R 	*(volatile uint32*)(GPIO_PORTF_BASE + 0x400)
#define GPIO_PORTF_DEN_R 	*(volatile uint32*)(GPIO_PORTF_BASE + 0x51C)
#define GPIO_PORTF_DATA_R 	*(volatile uint32*)(GPIO_PORTF_BASE + 0x3FC)
*/

typedef union{
	volatile uint32 All_Reg;
	struct{
		volatile uint32 pin0:1;
		volatile uint32 pin1:1;
		volatile uint32 pin2:1;
		volatile uint32 pin3:1;
		volatile uint32 pin4:1;
		volatile uint32 pin5:1;
		volatile uint32 pin6:1;
		volatile uint32 pin7:1;
	}Pins;
}Reg_t;

volatile Reg_t* GPIO_PORTF_DIR_REG  = (volatile Reg_t*)(GPIO_PORTF_BASE + 0x400);
volatile Reg_t* GPIO_PORTF_DEN_REG  = (volatile Reg_t*)(GPIO_PORTF_BASE + 0x51C);
volatile Reg_t* GPIO_PORTF_DATA_REG = (volatile Reg_t*)(GPIO_PORTF_BASE + 0x3FC);

int main(void){ 
	volatile uint32 delay_count;
	SYSCTL_RCGC2_R = 0x20;
	//delay to make sure GPIOF is up and running
	for(delay_count = 0;delay_count<100;delay_count++);
	//Configure PF3 as output pin
	GPIO_PORTF_DIR_REG->Pins.pin3  = 1;
	//Enable GPIO PF3
	GPIO_PORTF_DEN_REG->Pins.pin3  = 1;
	//intialize PF3 by 0
	GPIO_PORTF_DATA_REG->Pins.pin3 = 0;
	/***** Super Loop ******/
	while(1){
		/*Toggle Led*/
		GPIO_PORTF_DATA_REG->Pins.pin3 = 1;
		for(delay_count=0;delay_count<100000;delay_count++);
		GPIO_PORTF_DATA_REG->Pins.pin3 = 0;
		for(delay_count=0;delay_count<100000;delay_count++);
	}
	return 0;
}



