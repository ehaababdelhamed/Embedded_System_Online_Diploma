#!/bin/bash 

#Build Commands

arm-none-eabi-gcc.exe -mcpu=cortex-m4 -nostartfiles -I . -T  linker_script.ld main.c startup.c -o main.elf -g -gdwarf-2
cp main.elf main.axf
