/******************************************************************************
*  Generated by PSoC Designer 5.4.3191
******************************************************************************/
#include <m8c.h>
// I2CMSDA_Pin address and mask defines
#pragma	ioport	I2CMSDA_Pin_Data_ADDR:	0x0
BYTE			I2CMSDA_Pin_Data_ADDR;
#pragma	ioport	I2CMSDA_Pin_DriveMode_0_ADDR:	0x100
BYTE			I2CMSDA_Pin_DriveMode_0_ADDR;
#pragma	ioport	I2CMSDA_Pin_DriveMode_1_ADDR:	0x101
BYTE			I2CMSDA_Pin_DriveMode_1_ADDR;
#pragma	ioport	I2CMSDA_Pin_DriveMode_2_ADDR:	0x3
BYTE			I2CMSDA_Pin_DriveMode_2_ADDR;
#pragma	ioport	I2CMSDA_Pin_GlobalSelect_ADDR:	0x2
BYTE			I2CMSDA_Pin_GlobalSelect_ADDR;
#pragma	ioport	I2CMSDA_Pin_IntCtrl_0_ADDR:	0x102
BYTE			I2CMSDA_Pin_IntCtrl_0_ADDR;
#pragma	ioport	I2CMSDA_Pin_IntCtrl_1_ADDR:	0x103
BYTE			I2CMSDA_Pin_IntCtrl_1_ADDR;
#pragma	ioport	I2CMSDA_Pin_IntEn_ADDR:	0x1
BYTE			I2CMSDA_Pin_IntEn_ADDR;
#define I2CMSDA_Pin_MASK 0x40
// I2CMSDA_Pin Shadow defines
//   I2CMSDA_Pin_DataShadow define
extern BYTE Port_0_Data_SHADE;
#define I2CMSDA_Pin_DataShadow (*(unsigned char*)&Port_0_Data_SHADE)
//   I2CMSDA_Pin_DriveMode_0Shadow define
extern BYTE Port_0_DriveMode_0_SHADE;
#define I2CMSDA_Pin_DriveMode_0Shadow (*(unsigned char*)&Port_0_DriveMode_0_SHADE)
//   I2CMSDA_Pin_DriveMode_1Shadow define
extern BYTE Port_0_DriveMode_1_SHADE;
#define I2CMSDA_Pin_DriveMode_1Shadow (*(unsigned char*)&Port_0_DriveMode_1_SHADE)
//   I2CMSDA_Pin_DriveMode_2Shadow define
extern BYTE Port_0_DriveMode_2_SHADE;
#define I2CMSDA_Pin_DriveMode_2Shadow (*(unsigned char*)&Port_0_DriveMode_2_SHADE)
// I2CMSCL_Pin address and mask defines
#pragma	ioport	I2CMSCL_Pin_Data_ADDR:	0x0
BYTE			I2CMSCL_Pin_Data_ADDR;
#pragma	ioport	I2CMSCL_Pin_DriveMode_0_ADDR:	0x100
BYTE			I2CMSCL_Pin_DriveMode_0_ADDR;
#pragma	ioport	I2CMSCL_Pin_DriveMode_1_ADDR:	0x101
BYTE			I2CMSCL_Pin_DriveMode_1_ADDR;
#pragma	ioport	I2CMSCL_Pin_DriveMode_2_ADDR:	0x3
BYTE			I2CMSCL_Pin_DriveMode_2_ADDR;
#pragma	ioport	I2CMSCL_Pin_GlobalSelect_ADDR:	0x2
BYTE			I2CMSCL_Pin_GlobalSelect_ADDR;
#pragma	ioport	I2CMSCL_Pin_IntCtrl_0_ADDR:	0x102
BYTE			I2CMSCL_Pin_IntCtrl_0_ADDR;
#pragma	ioport	I2CMSCL_Pin_IntCtrl_1_ADDR:	0x103
BYTE			I2CMSCL_Pin_IntCtrl_1_ADDR;
#pragma	ioport	I2CMSCL_Pin_IntEn_ADDR:	0x1
BYTE			I2CMSCL_Pin_IntEn_ADDR;
#define I2CMSCL_Pin_MASK 0x80
// I2CMSCL_Pin Shadow defines
//   I2CMSCL_Pin_DataShadow define
extern BYTE Port_0_Data_SHADE;
#define I2CMSCL_Pin_DataShadow (*(unsigned char*)&Port_0_Data_SHADE)
//   I2CMSCL_Pin_DriveMode_0Shadow define
extern BYTE Port_0_DriveMode_0_SHADE;
#define I2CMSCL_Pin_DriveMode_0Shadow (*(unsigned char*)&Port_0_DriveMode_0_SHADE)
//   I2CMSCL_Pin_DriveMode_1Shadow define
extern BYTE Port_0_DriveMode_1_SHADE;
#define I2CMSCL_Pin_DriveMode_1Shadow (*(unsigned char*)&Port_0_DriveMode_1_SHADE)
//   I2CMSCL_Pin_DriveMode_2Shadow define
extern BYTE Port_0_DriveMode_2_SHADE;
#define I2CMSCL_Pin_DriveMode_2Shadow (*(unsigned char*)&Port_0_DriveMode_2_SHADE)
// UART_TX address and mask defines
#pragma	ioport	UART_TX_Data_ADDR:	0x4
BYTE			UART_TX_Data_ADDR;
#pragma	ioport	UART_TX_DriveMode_0_ADDR:	0x104
BYTE			UART_TX_DriveMode_0_ADDR;
#pragma	ioport	UART_TX_DriveMode_1_ADDR:	0x105
BYTE			UART_TX_DriveMode_1_ADDR;
#pragma	ioport	UART_TX_DriveMode_2_ADDR:	0x7
BYTE			UART_TX_DriveMode_2_ADDR;
#pragma	ioport	UART_TX_GlobalSelect_ADDR:	0x6
BYTE			UART_TX_GlobalSelect_ADDR;
#pragma	ioport	UART_TX_IntCtrl_0_ADDR:	0x106
BYTE			UART_TX_IntCtrl_0_ADDR;
#pragma	ioport	UART_TX_IntCtrl_1_ADDR:	0x107
BYTE			UART_TX_IntCtrl_1_ADDR;
#pragma	ioport	UART_TX_IntEn_ADDR:	0x5
BYTE			UART_TX_IntEn_ADDR;
#define UART_TX_MASK 0x4
// UART_TX Shadow defines
//   UART_TX_DataShadow define
extern BYTE Port_1_Data_SHADE;
#define UART_TX_DataShadow (*(unsigned char*)&Port_1_Data_SHADE)
// OneWireRx address and mask defines
#pragma	ioport	OneWireRx_Data_ADDR:	0x4
BYTE			OneWireRx_Data_ADDR;
#pragma	ioport	OneWireRx_DriveMode_0_ADDR:	0x104
BYTE			OneWireRx_DriveMode_0_ADDR;
#pragma	ioport	OneWireRx_DriveMode_1_ADDR:	0x105
BYTE			OneWireRx_DriveMode_1_ADDR;
#pragma	ioport	OneWireRx_DriveMode_2_ADDR:	0x7
BYTE			OneWireRx_DriveMode_2_ADDR;
#pragma	ioport	OneWireRx_GlobalSelect_ADDR:	0x6
BYTE			OneWireRx_GlobalSelect_ADDR;
#pragma	ioport	OneWireRx_IntCtrl_0_ADDR:	0x106
BYTE			OneWireRx_IntCtrl_0_ADDR;
#pragma	ioport	OneWireRx_IntCtrl_1_ADDR:	0x107
BYTE			OneWireRx_IntCtrl_1_ADDR;
#pragma	ioport	OneWireRx_IntEn_ADDR:	0x5
BYTE			OneWireRx_IntEn_ADDR;
#define OneWireRx_MASK 0x8
// OneWireRx Shadow defines
//   OneWireRx_DataShadow define
extern BYTE Port_1_Data_SHADE;
#define OneWireRx_DataShadow (*(unsigned char*)&Port_1_Data_SHADE)
// SPI_CS address and mask defines
#pragma	ioport	SPI_CS_Data_ADDR:	0x4
BYTE			SPI_CS_Data_ADDR;
#pragma	ioport	SPI_CS_DriveMode_0_ADDR:	0x104
BYTE			SPI_CS_DriveMode_0_ADDR;
#pragma	ioport	SPI_CS_DriveMode_1_ADDR:	0x105
BYTE			SPI_CS_DriveMode_1_ADDR;
#pragma	ioport	SPI_CS_DriveMode_2_ADDR:	0x7
BYTE			SPI_CS_DriveMode_2_ADDR;
#pragma	ioport	SPI_CS_GlobalSelect_ADDR:	0x6
BYTE			SPI_CS_GlobalSelect_ADDR;
#pragma	ioport	SPI_CS_IntCtrl_0_ADDR:	0x106
BYTE			SPI_CS_IntCtrl_0_ADDR;
#pragma	ioport	SPI_CS_IntCtrl_1_ADDR:	0x107
BYTE			SPI_CS_IntCtrl_1_ADDR;
#pragma	ioport	SPI_CS_IntEn_ADDR:	0x5
BYTE			SPI_CS_IntEn_ADDR;
#define SPI_CS_MASK 0x10
// SPI_CS Shadow defines
//   SPI_CS_DataShadow define
extern BYTE Port_1_Data_SHADE;
#define SPI_CS_DataShadow (*(unsigned char*)&Port_1_Data_SHADE)
// SPI_MISO address and mask defines
#pragma	ioport	SPI_MISO_Data_ADDR:	0x4
BYTE			SPI_MISO_Data_ADDR;
#pragma	ioport	SPI_MISO_DriveMode_0_ADDR:	0x104
BYTE			SPI_MISO_DriveMode_0_ADDR;
#pragma	ioport	SPI_MISO_DriveMode_1_ADDR:	0x105
BYTE			SPI_MISO_DriveMode_1_ADDR;
#pragma	ioport	SPI_MISO_DriveMode_2_ADDR:	0x7
BYTE			SPI_MISO_DriveMode_2_ADDR;
#pragma	ioport	SPI_MISO_GlobalSelect_ADDR:	0x6
BYTE			SPI_MISO_GlobalSelect_ADDR;
#pragma	ioport	SPI_MISO_IntCtrl_0_ADDR:	0x106
BYTE			SPI_MISO_IntCtrl_0_ADDR;
#pragma	ioport	SPI_MISO_IntCtrl_1_ADDR:	0x107
BYTE			SPI_MISO_IntCtrl_1_ADDR;
#pragma	ioport	SPI_MISO_IntEn_ADDR:	0x5
BYTE			SPI_MISO_IntEn_ADDR;
#define SPI_MISO_MASK 0x20
// SPI_MISO Shadow defines
//   SPI_MISO_DataShadow define
extern BYTE Port_1_Data_SHADE;
#define SPI_MISO_DataShadow (*(unsigned char*)&Port_1_Data_SHADE)
// SPI_SCLK address and mask defines
#pragma	ioport	SPI_SCLK_Data_ADDR:	0x4
BYTE			SPI_SCLK_Data_ADDR;
#pragma	ioport	SPI_SCLK_DriveMode_0_ADDR:	0x104
BYTE			SPI_SCLK_DriveMode_0_ADDR;
#pragma	ioport	SPI_SCLK_DriveMode_1_ADDR:	0x105
BYTE			SPI_SCLK_DriveMode_1_ADDR;
#pragma	ioport	SPI_SCLK_DriveMode_2_ADDR:	0x7
BYTE			SPI_SCLK_DriveMode_2_ADDR;
#pragma	ioport	SPI_SCLK_GlobalSelect_ADDR:	0x6
BYTE			SPI_SCLK_GlobalSelect_ADDR;
#pragma	ioport	SPI_SCLK_IntCtrl_0_ADDR:	0x106
BYTE			SPI_SCLK_IntCtrl_0_ADDR;
#pragma	ioport	SPI_SCLK_IntCtrl_1_ADDR:	0x107
BYTE			SPI_SCLK_IntCtrl_1_ADDR;
#pragma	ioport	SPI_SCLK_IntEn_ADDR:	0x5
BYTE			SPI_SCLK_IntEn_ADDR;
#define SPI_SCLK_MASK 0x40
// SPI_SCLK Shadow defines
//   SPI_SCLK_DataShadow define
extern BYTE Port_1_Data_SHADE;
#define SPI_SCLK_DataShadow (*(unsigned char*)&Port_1_Data_SHADE)
// OneWireTx address and mask defines
#pragma	ioport	OneWireTx_Data_ADDR:	0x4
BYTE			OneWireTx_Data_ADDR;
#pragma	ioport	OneWireTx_DriveMode_0_ADDR:	0x104
BYTE			OneWireTx_DriveMode_0_ADDR;
#pragma	ioport	OneWireTx_DriveMode_1_ADDR:	0x105
BYTE			OneWireTx_DriveMode_1_ADDR;
#pragma	ioport	OneWireTx_DriveMode_2_ADDR:	0x7
BYTE			OneWireTx_DriveMode_2_ADDR;
#pragma	ioport	OneWireTx_GlobalSelect_ADDR:	0x6
BYTE			OneWireTx_GlobalSelect_ADDR;
#pragma	ioport	OneWireTx_IntCtrl_0_ADDR:	0x106
BYTE			OneWireTx_IntCtrl_0_ADDR;
#pragma	ioport	OneWireTx_IntCtrl_1_ADDR:	0x107
BYTE			OneWireTx_IntCtrl_1_ADDR;
#pragma	ioport	OneWireTx_IntEn_ADDR:	0x5
BYTE			OneWireTx_IntEn_ADDR;
#define OneWireTx_MASK 0x80
// OneWireTx Shadow defines
//   OneWireTx_DataShadow define
extern BYTE Port_1_Data_SHADE;
#define OneWireTx_DataShadow (*(unsigned char*)&Port_1_Data_SHADE)
// LCDD4 address and mask defines
#pragma	ioport	LCDD4_Data_ADDR:	0x8
BYTE			LCDD4_Data_ADDR;
#pragma	ioport	LCDD4_DriveMode_0_ADDR:	0x108
BYTE			LCDD4_DriveMode_0_ADDR;
#pragma	ioport	LCDD4_DriveMode_1_ADDR:	0x109
BYTE			LCDD4_DriveMode_1_ADDR;
#pragma	ioport	LCDD4_DriveMode_2_ADDR:	0xb
BYTE			LCDD4_DriveMode_2_ADDR;
#pragma	ioport	LCDD4_GlobalSelect_ADDR:	0xa
BYTE			LCDD4_GlobalSelect_ADDR;
#pragma	ioport	LCDD4_IntCtrl_0_ADDR:	0x10a
BYTE			LCDD4_IntCtrl_0_ADDR;
#pragma	ioport	LCDD4_IntCtrl_1_ADDR:	0x10b
BYTE			LCDD4_IntCtrl_1_ADDR;
#pragma	ioport	LCDD4_IntEn_ADDR:	0x9
BYTE			LCDD4_IntEn_ADDR;
#define LCDD4_MASK 0x1
// LCDD4 Shadow defines
//   LCDD4_DataShadow define
extern BYTE Port_2_Data_SHADE;
#define LCDD4_DataShadow (*(unsigned char*)&Port_2_Data_SHADE)
//   LCDD4_DriveMode_0Shadow define
extern BYTE Port_2_DriveMode_0_SHADE;
#define LCDD4_DriveMode_0Shadow (*(unsigned char*)&Port_2_DriveMode_0_SHADE)
//   LCDD4_DriveMode_1Shadow define
extern BYTE Port_2_DriveMode_1_SHADE;
#define LCDD4_DriveMode_1Shadow (*(unsigned char*)&Port_2_DriveMode_1_SHADE)
// LCDD5 address and mask defines
#pragma	ioport	LCDD5_Data_ADDR:	0x8
BYTE			LCDD5_Data_ADDR;
#pragma	ioport	LCDD5_DriveMode_0_ADDR:	0x108
BYTE			LCDD5_DriveMode_0_ADDR;
#pragma	ioport	LCDD5_DriveMode_1_ADDR:	0x109
BYTE			LCDD5_DriveMode_1_ADDR;
#pragma	ioport	LCDD5_DriveMode_2_ADDR:	0xb
BYTE			LCDD5_DriveMode_2_ADDR;
#pragma	ioport	LCDD5_GlobalSelect_ADDR:	0xa
BYTE			LCDD5_GlobalSelect_ADDR;
#pragma	ioport	LCDD5_IntCtrl_0_ADDR:	0x10a
BYTE			LCDD5_IntCtrl_0_ADDR;
#pragma	ioport	LCDD5_IntCtrl_1_ADDR:	0x10b
BYTE			LCDD5_IntCtrl_1_ADDR;
#pragma	ioport	LCDD5_IntEn_ADDR:	0x9
BYTE			LCDD5_IntEn_ADDR;
#define LCDD5_MASK 0x2
// LCDD5 Shadow defines
//   LCDD5_DataShadow define
extern BYTE Port_2_Data_SHADE;
#define LCDD5_DataShadow (*(unsigned char*)&Port_2_Data_SHADE)
//   LCDD5_DriveMode_0Shadow define
extern BYTE Port_2_DriveMode_0_SHADE;
#define LCDD5_DriveMode_0Shadow (*(unsigned char*)&Port_2_DriveMode_0_SHADE)
//   LCDD5_DriveMode_1Shadow define
extern BYTE Port_2_DriveMode_1_SHADE;
#define LCDD5_DriveMode_1Shadow (*(unsigned char*)&Port_2_DriveMode_1_SHADE)
// LCDD6 address and mask defines
#pragma	ioport	LCDD6_Data_ADDR:	0x8
BYTE			LCDD6_Data_ADDR;
#pragma	ioport	LCDD6_DriveMode_0_ADDR:	0x108
BYTE			LCDD6_DriveMode_0_ADDR;
#pragma	ioport	LCDD6_DriveMode_1_ADDR:	0x109
BYTE			LCDD6_DriveMode_1_ADDR;
#pragma	ioport	LCDD6_DriveMode_2_ADDR:	0xb
BYTE			LCDD6_DriveMode_2_ADDR;
#pragma	ioport	LCDD6_GlobalSelect_ADDR:	0xa
BYTE			LCDD6_GlobalSelect_ADDR;
#pragma	ioport	LCDD6_IntCtrl_0_ADDR:	0x10a
BYTE			LCDD6_IntCtrl_0_ADDR;
#pragma	ioport	LCDD6_IntCtrl_1_ADDR:	0x10b
BYTE			LCDD6_IntCtrl_1_ADDR;
#pragma	ioport	LCDD6_IntEn_ADDR:	0x9
BYTE			LCDD6_IntEn_ADDR;
#define LCDD6_MASK 0x4
// LCDD6 Shadow defines
//   LCDD6_DataShadow define
extern BYTE Port_2_Data_SHADE;
#define LCDD6_DataShadow (*(unsigned char*)&Port_2_Data_SHADE)
//   LCDD6_DriveMode_0Shadow define
extern BYTE Port_2_DriveMode_0_SHADE;
#define LCDD6_DriveMode_0Shadow (*(unsigned char*)&Port_2_DriveMode_0_SHADE)
//   LCDD6_DriveMode_1Shadow define
extern BYTE Port_2_DriveMode_1_SHADE;
#define LCDD6_DriveMode_1Shadow (*(unsigned char*)&Port_2_DriveMode_1_SHADE)
// LCDD7 address and mask defines
#pragma	ioport	LCDD7_Data_ADDR:	0x8
BYTE			LCDD7_Data_ADDR;
#pragma	ioport	LCDD7_DriveMode_0_ADDR:	0x108
BYTE			LCDD7_DriveMode_0_ADDR;
#pragma	ioport	LCDD7_DriveMode_1_ADDR:	0x109
BYTE			LCDD7_DriveMode_1_ADDR;
#pragma	ioport	LCDD7_DriveMode_2_ADDR:	0xb
BYTE			LCDD7_DriveMode_2_ADDR;
#pragma	ioport	LCDD7_GlobalSelect_ADDR:	0xa
BYTE			LCDD7_GlobalSelect_ADDR;
#pragma	ioport	LCDD7_IntCtrl_0_ADDR:	0x10a
BYTE			LCDD7_IntCtrl_0_ADDR;
#pragma	ioport	LCDD7_IntCtrl_1_ADDR:	0x10b
BYTE			LCDD7_IntCtrl_1_ADDR;
#pragma	ioport	LCDD7_IntEn_ADDR:	0x9
BYTE			LCDD7_IntEn_ADDR;
#define LCDD7_MASK 0x8
// LCDD7 Shadow defines
//   LCDD7_DataShadow define
extern BYTE Port_2_Data_SHADE;
#define LCDD7_DataShadow (*(unsigned char*)&Port_2_Data_SHADE)
//   LCDD7_DriveMode_0Shadow define
extern BYTE Port_2_DriveMode_0_SHADE;
#define LCDD7_DriveMode_0Shadow (*(unsigned char*)&Port_2_DriveMode_0_SHADE)
//   LCDD7_DriveMode_1Shadow define
extern BYTE Port_2_DriveMode_1_SHADE;
#define LCDD7_DriveMode_1Shadow (*(unsigned char*)&Port_2_DriveMode_1_SHADE)
// LCDE address and mask defines
#pragma	ioport	LCDE_Data_ADDR:	0x8
BYTE			LCDE_Data_ADDR;
#pragma	ioport	LCDE_DriveMode_0_ADDR:	0x108
BYTE			LCDE_DriveMode_0_ADDR;
#pragma	ioport	LCDE_DriveMode_1_ADDR:	0x109
BYTE			LCDE_DriveMode_1_ADDR;
#pragma	ioport	LCDE_DriveMode_2_ADDR:	0xb
BYTE			LCDE_DriveMode_2_ADDR;
#pragma	ioport	LCDE_GlobalSelect_ADDR:	0xa
BYTE			LCDE_GlobalSelect_ADDR;
#pragma	ioport	LCDE_IntCtrl_0_ADDR:	0x10a
BYTE			LCDE_IntCtrl_0_ADDR;
#pragma	ioport	LCDE_IntCtrl_1_ADDR:	0x10b
BYTE			LCDE_IntCtrl_1_ADDR;
#pragma	ioport	LCDE_IntEn_ADDR:	0x9
BYTE			LCDE_IntEn_ADDR;
#define LCDE_MASK 0x10
// LCDE Shadow defines
//   LCDE_DataShadow define
extern BYTE Port_2_Data_SHADE;
#define LCDE_DataShadow (*(unsigned char*)&Port_2_Data_SHADE)
//   LCDE_DriveMode_0Shadow define
extern BYTE Port_2_DriveMode_0_SHADE;
#define LCDE_DriveMode_0Shadow (*(unsigned char*)&Port_2_DriveMode_0_SHADE)
//   LCDE_DriveMode_1Shadow define
extern BYTE Port_2_DriveMode_1_SHADE;
#define LCDE_DriveMode_1Shadow (*(unsigned char*)&Port_2_DriveMode_1_SHADE)
// LCDRS address and mask defines
#pragma	ioport	LCDRS_Data_ADDR:	0x8
BYTE			LCDRS_Data_ADDR;
#pragma	ioport	LCDRS_DriveMode_0_ADDR:	0x108
BYTE			LCDRS_DriveMode_0_ADDR;
#pragma	ioport	LCDRS_DriveMode_1_ADDR:	0x109
BYTE			LCDRS_DriveMode_1_ADDR;
#pragma	ioport	LCDRS_DriveMode_2_ADDR:	0xb
BYTE			LCDRS_DriveMode_2_ADDR;
#pragma	ioport	LCDRS_GlobalSelect_ADDR:	0xa
BYTE			LCDRS_GlobalSelect_ADDR;
#pragma	ioport	LCDRS_IntCtrl_0_ADDR:	0x10a
BYTE			LCDRS_IntCtrl_0_ADDR;
#pragma	ioport	LCDRS_IntCtrl_1_ADDR:	0x10b
BYTE			LCDRS_IntCtrl_1_ADDR;
#pragma	ioport	LCDRS_IntEn_ADDR:	0x9
BYTE			LCDRS_IntEn_ADDR;
#define LCDRS_MASK 0x20
// LCDRS Shadow defines
//   LCDRS_DataShadow define
extern BYTE Port_2_Data_SHADE;
#define LCDRS_DataShadow (*(unsigned char*)&Port_2_Data_SHADE)
//   LCDRS_DriveMode_0Shadow define
extern BYTE Port_2_DriveMode_0_SHADE;
#define LCDRS_DriveMode_0Shadow (*(unsigned char*)&Port_2_DriveMode_0_SHADE)
//   LCDRS_DriveMode_1Shadow define
extern BYTE Port_2_DriveMode_1_SHADE;
#define LCDRS_DriveMode_1Shadow (*(unsigned char*)&Port_2_DriveMode_1_SHADE)
// LCDRW address and mask defines
#pragma	ioport	LCDRW_Data_ADDR:	0x8
BYTE			LCDRW_Data_ADDR;
#pragma	ioport	LCDRW_DriveMode_0_ADDR:	0x108
BYTE			LCDRW_DriveMode_0_ADDR;
#pragma	ioport	LCDRW_DriveMode_1_ADDR:	0x109
BYTE			LCDRW_DriveMode_1_ADDR;
#pragma	ioport	LCDRW_DriveMode_2_ADDR:	0xb
BYTE			LCDRW_DriveMode_2_ADDR;
#pragma	ioport	LCDRW_GlobalSelect_ADDR:	0xa
BYTE			LCDRW_GlobalSelect_ADDR;
#pragma	ioport	LCDRW_IntCtrl_0_ADDR:	0x10a
BYTE			LCDRW_IntCtrl_0_ADDR;
#pragma	ioport	LCDRW_IntCtrl_1_ADDR:	0x10b
BYTE			LCDRW_IntCtrl_1_ADDR;
#pragma	ioport	LCDRW_IntEn_ADDR:	0x9
BYTE			LCDRW_IntEn_ADDR;
#define LCDRW_MASK 0x40
// LCDRW Shadow defines
//   LCDRW_DataShadow define
extern BYTE Port_2_Data_SHADE;
#define LCDRW_DataShadow (*(unsigned char*)&Port_2_Data_SHADE)
//   LCDRW_DriveMode_0Shadow define
extern BYTE Port_2_DriveMode_0_SHADE;
#define LCDRW_DriveMode_0Shadow (*(unsigned char*)&Port_2_DriveMode_0_SHADE)
//   LCDRW_DriveMode_1Shadow define
extern BYTE Port_2_DriveMode_1_SHADE;
#define LCDRW_DriveMode_1Shadow (*(unsigned char*)&Port_2_DriveMode_1_SHADE)
