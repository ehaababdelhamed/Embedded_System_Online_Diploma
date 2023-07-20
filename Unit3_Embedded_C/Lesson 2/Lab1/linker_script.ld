/*****************************************************
 * File Name: linker_script.ld
 * Description: linker script for vestilepb board
 * Author: Ehab Mohamed Abdelhamed
 *****************************************************/
ENTRY(reset)
MEMORY
{

	Mem (rwx) : ORIGIN = 0x00000000, LENGTH = 64M

}

SECTIONS
{
	. = 0X10000;
	.startup . :
	{
		startup.o(.text)
	}> Mem
	.text :
	{
		*(.text) *(.rodata)
	}> Mem
	.data :
	{
		*(.data)
	}> Mem
	.bss :
	{
		*(.bss) *(.COMMON)
	}> Mem
	. = . + 0x1000;
	stack_top = . ;
}

