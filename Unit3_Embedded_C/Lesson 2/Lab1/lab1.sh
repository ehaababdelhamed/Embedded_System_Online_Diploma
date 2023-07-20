#!/bin/bash 

#Compilation 
arm-none-eabi-gcc -c -mcpu=arm926ej-s uart.c -o uart.o
arm-none-eabi-gcc -c -mcpu=arm926ej-s app.c  -o  app.o
arm-none-eabi-gcc -c -mcpu=arm926ej-s startup.s -o startup.o

#Linking
 arm-none-eabi-ld -T linker_script.ld app.o uart.o startup.o -o learn-in-depth.elf -Map=Map_file.map

#binary file
arm-none-eabi-objcopy.exe -O binary learn-in-depth.elf learn-in-depth.bin 

#Simulation
 qemu-system-arm.exe -M versatilepb -m 128M -nographic -kernel learn-in-depth.bin

: '
 #Sections of files
arm-none-eabi-objdump.exe -h uart.o 
arm-none-eabi-objdump.exe -h app.o 
arm-none-eabi-objdump.exe -h startup.o 
arm-none-eabi-objdump.exe -h learn-in-depth.elf

#Symbols of files
arm-none-eabi-nm  uart.o 
arm-none-eabi-nm  app.o 
arm-none-eabi-nm  startup.o  
arm-none-eabi-nm  learn-in-depth.elf #
'









