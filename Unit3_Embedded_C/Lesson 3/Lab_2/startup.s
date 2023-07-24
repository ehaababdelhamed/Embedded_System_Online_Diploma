/*****************************************************************************
 * File Name: startup.s
 * Description: Startup file for arm cortex-m3
 * Author: Ehab Mohamed Abdelhamed
 *****************************************************************************/
 
 /*intialze stack pointer and create vectors table*/

.section .vectors

.word 0x20001000      //stack_top
.word _reset            // Reset_handler
.word Defualt_handler   //NMI_handlr
.word Defualt_handler   //HardFault_handler
.word Defualt_handler   //MemManage_handlr
.word Defualt_handler   //BusFault_handler
.word Defualt_handler   //Reserved
.word Defualt_handler   //SVCall_handler
.word Defualt_handler   //DebugMointor_handlr
.word Defualt_handler   //Reserved
.word Defualt_handler   //PendSV_handlr
.word Defualt_handler   //SysTick_handler
.word Defualt_handler   //WWDG_handlr
.word Defualt_handler   //PVD_handler
.word Defualt_handler   //TAMPER_handlr
.word Defualt_handler   //FLASH_handler
.word Defualt_handler   //RCC_handler
.word Defualt_handler   //ECTI0_handler
.word Defualt_handler   //ECTI1_handler
.word Defualt_handler   //ECTI2_handler

.section .text

.thumb_func
/* jump to main */
_reset:
	bl main
stop: b stop

Defualt_handler :
loop:	bl loop