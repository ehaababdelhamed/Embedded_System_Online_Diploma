/******************************************************************************
 * Uint2     : Lesson8 Function >> Assignment6
 * File Name : EX3_Print_string_in_reverse_using_pointer.c
 * Data      : 9/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

#define MAXSIZE 100

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	char str[MAXSIZE];
	char *ptr=NULL;
	printf("Input a string: ");
	scanf("%s",str);
	ptr=str;
	for(;*ptr!='\0';ptr++);
	printf("Reverse of the string is: ");
	while(ptr!=str){
		ptr--;
		printf("%c",*ptr);
	}


	return 0;
}


