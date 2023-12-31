 /******************************************************************************
 * Module: LCD
 * File Name: lcd.h
 * Description: Header file for LCD driver
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/

#ifndef LCD_DRIVER_LCD_H_
#define LCD_DRIVER_LCD_H_

#include "../Platform_Types.h"

/*******************************************************************************
 *                             User Configuration                              *
 *******************************************************************************/

//Select (LCD_8_BIT_MODE - LCD_4_BIT_MODE)
#define LCD_BIT_MODE 	LCD_4_BIT_MODE
//Select (LCD_2X16 - LCD_4X16 - LCD_4X20)
#define LCD_TYPE		LCD_2X16

#define LCD_DATA_PORT	PORTA
#define LCD_DATA_DIR	DDRA
#define LCD_DATA_READ	PINA

#define LCD_RS_PORT		PORTB
#define LCD_RS_DIR		DDRB
#define LCD_RS_PIN		0

#define LCD_RW_PORT		PORTB
#define LCD_RW_DIR		DDRB
#define LCD_RW_PIN		1

#define LCD_EN_PORT		PORTB
#define LCD_EN_DIR		DDRB
#define LCD_EN_PIN		2
/*******************************************************************************
 *                            Module Definition                            *
 *******************************************************************************/

#define LCD_8_BIT_MODE	(8U)
#define LCD_4_BIT_MODE	(4U)

#define LCD_2X16		(0U)
#define LCD_4X16		(1U)
#define LCD_4X20		(2U)



#define LCD_ENTRY_MODE 					(0x06)
//Clearing display without clearing DDRAM content)
#define LCD_DISPLAY_OFF_CURSER_OFF		(0x08)
#define LCD_DISPLAY_ON_CURSER_ON		(0x0E)
#define LCD_DISPLAY_ON_CURSER_OFF		(0x0C)
#define LCD_DISPLAY_ON_CURSER_BLINKING	(0x0F)
#define LCD_SHIFT_DISPLYAY_LEFT			(0x18)
#define LCD_SHIFT_DISPLYAY_RIGHT		(0x1C)
#define LCD_MOVE_CURSER_LEFT			(0x10)
#define LCD_MOVE_CURSER_RIGHT			(0x14)
//Clearing display and also clear DDRAM content
#define LCD_CLEAR_DISPLAY				(0x01)
#define LCD_RETURN_HOME					(0x02)

#define LCD_MODE_8_BITS_1_LINES			(0x30)
#define LCD_MODE_8_BITS_2_LINES			(0x38)
#define LCD_MODE_4_BITS_1_LINES			(0x20)
#define LCD_MODE_4_BITS_2_LINES			(0x28)
#define LCD_MODE_4_BITS_INIT			(0x32)

#define LCD_FIRST_POSITION				(0x80)
#define LCD_Line_1_ADDRESS				(0x00)
#define LCD_Line_2_ADDRESS				(0x40)
#define LCD_Line_3_ADDRESS				(0x10)
#define LCD_Line_4_ADDRESS				(0x50)




/*******************************************************************************
 *                      	Function Prototypes character                  	*
 *******************************************************************************/
void LCD_init();
void LCD_sendCommand(uint8 command);
void LCD_displayCharacter(uint8 character);
void LCD_displayString(char* string);
void LCD_displayNumber(uint32 integerNum);
void LCD_goToSpecficPosition(uint8 line,uint8 position);
void LCD_cleanScreen();
void LCD_customCharacter(uint8 *custom);
void LCD_isBusy();


#endif /* LCD_DRIVER_LCD_H_ */
