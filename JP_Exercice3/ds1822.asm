;----------------------------------------------------------------------------
; Exercise 3: Digital Communication
; File: ds1822.asm
; =====================================
; Description: 
;
;
;
; Author: Jean-Philippe Lassonde #1504236
; Date: April 11th 2018
; Course: TX00CS03 - Sensors and Interfaces 
;----------------------------------------------------------------------------

; DS1822 Commands
DS_SKIP_ROM:	equ 0xCC
DS_CONVERT_T: 	equ 0x44
DS_READ_SPAD: 	equ 0xBE
DS_WRITE_SPAD: 	equ 0x4E
DS_COPY_SPAD:	equ 0x48

export ds1822Val

area bss(ram,rel)
ds1822Val: 	blk 9
area text(rom,rel)


;-----------------------------------------------------------------------------
;  FUNCTION NAME: GetDS1822
;
;  DESCRIPTION: - Get the value from the DS1822 sensor
;				- Store it into a single-precision float
;				- Convert the value to string and store it with 2 decimals in
;				  the ds1822Val buffer
;
;-----------------------------------------------------------------------------
;  ARGUMENTS: none
;  RETURNS: none
;-----------------------------------------------------------------------------

;	Stack: 	X+9:	Counter
;			X:		9 bytes RX buffer
;
GetDS1822::
	mov X, SP		; Allocate 10 bytes on the stack
	add SP, 0x0A 	; X+9: Counter
	push X			; X:   9 bytes RX buffer
	
;-------------- Request Transfer ----------------------------
.init_conversion:
	lcall OneWire_DS_fReset		; Send Reset signal
	mov A, DS_SKIP_ROM			; Signal to skip ROM
	lcall OneWire_DS_WriteByte
	mov A, DS_CONVERT_T			; Ask for temperature conversion
	lcall OneWire_DS_WriteByte
	
.poll_status:
	lcall OneWire_DS_bReadBit	; Poll the status bit
	asr A						; Shift status bit to carry
	jnc .poll_status			; Poll until status bit is set
	
;-------------- Receive Data --------------------------------

	lcall OneWire_DS_ClearCRC8	; Clear CRC buffer
	lcall OneWire_DS_fReset		; Send Reset signal
	mov A, DS_SKIP_ROM			; Signal to skip ROM
	lcall OneWire_DS_WriteByte	
	mov A, DS_READ_SPAD			; Read DS 1822 Scratchpad
	lcall OneWire_DS_WriteByte
	pop X
	mov [pointer], X		; Load buffer address in pointer
	mov [X+9], 8			; Initialize counter to get 8 values
	push X
	
.get_byte:
	lcall OneWire_DS_bReadByte	; Read one byte from OneWire
	mvi [pointer], A			; Store it on the stack & increment pointer
	lcall OneWire_DS_bCRC8		; Compute CRC
	pop X
	dec [X+9]					; Decrement counter
	push X
	jnz .get_byte				; Repeat until counter is 0

;-------------- Get & calculate CRC -------------------------
	lcall OneWire_DS_bReadByte 	; Get 9th byte (CRC)
	lcall OneWire_DS_bCRC8
	cmp A, 0					; Check if CRC passed (ZF Set)
	jnz .init_conversion		; Otherwise get data again
	
;-------------- Convert to float ( The fun part!) -----------
;	Stack: 	X+6:	Counter
;			X+2: 	4 bytes floating point
;			X: 		2 bytes sensor data
	
	MSB: equ 1 ; MSB(yte) pos in relation to frame pointer
	LSB: equ 0

	pop X 			; Restore frame pointer
	
	add SP, 0xFD	; Remove 3 unused bytes from the stack
	mov [X+2], 0	; Clear memory used by the float 
	mov [X+3], 0
	mov [X+4], 0
	mov [X+5], 0
	mov [X+6], 0		; Init counter to 0
	tst [X+MSB], 0x80	; Check one of the sign bit 
	jz .compute_float	
	
;---- Adjust negative temperature ---
	mov [X+2], 0x80 	; Set sign on float
	xor [X+LSB], 0xFF	; Flip 2s complement bits 
	xor [X+MSB], 0xFF
	add [X+LSB], 0x01	; Add 1, now contain the absolute value
	adc [X+MSB], 0
	and [X+MSB], 0x07	; Mask out sign bits
		
;-------------- Set float exponent and mantissa -------------
.compute_float:
	and F, 0xFB			; Clear carry
	rrc [X+MSB]			; Rotate sensor bits right
	rrc [X+LSB]
	rrc A				; All the way to mantissa
	inc [X+6]			; Count number of shift
	cmp [X+MSB], 0		; Until all the set bits have been shifted
	jnz .compute_float
	cmp [X+LSB], 1		; Except for the last one. Implicit mantissa bit		
	jnz .compute_float
	add [X+6], 123		; add 123 to the counter to get exponent value (127 - 5 shift to 2e0 + 1 implicit bit not counted)
	
; Mantissa (8 most significant bits) in A, exponent in X+6. 
; Few RORs and ORs and everything is set in position

	and F, 0xFB			; Clear carry
	rrc A				; Rotate lsb of mantissa
	rrc [X+4]			; In the msb of the 3rd byte of float
	and F, 0xFB			; Clear carry
	rrc [X+6] 			; Rotate exponent lsb in 2nd byte of the float
	rrc [X+3]
	or [X+3], A			; OR mantissa with the exponent lsb
	mov A, [X+6]
	or [X+2], A			; OR exponent with the sign bit 
	
	add SP, 0xFF		; Remove counter/exponent from the stack
	
;-------------- Convert to char array -----------------------	
	
	mov [X], 0			; Set ftoa status pointer			
	mov [X+1], pointer	; The pointer becomes the pointee
	
	lcall _ftoa			; Call ftoa. Buffer pointer located in [__r1], status in ram[pointer]
	add SP, 0xFA 		; pop the rest of the stack 
	
	cmp [pointer+1], 0		; Check if returned value is 0
	jnz .invalid_conversion	; Handle invalid cases
	
;------- Copy it with 2 decimal at final destination --------

	mov [pointer], ds1822Val	; Pointer to the final ds1822Val
	mov A, [__r1]				; Copy the _ftoa buffer pointer
	mov [pointer+1], A			
	mov X, 2					; Set number of decimals to 2
	lcall StrCpy

	ret							; Return to main
	
;------------- HANDLE INVALID CONVERSION ----------------
; FtoA should never fail with this range and precision, but 
; if by some sorcery the value get dangerously close to 0...
.invalid_conversion:
	mov [ds1822Val], '0' 	; Set temperature string to "0" if anything goes wrong with ftoa
	mov [ds1822Val+1], 0 	; Null terminate
	ret

	