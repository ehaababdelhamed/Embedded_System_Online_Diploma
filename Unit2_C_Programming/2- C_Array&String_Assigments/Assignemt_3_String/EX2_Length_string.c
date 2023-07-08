/******************************************************************************
 * Uint2     : Lesson4 Array&String >> Assignment3_String
 * File Name : EX2_Lentgh_string.c
 * Data      : 8/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

#define MAXLENTGH 100
int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	char str[MAXLENTGH];
	int len=0;
	printf("Enter a string: ");
	gets(str);
	for(int i=0;str[i]!='\0';i++){
		len++;
	}
	printf("Length of string= %d",len);
	return 0;
}

