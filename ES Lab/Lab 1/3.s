	AREA reset, DATA, READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x10001000
	DCD Reset_Handler
	ALIGN
	AREA mycode, CODE, READONLY
	EXPORT Reset_Handler
	ENTRY
Reset_Handler
	LDR R0,=SRC
	LDR R2,[R0]
	LDR R3,[R0,#4]
	LDR R4,[R0],#4
	LDR R5,[R0]
STOP
	B STOP
SRC DCD 0x1234,0x11111111
	END
	