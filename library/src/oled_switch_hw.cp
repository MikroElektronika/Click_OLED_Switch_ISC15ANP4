#line 1 "C:/Users/Corey/Documents/Projects/OLED_Switch/linux_lib/library/src/oled_switch_hw.c"
#line 1 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
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
#line 119 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
typedef struct
{
 uint8_t col_horiz_shift;
 uint8_t row_offset;
 uint8_t row_horiz_shift;
 uint8_t row_vert_shift;
 uint8_t interval;
} scroll_t;

typedef struct
{
 uint8_t col_start;
 uint8_t row_start;
 uint8_t col_end;
 uint8_t row_end;
} coord_t;

typedef struct
{
 uint8_t color_r;
 uint8_t color_g;
 uint8_t color_b;
} color_t;

typedef enum
{
 DISABLE_FILL = 0,
 ENABLE_FILL = 1,
 DISABLE_REVERSE_COPY = 0,
 ENABLE_REVERSE_COPY = 16
} fill_sett_t;

typedef struct
{
 uint8_t a_contrast;
 uint8_t b_contrast;
 uint8_t c_contrast;
} contrast_t;

typedef enum
{
 HORIZ_ADD_INC = 0,
 VERT_ADD_INC = 1,
 RAM_COL_0_95 = 0,
 RAM_COL_95_0 = 2,
 RGB_ORDER = 0,
 BGR_ORDER = 4,
 DISABLE_COM_SWAPPING = 0,
 ENABLE_COM_SWAPPING = 8,
 COLOR_256 = 0,
 COLOR_65K = 64
} color_depth_t;

typedef enum
{
 BIG = 0,
 SMALL = 1
} buffer_size_t;
#line 198 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
void oled_switch_init( buffer_size_t size );
#line 211 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
void oled_switch_draw_565_img( const unsigned char* img, uint16_t image_size );
#line 223 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
void oled_switch_scrolling_setup( scroll_t setup );
#line 233 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
void oled_switch_deactivate_scrolling( void );
#line 243 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
void oled_switch_activate_scrolling( void );
#line 256 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
void oled_switch_draw_line( coord_t address, color_t color );
#line 268 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
void oled_switch_dim_window( coord_t window );
#line 280 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
void oled_switch_clear_window( coord_t window );
#line 294 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
void oled_switch_draw_rectangle( coord_t rect, color_t line, color_t fill );
#line 307 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
void oled_switch_copy( coord_t from, coord_t to );
#line 320 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
void oled_switch_fill_settings( fill_sett_t sett );
#line 332 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
void oled_switch_set_abc_contrast( contrast_t* contrast );
#line 344 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
void oled_switch_set_master_current( uint8_t current );
#line 357 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
void oled_switch_set_remap_color_depth( color_depth_t depth );
#line 369 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
void oled_switch_set_display_start_line( uint8_t st_line );
#line 381 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
void oled_switch_set_display_offset( uint8_t offset );
#line 391 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
void oled_switch_set_normal_display( void );
#line 403 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
void oled_switch_set_multiplex_ratio( uint8_t ratio );
#line 416 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
void oled_switch_set_row_range( uint8_t start, uint8_t end );
#line 429 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hw.h"
void oled_switch_set_col_range( uint8_t start, uint8_t end );
#line 1 "c:/users/corey/documents/projects/oled_switch/linux_lib/library/inc/oled_switch_hal.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdint.h"
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
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdint.h"
#line 135 "C:/Users/Corey/Documents/Projects/OLED_Switch/linux_lib/library/src/oled_switch_hw.c"
static void _oled_switch_set_dim_mode( void );
static void _oled_switch_set_master_config( void );
static void _oled_switch_set_power_save_mode( void );
static void _oled_switch_set_phase_1_2_period_adjustment( void );
static void _oled_switch_display_clock_div_osc_freq( void );
static void _oled_switch_enable_linear_gray_scale( void );
static void _oled_switch_pre_charge_level( void );
static void _oled_switch_set_vcomh( void );
static void _oled_switch_display_normal_mode( void );
#line 147 "C:/Users/Corey/Documents/Projects/OLED_Switch/linux_lib/library/src/oled_switch_hw.c"
static void _oled_switch_set_dim_mode( void )
{
 uint8_t dim_modes[10] = { 0x00, 0x12, 0x0C, 0x14, 0x12 };

 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0xAB , dim_modes, 5 );
 oled_switch_hal_cs( 1 );
}

