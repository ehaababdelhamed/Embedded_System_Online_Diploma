/******************************************************************************
 * Uint2     : Quiz 4 >> Function
 * File Name : Q1_Check_User_Name.c
 * Data      : 9/7/2023
 * Author    : Ehab Mohamed Abdelhmaed
 *****************************************************************************/
#include <stdio.h>
#include <string.h>

#define MAXSIZE 100

//Assume user name saved in data base
const char username[]="ehab abdelhamed";


int check_username(char user[]){
	int i;
	int L=strlen(user);
	int flag=1;
	for(i=0;i<L&&username[i]!='\0';i++){
		if(user[i]!=username[i]){
			flag=0;
			break;
		}
	}
	return flag;
}

int main(){
	//To solve input/output buffer bug in eclipse
	setbuf(stdout,NULL);
	int User_Name[MAXSIZE];
	printf("Enter User Name: ");
	gets(User_Name);
	if(check_username(User_Name)){
		printf("SUCCESS");
	}else{
		printf("ERROR!");
	}
	return 0;
}


