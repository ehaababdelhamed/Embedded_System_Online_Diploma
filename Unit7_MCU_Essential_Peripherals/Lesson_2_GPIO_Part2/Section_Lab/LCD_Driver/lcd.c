/******************************************************************************
 * Module: LCD
 * File Name: lcd.c
 * Description: Source file for LCD driver
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/
#include "lcd.h"
#include <util/delay.h>
#include <stdlib.h>

#include "../Atmega32.h"
#include "../Utils.h"


/*******************************************************************************
 *                      Function Definition                                    *
 *******************************************************************************/
static void LCD_enablePulse(){
	SET_BIT(LCD_EN_PORT,LCD_EN_PIN); 	//Enable Read/Write
	_delay_ms(1);						//delay for EN _|-- rising
	CLEAR_BIT(LCD_EN_PORT,LCD_EN_PIN); 	//Disable Read/Write
	_delay_ms(1);						//delay for EN  --|__ failing
}

/************************************************************************************
 * Function Name	: LCD_init
 * Description		: Function to initialize LCD driver
 * 					  Setup LCD data,EN,RS,RW Pin
 * 					  Setup LCD mode(8 bit or 4 bit)
 * Parameters (in)	: None
 * Return value		: None
 ************************************************************************************/
void LCD_init(){
	//Make EN,RS,RW Pins as output
	LCD_EN_DIR|=(1<<LCD_EN_PIN);
	LCD_RS_DIR|=(1<<LCD_RS_PIN);
	LCD_RW_DIR|=(1<<LCD_RW_PIN);
	//Port Data >> output
	LCD_DATA_DIR = 0xff;
	_delay_ms(20); 		//LCD Power On delay
#if  LCD_BIT_MODE == LCD_8_BIT_MODE
	LCD_sendCommand(LCD_MODE_8_BITS_2_LINES);
	_delay_ms(5);
#elif LCD_BIT_MODE == LCD_4_BIT_MODE
	LCD_sendCommand(LCD_MODE_4_BITS_INIT);
	LCD_sendCommand(LCD_MODE_4_BITS_2_LINES);
#endif
	LCD_sendCommand(LCD_DISPLAY_ON_CURSER_BLINKING);
	LCD_sendCommand(LCD_CLEAR_DISPLAY);
	LCD_sendCommand(LCD_ENTRY_MODE);
}
/************************************************************************************
 * Function Name	: LCD_sendCommand
 * Description		: Function to send command to LCD
 * Parameters (in)	: command : command to be send
 * Return value		: None
 ************************************************************************************/
void LCD_sendCommand(uint8 command){
	CLEAR_BIT(LCD_RW_PORT,LCD_RW_PIN);	//LCD Write Mode
	_delay_ms(1);						//delay for RW --|__ failing
	CLEAR_BIT(LCD_RS_PORT,LCD_RS_PIN);	//Command Mode
	_delay_ms(1);						//delay for RS --|__ failing
#if  LCD_BIT_MODE == LCD_8_BIT_MODE
	LCD_DATA_PORT =command;	//Send command to LCD
	_delay_ms(1);
	LCD_enablePulse();
#elif  LCD_BIT_MODE == LCD_4_BIT_MODE
	READ_BIT(command,7)?SET_BIT(LCD_DATA_PORT,7):CLEAR_BIT(LCD_DATA_PORT,7);
	READ_BIT(command,6)?SET_BIT(LCD_DATA_PORT,6):CLEAR_BIT(LCD_DATA_PORT,6);
	READ_BIT(command,5)?SET_BIT(LCD_DATA_PORT,5):CLEAR_BIT(LCD_DATA_PORT,5);
	READ_BIT(command,4)?SET_BIT(LCD_DATA_PORT,4):CLEAR_BIT(LCD_DATA_PORT,4);
	_delay_ms(1);
	LCD_enablePulse();
	READ_BIT(command,3)?SET_BIT(LCD_DATA_PORT,7):CLEAR_BIT(LCD_DATA_PORT,7);
	READ_BIT(command,2)?SET_BIT(LCD_DATA_PORT,6):CLEAR_BIT(LCD_DATA_PORT,6);
	READ_BIT(command,1)?SET_BIT(LCD_DATA_PORT,5):CLEAR_BIT(LCD_DATA_PORT,5);
	READ_BIT(command,0)?SET_BIT(LCD_DATA_PORT,4):CLEAR_BIT(LCD_DATA_PORT,4);
	_delay_ms(1);
	LCD_enablePulse();
#endif
}

