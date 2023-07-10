/*****************************************************************************
 * Uint2     : MidTerm1 Exam
 * File Name : Qu10_Count_Max_numbers_of_ones.c
 * Data      : 10/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>
int MaxNumOfOnes(int num){
	int count=0;
	int max=0;
	int i;
	//to find first 0
	while(num&(1<<i)){
		i++;
	}
	for(;i<32;i++){
		if(num&(1<<i)){
			count++;
		}else{
			if(count>max){
				max=count;
			}
			count=0;
		}
	}
	return max;

}

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int number;
	int result;
	printf("Enter a number: ");
	scanf("%d",&number);
	result=MaxNumOfOnes(number);
	printf("Number on ones: %d",result);
	return 0;
}

