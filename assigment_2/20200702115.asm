	LDX  #$A0
	LDAB #0
	LDAA #$8
	STAA $0,X
	LDAA #$14
	STAA $1,X
	LDAA #$6
	STAA $2,X
	LDAA #$16
	STAA $3,X
	LDAA #$5
	STAA $4,X
	LDAA #$5
	STAA $5,X
	LDAA #$10
	STAA $6,X
	LDAA #$16
	STAA $7,X
	LDAA #$4
	STAA $8,X
	LDAA #$11
	STAA $9,X
	LDAA #0
	STAA $70
	LDX #0
L1	CPX #$a
	BGE XX
L2 LDAA $A0,X	
	INX
	CBA
	BGT max
	BLE L1
	BRA XX
max	STAA $70
	LDAB $70
	BRA L1
XX	.END