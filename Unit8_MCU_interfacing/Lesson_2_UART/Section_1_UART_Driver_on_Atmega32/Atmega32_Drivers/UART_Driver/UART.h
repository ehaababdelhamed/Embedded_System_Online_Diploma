 /******************************************************************************
 * Module: UART
 * File Name: UART.h
 * Description: Header file for UART driver for Atmega32
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/
#ifndef INC_UART_H_
#define INC_UART_H_

/*******************************************************************************
 *                             Includes			                            	*
 *******************************************************************************/
#include "Common_Macros.h"
#include "Platform_Types.h"

#define F_CPU (8000000U)
/*******************************************************************************
 *                             	UART Data Types                             	*
 *******************************************************************************/
//@REF: UART_BAUDRATEs_t
/*
 * For F_CPU 1-2 MHZ Preferred baud rate up to 9600
 * For F_CPU 4 MHZ Preferred baud rate up to 38400
 * For F_CPU 8 MHZ Preferred baud rate up to 76800
 * For F_CPU 16 MHZ Preferred baud rate up to 115200
 *
 */
typedef enum{
	BAUDRATE_2400=2400,BAUDRATE_4800=4800,BAUDRATE_9600=9600,BAUDRATE_14400=14400,
	BAUDRATE_19200=19200,BAUDRATE_28800=28800,BAUDRATE_38400=38400,
	BAUDRATE_57600=57600,BAUDRATE_76800=76800,BAUDRATE_115200=115200,
}UART_BoudRate_e;

//@REF: UART_DataBit
typedef enum{
	DATE_5_BIT,DATE_6_BIT,DATE_7_BIT,DATE_8_BIT,DATE_9_BIT=7
}UART_DateBit_e;

//@REF: UART_Parity
typedef enum{
	DISAPLE_PARITY,EVEN_PARITY=2,ODD_PARITY
}UART_Parity_e;

//@REF: UART_StopBit
typedef enum{
	STOP_1_BIT,STOP_2_BIT
}UART_StopBit_e;

typedef struct{
	uint32 Boud_Rate;			//Specifies baud rate of UART
								//This parameter can be a value of @REF: UART_BAUDRATEs_t
	UART_DateBit_e Data_Bit;	//Specifies the Number of data bits of UART frame
								//This parameter can be a value of @REF: UART_DataBit
	UART_Parity_e Parity;		//Specifies the parity of UART  frame
								//This parameter can be a value of @REF: UART_Parity
	UART_StopBit_e Stop_Bit;	//Specifies the number of stop bits of UART  frame
								//This parameter can be a value of @REF: UART_StopBit
}UART_Config_t;


#define UART_STARTSEND 0xff

/*******************************************************************************
 *					APIs Supported by "MCAL UART DRIVER" 	                   *
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
void MCAL_UART_init(UART_Config_t *UartConfig);
/************************************************************************************
 * Function Name	: MCAL_UART_deInit
 * Description		: Functional responsible for reset the all UART register.
 * 					  Disable UART.
 * Parameters (in)	: None
 * Return value		: None
 * Note				: None
 ************************************************************************************/
void MCAL_UART_deInit();
/************************************************************************************
 * Function Name	: MCAL_UART_sendCharacter
 * Description		: Functional responsible to send character by UART.
 * Parameters (in)	: data : character to be send by UART
 * Return value		: None
 * Note				: None
 ************************************************************************************/
void MCAL_UART_sendCharacter(char data);
/************************************************************************************
 * Function Name	: MCAL_UART_receiveCharacter
 * Description		: Functional responsible to receive character by UART.
 * Parameters (in)	: None
 * Return value		: Character to be received
 * Note				: None
 ************************************************************************************/
uint8 MCAL_UART_receiveCharacter();
/************************************************************************************
 * Function Name	: MCAL_UART_sendString
 * Description		: Functional responsible to send string by UART.
 * Parameters (in)	: data : pointer to start character of string to be send by UART
 * Return value		: None
 * Note				: None
 ************************************************************************************/
void MCAL_UART_sendString(char* data);
/************************************************************************************
 * Function Name		: MCAL_UART_receiveCharacter
 * Description			: Functional responsible to receive string by UART.
 * Parameters (in/out)	: string : pointer to store received string
 * Return value			: None
 * Note					: None
 ************************************************************************************/
void MCAL_UART_receiveString(char *string);
/************************************************************************************
 * Function Name		: MCAL_UART_sendSInteger
 * Description			: Functional responsible to Send integer by UART.
 * Parameters (in/out)	: string : pointer to store received string
 * Return value			: None
 * Note					: None
 ************************************************************************************/
void MCAL_UART_sendSInteger(uint32 data);
/************************************************************************************
 * Function Name		: MCAL_UART_ReceiveInteger
 * Description			: Functional responsible to receive string by UART.
 * Parameters (in/out)	: string : pointer to store received string
 * Return value			: None
 * Note					: None
 ************************************************************************************/
uint32 MCAL_UART_ReceiveInteger();

#endif /* INC_UART_H_ */
