	AREA reset,DATA,READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x10001000
	DCD Reset_Handler
	ALIGN
	AREA mycode, CODE, READONLY
	EXPORT Reset_Handler
	ENTRY
Reset_Handler
	MOV R0,#0x13
	MOV R1,#0x12
	MOV R3,#-12
STOP
	B STOP
	END