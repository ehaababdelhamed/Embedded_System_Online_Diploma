/******************************************************************************
 * Uint2     : Lesson3_C Basics >> Assignment1
 * File Name : EX5_Find_Char_ASCII.c
 * Data      : 6/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);

	char ch;
	printf("Enter Character: ");
	scanf("%c",&ch);
	printf("ASCII value of %c = %d",ch,ch);
	return 0;
}

