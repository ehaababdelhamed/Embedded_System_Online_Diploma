#Makefile prabared by Eng.Ehab Moahmed Abdelhamed
CC=arm-none-eabi-
CF= -gdwarf-2 -g  -mcpu=cortex-m4
INCS=-I .
LIBS=
SRC= $(wildcard *.c)
As= $(wildcard *.s)
OBJ= $(SRC:.c=.o) $(As:.s=.o) 
PROJECT_NAME=Lab3

all: $(PROJECT_NAME).bin
	@echo "****** Building is done *******"
	
$(PROJECT_NAME).bin: $(PROJECT_NAME).elf
	$(CC)objcopy.exe -O binary $< $@

$(PROJECT_NAME).elf: $(OBJ) linker_script.ld
	$(CC)ld -T linker_script.ld $(LIBS) $(OBJ) -o $@ -Map=Map_file.map
	cat $(PROJECT_NAME).elf > $(PROJECT_NAME).axf
	 
%.o: %.c 
	$(CC)gcc -c $(CF) $(INCS) $< -o $@ 
	
%.o: %.s
	$(CC)as.exe $(CF) $< -o $@ 

clean_all: 
	rm *.o *.bin *.elf
	@echo "**** Everything is clean ****"
clean:
	rm *.bin *.elf

