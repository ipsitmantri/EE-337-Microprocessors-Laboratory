ORG 0H;
LJMP MAIN;
MAIN: MOV A, #0FFH;
	  MOV P1, A;
	  MOV P1, #04H; input D
	  MOV A, P1;
	  MOV P1, #0F0H;
	  LCALL DELAYD4;
	  MOV P1, #0E0H;
	  LCALL DELAYD4;
	  MOV P1, #0D0H;
	  LCALL DELAYD4;
	  MOV P1, #0C0H;
	  LCALL DELAYD4;
	  MOV P1, #0B0H;
	  LCALL DELAYD4;
	  MOV P1, #0A0H;
	  LCALL DELAYD4;
	  MOV P1, #90H;
	  LCALL DELAYD4;
	  MOV P1, #80H;
	  LCALL DELAYD4;
	  MOV P1, #70H;
	  LCALL DELAYD4;
	  MOV P1, #60H;
	  LCALL DELAYD4;
	  MOV P1, #50H;
	  LCALL DELAYD4;
	  MOV P1, #40H;
	  LCALL DELAYD4;
	  MOV P1, #30H;
	  LCALL DELAYD4;
	  MOV P1, #20H;
	  LCALL DELAYD4;
	  MOV P1, #10H;
	  LCALL DELAYD4;
	  MOV P1, #00H;
	  LCALL DELAYD4;
	  LJMP MAIN;
      DELAYD4:
			MOV R0, A;
			DELAY:MOV R5, #0FAH;
			START: 
				MOV R7, #0FAH;
				LOOP_1_MILLI:
					NOP;
					NOP;
					NOP;
					NOP;
					NOP;
					NOP;
					DJNZ R7, LOOP_1_MILLI;
			DJNZ R5, START;
	    DJNZ R0, DELAY;
      RET;
	HERE: SJMP HERE;
	END