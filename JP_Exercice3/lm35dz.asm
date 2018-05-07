;----------------------------------------------------------------------------
; Exercise 3: Digital Communication
; File: lm35dz.asm
; =====================================
; Description: Read data from LM25DZ, convert it and store it with 1 decimal
; in a character buffer.
;
; Author: Jean-Philippe Lassonde #1504236
; Date: April 11th 2018
; Course: TX00CS03 - Sensors and Interfaces 
;----------------------------------------------------------------------------

include "PSoCGPIOINT.inc"	; Shadow Register macros
include "PSoCAPI.inc"   	; SPIM constant definitions

export lm35Val

area bss(ram,rel)
lm35Val: 	blk 9
area text(rom,rel)

;-----------------------------------------------------------------------------
;  FUNCTION NAME: GetLM35DZ
;
;  DESCRIPTION: - Get the value from the LM35DZ sensor
;				- Convert the value into a single-precision float
;				- Perform the inverse transfer function
;				- Convert the value to string and store it with 1 decimal in
;				  the ds1822Val buffer
;
;-----------------------------------------------------------------------------
;  ARGUMENTS: none
;  RETURNS: none
;-----------------------------------------------------------------------------

; Stack frame: 	X+12 4 bytes for 32 bit uint
;				X+10 2 bytes ptr
;				X+6	 4 bytes for float op 1
;				X+2	 4 byte for float op 2
;				X	 2 bytes ptr for later use

GetLM35DZ::
	mov X, SP
	mov [pointer], X 	; Store a copy of frame pointer in static ram
	add SP, 16			; Allocate 16 bytes on stack
	push X
	
;---------------- Get value from ADC ------------------

	ClearSPI_CS_Data ; Set chip select low
	
	lcall SPIM_SendTxData	; Clock a byte in
.wait_1st_byte:
	lcall SPIM_bReadStatus
	and A, SPIM_SPIM_RX_BUFFER_FULL | SPIM_SPIM_SPI_COMPLETE; Wait until transfer is completed
	cmp A, SPIM_SPIM_RX_BUFFER_FULL | SPIM_SPIM_SPI_COMPLETE
	jnz .wait_1st_byte				; Loop until RX done
	pop X
	lcall SPIM_bReadRxData
	mov [X+14], A			; Store data on stack
	push X
	lcall SPIM_SendTxData	; Clock a byte in
.wait_2nd_byte:
	lcall SPIM_bReadStatus
	and A, SPIM_SPIM_RX_BUFFER_FULL | SPIM_SPIM_SPI_COMPLETE; Wait until transfer is completed
	cmp A, SPIM_SPIM_RX_BUFFER_FULL | SPIM_SPIM_SPI_COMPLETE
	jnz .wait_2nd_byte				; Loop until RX done
	lcall SPIM_bReadRxData
	pop X
	mov [X+15], A					; Store data on stack
	
	SetSPI_CS_Data					; Pull CS back up
	
;---------------- Adjust MCP3201 Value ----------------

	and F, 0xFB			; Clear carry
	rrc [X+14]			; Shift bits to the right
	rrc [X+15]		
	and [X+14], 0x0f		; discard bits 12 to 15
	
;------------------ Convert to float -------------------	

	mov [X+12], 0	; Clear uint32 2 higher bytes
	mov [X+13], 0
	mov [X+10], 0	; Point to the allocated space for the float	
	mov A,X
	add A, 6 		; at X+6
	mov [X+11], A	
	lcall long2fp	; do the conversion from 32 bit int to single precision float
	
	add SP, 0xFA		; pop uint and ptr (6) bytes off the stack
	
	mov X, [pointer] 	; restore saved copy of frame pointer
	
;------------------ Inverse transfer function -----------
; Digital Output Code = 1000*Vin
; Temp C = ADC Val / 10 (10mv/C)
;
; Stack:	X+6 4 bytes float op1
;			X+2	4 bytes float op2/result 
;			X: 	2 Bytes ptr / status

	mov A, X		; Initialize the ptr with the address of the float result (X+2)
	add A, 2
	mov [X+1], A	; Set LSByte pointer to X+2
	mov [X], 0		; Set MSByte to 0 (ram...)
	
	
	mov [X+2], 0x41	; Set dividend to 10
	mov [X+3], 0x20
	mov [X+4], 0x00
	mov [X+5], 0x00
	lcall fpdiv		; Divide adc val by 10
	
	add SP, 0xFC	; Pop op1, keep result on top
	
	mov X, [pointer]		; restore frame pointer
	mov [X], 0				; Set the status-return pointer
	mov [X+1], pointer		; this is no longer a pointer but an int pointed to

	lcall _ftoa				; Summon the wrath of the _ftoa god
	add SP, 0xFA			; pop result and status
	
	mov A, [__r1]			; Store origin buffer ptr 
	mov [pointer+1], A
	mov [pointer], lm35Val	; Store destination buffer ptr
	mov X, 1				; set number of decimals to print to 1
	
	lcall StrCpy
	ret
	