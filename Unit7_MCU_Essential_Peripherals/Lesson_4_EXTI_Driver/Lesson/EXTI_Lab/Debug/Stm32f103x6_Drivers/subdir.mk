################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Stm32f103x6_Drivers/EXTI.c \
../Stm32f103x6_Drivers/gpio.c 

OBJS += \
./Stm32f103x6_Drivers/EXTI.o \
./Stm32f103x6_Drivers/gpio.o 

C_DEPS += \
./Stm32f103x6_Drivers/EXTI.d \
./Stm32f103x6_Drivers/gpio.d 


# Each subdirectory must supply rules for building sources it contributes
Stm32f103x6_Drivers/EXTI.o: ../Stm32f103x6_Drivers/EXTI.c
	arm-none-eabi-gcc -gdwarf-2 "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C6Tx -DDEBUG -c -I../Inc -I"E:/Embedded_System_KS/WorkSpace/Unit7_MCU_Essential_Peripherals/Lesson 4 -EXTI Driver/EXTI_Lab/HAL/includes" -I"E:/Embedded_System_KS/WorkSpace/Unit7_MCU_Essential_Peripherals/Lesson 4 -EXTI Driver/EXTI_Lab/Stm32f103x6_Drivers/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Stm32f103x6_Drivers/EXTI.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Stm32f103x6_Drivers/gpio.o: ../Stm32f103x6_Drivers/gpio.c
	arm-none-eabi-gcc -gdwarf-2 "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C6Tx -DDEBUG -c -I../Inc -I"E:/Embedded_System_KS/WorkSpace/Unit7_MCU_Essential_Peripherals/Lesson 4 -EXTI Driver/EXTI_Lab/HAL/includes" -I"E:/Embedded_System_KS/WorkSpace/Unit7_MCU_Essential_Peripherals/Lesson 4 -EXTI Driver/EXTI_Lab/Stm32f103x6_Drivers/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Stm32f103x6_Drivers/gpio.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

