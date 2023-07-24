/*****************************************************************************
 * File Name: startup.s
 * Description: Startup file for arm cortex-m3
 * Author: Ehab Mohamed Abdelhamed
 *****************************************************************************/
 #include <Platform_Types.h>
 
 extern uint32 _STACK_TOP;

 #define START_STACK_SP _STACK_TOP
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
 
 
 const uint32 vectors[] __attribute__((section(".vectors"))) =
 {
	(uint32) &START_STACK_SP,
	(uint32) &_reset,
	(uint32) &NMI_handler,
	(uint32) &HardFault_handler,
	(uint32) &MemManage_handler,
	(uint32) &BusFault_handler,
	(uint32) 0,
	(uint32) &SVCall_handler,
	(uint32) &DebugMointor_handler,
	(uint32)0,
	(uint32)&PendSV_handler,
	(uint32)&SysTick_handler,
	(uint32)&WWDG_handler,
	(uint32)&PVD_handler,
	(uint32)&TAMPER_handler,
	(uint32)&FLASH_handler,
	(uint32)&RCC_handler,
	(uint32)&ECTI0_handler,
	(uint32)&ECTI1_handler,
	(uint32)&ECTI2_handler
 };
 
  void _reset(void){
	Disable_Exceptions();
	uint32  _SIZE_= (uint8*) &_END_DATA - (uint8*) &_START_DATA;
	uint8* _Ptr_Source=(uint8*) &_END_TEXT; 
	uint8* _Ptr_Destination =(uint8*) &_START_DATA; 
	for(int i=0;i<_SIZE_;i++){
		*(uint8*)_Ptr_Destination=*(uint8*)_Ptr_Source;
		(uint8*)_Ptr_Destination++;
		(uint8*)_Ptr_Source++;
	}
	_SIZE_= (uint32*) &_END_BSS - (uint32*) &_START_BSS;
	_Ptr_Destination =(uint8*) &_START_BSS; 
	for(int i=0;i<_SIZE_;i++){
		*(uint8*)_Ptr_Destination=0;
		(uint8*)_Ptr_Destination++;
	}
	Enable_Exceptions();
	main();
	while(1){}
 }
 
  void Defualt_handler(void){
	 while(1){}
 } 

