/********************************************************************************
 * @file           : main.c
 * @author         : Ehab Mohamed Abdelhamed
 * @brief          : Lab 2 To Configure Clocks SYSCLK 8 MHZ,
 * 					 AHB1 4 MHZ  and APB2 2 MHZ ,using HSI.
 ******************************************************************************/
#include "Platform_Types.h"


#define RCC_BASE 		(0x40021000)
#define RCC_CR	(*(volatile uint32*)(RCC_BASE + 0x00)) //RCC Control Register
/* bit 0 : HSI Enable  	bit 1 : HSI Ready
 * bit 16: HSE Enable 	bit 17: HSE Ready
 * bit 24: PLL Enable	bit 25: PLL Ready
 * */
#define RCC_CFGR 	(*(volatile uint32*)(RCC_BASE + 4))


void RCC_init(){
	/*Turn On HSI Clock Source*/
	RCC_CR|=(1<<0);
	/*Wait to HSI Ready*/
	while(!(RCC_CR&(1<<0))){}
	/* Clear bit 0,1 to Select HSI as SYSCLK
	 * Set Value 0000 in bit 4:7 for AHB no prescaler
	 * Set Value 100 in bit  8:10 for APB1 prescaler 2
	 * Set Value 101 in bit  11:13 for APB1 prescaler 2 */
	RCC_CFGR = (0b100<<8)|(0b101<<11);
}
int main(void)
{
	RCC_init();
    /* Loop forever */
	for(;;);
}
