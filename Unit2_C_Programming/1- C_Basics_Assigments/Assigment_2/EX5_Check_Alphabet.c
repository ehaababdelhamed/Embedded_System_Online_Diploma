/******************************************************************************
 * Uint2     : Lesson3_C Basics >> Assignment2
 * File Name : EX5_Check_Alphabet.c
 * Data      : 6/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);

	char ch;
	printf("Enter a character: ");
	scanf("%c",&ch);
	if((ch>='a'&&ch<='z')||(ch>='A'&&ch<='Z')){
		printf("%c is alphabet",ch);
	}else{
		printf("%c is not alphabet",ch);
	}

	return 0;
}



