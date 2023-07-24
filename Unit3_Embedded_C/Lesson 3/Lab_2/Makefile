#Makefile prabared by Eng.Ehab Moahmed Abdelhamed
CC=arm-none-eabi-
CF= -gdwarf-2 -mcpu=cortex-m3
INCS=-I .
LIBS=
SRC= $(wildcard *.c)
As= $(wildcard *.s)
OBJ= $(SRC:.c=.o) $(As:.s=.o) 
NAME=Ehab_Lab2

all: $(NAME).bin
	@echo "****** Building is done *******"
	
$(NAME).bin: $(NAME).elf
	$(CC)objcopy.exe -O binary $< $@

$(NAME).elf: $(OBJ) linker_script.ld
	$(CC)ld -T linker_script.ld $(LIBS) $(OBJ) -o $@ -Map=Map_file.map
	 
%.o: %.c 
	$(CC)gcc -c $(CF) $(INCS) $< -o $@ 
	
%.o: %.s
	$(CC)as.exe $(CF) $< -o $@ 

clean_all: 
	rm *.o *.bin *.elf
	@echo "**** Everything is clean ****"
clean:
	rm *.bin *.elf

