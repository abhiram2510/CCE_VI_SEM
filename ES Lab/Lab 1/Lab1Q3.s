	AREA RESET, DATA, READONLY
	EXPORT __Vectors

__Vectors

	DCD 0x10001000
	DCD Reset_Handler
	ALIGN
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler

Reset_Handler

	LDR R0, =SRC
	LDR R7, =DST
	LDR R8, =DST+36
	LDR R1, =SRC+36
	MOV R5, #5
up
   LDR R2, [R0], #4
	LDR R3, [R1],#-4
	STR R2, [R8], #-4
	STR R3, [R7], #4
	SUBS R5, #1
	BNE up

STOP
	B STOP
SRC DCD 0x123,0x456,0x789,0x135,0x157,0x179,0x182,0x197,0x166,0x333

	AREA mydata, DATA, READWRITE
DST DCD 0
	END