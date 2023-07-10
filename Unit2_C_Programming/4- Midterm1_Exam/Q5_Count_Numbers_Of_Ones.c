/******************************************************************************
 * Uint2     : MidTerm1 Exam
 * File Name : Q5_Count_Numbers_Of_Ones.c
 * Data      : 10/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>
int NumOfOnes(int num){
	int count=0;
	for(int i=0;i<32;i++){
		if(num&(1<<i)){
			count++;
		}
	}
	return count;
}

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int number;
	int result;
	printf("Enter a number: ");
	scanf("%d",&number);
	result=NumOfOnes(number);
	printf("Number on ones: %d",result);
	return 0;
}

