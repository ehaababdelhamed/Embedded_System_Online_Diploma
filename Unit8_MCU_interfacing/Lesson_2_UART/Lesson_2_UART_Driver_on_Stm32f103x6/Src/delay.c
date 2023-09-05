/*
 * delay.c
 *
 *  Created on: Aug 29, 2023
 *      Author: Ehab Mohamed
 */
#include "delay.h"
void delay_ms(int count){
	int i,j;
	for(i=0;i<count;i++){
		for(j=0;j<255;j++);
	}
}
