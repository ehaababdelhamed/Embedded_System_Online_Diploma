/******************************************************************************
 * Uint2     : Lesson6 Structure >> Assignment 5
 * File Name : EX2_Add_two_distance.c
 * Data      : 12/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

struct Sdistance{
	float inch;
	int feet;
};

struct Sdistance ReadDistance(){
	struct Sdistance ds;
	printf("\nEnter feet: ");
	scanf("%d",&ds.feet);
	printf("Enter inch: ");
	scanf("%f",&ds.inch);
	return ds;
}

struct Sdistance SumDistance(struct Sdistance ds1,struct Sdistance ds2){
	struct Sdistance sum;
	sum.feet=ds1.feet+ds2.feet;
	sum.inch=ds1.inch+ds2.inch;
	if(sum.inch>=12){
		sum.feet++;
		sum.inch-=12;
	}
	return sum;
}

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	struct Sdistance distance1,distance2,sum;
	printf("Enter information of 1st distance: ");
	distance1=ReadDistance();
	printf("Enter information of 2nd distance: ");
	distance2=ReadDistance();
	sum=SumDistance(distance1,distance2);
	printf("sum of distance %d '- %0.1f \"",sum.feet,sum.inch);
	return 0;
}
