/******************************************************************************
 * Uint2     : MidTerm1 Exam
 * File Name : Q3_Print_Prime_Numbers.c
 * Data      : 10/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>
int checkPrime(int num){
	int isPrime=1;
	int i;
		for(int i=2;i<=(num/2);i++){
			if(num%i==0){
				isPrime=0;
				break;
			}
		}
	return isPrime;
}
void PrimeNumbers(int start,int end){
	int i;
	printf("Prime Numbers between %d and %d: ",start,end);
	for(i=start;i<=end;i++){
		if(checkPrime(i)){
			printf("%d ",i);
		}
	}
}


int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int n1,n2;
	printf("Enter two numbers: ");
	scanf("%d %d",&n1,&n2);
	PrimeNumbers(n1, n2);
	return 0;
}