/************************************************************************************
 * Function Name	: LCD_displayCharacter
 * Description		: Function to display character on LCD screen
 * Parameters (in)	: character -   character to be displayed on LCD
 * Return value		: None
 ************************************************************************************/
void LCD_displayCharacter(uint8 character){
	CLEAR_BIT(LCD_RW_PORT,LCD_RW_PIN);	//LCD Write Mode
	_delay_ms(1);						//delay for RW --|__ failing
	SET_BIT(LCD_RS_PORT,LCD_RS_PIN);	//LCD Data Mode
	_delay_ms(1);						//delay for RS --|__ failing
#if  LCD_BIT_MODE == LCD_8_BIT_MODE
	LCD_DATA_PORT =character;	//Send command to LCD
	_delay_ms(1);
	LCD_enablePulse();
#elif  LCD_BIT_MODE == LCD_4_BIT_MODE
	READ_BIT(character,7)? SET_BIT(LCD_DATA_PORT,7):CLEAR_BIT(LCD_DATA_PORT,7);
	READ_BIT(character,6)? SET_BIT(LCD_DATA_PORT,6):CLEAR_BIT(LCD_DATA_PORT,6);
	READ_BIT(character,5)? SET_BIT(LCD_DATA_PORT,5):CLEAR_BIT(LCD_DATA_PORT,5);
	READ_BIT(character,4)? SET_BIT(LCD_DATA_PORT,4):CLEAR_BIT(LCD_DATA_PORT,4);
	_delay_ms(1);
	LCD_enablePulse();
	(READ_BIT(character,3)==TRUE)? SET_BIT(LCD_DATA_PORT,7) : CLEAR_BIT(LCD_DATA_PORT,7);
	(READ_BIT(character,2)==TRUE)? SET_BIT(LCD_DATA_PORT,6) : CLEAR_BIT(LCD_DATA_PORT,6);
	(READ_BIT(character,1)==TRUE)? SET_BIT(LCD_DATA_PORT,5) : CLEAR_BIT(LCD_DATA_PORT,5);
	(READ_BIT(character,0)==TRUE)? SET_BIT(LCD_DATA_PORT,4) : CLEAR_BIT(LCD_DATA_PORT,4);
	_delay_ms(1);
	LCD_enablePulse();
#endif
}

/************************************************************************************
 * Function Name	: LCD_displayString
 * Description		: Function to display string on LCD screen
 * Parameters (in)	: string - string to be displayed on LCD
 * Return value		: None
 ************************************************************************************/
void LCD_displayString(char* string){
	uint32 count;
	if(string != NULL){
		for(count=0;string[count]!= '\0';count++){
			LCD_displayCharacter(string[count]);
			if(count == 15){
				LCD_goToSpecficPosition(2,0);
			}
#if (LCD_TYPE == LCD_4X16 || LCD_TYPE == LCD_4X20)
			if(count == 31){
				LCD_goToSpecficPosition(3,0);
			}
			if(count == 47){
				LCD_goToSpecficPosition(4,0);
			}
#endif
		}
	}else{
		LCD_displayString("NULL STRING ERROR");
	}
}

/************************************************************************************
 * Function Name	: LCD_displayNumber
 * Description		: Function to display integer number on LCD screen
 * Parameters (in)	: integerNum - integer number to be displayed on LCD
 * Return value		: None
 ************************************************************************************/