static void _oled_switch_set_master_config( void )
{
 uint8_t arg = 0x8E;

 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0xAD , &arg, 1 );
 oled_switch_hal_cs( 1 );
}

static void _oled_switch_set_power_save_mode( void )
{
 uint8_t arg = 0x0B;

 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0xB0 , &arg, 1 );
 oled_switch_hal_cs( 1 );
}

static void _oled_switch_set_phase_1_2_period_adjustment( void )
{
 uint8_t arg = 0x44;

 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0xB1 , &arg, 1 );
 oled_switch_hal_cs( 1 );
}

static void _oled_switch_display_clock_div_osc_freq( void )
{
 uint8_t arg = 0xA0;

 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0xB3 , &arg, 1 );
 oled_switch_hal_cs( 1 );
}

static void _oled_switch_enable_linear_gray_scale( void )
{
 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0xB9 , 0, 0 );
 oled_switch_hal_cs( 1 );
}

static void _oled_switch_pre_charge_level( void )
{
 uint8_t arg = 0x12;

 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0xBB , &arg, 1 );
 oled_switch_hal_cs( 1 );
}

static void _oled_switch_set_vcomh( void )
{
 uint8_t arg = 0x3E;

 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0xBE , &arg, 1 );
 oled_switch_hal_cs( 1 );
}

static void _oled_switch_display_normal_mode( void )
{
 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0xAF , 0, 0 );
 oled_switch_hal_cs( 1 );
}

void oled_switch_init( buffer_size_t size )
{

 contrast_t contrast;
 coord_t coords;
 uint8_t row_range[ 5 ] = { 0 };
 uint8_t col_range[ 5 ] = { 0 };

 contrast.a_contrast = 0x0F;
 contrast.b_contrast = 0x0E;
 contrast.c_contrast = 0x1B;
 if ( size == SMALL )
 {
 coords.col_start = 0x10;
 coords.row_start = 0x00;
 coords.col_end = 0x4F;
 coords.row_end = 0x2F;
 row_range[0] = 0x00;
 row_range[1] = 0x2F;
 col_range[0] = 0x10;
 col_range[1] = 0x4F;
 }
 else
 {
 coords.col_start = 0x00;
 coords.row_start = 0x00;
 coords.col_end = 0x5F;
 coords.row_end = 0x3F;
 row_range[0] = 0x00;
 row_range[1] = 0x3F;
 col_range[0] = 0x00;
 col_range[1] = 0x5F;
 }


 oled_switch_hal_rst( 0 );
 Delay_us(3);
 oled_switch_hal_rst( 1 );


 oled_switch_hal_init();


 oled_switch_set_abc_contrast( &contrast );
 oled_switch_set_master_current( 0x0F );
 oled_switch_set_remap_color_depth( 0 );
 oled_switch_set_display_start_line( 0 );
 oled_switch_set_display_offset( 0x10 );
 oled_switch_set_normal_display();
 oled_switch_set_multiplex_ratio( 0x2F );
 _oled_switch_set_dim_mode();
 _oled_switch_set_master_config();
 _oled_switch_set_power_save_mode();
 _oled_switch_set_phase_1_2_period_adjustment();
 _oled_switch_display_clock_div_osc_freq();
 _oled_switch_enable_linear_gray_scale();
 _oled_switch_pre_charge_level();
 _oled_switch_set_vcomh();
 _oled_switch_display_normal_mode();


 oled_switch_set_row_range( row_range[0], row_range[1] );
 oled_switch_set_col_range( col_range[0], col_range[1] );


 oled_switch_clear_window( coords );

}

void oled_switch_draw_565_img( const unsigned char* img, uint16_t image_size )
{
 const unsigned char *ptr = img;

 oled_switch_hal_cmd( 1 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write_image( ptr, image_size );
 oled_switch_hal_cs( 1 );
}

void oled_switch_scrolling_setup( scroll_t setup )
{
 uint8_t args[ 20 ] = { 0 };

 args[0] = setup.col_horiz_shift;
 args[1] = setup.row_offset;
 args[2] = setup.row_horiz_shift;
 args[3] = setup.row_vert_shift;
 args[4] = setup.interval;

 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0x27 , args, 5 );
 oled_switch_hal_cs( 1 );

}

void oled_switch_deactivate_scrolling( void )
{
 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0x2E , 0, 0 );
 oled_switch_hal_cs( 1 );
}

void oled_switch_activate_scrolling( void )
{
 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0x2F , 0, 0 );
 oled_switch_hal_cs( 1 );
}

