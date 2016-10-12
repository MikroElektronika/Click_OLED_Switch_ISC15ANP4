/*******************************************************************************
* Title                 :   OLED_SWITCH
* Filename              :   oled_switch_hal.c
* Author                :   CAL
* Origin Date           :   09/29/2016
* Notes                 :   None
*******************************************************************************/
/*************** MODULE REVISION LOG ******************************************
*
*    Date    Software Version    Initials       Description
*  09/29/16       1.0.0             CAL        Module Created.
*
*******************************************************************************/
/**
 * @file oled_switch_hal.c
 * @brief <h2> HAL layer </h2>
 */
/******************************************************************************
* Includes
*******************************************************************************/

#include "oled_switch_hal.h"

/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
#if defined( __MIKROC_PRO_FOR_ARM__ )       || \
    defined( __MIKROC_PRO_FOR_DSPIC__ )
static void         ( *write_spi_p )            ( unsigned int data_out );
static unsigned int ( *read_spi_p )             ( unsigned int buffer );

#elif defined( __MIKROC_PRO_FOR_AVR__ )     || \
      defined( __MIKROC_PRO_FOR_PIC__ )     || \
      defined( __MIKROC_PRO_FOR_8051__ )    || \
      defined( __MIKROC_PRO_FOR_FT90x__ )
static void         ( *write_spi_p )            ( unsigned char data_out );
static unsigned char( *read_spi_p )             ( unsigned char buffer );

#elif defined( __MIKROC_PRO_FOR_PIC32__ )
static void         ( *write_spi_p )            ( unsigned long data_out );
static unsigned long( *read_spi_p )             ( unsigned long buffer );
#endif

#if defined( __MIKROC_PRO_FOR_ARM__ )     || \
    defined( __MIKROC_PRO_FOR_AVR__ )     || \
    defined( __MIKROC_PRO_FOR_PIC__ )     || \
    defined( __MIKROC_PRO_FOR_PIC32__ )   || \
    defined( __MIKROC_PRO_FOR_DSPIC__ )   || \
    defined( __MIKROC_PRO_FOR_8051__ )    || \
    defined( __MIKROC_PRO_FOR_FT90x__ )
extern sfr sbit OLED_SWITCH_CS;
extern sfr sbit OLED_SWITCH_RST;
extern sfr sbit OLED_SWITCH_CMD;
#endif

/******************************************************************************
* Function Definitions
*******************************************************************************/
void oled_switch_hal_cs( uint8_t logic )
{
    if ( logic == 0 || logic == 1 )
        OLED_SWITCH_CS = logic;
}

void oled_switch_hal_rst( uint8_t logic )
{
    if ( logic == 0 || logic == 1 )
        OLED_SWITCH_RST = logic;
}

void oled_switch_hal_cmd( uint8_t logic )
{
    if ( logic == 0 || logic == 1 )
        OLED_SWITCH_CMD = logic;
}

void oled_switch_hal_init()
{
#if defined( __MIKROC_PRO_FOR_ARM__ )   || \
    defined( __MIKROC_PRO_FOR_AVR__ )   || \
    defined( __MIKROC_PRO_FOR_DSPIC__ ) || \
    defined( __MIKROC_PRO_FOR_PIC32__ ) || \
    defined( __MIKROC_PRO_FOR_8051__ )
    write_spi_p             = SPI_Wr_Ptr;
    read_spi_p              = SPI_Rd_Ptr;

#elif defined( __MIKROC_PRO_FOR_PIC__ )
    write_spi_p             = SPI1_Write;
    read_spi_p              = SPI1_Read;

#elif defined( __MIKROC_PRO_FOR_FT90x__ )
    write_spi_p             = SPIM_Wr_Ptr;
    read_spi_p              = SPIM_Rd_Ptr;
#endif
}

void oled_switch_hal_write( uint8_t cmd, uint8_t* buffer, uint16_t count )
{
    uint8_t *ptr = buffer;

    write_spi_p( cmd );
    
    while ( count-- )
    {
        write_spi_p( *ptr++ );
    }

}

void oled_switch_hal_write_image( const unsigned char* ptr, uint16_t image_size )
{
    uint16_t counter = 0;
    const unsigned char* my_ptr = ptr;

    for ( counter = 0; counter < image_size; counter++ )
    {
        write_spi_p( *ptr++ );
    }

}

/*************** END OF FUNCTIONS ***************************************************************************/