void LCD_displayNumber(uint32 integerNum){
	char buffer[16];
	itoa(integerNum,buffer,10);
	LCD_displayString(buffer);
}
/************************************************************************************
 * Function Name	: LCD_cleanScreen
 * Description		: Function to clean LCD screen
 * Parameters (in)	: integerNum - integer number to be displayed on LCD
 * Return value		: None
 ************************************************************************************/
void LCD_cleanScreen(){
	LCD_sendCommand(LCD_CLEAR_DISPLAY);
}

/************************************************************************************
 * Function Name	: LCD_goToSpecficPosition
 * Description		: Function to move courser to specific position
 * Parameters (in)	: line - line number
 * 					  position - position number
 * Return value		: None
 ************************************************************************************/
void LCD_goToSpecficPosition(uint8 line,uint8 position){
	uint8 RequriedPostion=LCD_FIRST_POSITION;
	position--;			//because addresses zero indexing
#if	(LCD_TYPE == LCD_2X16)
	if(line <= 0 || line >2 || position <= 0 || position > 16 ){
		LCD_displayString("ERROR POSITION");
		return;
	}
#elif (LCD_TYPE == LCD_4X16)
	if(line <= 0 || line >4 || position <= 0 || position > 16 ){
		LCD_displayString("ERROR POSITION");
		return;
	}
#elif (LCD_TYPE == LCD_4X20)
	if(line <= 0 || line >4 || position <= 0 || position > 20 ){
		LCD_displayString("ERROR POSITION");
		return;
	}
#endif

	switch(line){
	case 1:
		RequriedPostion|=LCD_Line_1_ADDRESS;
		break;
	case 2:
		RequriedPostion|=LCD_Line_2_ADDRESS;
		break;

#if (LCD_TYPE == LCD_4X16 || LCD_TYPE == LCD_4X20)
	case 3:
		RequriedPostion|=LCD_Line_3_ADDRESS;
		break;
	case 4:
		RequriedPostion|=LCD_Line_4_ADDRESS;
		break;
#endif

	}
	RequriedPostion+=position;
	LCD_sendCommand(RequriedPostion);
}
/************************************************************************************
 * Function Name	: LCD_customCharacte
 * Description		: Function to
 * Parameters (in)	: line - line number
 * 					  position - position number
 * Return value		: None
 ************************************************************************************/
void LCD_customCharacter(uint8 *custom){
	LCD_sendCommand(0x40);
	LCD_displayCharacter(custom[0]);
	LCD_displayCharacter(custom[2]);
	LCD_displayCharacter(custom[3]);
	LCD_displayCharacter(custom[4]);
	LCD_displayCharacter(custom[5]);
	LCD_displayCharacter(custom[6]);
	LCD_displayCharacter(custom[7]);
	LCD_displayCharacter(custom[8]);
	LCD_sendCommand(LCD_FIRST_POSITION);
	_delay_ms(5);
	LCD_displayCharacter(0);
}
/*static void LCD_waitIfBusy(){
	LCD_DATA_DIR = 0x00;				//Port Data >> input
	SET_BIT(LCD_RW_PORT,LCD_RW_PIN);	//Read Mode
	_delay_ms(1);
	CLEAR_BIT(LCD_RS_PORT,LCD_RS_PIN);	//Command Mode
	_delay_ms(1);						//delay for RS --|__ failing
	SET_BIT(LCD_EN_PORT,LCD_EN_PIN); 	//Enable Read/Write
	_delay_ms(1);						//delay for EN _|-- rising
	while(BIT_IS_SET(LCD_DATA_PORT,7)){	//wait until busy flag is cleared
		CLEAR_BIT(LCD_EN_PORT,LCD_EN_PIN); 	//Disable Read/Write
		_delay_ms(1);						//delay for EN _|-- rising
		SET_BIT(LCD_EN_PORT,LCD_EN_PIN); 	//Enable Read/Write
	}
	CLEAR_BIT(LCD_RW_PORT,LCD_RW_PIN);	//LCD Write Mode
	LCD_DATA_DIR = 0xff;				//Port Data >> output
}*/
