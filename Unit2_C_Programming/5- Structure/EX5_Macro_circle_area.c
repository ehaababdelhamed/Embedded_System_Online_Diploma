/******************************************************************************
 * Uint2     : Lesson6 Structure >> Assignment 5
 * File Name : EX6_Macro_circle_area.c
 * Data      : 12/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

#define pi 3.14159

#define CRICLE_AREA(R) (pi*R*R)


int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	float radius;
	printf("enter the radius: ");
	scanf("%f",&radius);
	printf("Area= %0.2f",CRICLE_AREA(radius));
	return 0;
}



