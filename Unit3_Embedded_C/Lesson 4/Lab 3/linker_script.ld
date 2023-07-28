/*****************************************************
 * File Name: linker_script.ld
 * Description: linker script for STM32F103C8T6 board
 * Author: Ehab Mohamed Abdelhamed
 *****************************************************/
 
 ENTRY(_reset)
 
 MEMORY
 {
	flash (RX) : ORIGIN = 0x00000000 , LENGTH = 128K
	sram  (RWX): ORIGIN = 0x20000000 , LENGTH = 20K
 }
 
 SECTIONS
 {
	.text : 
	{
		*(.vectors*)
		*(.text*)
		. = ALIGN(4);
		_END_TEXT = .;
	} > flash
	
	.data :
	{
		_START_DATA = .;
		*(.data);
		. = ALIGN(4);
		_END_DATA = .;
	}> sram AT> flash
	
	.bss :
	{
		_START_BSS = .;
		*(.bss);
		. = ALIGN(4);
		_END_BSS = .;
	}> sram
	
 }