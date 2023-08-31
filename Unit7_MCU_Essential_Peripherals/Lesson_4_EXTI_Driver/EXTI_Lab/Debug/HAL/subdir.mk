################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../HAL/keypad.c \
../HAL/lcd.c 

OBJS += \
./HAL/keypad.o \
./HAL/lcd.o 

C_DEPS += \
./HAL/keypad.d \
./HAL/lcd.d 


# Each subdirectory must supply rules for building sources it contributes
HAL/keypad.o: ../HAL/keypad.c
	arm-none-eabi-gcc -gdwarf-2 "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C6Tx -DDEBUG -c -I../Inc -I"E:/Embedded_System_KS/WorkSpace/Unit7_MCU_Essential_Peripherals/Lesson 4 -EXTI Driver/EXTI_Lab/HAL/includes" -I"E:/Embedded_System_KS/WorkSpace/Unit7_MCU_Essential_Peripherals/Lesson 4 -EXTI Driver/EXTI_Lab/Stm32f103x6_Drivers/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"HAL/keypad.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
HAL/lcd.o: ../HAL/lcd.c
	arm-none-eabi-gcc -gdwarf-2 "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C6Tx -DDEBUG -c -I../Inc -I"E:/Embedded_System_KS/WorkSpace/Unit7_MCU_Essential_Peripherals/Lesson 4 -EXTI Driver/EXTI_Lab/HAL/includes" -I"E:/Embedded_System_KS/WorkSpace/Unit7_MCU_Essential_Peripherals/Lesson 4 -EXTI Driver/EXTI_Lab/Stm32f103x6_Drivers/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"HAL/lcd.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

