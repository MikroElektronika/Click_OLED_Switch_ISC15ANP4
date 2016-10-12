#line 1 "C:/Users/Corey/Documents/Projects/OLED_Switch/linux_lib/library/src/oled_switch_hal.c"
#line 1 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hal.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdint.h"





typedef signed char int8_t;
typedef signed int int16_t;
typedef signed long int int32_t;
typedef signed long long int64_t;


typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long int uint32_t;
typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef signed int int_least16_t;
typedef signed long int int_least32_t;
typedef signed long long int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned int uint_least16_t;
typedef unsigned long int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef signed long int int_fast8_t;
typedef signed long int int_fast16_t;
typedef signed long int int_fast32_t;
typedef signed long long int_fast64_t;


typedef unsigned long int uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long long uint_fast64_t;


typedef signed long int intptr_t;
typedef unsigned long int uintptr_t;


typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdbool.h"



 typedef char _Bool;
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stddef.h"



typedef long ptrdiff_t;


 typedef unsigned long size_t;

typedef unsigned long wchar_t;
#line 44 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hal.h"
void oled_switch_hal_cs( uint8_t logic );
#line 51 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hal.h"
void oled_switch_hal_rst( uint8_t logic );

void oled_switch_hal_cmd( uint8_t logic );
#line 60 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hal.h"
void oled_switch_hal_init( void );
#line 74 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hal.h"
void oled_switch_hal_write( uint8_t cmd, uint8_t* buffer, uint16_t count );
#line 86 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hal.h"
void oled_switch_hal_write_image( const unsigned char* ptr, uint16_t image_size );
#line 29 "C:/Users/Corey/Documents/Projects/OLED_Switch/linux_lib/library/src/oled_switch_hal.c"
static void ( *write_spi_p ) ( unsigned int data_out );
static unsigned int ( *read_spi_p ) ( unsigned int buffer );
#line 51 "C:/Users/Corey/Documents/Projects/OLED_Switch/linux_lib/library/src/oled_switch_hal.c"
extern sfr sbit OLED_SWITCH_CS;
extern sfr sbit OLED_SWITCH_RST;
extern sfr sbit OLED_SWITCH_CMD;
#line 59 "C:/Users/Corey/Documents/Projects/OLED_Switch/linux_lib/library/src/oled_switch_hal.c"
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
#line 84 "C:/Users/Corey/Documents/Projects/OLED_Switch/linux_lib/library/src/oled_switch_hal.c"
 write_spi_p = SPI_Wr_Ptr;
 read_spi_p = SPI_Rd_Ptr;
#line 95 "C:/Users/Corey/Documents/Projects/OLED_Switch/linux_lib/library/src/oled_switch_hal.c"
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
