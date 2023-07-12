/******************************************************************************
 * Uint2     : Lesson6 Structure >> Assignment 5
 * File Name : EX4_Store_Information_Students.c
 * Data      : 12/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>

#define NUMOFSTUDENTS 4
struct Sstudent{
	char name[30];
	int roll;
	float marks;
};

struct Sstudent Readinformation(){
	struct Sstudent st;
	printf("Enter roll number: ");
	scanf("%d",&st.roll);
	printf("Enter student name: ");
	scanf("%s",st.name);
	printf("Enter marks: ");
	scanf("%f",&st.marks);
	return st;
}

void DisplayInformation(struct Sstudent st){
	printf("information of roll number %d:\n",st.roll);
	printf("student name: %s\n",st.name);
	printf("marks: %0.2f\n",st.marks);
}


int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	struct Sstudent student[NUMOFSTUDENTS];
	int i;
	printf("Enter information of students:\n");
	for(i=0;i<NUMOFSTUDENTS;i++){
		student[i]=Readinformation();
	}
	printf("\nDisplaying information:\n");
	for(i=0;i<NUMOFSTUDENTS;i++){
		DisplayInformation(student[i]);

	}
	return 0;
}
