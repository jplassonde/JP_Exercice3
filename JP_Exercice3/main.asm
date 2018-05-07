;----------------------------------------------------------------------------
; Exercise 3: Digital Communication
; File: main.asm
; =====================================
; Description: 
;
;
;
; Author: Jean-Philippe Lassonde #1504236
; Date: April 11th 2018
; Course: TX00CS03 - Sensors and Interfaces 
;----------------------------------------------------------------------------


include "m8c.inc"       ; part specific constants and macros
include "memory.inc"    ; Constants & macros for SMM/LMM and Compiler
include "PSoCAPI.inc"   ; PSoC API definitions for all User Modules

export _main
export pointer

area bss(ram,rel)
pointer: 	blk 2

area text(rom,rel)
.LITERAL 
JSON_P1:
	asciz "{\"SensorData\": [{\"name\":\"ds1822\",\"value\":\""
JSON_P2:
	asciz "\"},{\"name\":\"lm35dz\",\"value\":\""
JSON_P3:
	asciz "\"},{\"name\":\"tc74\",\"value\":\""
JSON_P4:
	asciz "\"}]}"
DS_STR:
	asciz "DS:"
LM_STR:
	asciz "LM:"
TC_STR:
	asciz " TC:"
.ENDLITERAL 

_main:
    M8C_EnableGInt 
	
	lcall OneWire_DS_Start	; Start OneWire module
	lcall LCD_Start			; Start LCD
	
	SetSPI_CS_Data			; Set SPI CS High
	mov A, SPIM_SPIM_MODE_0 ; Set mode to leading edge latch, idle low, MSB first (implicit)
	lcall SPIM_Start		; Start SPI Master module
	
	lcall I2CM_Start		; Start I2C
	
	mov A, UART_PARITY_NONE	; Set up & start UART
	lcall UART_Start
	
	lcall SleepTimer_EnableInt	; Enable SleepTimer interrupt
	lcall SleepTimer_Start		; Start SleepTimer
	mov A, 1
	lcall SleepTimer_SetTimer	; Delay for 1 second at power-on
	
; Main Loop

.loop:
	lcall SleepTimer_bGetTimer	; Get the Sleep Timer count
	cmp A, 0	    			; Check if it expired
	jnz .loop					; loop until timer expired
	mov A, 1				
	lcall SleepTimer_SetTimer	; Reload timer / 1Hz
	
	call GetDS1822				; Get DS1822 data in its buffer
	call GetLM35DZ				; Get LM35DZ data in its buffer
	call GetTC74				; Get TC74 data in its buffer
	call PrintToLCD				; Print sensors data on LCD
	call SendJSON				; Send data in JSON string over UART
	
    jmp .loop
	
;-----------------------------------------------------------------------------
;  FUNCTION NAME: PrintToLCD
;
;  DESCRIPTION: Print the 3 sensors values on LCD with identifiers
;-----------------------------------------------------------------------------
;  ARGUMENTS: none
;  RETURNS: none	
row_index: equ pointer ; Use the same RAM loc as pointer for the row index

PrintToLCD:
	mov [row_index], 0 
.clear_lcd:	
	mov A, [row_index]
	mov X, 0
	lcall LCD_Position
	mov X, 16
.clear_line:
	push X
	mov A, ' '
	lcall LCD_WriteData
	pop X
	dec X
	jnz .clear_line
	inc [row_index]
	cmp [row_index], 1
	jz .clear_lcd

	mov A, 0
	mov X, 0
	lcall LCD_Position
	
	mov A, >DS_STR
	mov X, <DS_STR
	lcall LCD_PrCString	
	mov A, 0
	mov X, ds1822Val
	lcall LCD_PrString
	
	mov A, 1
	mov X, 0
	lcall LCD_Position
	
	mov A, >LM_STR
	mov X, <LM_STR
	lcall LCD_PrCString
	mov A, 0
	mov X, lm35Val
	lcall LCD_PrString
	
	mov A, >TC_STR
	mov X, <TC_STR
	lcall LCD_PrCString
	mov A, 0
	mov X, tc74Val
	lcall LCD_PrString
	ret
	
;-----------------------------------------------------------------------------
;  FUNCTION NAME: SendJSON
;
;  DESCRIPTION: Send the values of the 3 sensors in a formatted JSON string.
;				Multiple calls are alternating beween the constant parts and the
;				variables to avoid having to copy everything to RAM. 
;-----------------------------------------------------------------------------
;  ARGUMENTS: none
;  RETURNS: none	
	
SendJSON:
	mov A, >JSON_P1			; Send first segment of JSON ROM String
	mov X, <JSON_P1
	lcall UART_CPutString
	mov A, 0				; Send DS1822 value
	mov X, ds1822Val
	lcall UART_PutString	
	mov A, >JSON_P2			; Send 2nd segment of JSON ROM String
	mov X, <JSON_P2
	lcall UART_CPutString	; Send LM35 value
	mov A, 0
	mov X, lm35Val
	lcall UART_PutString
	mov A, >JSON_P3			; Send 3rd segment of JSON ROM String
	mov X, <JSON_P3
	lcall UART_CPutString	; Send TC74 value
	mov A, 0		
	mov X, tc74Val
	lcall UART_PutString	
	mov A, >JSON_P4			; Send 4th segment of JSON ROM String
	mov X, <JSON_P4
	lcall UART_CPutString
	ret
	
	
;-----------------------------------------------------------------------------
;  FUNCTION NAME: StrCpy
;
;  DESCRIPTION: Copy null terminated string from ram at address [pointer+1] 
;				to ram at address [pointer]
;
;-----------------------------------------------------------------------------
;
;  ARGUMENTS: Number of decimals to copy in X
;			(addresses in pointer & pointer+1)
;
;  RETURNS: none
	
StrCpy::
.copy_integer:
	mvi A, [pointer+1]			; Load value from ftoa pointer & increment it
	mvi [pointer], A			; Store value in ds1822Val buffer
	cmp A, 0					; End if EOS
	jz .end_StrCpy
	cmp A, '.'					; Continue to next loop when reaching a dot
	jnz .copy_integer
.copy_decimals:
	mvi A, [pointer+1]			; Load value from origin buffer pointer & increment it
	mvi [pointer], A			; Store value in destination buffer
	cmp A, 0					; End if EOS
	jz .end_StrCpy
	dec X						; Increase counter in X
	jnz .copy_decimals			; Loop until the specified number of decimals are copied
	mov A, 0
	mvi [pointer], A			; Null terminate the string
.end_StrCpy:
	ret