/******************************************************************************
 * Module: GPIO
 * File Name: gpio.c
 * Description: Source file for GPIO driver for Atmega32
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/

/*******************************************************************************
 *                             Includes			                            	*
 *******************************************************************************/
#include "UART.h"
#include "Atmega32.h"
#include <math.h>

/*******************************************************************************
 *                            	Function Definition	                   			*
 *******************************************************************************/
/************************************************************************************
 * Function Name	: MCAL_UART_init
 * Description		: Functional responsible for Initialize the UART device by:
 * 1. Setup the Frame format like number of data bits, parity bit type and number of stop bits.
 * 2. Setup the UART baud rate.
 * 3. Enable the UART.
 * Parameters (in)	: UartConfig- pointer to UART configuration parameters
 * [baud rate - Number of data bits -Parity type - Number of stop bits]
 * Return value		: None
 * Note				: None
 ************************************************************************************/
void MCAL_UART_init(UART_Config_t *UartConfig){
	uint16 UBRR_Value;
	//1. Setup the Frame format >> data bits, parity bit type and number of stop bits.

	/*The UCSRC Register shares the same I/O location as the UBRRH Register. See the
	 * “Accessing UBRRH/ UCSRC Registers” on page 156 section which describes how to
	 * access this register.
	 * • Bit 7 – URSEL: Register Select
	 * This bit selects between accessing the UCSRC or the UBRRH Register
	 * 1 For UCSRC , 0 for UBRRH */
	UCSRC->bit.URSEL = 1; 	//for access UCSRC Register
	UCSRC->bit.UMSEL = 0; 	//selects Asynchronous Mode

	//Select the required data bit
	UCSRC->bit.UCSZ = (UartConfig->Data_Bit);
	if(UartConfig->Data_Bit  == DATE_9_BIT){
		UCSRB->bit.UCSZ2 = 1; //for 9 data bits
	}

	//Select the required parity
	UCSRC->bit.UPM = (UartConfig->Parity);

	//Select the stop bit
	UCSRC->bit.USBS = (UartConfig->Stop_Bit);

	//2. Setup the UART baud rate.

	UCSRA->bit.U2X = 0; //Asynchronous Normal Mode (U2X = 0)
	UBRR_Value = (uint16)round((F_CPU/(16*UartConfig->Boud_Rate)))-1;
	UBRRL = (UBRR_Value & (0x00ff));
	/* This bit selects between accessing the UCSRC or the UBRRH Register
	 * 1 For UCSRC , 0 for UBRRH */
	UBRRH->bit.URSEL = 0; 	//for access UCSRC Register
	UBRRH->bit.UBRR = (UBRR_Value >> 8);

	//3. Enable the UART.
	UCSRB->bit.TXEN = 1; //Transmitter Enable
	UCSRB->bit.RXEN = 1; //Receiver Enable

}

/************************************************************************************
 * Function Name	: MCAL_UART_deInit
 * Description		: Functional responsible for reset the all UART register.
 * 					  Disable UART.
 * Parameters (in)	: None
 * Return value		: None
 * Note				: None
 ************************************************************************************/
void MCAL_UART_deInit(){
	//reset the all UART register;
	UCSRA->ALL_REG = 0x20;
	UCSRB->ALL_REG = 0x00;
	UCSRC->ALL_REG = 0x86;
	UBRRL = 0x00;
	UBRRH->ALL_REG = 0x00;

}
/************************************************************************************
 * Function Name	: MCAL_UART_sendCharacter
 * Description		: Functional responsible to send character by UART.
 * Parameters (in)	: data : character to be send by UART
 * Return value		: None
 * Note				: None
 ************************************************************************************/
void MCAL_UART_sendCharacter(char data){
	while(UCSRA->bit.UDRE != TRUE ){}
	UDR = data;
	//wait to UART Transmit Complete
	while(UCSRA->bit.TXC != TRUE){}
}

/************************************************************************************
 * Function Name	: MCAL_UART_receiveCharacter
 * Description		: Functional responsible to receive character by UART.
 * Parameters (in)	: None
 * Return value		: Character to be received
 * Note				: None
 ************************************************************************************/
uint8 MCAL_UART_receiveCharacter(){
	uint8 ReceivedDate=0;
	while(UCSRA->bit.RXC != TRUE ){}
	ReceivedDate = UDR;
	return ReceivedDate;
}
/************************************************************************************
 * Function Name	: MCAL_UART_sendString
 * Description		: Functional responsible to send string by UART.
 * Parameters (in)	: data : pointer to start character of string to be send by UART
 * Return value		: None
 * Note				: Terminate string by character '#'
 ************************************************************************************/
void MCAL_UART_sendString(char* data){
	uint32 count=0;
	//Send Character by character
	while(data[count]!= '#'){
		MCAL_UART_sendCharacter(data[count]);
		count++;
	}
	MCAL_UART_sendCharacter(data[count]);
}
/************************************************************************************
 * Function Name		: MCAL_UART_receiveCharacter
 * Description			: Functional responsible to receive string by UART.
 * Parameters (in/out)	: string : pointer to store received string
 * Return value			: None
 * Note					: None
 ************************************************************************************/
void MCAL_UART_receiveString(char *string){
	uint8 count=0;
	do{
		string[count]=MCAL_UART_receiveCharacter();
	}while(string[count++] != '#');
	count--;
	string[count]=MCAL_UART_receiveCharacter();
}

/************************************************************************************
 * Function Name		: MCAL_UART_sendSInteger
 * Description			: Functional responsible to Send integer by UART.
 * Parameters (in/out)	: string : pointer to store received string
 * Return value			: None
 * Note					: None
 ************************************************************************************/
void MCAL_UART_sendSInteger(uint32 data){
	uint8 *PtoCh = (uint8*)&data;
	uint8 count;
	//Send Character by character
	for(count=0;count<4;count++){
		MCAL_UART_sendCharacter(*PtoCh);
		PtoCh++;
	};
}

/************************************************************************************
 * Function Name		: MCAL_UART_ReceiveInteger
 * Description			: Functional responsible to receive string by UART.
 * Parameters (in/out)	: string : pointer to store received string
 * Return value			: None
 * Note					: None
 ************************************************************************************/
uint32 MCAL_UART_ReceiveInteger(){
	uint8 count;
	uint32 intNum;
	uint8 *PtoCh = (uint8*)&intNum;
	//Send Character by character
	for(count=0;count<4;count++){
		*PtoCh=MCAL_UART_receiveCharacter();
		PtoCh++;
	};
	return intNum;
}
