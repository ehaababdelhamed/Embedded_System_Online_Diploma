################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD_Driver/lcd.c 

OBJS += \
./LCD_Driver/lcd.o 

C_DEPS += \
./LCD_Driver/lcd.d 


# Each subdirectory must supply rules for building sources it contributes
LCD_Driver/lcd.o: ../LCD_Driver/lcd.c
	arm-none-eabi-gcc -gdwarf-2 "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C6Tx -DDEBUG -c -I../Inc -I"E:/Embedded_System_KS/WorkSpace/Unit7_MCU_Essential_Peripherals/Section3/Section3_Lab/LCD_Driver" -I"E:/Embedded_System_KS/WorkSpace/Unit7_MCU_Essential_Peripherals/Section3/Section3_Lab/Keypad_Driver" -I"E:/Embedded_System_KS/WorkSpace/Unit7_MCU_Essential_Peripherals/Section3/Section3_Lab/Stm32f103x6_Drivers/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"LCD_Driver/lcd.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

