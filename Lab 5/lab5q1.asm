ORG 0H;
LJMP MAIN;
MAIN:	MOV TMOD, #01H;
		MOV P1, #0FFH;
START:	MOV A, #20H; LOWER BYTE
		CPL A;
		ADD A, #1D;
		MOV R0, A;
		MOV A, #4EH; UPPER BYTE
		ACALL CHECK_CARRY;
		MOV R2, #200D;
		CPL P1.4;
		CPL P1.5;
		CPL P1.6;
		CPL P1.7;
		ACALL DELAY;
		CPL P1.4;
		CPL P1.5;
		CPL P1.6;
		CPL P1.7;
		MOV R2, #200D;
		ACALL DELAY;
		LJMP START;

		DELAY:	
				AGAIN:	MOV TL0, R0;
						MOV TH0, R1;
						SETB TR0;
						HERE:	JNB TF0, HERE;
						CLR TR0;
						CLR TF0;
						DJNZ R2, AGAIN;
				RET;
				
		CHECK_CARRY:	CPL A;
						JNC GO; 
						ADD A, #1D;
						GO:	MOV R1, A;	
						RET;
END;
		