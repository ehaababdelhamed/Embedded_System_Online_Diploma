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
			printf("delete student: %s , ID: %lu ------- Done\n",pDeleteStudent->student.name,pDeleteStudent->student.id);
			free(pDeleteStudent);
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
			printf("Height: %0.2f cm\n",pStudent->student.height);
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
	printf(" 5: Get Nth student\n");
	printf(" 6: Get Nth student from the end\n");
	printf(" 7: Get Middle student\n");
	printf(" 8: Number of students\n");
	printf(" 9: Reverse students\n");
	printf(" 10: Exit\n");

	printf("Enter Option Number: ");
}

/************************************************************************************
 * Function Name: FillDataOfStudent;
 * Parameters (in):	pNewStudent - pointer to structure of student data that will be filled
 * Return value: None
 * Description: Function to fill data of student (name - id - height)
 ************************************************************************************/
void FillDataOfStudent(SData_t* pNewStudent){
	Sstudent_t* pStudent=g_pHeadofStudents;
	boolean flag=TRUE;
	//Get all information of student
	printf("===== Enter information of student =====\n");
	printf("Enter student full Name: ");
	gets(pNewStudent->name);
	gets(pNewStudent->name);
	printf("Enter student ID: ");
	scanf("%lu",&(pNewStudent->id));
	printf("Enter student height (cm): ");
	scanf("%f",&(pNewStudent->height));
	//check if another student have same id
	while(flag){
		pStudent=g_pHeadofStudents;
		flag=FALSE;
		while(pStudent){
			if(pNewStudent->id == pStudent->student.id){
				//if another student have same ID , get form user another ID
				flag=TRUE; //For check the new entered ID agian
				printf("There are  another student have same ID\nEnter Another ID: ");
				scanf("%lu",&(pNewStudent->id));
				break;
			}
			pStudent=pStudent->PNextStudent;
		}
	}
	printf("Add student: %s ------- Done \n",pNewStudent->name);
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

/************************************************************************************
 * Function Name: Get_Nth_Record
 * Parameters (in):	None
 * Return value: None
 * Description: Function to find n'th student in the list
 ************************************************************************************/

void Get_Nth_Student(){
	uint32 index;
	Sstudent_t* pNthStudent=g_pHeadofStudents;
	//Get the required record number
	printf("Enter The record number of student: ");
	scanf("%lu",&index);
	//loop by count equal to record number
	while(--index){
		//if the list is ended or empty break the loop
		if(pNthStudent==NULL){
			break;
		}
		pNthStudent=pNthStudent->PNextStudent;
	}
	//if the pointer don't equal NULL print the information of required student
	if(pNthStudent==NULL){
		printf("The record number not exist\n");
	}else{
		printf("Name  : %s\n",pNthStudent->student.name);
		printf("ID    : %lu\n",pNthStudent->student.id);
		printf("Height: %0.2f cm\n",pNthStudent->student.height);
	}
	printf("========================================\n");
}

/************************************************************************************
 * Function Name: Num_Of_Students
 * Parameters (in):	None
 * Return value: None
 * Description: Function to count the number of students in the list
 ************************************************************************************/
void Num_Of_Students(){
	uint32 count=0;;
	Sstudent_t* pStudent=g_pHeadofStudents;
	//Loop and count the number of records
	while(pStudent){
		count++;
		pStudent=pStudent->PNextStudent;
	}
	printf("========================================\n");
	printf("Number of exist students: %lu \n",count);
	printf("========================================\n");
}

/************************************************************************************
 * Function Name: Get_Nth_Record
 * Parameters (in):	None
 * Return value: None
 * Description: Function to find n'th student from the end
 ************************************************************************************/
void Get_Nth_Student_From_TheEnd(){
	uint32 index,num;
	Sstudent_t* pMain=g_pHeadofStudents;
	Sstudent_t* pRef=g_pHeadofStudents;
	//Get the required record number
	printf("Enter The n'th record of student from the end: ");
	scanf("%lu",&index);
	num=index;
	//loop by count equal to record number
	while(index){
		//if the list is ended or empty break the loop
		if(pRef==NULL){
			break;
		}
		pRef=pRef->PNextStudent;
		index--;
	}
	//if index not equal zero mean the index number larger than the list length
	if(index!=0){
		printf("The record number not exist\n");
	}else{
		//if index equal zero the pRef is in the n'th node form start and pMain at start
		//We move two pointers by one step until pRef reach to NULL at this the pMain refer to the the n'th node form end
		while(pRef){
			pRef=pRef->PNextStudent;
			pMain=pMain->PNextStudent;
		}
		printf("The %lu'th record form the end: \n",num);
		printf("Name  : %s\n",pMain->student.name);
		printf("ID    : %lu\n",pMain->student.id);
		printf("Height: %0.2f cm\n",pMain->student.height);
	}
	printf("========================================\n");
}

/************************************************************************************
 * Function Name: Get_Middle_Record
 * Parameters (in):	None
 * Return value: None
 * Description: Function to find the middle student in the list
 ************************************************************************************/
void Get_Middle_Student(){
	Sstudent_t* pSlow=g_pHeadofStudents;
	Sstudent_t* pFast=g_pHeadofStudents;
	printf("\n============ Middle Student ============\n");
	if(g_pHeadofStudents == NULL){
		printf("The List is Empty\n");
	}else{
		//loop until reach ro the middle record
		//by move pSlow by one step and pFast by two step
		//add check for pSlow->next to avoid crash at one or two nodes only
		while(pSlow->PNextStudent!=NULL&&pFast->PNextStudent!=NULL){
			pSlow=pSlow->PNextStudent;
			pFast=pFast->PNextStudent->PNextStudent;
		}
		printf("Name  : %s\n",pSlow->student.name);
		printf("ID    : %lu\n",pSlow->student.id);
		printf("Height: %0.2f cm\n",pSlow->student.height);
	}
	printf("========================================\n");
}

/************************************************************************************
 * Function Name: Reverse_Records
 * Parameters (in):	None
 * Return value: None
 * Description: Function to reverse students in the list
 ************************************************************************************/
void Reverse_Students(){
	Sstudent_t* pCurrent=g_pHeadofStudents;
	Sstudent_t* pNext=NULL;
	Sstudent_t* pPrev=NULL;
	if(g_pHeadofStudents == NULL){
		printf("The List is Empty\n");
	}else{
		while(pCurrent!=NULL){
			pNext=pCurrent->PNextStudent;
			pCurrent->PNextStudent=pPrev;
			pPrev=pCurrent;
			pCurrent=pNext;
		}
		g_pHeadofStudents=pPrev;
		printf("Reverse Records ------ done\n");
	}
	printf("========================================\n");
}
