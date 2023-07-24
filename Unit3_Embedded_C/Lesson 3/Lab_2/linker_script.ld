/*****************************************************
 * File Name: linker_script.ld
 * Description: linker script for STM32F103C8T6 board
 * Author: Ehab Mohamed Abdelhamed
 *****************************************************/
 ENTRY(_reset)
 
 MEMORY
 {
	flash (RX) : ORIGIN = 0x08000000 , LENGTH = 128K
	sram  (RWX): ORIGIN = 0x20000000 , LENGTH = 20K
 }
 
 SECTIONS
 {
	.text : 
	{
		*(.vectors*)
		*(.text*)
	} > flash
	
	.bss :
	{
		*(.data);
	} > flash
	
	.bss :
	{
		*(.bss);
	} > sram
 }