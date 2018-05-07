//*****************************************************************************
//*****************************************************************************
//  FILENAME: SPIM.h
//   Version: 2.6, Updated on 2015/3/4 at 22:27:42
//  Generated by PSoC Designer 5.4.3191
//
//  DESCRIPTION:
//    SPIM SPIM User Module header file.
//-----------------------------------------------------------------------------
//      Copyright (c) Cypress Semiconductor 2015. All Rights Reserved.
//*****************************************************************************
//*****************************************************************************
#ifndef SPIM_INCLUDE
#define SPIM_INCLUDE

#include <m8c.h>

#pragma fastcall16  SPIM_EnableInt
#pragma fastcall16  SPIM_DisableInt
#pragma fastcall16  SPIM_Start
#pragma fastcall16  SPIM_Stop
#pragma fastcall16  SPIM_SendTxData
#pragma fastcall16  SPIM_bReadRxData
#pragma fastcall16  SPIM_bReadStatus

//-------------------------------------------------
// Prototypes of the SPIM API.
//-------------------------------------------------
extern void  SPIM_EnableInt(void);
extern void  SPIM_DisableInt(void);
extern void  SPIM_Start(BYTE bConfiguration);
extern void  SPIM_Stop(void);
extern void  SPIM_SendTxData(BYTE bTxData);
extern BYTE  SPIM_bReadRxData(void);
extern BYTE  SPIM_bReadStatus(void);

// Old function prototypes, Do not use
// These will be removed in a future release
#pragma fastcall16 bSPIM_ReadRxData
#pragma fastcall16 bSPIM_ReadStatus
extern BYTE bSPIM_ReadRxData(void);
extern BYTE bSPIM_ReadStatus(void);


//-------------------------------------------------
// Constants for SPIM API's.
//-------------------------------------------------

#define SPIM_INT_REG_ADDR                      ( 0x0e1 )
#define SPIM_bINT_MASK                         ( 0x08 )

//*******************************
// SPI Configuration definitions
//*******************************
#define  SPIM_SPIM_MODE_0            0x00      // MODE 0 - Leading edge latches data - pos clock
#define  SPIM_SPIM_MODE_1            0x02      // MODE 1 - Leading edge latches data - neg clock
#define  SPIM_SPIM_MODE_2            0x04      // MODE 2 - Trailing edge latches data - pos clock
#define  SPIM_SPIM_MODE_3            0x06      // MODE 3 - Trailing edge latches data - neg clock
#define  SPIM_SPIM_LSB_FIRST         0x80      // LSB bit transmitted/received first
#define  SPIM_SPIM_MSB_FIRST         0x00      // MSB bit transmitted/received first

//********************************
// SPI Status register masks
//********************************
#define  SPIM_SPIM_RX_OVERRUN_ERROR  0x40      // Overrun error in received data
#define  SPIM_SPIM_TX_BUFFER_EMPTY   0x10      // TX Buffer register is ready for next data byte
#define  SPIM_SPIM_RX_BUFFER_FULL    0x08      // RX Buffer register has received current data
#define  SPIM_SPIM_SPI_COMPLETE      0x20      // SPI Tx/Rx cycle has completed

//-------------------------------------------------
// Register Addresses for SPIM
//-------------------------------------------------
#pragma ioport  SPIM_CONTROL_REG:   0x02f                  //Control register
BYTE            SPIM_CONTROL_REG;
#pragma ioport  SPIM_SHIFT_REG: 0x02c                      //TX Shift Register register
BYTE            SPIM_SHIFT_REG;
#pragma ioport  SPIM_TX_BUFFER_REG: 0x02d                  //TX Buffer Register
BYTE            SPIM_TX_BUFFER_REG;
#pragma ioport  SPIM_RX_BUFFER_REG: 0x02e                  //RX Buffer Register
BYTE            SPIM_RX_BUFFER_REG;
#pragma ioport  SPIM_FUNCTION_REG:  0x12c                  //Function register
BYTE            SPIM_FUNCTION_REG;
#pragma ioport  SPIM_INPUT_REG: 0x12d                      //Input register
BYTE            SPIM_INPUT_REG;
#pragma ioport  SPIM_OUTPUT_REG:    0x12e                  //Output register
BYTE            SPIM_OUTPUT_REG;

#endif
// end of file SPIM.h