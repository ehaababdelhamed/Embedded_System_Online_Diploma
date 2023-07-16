/******************************************************************************
 * Uint2     : Lesson8 Function >> Assignment6
 * File Name : EX1_Handle_the_pointers.c
 * Data      : 9/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int m=29;
	int *ab;
	printf("Address of m: 0x%p\n",&m);
	printf("Value of m: %d\n",m);
	ab=&m;
	printf("\nNow ab assigned with the address of m\n");
	printf("Address of pointer ab: 0x%p\n",ab);
	printf("Content of pointer ab: %d\n",*ab);
	m=34;
	printf("\nThe value of m assigned to 34 now\n");
	printf("Address of pointer ab: 0x%p\n",ab);
	printf("Content of pointer ab: %d\n",*ab);
	*ab=7;
	printf("\nThe pointer variable ab is assigned with tha value 7 now \n");
	printf("Address of m: 0x%p\n",&m);
	printf("Value of m: %d\n",m);
	return 0;
}


