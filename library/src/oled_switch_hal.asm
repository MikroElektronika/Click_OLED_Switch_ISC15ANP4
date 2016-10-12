_oled_switch_hal_cs:
;oled_switch_hal.c,59 :: 		void oled_switch_hal_cs( uint8_t logic )
; logic start address is: 0 (R0)
; logic end address is: 0 (R0)
; logic start address is: 0 (R0)
;oled_switch_hal.c,61 :: 		if ( logic == 0 || logic == 1 )
CMP	R0, #0
IT	EQ
BEQ	L__oled_switch_hal_cs16
CMP	R0, #1
IT	EQ
BEQ	L__oled_switch_hal_cs15
; logic end address is: 0 (R0)
IT	AL
BAL	L_oled_switch_hal_cs2
L__oled_switch_hal_cs16:
; logic start address is: 0 (R0)
L__oled_switch_hal_cs15:
;oled_switch_hal.c,62 :: 		OLED_SWITCH_CS = logic;
MOVW	R1, #lo_addr(OLED_SWITCH_CS+0)
MOVT	R1, #hi_addr(OLED_SWITCH_CS+0)
STR	R0, [R1, #0]
; logic end address is: 0 (R0)
L_oled_switch_hal_cs2:
;oled_switch_hal.c,63 :: 		}
L_end_oled_switch_hal_cs:
BX	LR
; end of _oled_switch_hal_cs
_oled_switch_hal_rst:
;oled_switch_hal.c,65 :: 		void oled_switch_hal_rst( uint8_t logic )
; logic start address is: 0 (R0)
; logic end address is: 0 (R0)
; logic start address is: 0 (R0)
;oled_switch_hal.c,67 :: 		if ( logic == 0 || logic == 1 )
CMP	R0, #0
IT	EQ
BEQ	L__oled_switch_hal_rst19
CMP	R0, #1
IT	EQ
BEQ	L__oled_switch_hal_rst18
; logic end address is: 0 (R0)
IT	AL
BAL	L_oled_switch_hal_rst5
L__oled_switch_hal_rst19:
; logic start address is: 0 (R0)
L__oled_switch_hal_rst18:
;oled_switch_hal.c,68 :: 		OLED_SWITCH_RST = logic;
MOVW	R1, #lo_addr(OLED_SWITCH_RST+0)
MOVT	R1, #hi_addr(OLED_SWITCH_RST+0)
STR	R0, [R1, #0]
; logic end address is: 0 (R0)
L_oled_switch_hal_rst5:
;oled_switch_hal.c,69 :: 		}
L_end_oled_switch_hal_rst:
BX	LR
; end of _oled_switch_hal_rst
_oled_switch_hal_cmd:
;oled_switch_hal.c,71 :: 		void oled_switch_hal_cmd( uint8_t logic )
; logic start address is: 0 (R0)
; logic end address is: 0 (R0)
; logic start address is: 0 (R0)
;oled_switch_hal.c,73 :: 		if ( logic == 0 || logic == 1 )
CMP	R0, #0
IT	EQ
BEQ	L__oled_switch_hal_cmd22
CMP	R0, #1
IT	EQ
BEQ	L__oled_switch_hal_cmd21
; logic end address is: 0 (R0)
IT	AL
BAL	L_oled_switch_hal_cmd8
L__oled_switch_hal_cmd22:
; logic start address is: 0 (R0)
L__oled_switch_hal_cmd21:
;oled_switch_hal.c,74 :: 		OLED_SWITCH_CMD = logic;
MOVW	R1, #lo_addr(OLED_SWITCH_CMD+0)
MOVT	R1, #hi_addr(OLED_SWITCH_CMD+0)
STR	R0, [R1, #0]
; logic end address is: 0 (R0)
L_oled_switch_hal_cmd8:
;oled_switch_hal.c,75 :: 		}
L_end_oled_switch_hal_cmd:
BX	LR
; end of _oled_switch_hal_cmd
_oled_switch_hal_init:
;oled_switch_hal.c,77 :: 		void oled_switch_hal_init()
;oled_switch_hal.c,84 :: 		write_spi_p             = SPI_Wr_Ptr;
MOVW	R0, #lo_addr(_SPI_Wr_Ptr+0)
MOVT	R0, #hi_addr(_SPI_Wr_Ptr+0)
LDR	R1, [R0, #0]
MOVW	R0, #lo_addr(oled_switch_hal_write_spi_p+0)
MOVT	R0, #hi_addr(oled_switch_hal_write_spi_p+0)
STR	R1, [R0, #0]
;oled_switch_hal.c,85 :: 		read_spi_p              = SPI_Rd_Ptr;
MOVW	R0, #lo_addr(_SPI_Rd_Ptr+0)
MOVT	R0, #hi_addr(_SPI_Rd_Ptr+0)
LDR	R1, [R0, #0]
MOVW	R0, #lo_addr(oled_switch_hal_read_spi_p+0)
MOVT	R0, #hi_addr(oled_switch_hal_read_spi_p+0)
STR	R1, [R0, #0]
;oled_switch_hal.c,95 :: 		}
L_end_oled_switch_hal_init:
BX	LR
; end of _oled_switch_hal_init
_oled_switch_hal_write:
;oled_switch_hal.c,97 :: 		void oled_switch_hal_write( uint8_t cmd, uint8_t* buffer, uint16_t count )
; buffer start address is: 4 (R1)
; cmd start address is: 0 (R0)
SUB	SP, SP, #12
STR	LR, [SP, #0]
STRH	R2, [SP, #8]
; buffer end address is: 4 (R1)
; cmd end address is: 0 (R0)
; cmd start address is: 0 (R0)
; buffer start address is: 4 (R1)
;oled_switch_hal.c,99 :: 		uint8_t *ptr = buffer;
STR	R1, [SP, #4]
; buffer end address is: 4 (R1)
;oled_switch_hal.c,101 :: 		write_spi_p( cmd );
; cmd end address is: 0 (R0)
MOVW	R4, #lo_addr(oled_switch_hal_write_spi_p+0)
MOVT	R4, #hi_addr(oled_switch_hal_write_spi_p+0)
LDR	R4, [R4, #0]
BLX	R4
;oled_switch_hal.c,103 :: 		while ( count-- )
L_oled_switch_hal_write9:
LDRH	R4, [SP, #8]
LDRH	R3, [SP, #8]
SUBS	R3, R3, #1
STRH	R3, [SP, #8]
CMP	R4, #0
IT	EQ
BEQ	L_oled_switch_hal_write10
;oled_switch_hal.c,105 :: 		write_spi_p( *ptr++ );
LDR	R3, [SP, #4]
LDRB	R3, [R3, #0]
UXTB	R4, R3
UXTH	R0, R4
MOVW	R4, #lo_addr(oled_switch_hal_write_spi_p+0)
MOVT	R4, #hi_addr(oled_switch_hal_write_spi_p+0)
LDR	R4, [R4, #0]
BLX	R4
LDR	R3, [SP, #4]
ADDS	R3, R3, #1
STR	R3, [SP, #4]
;oled_switch_hal.c,106 :: 		}
IT	AL
BAL	L_oled_switch_hal_write9
L_oled_switch_hal_write10:
;oled_switch_hal.c,108 :: 		}
L_end_oled_switch_hal_write:
LDR	LR, [SP, #0]
ADD	SP, SP, #12
BX	LR
; end of _oled_switch_hal_write
_oled_switch_hal_write_image:
;oled_switch_hal.c,110 :: 		void oled_switch_hal_write_image( const unsigned char* ptr, uint16_t image_size )
SUB	SP, SP, #16
STR	LR, [SP, #0]
STR	R0, [SP, #8]
STRH	R1, [SP, #12]
;oled_switch_hal.c,112 :: 		uint16_t counter = 0;
;oled_switch_hal.c,115 :: 		for ( counter = 0; counter < image_size; counter++ )
MOVS	R2, #0
STRH	R2, [SP, #4]
L_oled_switch_hal_write_image11:
LDRH	R3, [SP, #12]
LDRH	R2, [SP, #4]
CMP	R2, R3
IT	CS
BCS	L_oled_switch_hal_write_image12
;oled_switch_hal.c,117 :: 		write_spi_p( *ptr++ );
LDR	R2, [SP, #8]
LDRB	R2, [R2, #0]
UXTB	R4, R2
UXTH	R0, R4
MOVW	R4, #lo_addr(oled_switch_hal_write_spi_p+0)
MOVT	R4, #hi_addr(oled_switch_hal_write_spi_p+0)
LDR	R4, [R4, #0]
BLX	R4
LDR	R2, [SP, #8]
ADDS	R2, R2, #1
STR	R2, [SP, #8]
;oled_switch_hal.c,115 :: 		for ( counter = 0; counter < image_size; counter++ )
LDRH	R2, [SP, #4]
ADDS	R2, R2, #1
STRH	R2, [SP, #4]
;oled_switch_hal.c,118 :: 		}
IT	AL
BAL	L_oled_switch_hal_write_image11
L_oled_switch_hal_write_image12:
;oled_switch_hal.c,120 :: 		}
L_end_oled_switch_hal_write_image:
LDR	LR, [SP, #0]
ADD	SP, SP, #16
BX	LR
; end of _oled_switch_hal_write_image
