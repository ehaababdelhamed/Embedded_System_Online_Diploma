/******************************************************************************
 * File Name: collision_avoidance.c
 * Description: Source file file for main application
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/
#include "collision_avoidance.h"
#include "ultrasonic_sensor.h"
#include "dc_motor.h"
#include <stdio.h>

void delay(uint64 count){
	for(uint64 i=0;i<count;i++);
}

void Setup(){
	//Initialization all modules
	DC_Motor_init();
	US_init();

}

//Running Application
void Run(){
	while(1){
		//Call states;
		(*US_state)();
		(*CA_state)();
		(*DC_Motor_state)();
		printf("\n");
		delay(32000000);
	}
}

//Main Function
int main(void){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,0);
	Setup();
	Run();
}
