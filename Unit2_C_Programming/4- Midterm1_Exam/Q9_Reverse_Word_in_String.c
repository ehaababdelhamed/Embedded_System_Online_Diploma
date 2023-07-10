/******************************************************************************
 * Uint2     : MidTerm1 Exam
 * File Name : Q9_Reverse_Word_in_String.c
 * Data      : 10/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/

#include <stdio.h>
#include <string.h>
#define MAXSIZE 100

void RevWords(char string[]){
	int j;
	int L=strlen(string);
	char Rev[MAXSIZE];
	int index;
	int lastindex=L;
	int count=0;
	while(count <L){
		for(j=lastindex-1;string[j]!=' '&&j>=0;j--);
		index=j+1;
		for(;index<lastindex;index++){
			Rev[count++]=string[index];
		}
		Rev[count++]=' ';
		lastindex=j;
	}
	Rev[count]='\0';
	strcpy(string,Rev);
}

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	char str[MAXSIZE]="Ehab Mohamed";
	printf("Enter string: ");
	gets(str);
	RevWords(str);
	printf("Reversing words: %s ",str);
	return 0;
}
