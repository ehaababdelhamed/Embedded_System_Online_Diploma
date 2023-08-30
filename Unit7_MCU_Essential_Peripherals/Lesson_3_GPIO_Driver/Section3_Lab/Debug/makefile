################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Stm32f103x6_Drivers/subdir.mk
-include Startup/subdir.mk
-include Src/subdir.mk
-include LCD_Driver/subdir.mk
-include Keypad_Driver/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
Section3_Lab.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
Section3_Lab.list \

OBJCOPY_BIN += \
Section3_Lab.bin \


# All Target
all: Section3_Lab.elf secondary-outputs

# Tool invocations
Section3_Lab.elf: $(OBJS) $(USER_OBJS) E:\Embedded_System_KS\WorkSpace\Unit7_MCU_Essential_Peripherals\Section3\Section3_Lab\STM32F103C6TX_FLASH.ld
	arm-none-eabi-gcc -gdwarf-2 -o "Section3_Lab.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"E:\Embedded_System_KS\WorkSpace\Unit7_MCU_Essential_Peripherals\Section3\Section3_Lab\STM32F103C6TX_FLASH.ld" --specs=nosys.specs -Wl,-Map="Section3_Lab.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

Section3_Lab.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "Section3_Lab.list"
	@echo 'Finished building: $@'
	@echo ' '

Section3_Lab.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "Section3_Lab.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
