/*****************************************************************************
 * File Name: startup.s
 * Description: Startup file for arm cortex-m3
 * Author: Ehab Mohamed Abdelhamed
 *****************************************************************************/
 #include <Platform_Types.h>
 
 //Stack size configration (size of stack=STACK_SIZE *4)
 #define STACK_SIZE 256
 
 /* Enable Exceptions ... This Macro enable IRQ interrupts, by clearing the I-bit in the PRIMASK. */
 #define Enable_Exceptions()    __asm("CPSIE I")

 /* Disable Exceptions ... This Macro disable IRQ interrupts,by clearing the I-bit in the PRIMASK. */
 #define Disable_Exceptions()   __asm("CPSID I")

 
 int main(void);
 void Defualt_handler(void);
 
 extern uint32 _END_TEXT;
 extern uint32 _START_DATA;
 extern uint32 _END_DATA;
 extern uint32 _START_BSS;
 extern uint32 _END_BSS;

 
 
 /*Create interrupt vector table*/
 void _reset(void);              // Reset_handler
 void NMI_handler(void)__attribute__((weak, alias ("Defualt_handler")));         // NMI_handler
 void HardFault_handler(void)__attribute__((weak, alias ("Defualt_handler")));   //HardFault_handler
 void MemManage_handler(void)__attribute__((weak, alias ("Defualt_handler")));    //MemManage_handlr
 void BusFault_handler(void)__attribute__((weak, alias ("Defualt_handler")));    //BusFault_handler
 //Reserved
 void SVCall_handler(void)__attribute__((weak, alias("Defualt_handler")));      //SVCall_handler
 void DebugMointor_handler(void)__attribute__((weak, alias ("Defualt_handler"))); //DebugMointor_handler
 //Reserved
 void PendSV_handler(void)__attribute__((weak, alias ("Defualt_handler")));       //PendSV_handlr
 void SysTick_handler(void)__attribute__((weak, alias ("Defualt_handler")));     //SysTick_handler
 void WWDG_handler(void)__attribute__((weak, alias ("Defualt_handler")));         //WWDG_handlr
 void PVD_handler(void)__attribute__((weak, alias ("Defualt_handler")));         //PVD_handler
 void TAMPER_handler(void)__attribute__((weak, alias ("Defualt_handler")));       //TAMPER_handler
 void FLASH_handler(void)__attribute__((weak, alias ("Defualt_handler")));       //FLASH_handler
 void RCC_handler(void)__attribute__((weak, alias ("Defualt_handler")));         //RCC_handler
 void ECTI0_handler(void)__attribute__((weak, alias ("Defualt_handler")));       //ECTI0_handler
 void ECTI1_handler(void)__attribute__((weak, alias ("Defualt_handler")));       //ECTI1_handler
 void ECTI2_handler(void)__attribute__((weak, alias ("Defualt_handler")));       //ECTI2_handler
 
 static uint32 STACK_TOP[STACK_SIZE];
 
 /*Load Addresses of handlers in vectors section*/
 const void (* Ptr_To_Fun_Vectors[])() __attribute__((section(".vectors"))) =
 {
	(void (*)())((uint32)STACK_TOP+sizeof(STACK_TOP)),
	&_reset,
	&NMI_handler,
	&HardFault_handler,
	&MemManage_handler,
	&BusFault_handler,
	0,
	&SVCall_handler,
	&DebugMointor_handler,
	0,
	&PendSV_handler,
	&SysTick_handler,
	&WWDG_handler,
	&PVD_handler,
	&TAMPER_handler,
	&FLASH_handler,
	&RCC_handler,
	&ECTI0_handler,
	&ECTI1_handler,
	&ECTI2_handler
 };
 
  void _reset(void){
	  /* Disable interrupts */
	Disable_Exceptions();
	uint32  _SIZE_= (uint8*) &_END_DATA - (uint8*) &_START_DATA;
	uint8* _Ptr_Source=(uint8*) &_END_TEXT; 
	uint8* _Ptr_Destination =(uint8*) &_START_DATA; 
	/*Copy .data section that contains initialized data form ram to rom*/
	for(int i=0;i<_SIZE_;i++){
		*(uint8*)_Ptr_Destination=*(uint8*)_Ptr_Source;
		(uint8*)_Ptr_Destination++;
		(uint8*)_Ptr_Source++;
	}
	/*Reserve .bss section in ram and initialize it by zero*/
	_SIZE_= (uint32*) &_END_BSS - (uint32*) &_START_BSS;
	_Ptr_Destination =(uint8*) &_START_BSS; 
	for(int i=0;i<_SIZE_;i++){
		*(uint8*)_Ptr_Destination=0;
		(uint8*)_Ptr_Destination++;
	}
	/*Enable interrupts */
	Enable_Exceptions();
	/*jump to main function.*/
	main();
	while(1){}
 }
 
  void Defualt_handler(void){
	 while(1){}
 } 