/******************************************************************************
 * Uint2     : Quiz 4 >> Function
 * File Name : Q7_Last_Occurrence.c
 * Data      : 9/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>
#include <string.h>
#define SIZE 10

int ASCII_To_Integar(char number[]){
	int num=0;
	if(!(number[0]>='0'&&number[0]<='9')){
		return -1;
	}
	for(int i=0;number[i]!='\0';i++){
		if(number[i]>='0'&&number[i]<='9'){
			num=num*10+(number[i]-'0');
		}else{
			break;
		}
	}
	return num;
}

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	char Anum[SIZE];
	unsigned int  Inum;
	printf("Enter number : ");
	scanf("%s",Anum);
	Inum=ASCII_To_Integar(Anum);
	printf("Integer = %d",Inum);
	return 0;
}

