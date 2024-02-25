	LDS $10
	LDAB #5
	LDX #$A0
for	DECB
	JSR asn
	CMPB #0
	BEQ XX
	BRA for	
asn LDAA #$32
	STAA $0,X
	INX
	RTS
XX  .END