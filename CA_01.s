;			 		Sum of Multiples
;			 	    	(This ARM assembly program reads a constant and calculates the sum of
;					 all multiples of three or five from 1 to N and store each one in a separate register)
					
;	Author: Ussash Arafat
;	Date:	July, 2020			


					GLOBAL user_code	

zero     				EQU 0
three					EQU 3
five					EQU 5
	
					AREA CA_01, CODE, READONLY
					ENTRY
user_code
					LDR r0, number
										;initializing the registers
            				MOV r1, #zero
					MOV r2, #zero
					MOV r3, #zero
					MOV r4, #zero
			
			
							  			;loop for calculating multiply of 3 and add them
loop_0					ADD r1, r1, #three
					CMP r1, r0		  		;updating the CPSR regiter
					ADDLE r2, r2, r1  			;conditional addition
					BLE loop_0		  		;loop will continue adding untill R1 is greater than R0
							
							
							  			;loop for calculating multiply of 5 and add them
loop_1					ADD r3, r3, #five
					CMP r3, r0        			;updating the CPSR register
					ADDLE r4, r4, r3  			;conditional addition
					BLE loop_1        			;loop will continue adding untill R3 is gretaer than R0
			
stop					B stop
							  			;Register R2 will hold the sum of the multiples of 3
							  			;Register R4 will hold the sum of the multiples of 5
number					DCD 17
					END