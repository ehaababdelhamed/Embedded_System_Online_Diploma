/********************************************************************************
 * @file           : main.c
 * @author         : Ehab Mohamed Abdelhamed
 * @brief          : Lab 3 To Configure Clocks SYSCLK 32 MHZ,
 * 					 AHB1 16 MHZ  and APB2 8 MHZ ,using HSI.
 ******************************************************************************/
#include "Platform_Types.h"

#define RCC_BASE 		(0x40021000)
#define RCC_CR	(*(volatile uint32*)(RCC_BASE + 0x00)) //RCC Control Register

#define RCC_CFGR 	(*(volatile uint32*)(RCC_BASE + 4))


void RCC_init(){
	//RCC_CFGR (Configuration Register)
	/* Bit 16 PLLSRC: PLL entry clock source
	 * 0: HSI oscillator clock / 2 selected as PLL input clock
	 * 1: HSE oscillator clock selected as PLL input clock*/

	/*Bits 21:18 PLLMUL: PLL multiplication factor
	 * Caution: The PLL output frequency must not exceed 72 MHz.
	 * 0110: PLL input clock x 8 */

	/*
	 * Set Value 0000 in bit 4:7 for AHB no prescaler
	 * Set Value 100 in bit  8:10 for APB1 prescaler 2
	 * Set Value 101 in bit  11:13 for APB1 prescaler 2 */

	RCC_CFGR = (0b0110<<18)|(0b100<<8)|(0b101<<11);
	//RCC_CR (Control Register)
	/* bit 0 : HSI Enable  	bit 1 : HSI Ready
	 * bit 16: HSE Enable 	bit 17: HSE Ready
	 * bit 24: PLL Enable	bit 25: PLL Ready
	 * */
	//Turn ON PLL
	RCC_CR|=(1<<24);
	//Wait To PLL Ready
	while(!(RCC_CR&(1<<25))){}

	/*RCC_CFGR- Bit 0:1 SW: System clock switch
	Set and cleared by software to select SYSCLK source.
	Set by hardware to force HSI selection when leaving Stop and Standby mode or in case of
	failure of the HSE oscillator used directly or indirectly as system clock (if the Clock Security
	System is enabled).
	00: HSI selected as system clock
	01: HSE selected as system clock
	10: PLL selected as system clock
	11: not allowed*/
	//Select PLL as Clock Source
	RCC_CFGR|=(0b10<<0);
	//Turn OFF HSI
	RCC_CR &= ~(1<<0);
}
int main(void)
{
	RCC_init();
    /* Loop forever */
	for(;;);
}
