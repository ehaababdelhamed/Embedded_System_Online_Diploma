/******************************************************************************
 * File Name: collision_avoidance.c
 * Description: Source file file for main application
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/
#include "collision_avoidance.h"
#include <stdio.h>

void delay(uint64 count){
	for(uint64 i=0;i<count;i++);
}

void Setup(){
	//Initialization all modules
}

//Running Application
void Run(){
	while(1){
		//Call states;
		(*CA_state)();
		delay(3200000000);
	}
}

//Main Function
int main(void){
	Setup();
	Run();
}
