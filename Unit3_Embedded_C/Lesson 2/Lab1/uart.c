/*****************************************************
 * File Name: uart.c
 * Description: uart driver for VersatilePB board
 * Author: Ehab Mohamed Abdelhamed
 *****************************************************/

#include "uart.h"

//data register for uart0
#define UART0DR *((volatile uint32*)((uint32*)0x101f1000))

void UART0_send_string(uint8* P_tx_string){
	
	//loop untill the end of string
	while(*P_tx_string !='\0'){
		//send string
		UART0DR=(uint32)*P_tx_string;
		//incrmeant for the next charcter
		P_tx_string++;
	}	
}