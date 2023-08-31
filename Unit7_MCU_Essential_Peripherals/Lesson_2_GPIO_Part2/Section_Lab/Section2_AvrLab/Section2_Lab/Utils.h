 /******************************************************************************
 * File Name: Utils
 * Description: Header file for Utils macros
 * Author: Ehab Mohamed Abdelhamed
 *******************************************************************************/


#ifndef UTILS_H_
#define UTILS_H_

//Macro to set specific bit in register
#define SET_BIT(REG,BIT) 	((REG)|=(1<<(BIT)))
//Macro to clear specific bit in register
#define CLEAR_BIT(REG,BIT) 	((REG)&=~(1<<(BIT)))
//Macro to toggle specific bit in register
#define TOGGLE_BIT(REG,BIT) ((REG)^=(1<<(BIT)))
//Macro to read specific bit in register
#define READ_BIT(REG,BIT)	(((REG)>>(BIT))&(1U))



#endif /* UTILS_H_ */
