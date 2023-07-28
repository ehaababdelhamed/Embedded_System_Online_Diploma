/********************************************************************************
 * file           : main.c
 * author         : Ehab Mohamed Abdlehamed
 * brief          : Toggle led using Tiva C board
 *******************************************************************************/


#include "Platform_Types.h"
#include <stdlib.h>

#define SYSCTL_BASE 		0x400FE000
#define GPIO_PORTF_BASE 	0x40025000
#define SYSCTL_RCGC2_R 		(*(volatile uint32*)(SYSCTL_BASE+0x108))

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

//implement sbrk function for using dynamic memory allocation
void* _sbrk(int incr){
	extern uint32 _END_BSS;  //symbol defined in linker script
	extern uint32 _END_HEAP;  //symbol defined in linker script
	static uint8* head_ptr=NULL; 
	uint8* pervious_head_ptr;
	//for first time intialize the heap by first location
	if(head_ptr==NULL){
		head_ptr= (uint8*)&_END_BSS;
	}
	pervious_head_ptr=head_ptr;
	//Protection to avoid excced heap size
	if((uint32)(head_ptr+incr)>(uint32)(&_END_HEAP)){
		return (void*)NULL;
	}
	head_ptr=(uint8*)head_ptr+incr;
	return (void*)pervious_head_ptr;
}


int main(void){ 
	uint32 *ptr1=(uint32*)malloc(16);
	uint32 *ptr2=(uint32*)malloc(16);
	uint32 *ptr3=(uint32*)malloc(16);
	uint32 *ptr4=(uint32*)malloc(32);
	uint32 *ptr5=(uint32*)malloc(64);
	uint32 *ptr6=(uint32*)malloc(128);
	free(ptr2);
	uint32 *ptr7=(uint32*)malloc(4);
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
