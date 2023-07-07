/******************************************************************************
 * Uint2     : Lesson3_C Basics >> Assignment2
 * File Name : EX2_Check_Vowel_Or_Consonant.c
 * Data      : 6/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);

	char ch;
	printf("Enter an alphabet: ");
	scanf("%c",&ch);
	switch(ch){
	case 'a':
	case 'e':
	case 'i':
	case 'o':
	case 'u':
		printf("%c is vowel",ch);
		break;
	default :
		printf("%c is consonant",ch);
	}

	return 0;
}