void oled_switch_draw_line( coord_t address, color_t color )
{
 uint8_t args[ 20 ] = { 0 };

 args[0] = address.col_start;
 args[1] = address.row_start;
 args[2] = address.col_end;
 args[3] = address.row_end;
 args[4] = color.color_b;
 args[5] = color.color_g;
 args[6] = color.color_r;

 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0x21 , args, 7 );
 oled_switch_hal_cs( 1 );
}

void oled_switch_dim_window( coord_t window )
{
 uint8_t args[ 20 ] = { 0 };

 args[0] = window.col_start;
 args[1] = window.row_start;
 args[2] = window.col_end;
 args[3] = window.row_end;

 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0x24 , args, 4 );
 oled_switch_hal_cs( 1 );
}

void oled_switch_clear_window( coord_t window )
{
 uint8_t args[ 20 ] = { 0 };

 args[0] = window.col_start;
 args[1] = window.row_start;
 args[2] = window.col_end;
 args[3] = window.row_end;

 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0x25 , args, 4 );
 oled_switch_hal_cs( 1 );
}

void oled_switch_draw_rectangle( coord_t rect, color_t line, color_t fill )
{
 uint8_t args[ 20 ] = { 0 };

 args[0] = rect.col_start;
 args[1] = rect.row_start;
 args[2] = rect.col_end;
 args[3] = rect.row_end;
 args[4] = line.color_b;
 args[5] = line.color_g;
 args[6] = line.color_r;
 args[7] = fill.color_b;
 args[8] = fill.color_g;
 args[9] = fill.color_r;

 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0x22 , args, 10 );
 oled_switch_hal_cs( 1 );
}

void oled_switch_copy( coord_t from, coord_t to )
{
 uint8_t args[ 20 ] = { 0 };

 args[0] = from.col_start;
 args[1] = from.row_start;
 args[2] = from.col_end;
 args[3] = from.row_end;
 args[4] = to.col_start;
 args[5] = to.row_start;

 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0x23 , args, 6 );
 oled_switch_hal_cs( 1 );
}

void oled_switch_fill_settings( fill_sett_t sett )
{
 uint8_t arg = sett;

 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0x26 , &arg, 1 );
 oled_switch_hal_cs( 1 );
}

void oled_switch_set_abc_contrast( contrast_t* contrast )
{
 uint8_t arg;

 oled_switch_hal_cmd( 0 );
 arg = contrast->a_contrast;
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0x81 , &arg, 1 );
 oled_switch_hal_cs( 1 );
 arg = contrast->b_contrast;
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0x82 , &arg, 1 );
 oled_switch_hal_cs( 1 );
 arg = contrast->c_contrast;
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0x83 , &arg, 1 );
 oled_switch_hal_cs( 1 );
}

void oled_switch_set_master_current( uint8_t current )
{
 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0x87 , &current, 1 );
 oled_switch_hal_cs( 1 );
}

void oled_switch_set_remap_color_depth( color_depth_t depth )
{
 uint8_t arg = depth;

 arg |= 0x70;
 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0xA0 , &arg, 1 );
 oled_switch_hal_cs( 1 );
}

void oled_switch_set_display_start_line( uint8_t st_line )
{
 uint8_t arg = st_line;

 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0xA1 , &arg, 1 );
 oled_switch_hal_cs( 1 );
}

void oled_switch_set_display_offset( uint8_t offset )
{
 uint8_t arg = offset;

 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0xA2 , &arg, 1 );
 oled_switch_hal_cs( 1 );
}

void oled_switch_set_normal_display( void )
{
 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0xA4 , 0, 0 );
 oled_switch_hal_cs( 1 );
}

void oled_switch_set_multiplex_ratio( uint8_t ratio )
{
 uint8_t arg = ratio;

 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0xA8 , &arg, 1 );
 oled_switch_hal_cs( 1 );
}

void oled_switch_set_row_range( uint8_t start, uint8_t end )
{
 uint8_t args[ 4 ] = { 0 };

 args[0] = start;
 args[1] = end;

 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0x75 , &args, 2 );
 oled_switch_hal_cs( 1 );
}

void oled_switch_set_col_range( uint8_t start, uint8_t end )
{
 uint8_t args[ 4 ] = { 0 };

 args[0] = start;
 args[1] = end;

 oled_switch_hal_cmd( 0 );
 oled_switch_hal_cs( 0 );
 oled_switch_hal_write(  0x15 , &args, 2 );
 oled_switch_hal_cs( 1 );
}
