/******************************************************************************
 * Uint2     : Lesson5 Function >> Assignment4
 * File Name : EX3_Reverse_Sentance_Recursion.c
 * Data      : 9/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>
#include <string.h>

#define MAXNUM 100

void Reverse_sentence(char string[],int length);

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	char str[MAXNUM];
	int L;
	printf("Enter a sentence: ");
	gets(str);
	L=strlen(str);
	Reverse_sentence(str,L);
	printf("%s",str);
}

void Reverse_sentence(char string[],int length){
	static int index=0;
	char temp;
	temp=string[index];
	string[index]=string[length-1];
	string[length-1]=temp;
	index++;
	if(index==length){
		return;
	}
	Reverse_sentence(string,length-1);
}
