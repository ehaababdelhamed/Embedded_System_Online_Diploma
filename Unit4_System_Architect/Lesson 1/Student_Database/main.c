/******************************************************************************
 * File Name: main.c
 * Description: Student database appliaction
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/
#include "Platform_Types.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Structure for information of student
typedef struct{
	char name[40];
	uint32 id;
	float32 height;
}SData_t;

struct Sstudent{
	SData_t student;
	struct Sstudent* PNextStudent;
};

typedef struct Sstudent Sstudent_t;

typedef enum {
	PRINT_OPTIONS,ADD_STUDENT,DELETE_STUDENT,PRINT_STUDENTS,DELETE_ALL_STUDENTS
}eOptions_t;
#define MINOPTION PRINT_OPTIONS
#define MAXOPTION DELETE_ALL_STUDENTS

Sstudent_t* g_PHeadofStudents=NULL;
eOptions_t option=PRINT_OPTIONS;

void FillDataOfStudent(SData_t* newStudent){
	//Get all information of student
	printf("===== Enter information of student =====\n");
	printf("Enter student full Name: ");
	gets(newStudent->name);
	gets(newStudent->name);
	printf("Enter student ID: ");
	scanf("%lu",&(newStudent->id));
	printf("Enter student height: ");
	scanf("%f",&(newStudent->height));
	printf("========================================\n");
}

Sstudent_t* GetStuedentFromId(uint32 ID){
	Sstudent_t* ReqStudent=g_PHeadofStudents;
	//loop until reach to the required id
	while(ReqStudent!=NULL){
		if(ReqStudent->student.id==ID){
			break;
		}
		ReqStudent=ReqStudent->PNextStudent;
	}
	//if id not exist return NULL
	return ReqStudent;
}

void AddStudent(){
	//Create New record
	Sstudent_t* newStudent=(Sstudent_t*)malloc(sizeof(Sstudent_t));
	//Create pointer for using to reach to last student
	Sstudent_t* lastStudent=g_PHeadofStudents;
	//if success dynamic allocation fill the new record
	if(newStudent!=NULL){
		FillDataOfStudent(&(newStudent->student));
		newStudent->PNextStudent=NULL;
	}
	//Check if list if empty
	if(g_PHeadofStudents==NULL){
		g_PHeadofStudents=newStudent;
		newStudent->PNextStudent=NULL;
		//if list not empty
	}else{
		//loop until reach to last student
		while(lastStudent->PNextStudent!=NULL){
			lastStudent=lastStudent->PNextStudent;
		}
		//assign new record to the next of last student
		lastStudent->PNextStudent=newStudent;
	}
}

void deleteStudent(){
	uint32 deleteStudentid=0;
	Sstudent_t* deleteStudent=NULL;
	Sstudent_t* previousStudents=g_PHeadofStudents;
	//Get the id of student that will be deleted from list
	printf("=========== Delete student ============\n");
	printf("Enter student ID: ");
	scanf("%lu",&deleteStudentid);
	//check if the list is empty
	if(g_PHeadofStudents==NULL){
		printf("THE LIST IS EMPTY\n");
	}else{
		//if the id not exist the function return NULL
		deleteStudent=GetStuedentFromId(deleteStudentid);
		//delete the required student from list
		if(deleteStudent==NULL){ //check if id not exist
			printf("THE ENTERD ID NOT EXIST!\n");
		}else{
			//check if the required student is first record
			if(deleteStudent==g_PHeadofStudents){
				g_PHeadofStudents=deleteStudent->PNextStudent;
			}else{
				//loop until reach to the record that previous of the required student
				while(previousStudents->PNextStudent!=deleteStudent){
					previousStudents=previousStudents->PNextStudent;
				}
				//assign that precedes of the required student to the next pointer of previous
				previousStudents->PNextStudent=deleteStudent->PNextStudent;
			}
			//delete the required student
			free(deleteStudent);
			printf("The deleted student ----- Done\n");
			printf("========================================\n");
		}
	}
}

void Print_Students(){
	Sstudent_t* pStudent=g_PHeadofStudents;
	uint32 count=0;
	printf("\n============ Print Students ============\n");
	if(pStudent==NULL){
		printf("THE LIST IS EMPTY\n");
	}else{
		while(pStudent!=NULL){
			count++;
			printf("Record number %lu :\n",count);
			printf("Name  : %s\n",pStudent->student.name);
			printf("ID    : %lu\n",pStudent->student.id);
			printf("Height: %f\n",pStudent->student.height);
			pStudent=pStudent->PNextStudent;
		}
	}
	printf("========================================\n");
}
void Delete_allStudents(){
	Sstudent_t* pCurrentStudent=g_PHeadofStudents;
	Sstudent_t* pPerviousStudent=NULL;
	if(pCurrentStudent!=NULL){
		while(pCurrentStudent!=NULL){
			pPerviousStudent=pCurrentStudent;
			pCurrentStudent=pCurrentStudent->PNextStudent;
			free(pPerviousStudent);
		}
		g_PHeadofStudents=NULL;
	}
	printf("Delete all students ---- Done\n");
}

void Print_Options(){
	printf("===================================\n");
	printf("\tChoose one of the following option\n");
	printf(" 1: Add student\n");
	printf(" 2: Delete student\n");
	printf(" 3: Print students\n");
	printf(" 4: Delete all students\n");
	printf("Enter Option Number: ");
}

/* Main Function */
int main(void){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	while(1){
		switch(option){
		case PRINT_OPTIONS:
			Print_Options();
			do{
				scanf("%u",&option);
				if(option<MINOPTION || option>MAXOPTION){
					printf("Error number! Enter Option Number again: ");
				}
			}while(option<MINOPTION || option>MAXOPTION);
			break;
		case ADD_STUDENT:
			AddStudent();
			option=PRINT_OPTIONS;
			break;
		case DELETE_STUDENT:
			deleteStudent();
			option=PRINT_OPTIONS;
			break;
		case PRINT_STUDENTS:
			Print_Students();
			option=PRINT_OPTIONS;
			break;
		case DELETE_ALL_STUDENTS:
			Delete_allStudents();
			option=PRINT_OPTIONS;
			break;
		}
	}
	return 0;
}
