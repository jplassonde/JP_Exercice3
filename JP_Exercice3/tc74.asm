;----------------------------------------------------------------------------
; Exercise 3: Digital Communication
; File: tc74.asm
; =====================================
; Description: get data from TC74 and store it in a character buffer.
;
; Author: Jean-Philippe Lassonde #1504236
; Date: April 11th 2018
; Course: TX00CS03 - Sensors and Interfaces 
;----------------------------------------------------------------------------

include "PSoCAPI.inc" 

; Aliases
I2C_ADDR: 	equ 0x4A
RTR: 		equ 0x00
RWCR:		equ 0x01
DR_MASK: 	equ 0x40

export tc74Val

area bss(ram,rel)
tc74Val: 	blk 5	; String buffer for temperature value
area text(rom,rel)

; String format constant / ROM
.LITERAL 
STR_FORMAT:
asciz "%d"
.ENDLITERAL

GetTC74::
.wait_data_ready:
;---- Request read to config register	----
	mov A, RWCR 		; Request control register
	call .write_i2c
	call .read_i2c		; Get config reg val in A
	and A, DR_MASK		; Test Data Ready bit
	jz .wait_data_ready	; Repeat until data is ready
	
;---- Request read to temperature register ----
	mov A, RTR		; Set register to read (temp)
	call .write_i2c	
	call .read_i2c	; Get temp in A

; csprintf take 16 bit int. Check sign bit & push appropriate MSB
	
	cmp A, 0x80			; test sign bit
	jnc .negative
	mov X, 0x00
	jmp .convert_to_str
.negative:
	mov X, 0xFF
.convert_to_str:
	push X
	push A
	mov A, >STR_FORMAT
	push A
	mov A, <STR_FORMAT
	push A
	mov A, >tc74Val
	push A
	mov A, <tc74Val
	push A
	lcall _csprintf
	add SP, 0xFA	; Pop args off the stack
	
	ret 			; Done

; Register to read in A
.write_i2c:
	mov X, SP
	add SP, 1			; Allocate 1 byte on the stack (sData)
	mov [X], A			; Set register to read
	mov A, I2CM_CompleteXfer	; Set stop bit
	push A
	mov A, 0x01			; set number of bytes to write to 1
	push A
	mov A, 0			; Load the MSB of the sData pointer
	push A
	push X				; Push the LSB of sData pointer
	mov A, I2C_ADDR		
	push A 				; Push Slave address
	lcall _I2CM_bWriteBytes
	add SP, -6
	ret
; ---------------

; ret value in A
.read_i2c:
	mov X, SP
	add SP, 1			; Allocate 1 byte on the stack (sData)
	mov A, I2CM_CompleteXfer	; Complete transfer flag
	push A
	mov A, 0x01			; Set byte count to 1
	push A
	mov A, 0			; Load MSB of sData pointer 
	push A
	push X				; Push LSB of sData pointer
	mov A, I2C_ADDR		; Push Slave address
	push A
	lcall _I2CM_fReadBytes
	add SP, -5
	pop A 				; pop sData / Config register
	ret