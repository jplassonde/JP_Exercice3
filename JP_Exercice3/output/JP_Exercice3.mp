Project:      output/JP_Exercice3
Build Number: 0
Date:         Fri Apr 27 07:29:55 2018
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   01F2 =    498. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0162  LoadConfigTBL_jp_exercice3_Bank0
       01AB  LoadConfigTBL_jp_exercice3_Bank1
       01EC  __ctype
       0342  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0342   0002 =      2. bytes (rel,con,rom,proclab)

       Addr  Global Symbol
      -----  --------------------------------
       0342  __func_lit_start
       0344  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0344   013B =    315. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0344  LoadConfigTBL_jp_exercice3_Ordered
       0409  LoadConfigInit
       0409  _LoadConfigInit
       0428  _LoadConfig_jp_exercice3
       0428  LoadConfig_jp_exercice3
       047F  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   047F   0836 =   2102. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       047F  _UART_TX_ISR
       0480  _UART_RX_ISR
       04D0  _UART_EnableInt
       04D0  UART_EnableInt
       04D7  _UART_DisableInt
       04D7  UART_DisableInt
       04DE  _UART_SetTxIntMode
       04DE  UART_SetTxIntMode
       04F0  _UART_Start
       04F0  UART_Start
       04F9  UART_Stop
       04F9  _UART_Stop
       0500  UART_SendData
       0500  _UART_SendData
       0503  bUART_ReadTxStatus
       0503  _bUART_ReadTxStatus
       0503  _UART_bReadTxStatus
       0503  UART_bReadTxStatus
       0506  _bUART_ReadRxData
       0506  bUART_ReadRxData
       0506  UART_bReadRxData
       0506  _UART_bReadRxData
       0509  _bUART_ReadRxStatus
       0509  UART_bReadRxStatus
       0509  bUART_ReadRxStatus
       0509  _UART_bReadRxStatus
       050C  UART_TxIntMode
       050C  _UART_TxIntMode
       051F  _UART_IntCntl
       051F  UART_IntCntl
       054A  UART_PutSHexByte
       054A  _UART_PutSHexByte
       055D  UART_PutSHexInt
       055D  _UART_PutSHexInt
       0564  UART_PutChar
       0564  _UART_PutChar
       056C  _UART_cGetChar
       056C  UART_cGetChar
       0574  _UART_cReadChar
       0574  UART_cReadChar
       058B  UART_iReadChar
       058B  _UART_iReadChar
       05A1  UART_PutString
       05A1  _UART_PutString
       05AB  UART_Write
       05AB  _UART_Write
       05C3  UART_CWrite
       05C3  _UART_CWrite
       05EB  UART_CPutString
       05EB  _UART_CPutString
       05FD  UART_PutCRLF
       05FD  _UART_PutCRLF
       0606  UART_CmdReset
       0606  _UART_CmdReset
       0613  UART_bCmdCheck
       0613  _UART_bCmdCheck
       0618  _UART_bErrCheck
       0618  UART_bErrCheck
       0620  UART_bCmdLength
       0620  _UART_bCmdLength
       0623  UART_szGetParam
       0623  _UART_szGetParam
       0671  UART_szGetRestOfParams
       0671  _UART_szGetRestOfParams
       0679  _SPIM_ISR
       067A  _SPIM_EnableInt
       067A  SPIM_EnableInt
       067E  SPIM_DisableInt
       067E  _SPIM_DisableInt
       0682  _SPIM_Start
       0682  SPIM_Start
       0687  _SPIM_Stop
       0687  SPIM_Stop
       068B  SPIM_SendTxData
       068B  _SPIM_SendTxData
       068E  bSPIM_ReadRxData
       068E  SPIM_bReadRxData
       068E  _SPIM_bReadRxData
       068E  _bSPIM_ReadRxData
       0691  _bSPIM_ReadStatus
       0691  bSPIM_ReadStatus
       0691  _SPIM_bReadStatus
       0691  SPIM_bReadStatus
       0694  _SleepTimer_ISR
       06B4  _SleepTimer_EnableInt
       06B4  SleepTimer_EnableInt
       06B8  _SleepTimer_DisableInt
       06B8  SleepTimer_DisableInt
       06BC  SleepTimer_Start
       06BC  _SleepTimer_Start
       06CD  _SleepTimer_Stop
       06CD  SleepTimer_Stop
       06CE  SleepTimer_SetInterval
       06CE  _SleepTimer_SetInterval
       06E0  _SleepTimer_TickWait
       06E0  SleepTimer_TickWait
       06EF  _SleepTimer_SyncWait
       06EF  SleepTimer_SyncWait
       06FD  SleepTimer_bGetTickCntr
       06FD  _SleepTimer_bGetTickCntr
       0700  SleepTimer_SetTimer
       0700  _SleepTimer_SetTimer
       0703  SleepTimer_bGetTimer
       0703  _SleepTimer_bGetTimer
       0706  SleepTimer_iGetTickCntr
       0706  _SleepTimer_iGetTickCntr
       0711  _SleepTimer_lGetTickCntr
       0711  SleepTimer_lGetTickCntr
       072A  _OneWire_DS_ISR
       072B  OneWire_DS_Start
       072B  _OneWire_DS_Start
       073C  OneWire_DS_Stop
       073C  _OneWire_DS_Stop
       0743  _OneWire_DS_fReset
       0743  OneWire_DS_fReset
       075C  OneWire_DS_WriteBit
       075C  _OneWire_DS_WriteBit
       0768  OneWire_DS_bReadBit
       0768  _OneWire_DS_bReadBit
       0779  _OneWire_DS_WriteByte
       0779  OneWire_DS_WriteByte
       0794  _OneWire_DS_bReadByte
       0794  OneWire_DS_bReadByte
       07A8  OneWire_DS_ClearCRC8
       07A8  _OneWire_DS_ClearCRC8
       07AC  _OneWire_DS_bCRC8
       07AC  OneWire_DS_bCRC8
       07CC  _LCD_PrCString
       07CC  LCD_PrCString
       07DE  LCD_HEX_STR
       07EE  LCD_PrHexByte
       07EE  _LCD_PrHexByte
       0801  _LCD_PrHexInt
       0801  LCD_PrHexInt
       0808  _LCD_PrString
       0808  LCD_PrString
       0812  LCD_WriteData
       0812  _LCD_Write_Data
       0812  LCD_Write_Data
       0812  _LCD_WriteData
       0826  LCD_Control
       0826  _LCD_Control
       08CD  LCD_Init
       08CD  _LCD_Init
       08CD  LCD_Start
       08CD  _LCD_Start
       0939  LCD_ROW_OFFSET
       093D  LCD_Position
       093D  _LCD_Position
       0949  _LCD_Delay50uTimes
       0949  LCD_Delay50uTimes
       094F  LCD_Delay50u_Table
       0957  LCD_Delay50u
       0957  _LCD_Delay50u
       096B  I2CM_Start
       096B  _I2CM_Start
       098C  I2CM_Stop
       098C  _I2CM_Stop
       098D  _I2CM_fReadBytes
       09D6  I2CM_fReadBytes
       0A1A  _I2CM_bWriteBytes
       0A57  I2CM_bWriteBytes
       0A8F  _I2CM_bWriteCBytes
       0ACF  I2CM_bWriteCBytes
       0B0C  I2CM_fSendRepeatStart
       0B0C  _I2CM_fSendRepeatStart
       0B3F  I2CM_fSendStart
       0B3F  _I2CM_fSendStart
       0B70  I2CM_fWrite
       0B70  _I2CM_fWrite
       0BEF  _I2CM_bRead
       0BEF  I2CM_bRead
       0C82  _I2CM_SendStop
       0C82  I2CM_SendStop
       0CB5  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0CB5   2CEB =  11499. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0CB5  GetDS1822
       0CB5  __text_start
       0D71  GetLM35DZ
       0E72  _main
       0F39  StrCpy
       0F58  GetTC74
       0FB5  __cprint
       22D1  _strlenLMM
       22DC  _strlen
       22F7  _cstrlenLMM
       22FA  _cstrlen
       231B  __plcall
       2327  _itoa
       24A4  _ltoa
       26AD  _ultoa
       280B  _utoa
       2909  _ftoa
       2CAD  _isdigit
       2CCB  _islower
       2CE9  _isspace
       2D07  _toupper
       2D76  __FormatFP_1
       3947  __csdepi
       3961  _csprintf
       39A0  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0000   000B =     11. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __rZ
       0001  __rY
       0002  __rX
       0003  __r7
       0004  __r6
       0005  __r5
       0006  __r4
       0007  __r3
       0008  __r2
       0009  __r1
       000A  __r0
       000B  __virtual_registers_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   000B   0011 =     17. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       000B  _UART_fStatus
       000B  UART_fStatus
       000C  UART_bRxCnt
       000C  _UART_bRxCnt
       000D  _SleepTimer_fTick
       000D  SleepTimer_fTick
       000E  _SleepTimer_bTimerValue
       000E  SleepTimer_bTimerValue
       000F  SleepTimer_bCountDown
       000F  _SleepTimer_bCountDown
       0010  _SleepTimer_TickCount
       0010  SleepTimer_TickCount
       0014  NO_SHADOW
       0014  Port_0_Data_SHADE
       0014  _NO_SHADOW
       0014  _Port_0_Data_SHADE
       0015  _Port_1_Data_SHADE
       0015  Port_1_Data_SHADE
       0016  _Port_2_Data_SHADE
       0016  Port_2_Data_SHADE
       0017  Port_0_DriveMode_0_SHADE
       0017  _Port_0_DriveMode_0_SHADE
       0018  _Port_0_DriveMode_1_SHADE
       0018  Port_0_DriveMode_1_SHADE
       0019  _Port_0_DriveMode_2_SHADE
       0019  Port_0_DriveMode_2_SHADE
       001A  Port_2_DriveMode_0_SHADE
       001A  _Port_2_DriveMode_0_SHADE
       001B  _Port_2_DriveMode_1_SHADE
       001B  Port_2_DriveMode_1_SHADE
       001C  __InterruptRAM_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   001C   0044 =     68. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       001C  ds1822Val
       001C  __bss_start
       0025  lm35Val
       002E  pointer
       0030  tc74Val
       004E  _OneWire_DS_bCRC8Value
       004E  OneWire_DS_bCRC8Value
       0060  __bss_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        UART_RAM   0060   0011 =     17. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  UART_aRxBuffer
       0060  _UART_aRxBuffer
       0071  __UART_RAM_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                jp_exercice3_RAM   0071   0004 =      4. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0071  I2CM_bStatus
       0071  _I2CM_bStatus
       0072  I2CM_bData
       0072  _I2CM_bData
       0073  I2CM_bAddr
       0073  _I2CM_bAddr
       0075  __ramareas_end
       0075  __jp_exercice3_RAM_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0000   00D7 =    215. bytes (abs,ovr,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0068  __Start
       00D4  _bGetPowerSetting
       00D4  bGetPowerSetting

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
obj/ds1822.o	[ ds1822.asm ]
obj/lm35dz.o	[ lm35dz.asm ]
obj/main.o	[ main.asm ]
obj/tc74.o	[ tc74.asm ]
<library>	[ _printf.s, uartint.asm, uart.asm, spimint.asm, spim.asm, sleeptimerint.asm, sleeptimer.asm, psocconfigtbl.asm ]
[ psocconfig.asm, onewire_dsint.asm, onewire_ds.asm, lcd.asm, i2cm.asm, rZ.asm, rY.asm, rX.asm, r7.asm ]
[ r6.asm, r5.asm, r4.asm, r3.asm, r2.asm, r1.asm, r0.asm, divmodu_16x16_16_util.asm, divmodu_32x32_32_util.asm ]
[ fp_analysiseject_f16.asm, fp_analysiseject_util.asm, fp_clrreg_f16.asm, fp_clrreg_util.asm ]
[ fp_convert_saveres_f16.asm, fp_nan_res_f16.asm, fp_nan_res_util.asm, fp_saveres_f16.asm ]
[ fp_saveres_util.asm, fp_sendtoreg_f16.asm, fp_sendtoreg_util.asm, fp_sinf_res_f16.asm, fp_sinf_res_util.asm ]
[ fp_szero_res_f16.asm, fp_szero_res_util.asm, fp_type_oprnd_f16.asm, fp_type_oprnd_util.asm ]
[ fp_unnormal_f16.asm, fp_unnormal_util.asm, fpadd_util.asm, fpcmp_util.asm, fpdiv_f16.asm ]
[ fpdiv_util.asm, fpmul_util.asm, fpsub_util.asm, i_div16_block_util.asm, i_div32_block_util.asm ]
[ i_inv32_f16.asm, i_mulu8_block_util.asm, long2fp_f16.asm, ulong2fp_f16.asm, strlen.s, cstrlen.s ]
[ plcall.s, itoa.s, ltoa.s, ultoa.s, utoa.s, ftoa.s, isdigit.s, islower.s, isspace.s, ctype.s, toupper.s ]
[ formatfp1.s, sprintf.s ]

Area Definitions

-blit:0x150.0x3fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

