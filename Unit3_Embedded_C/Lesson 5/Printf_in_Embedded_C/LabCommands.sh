#!/bin/bash 

#Commands

 arm-none-eabi-gcc.exe -g -mcpu=arm926ej-s  -nostartfiles -I . -T linker_script.ld NewLib.c app.c uart.c startup.s -o app.elf
 arm-none-eabi-objcopy.exe -O binary app.elf app.bin  
 qemu-system-arm.exe -M versatilepb -m 128M -nographic -kernel app.bin 









