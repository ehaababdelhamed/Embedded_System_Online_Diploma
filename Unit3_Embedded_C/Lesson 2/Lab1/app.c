/*****************************************************
 * File Name: app.c
 * Description: app to send string by uart 
 * Author: Ehab Mohamed Abdelhamed
 *****************************************************/
 #include "uart.h"
 #include "Platform_Types.h"
 
 uint8 string_buffer[100]="learn in depth: <Ehab Mohamed Abdelhamed>";
 const uint8 string_buffer2[100]="learn in depth: <Ehab Mohamed Abdelhamed> ";
 
 
 void main(void){
	 //send string by uart
	 UART0_send_string(string_buffer);
 }