/*****************************************************
 * File Name: app.c
 * Description: Use printf in embedded c
 * Author: Ehab Mohamed Abdelhamed
 *****************************************************/
 #include "uart.h"
 #include "Platform_Types.h"
 #include <stdio.h>
 
 void main(void){
	 //send string by uart
	int x=5;
   	int z=10;
	int sum=x+z;
	int Product=x*z;
	printf("Printf Function in Embedded C <Ehab Mohamed Abdelhamed>\n",sum,Product);
	printf("Sum=%d\tProduct=%d",sum,Product);
 }
 