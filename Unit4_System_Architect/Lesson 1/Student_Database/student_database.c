/******************************************************************************
 * File Name: student_database.c
 * Description: Source file for Student database using linked list
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/
#include "student_database.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

Sstudent_t* g_pHeadofStudents=NULL;

/*******************************************************************************
 *                      Function Definition                                    *
 *******************************************************************************/

/************************************************************************************
* Function Name: Add_Student;
* Parameters (in):	None
* Return value: None
* Description: Function to add student in the list
************************************************************************************/
void Add_Student(){
	//Create New record
	Sstudent_t* pNewStudent=(Sstudent_t*)malloc(sizeof(Sstudent_t));
	//Create pointer for using to reach to last student
	Sstudent_t* pLastStudent=g_pHeadofStudents;
	//if success dynamic allocation fill the new record
	if(pNewStudent!=NULL){
		FillDataOfStudent(&(pNewStudent->student));
		pNewStudent->PNextStudent=NULL;
	}
	//Check if list if empty
	if(g_pHeadofStudents==NULL){
		g_pHeadofStudents=pNewStudent;
		pNewStudent->PNextStudent=NULL;
		//if list not empty
	}else{
		//loop until reach to last student
		while(pLastStudent->PNextStudent!=NULL){
			pLastStudent=pLastStudent->PNextStudent;
		}
		//assign new record to the next of last student
		pLastStudent->PNextStudent=pNewStudent;
	}
}

/************************************************************************************
* Function Name: Delete_Student;
* Parameters (in):	None
* Return value: None
* Description: Function to delete student from the list
************************************************************************************/
void Delete_Student(){
	uint32 deleteStudentid=0;
	Sstudent_t* pDeleteStudent=NULL;
	Sstudent_t* pPreviousStudents=g_pHeadofStudents;
	//Get the id of student that will be deleted from list
	printf("=========== Delete student ============\n");
	printf("Enter student ID: ");
	scanf("%lu",&deleteStudentid);
	//check if the list is empty
	if(g_pHeadofStudents==NULL){
		printf("THE LIST IS EMPTY\n");
	}else{
		//if the id not exist the function return NULL
		pDeleteStudent=GetStuedentFromId(deleteStudentid);
		//delete the required student from list
		if(pDeleteStudent==NULL){ //check if id not exist
			printf("THE ENTERD ID NOT EXIST!\n");
		}else{
			//check if the required student is first record
			if(pDeleteStudent==g_pHeadofStudents){
				g_pHeadofStudents=pDeleteStudent->PNextStudent;
			}else{
				//loop until reach to the record that previous of the required student
				while(pPreviousStudents->PNextStudent!=pDeleteStudent){
					pPreviousStudents=pPreviousStudents->PNextStudent;
				}
				//assign that precedes of the required student to the next pointer of previous
				pPreviousStudents->PNextStudent=pDeleteStudent->PNextStudent;
			}
			//delete the required student
			free(pDeleteStudent);
			printf("The deleted student ----- Done\n");
			printf("========================================\n");
		}
	}
}

/************************************************************************************
* Function Name: Print_Students;
* Parameters (in):	None
* Return value: None
* Description: Function to display all students in the list
************************************************************************************/
void Print_Students(){
	Sstudent_t* pStudent=g_pHeadofStudents;
	uint32 count=0;
	printf("\n============ Print Students ============\n");
	if(pStudent==NULL){
		printf("THE LIST IS EMPTY\n");
	}else{
		//loop for print all student until reach to NULL
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

/************************************************************************************
* Function Name: Delete_allStudents;
* Parameters (in):	None
* Return value: None
* Description: Function to delete all students in the list
************************************************************************************/
void Delete_allStudents(){
	Sstudent_t* pCurrentStudent=g_pHeadofStudents;
	Sstudent_t* pPerviousStudent=NULL;
	//Loop for delete all records
	if(pCurrentStudent!=NULL){
		while(pCurrentStudent!=NULL){
			pPerviousStudent=pCurrentStudent;
			pCurrentStudent=pCurrentStudent->PNextStudent;
			free(pPerviousStudent);
		}
		g_pHeadofStudents=NULL;
	}
	printf("Delete all students ---- Done\n");
}

/************************************************************************************
* Function Name: Print_Options;
* Parameters (in):	None
* Return value: None
* Description: Function to display all option in application
************************************************************************************/
void Print_Options(){
	printf("===================================\n");
	printf("\tChoose one of the following option\n");
	printf(" 1: Add student\n");
	printf(" 2: Delete student\n");
	printf(" 3: Print students\n");
	printf(" 4: Delete all students\n");
	printf("Enter Option Number: ");
}

/************************************************************************************
* Function Name: FillDataOfStudent;
* Parameters (in):	pNewStudent - pointer to structure of student data that will be filled
* Return value: None
* Description: Function to fill data of student (name - id - height)
************************************************************************************/
void FillDataOfStudent(SData_t* pNewStudent){
	//Get all information of student
	printf("===== Enter information of student =====\n");
	printf("Enter student full Name: ");
	gets(pNewStudent->name);
	gets(pNewStudent->name);
	printf("Enter student ID: ");
	scanf("%lu",&(pNewStudent->id));
	printf("Enter student height: ");
	scanf("%f",&(pNewStudent->height));
	printf("========================================\n");
}

/************************************************************************************
* Function Name: GetStuedentFromId
* Parameters (in):	ID - ID number of student
* Return value: return address of required student
* Description: Function to search for student by its ID
************************************************************************************/
Sstudent_t* GetStuedentFromId(uint32 ID){
	Sstudent_t* pReqStudent=g_pHeadofStudents;
	//loop until reach to the required ID
	while(pReqStudent!=NULL){
		if(pReqStudent->student.id==ID){
			break;
		}
		pReqStudent=pReqStudent->PNextStudent;
	}
	//if ID not exist return NULL
	return pReqStudent;
}
