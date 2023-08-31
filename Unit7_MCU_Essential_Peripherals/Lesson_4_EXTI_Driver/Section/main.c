 /******************************************************************************
 * File Name: main.c
 * Description: Display "Learn in depth" on LCD using AMIT kit.
 *  * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/
#include "gpio.h"
#include "lcd.h"
int main(){
	LCD_init();
	GPIO_PinConfig_t PinConfig={GPIO_PIN_5,GPIO_OUTPUT_PP};
	LCD_displayString("Learn in Depth");
	MCAL_GPIO_init(GPIO_PORTD, &PinConfig);
	PinConfig = (GPIO_PinConfig_t){GPIO_PIN_0,GPIO_INPUT_FLOATING};
	MCAL_GPIO_init(GPIO_PORTD, &PinConfig);
	PinConfig = (GPIO_PinConfig_t){GPIO_PIN_0,GPIO_INPUT_PU};
	MCAL_GPIO_init(GPIO_PORTA, &PinConfig);
	PinConfig = (GPIO_PinConfig_t){GPIO_PIN_1,GPIO_INPUT_PU};
	MCAL_GPIO_init(GPIO_PORTA, &PinConfig);
	uint8 count=0;
	while(1){
		if(MCAL_GPIO_readPin(GPIO_PORTD, GPIO_PIN_0) == PIN_HIGH){
			if(count == 0){
			MCAL_GPIO_writePin(GPIO_PORTD, GPIO_PIN_5, PIN_HIGH);
			count++;
			}else{
				MCAL_GPIO_writePin(GPIO_PORTD, GPIO_PIN_5, PIN_LOW);
				count=0;
			}
			while(MCAL_GPIO_readPin(GPIO_PORTD, GPIO_PIN_0) == PIN_HIGH);
		}
	}

}


