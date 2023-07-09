/******************************************************************************
 * Uint2     : Lesson5 Function >> Assignment4
 * File Name : EX1_Prime_Numbers.c
 * Data      : 9/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

void Print_Prime_Num(int start,int end);

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int S,E;
	printf("Enter Two numbers (intervals): ");
	scanf("%d %d",&S,&E);
	Print_Prime_Num(S,E);
}

void Print_Prime_Num(int start,int end){
	int i,num;
	int flag;
	printf("Prime numbers between 10 and 30 are: ");
	for(num=start;num<=end;num++){
		if(num==1) continue;
		flag=1;
		for(i=2;i<=num/2;i++){
			if(num%i==0){
				flag=0;
				break;
			}
		}
		if(flag==1){
			printf("%d ",num);
		}
	}
}
