/******************************************************************************
 * Uint2     : MidTerm1 Exam
 * File Name : Q6_Unique_Number.c.c
 * Data      : 10/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

#define MAXSIZE 100

int UniqueNumber(int arr[],int size){
	int i,j;
	int unique=-1;
	int flag;
	for(i=0;i<size;i++){
		flag=1;
		for(j=0;j<size;j++){
			if(j==i)
				continue;
			if(arr[i]==arr[j]){
				flag=0;
			}
		}
		if(flag==1){
			unique=arr[i];
		}
	}
	return unique;
}

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int numOfInputs;
	int array[MAXSIZE];
	int i;
	int Unum;
	printf("Enter number of inputs: ");
	scanf("%d",&numOfInputs);
	printf("Enter %d numbers: ",numOfInputs);
	for(i=0;i<numOfInputs;i++){
		scanf("%d",&array[i]);
	}
	Unum=UniqueNumber(array,numOfInputs);
	printf("Unique number= %d",Unum);
	return 0;
}
