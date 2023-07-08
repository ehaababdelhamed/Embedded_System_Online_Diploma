/******************************************************************************
 * Uint2     : Lesson4 Array&String >> Assignment3_String
 * File Name : EX3_Reverse_String.c
 * Data      : 8/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>
#include <string.h>

#define MAXLENTGH 100
int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	char str[MAXLENTGH];
	char temp;
	int len=0;
	int i;
	printf("Enter the string: ");
	gets(str);
	len=strlen(str);
	for(i=0;i<=len/2;i++){
		temp=str[i];
		str[i]=str[(len-1)-i];
		str[(len-1)-i]=temp;
	}
	printf("Reverse string: %s",str);
	return 0;
}

