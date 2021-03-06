;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME: OneWire_1INT.asm
;;   Version: 1.1, Updated on 2015/3/4 at 22:26:45
;;  Generated by PSoC Designer 5.4.3191
;;
;;  DESCRIPTION: OneWire Interrupt Service Routine
;;
;;-----------------------------------------------------------------------------
;;   Copyright (c) Cypress Semiconductor 2015. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************

include "m8c.inc"
include "OneWire_1.inc"


;-----------------------------------------------
;  Global Symbols
;-----------------------------------------------
export  _OneWire_1_ISR

AREA UserModules (ROM, REL)

;-----------------------------------------------------------------------------
;  FUNCTION NAME: _OneWire_1_ISR
;
;  DESCRIPTION: With ParasitePower enabled this ISR sets TX pin to strong
;               drive mode immediately after transmission of last data bit.
;-----------------------------------------------------------------------------

_OneWire_1_ISR:
IF (OneWire_1_PARASITE_ENABLE)
    M8C_SetBank1
    and   REG[OneWire_1_OUT_PORT_DM1],~OneWire_1_OUT_PORT_MASK
    M8C_SetBank0
ENDIF
   reti

; end of file OneWire_1INT.asm
