/******************************************************************************
 * Uint2     : Lesson4 Array&String >> Assignment3_String
 * File Name : EX1_Frequency_of_character.c
 * Data      : 8/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

#define MAXLENTGH 100
int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	char str[MAXLENTGH];
	char ch;
	int freq=0;
	printf("Enter a string: ");
	gets(str);
	printf("Enter a character to find frequency: ");
	scanf("%c",&ch);
	for(int i=0;str[i]!='\0';i++){
		if(ch==str[i]){
			freq++;
		}
	}
	printf("Frequency of %c = %d",ch,freq);

	return 0;
}

