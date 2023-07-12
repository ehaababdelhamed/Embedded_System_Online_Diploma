/******************************************************************************
 * Uint2     : Lesson6 Structure >> Assignment 5
 * File Name : EX1_Store_student_information.c
 * Data      : 12/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

struct Sstudent{
	char name[30];
	int roll;
	float marks;
};

struct Sstudent Readinformation(){
	struct Sstudent st;
	printf("Enter student Information:\n");
	printf("Enter student name: ");
	scanf("%s",st.name);
	printf("Enter roll number: ");
	scanf("%d",&st.roll);
	printf("Enter marks: ");
	scanf("%f",&st.marks);
	return st;
}

void DisplayInformation(struct Sstudent st){
	printf("\nDisplaying information\n");
	printf("student name: %s\n",st.name);
	printf("roll number: %d\n",st.roll);
	printf("marks: %f\n",st.marks);
}


int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	struct Sstudent student1=Readinformation();
	DisplayInformation(student1);
	return 0;
}
