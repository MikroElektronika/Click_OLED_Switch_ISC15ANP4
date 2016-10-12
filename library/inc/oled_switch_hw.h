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
 * @file oled_switch_hw.h
 * @brief <h3> Hardware Layer </h3>
 *
 * @par
 * Low level functions for
 * <a href="http://www.mikroe.com">MikroElektronika's</a> OLED Switch click
 * board.
 */

/**
 * @page LIB_INFO Library Info
 * @date 28 Jan 2016
 * @author Corey Lakey
 * @copyright GNU Public License
 * @version 1.0.0 - Initial testing and verification
 */

/**
 * @page TEST_CFG Test Configurations
 * <h3> Test configuration 1 : </h3>
 * @par
 * <ul>
 * <li><b>MCU</b> :             STM32F107VC</li>
 * <li><b>Dev. Board</b> :      EasyMx Pro v7</li>
 * <li><b>Oscillator</b> :      72 Mhz internal</li>
 * <li><b>Ext. Modules</b> :    OLED Switch Click</li>
 * <li><b>SW</b> :              MikroC PRO for ARM 4.7.1</li>
 * </ul>
 *
 * <h3> Test configuration 2 : </h3>
 * @par
 * <ul>
 * <li><b>MCU</b> :             PIC32MX795F512L</li>
 * <li><b>Dev. Board</b> :      EasyPic Fusion v7</li>
 * <li><b>Oscillator</b> :      80 Mhz internal</li>
 * <li><b>Ext. Modules</b> :    OLED Switch Click</li>
 * <li><b>SW</b> :              MikroC PRO for PIC 6.6.2</li>
 * </ul>
 *
 * <h3> Test configuration 3 : </h3>
 * @par
 * <ul>
 * <li><b>MCU</b> :             FT900Q</li>
 * <li><b>Dev. Board</b> :      EasyFT90x v7</li>
 * <li><b>Oscillator</b> :      100 Mhz internal</li>
 * <li><b>Ext. Modules</b> :    OLED Switch Click</li>
 * <li><b>SW</b> :              MikroC PRO for FT90x 1.2.1</li>
 * </ul>
 */

/**
 * @mainpage
 *
 * <h3> Features </h3>
 * @par
 *
 * • Organic LED technology; now with 30,000 hours life and 30% less power consumption
 * 
 * • Range of 65,536 colors in 16 bit mode, 256 colors in 8 bit mode
 * 
 * • Full viewing angle of 180°
 * 
 * • Exceptional contrast: 50 times greater than previous LCD products
 * 
 * • Four times more enhanced resolution
 * 
 * • High resolution provides sharp, clear images of very small characters
 * 
 * • Operated by commands and data supplied via serial communications (SPI)
 * 
 * • Distinct, long travel of 4.5mm (same as KP01 Series)
 * 
 * • Dust tight construction
 * 
 * • Stylish, translucent black housing design
 * 
 *
 *
 */
#ifndef OLED_SWITCH_HW_H
#define OLED_SWITCH_HW_H
/******************************************************************************
* Includes
*******************************************************************************/
#include <stdint.h>
/******************************************************************************
* Preprocessor Constants
*******************************************************************************/

/******************************************************************************
* Configuration Constants
*******************************************************************************/

/******************************************************************************
* Macros
*******************************************************************************/

/******************************************************************************
* Typedefs
*******************************************************************************/

/******************************************************************************
* Variables
*******************************************************************************/
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
        DISABLE_FILL         = 0,
        ENABLE_FILL          = 1,
        DISABLE_REVERSE_COPY = 0,
        ENABLE_REVERSE_COPY  = 16
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
    BIG   = 0,
    SMALL = 1
} buffer_size_t;
/******************************************************************************
* Function Prototypes
*******************************************************************************/
#ifdef __cplusplus
extern "C"{
#endif

/**
 * @brief <h3> HW Layer Initialization </h3>
 *
 * @par
 * Prepares library for usage and sets needed values to default.
 *
 * @note
 * This function must be called first.
 *
 * Example :
 * @code
 *
 * @endcode
 */
void oled_switch_init( buffer_size_t size );

/**
 * @brief <h3> OLED Switch Draw 565 Image </h3>
 *
 * @par
 *  Takes a 565 formatted array and writes it to the OLED switch's memory.
 *
 * @param[in]   img - Unsigned char array of 6144 or 12288 bytes ( SMALL or BIG ) 565 formatted.
 * @param[in]        image_size - Size of the image ( 6144:SMALL, 12288:BIG )  
 *
 * @endcode
 */
void oled_switch_draw_565_img( const unsigned char* img, uint16_t image_size );

/**
 * @brief <h3> OLED Switch Scrolling Setup </h3>
 *
 * @par
 *  Sets up the OLED Switch click for scrolling 
 *
 * @param[in]   setup - Scrolling setup
 *
 * @endcode
 */
void oled_switch_scrolling_setup( scroll_t setup );

/**
 * @brief <h3> OLED Switch Deactivate Scrolling </h3>
 *
 * @par
 *  Deactivates scrolling on OLED Switch click
 *
 * @endcode
 */
void oled_switch_deactivate_scrolling( void );

/**
 * @brief <h3> OLED Switch Activate Scrolling </h3>
 *
 * @par
 *  Activates scrolling on the OLED Switch click.
 *
 * @endcode
 */
void oled_switch_activate_scrolling( void );

/**
 * @brief <h3> OLED Switch Draw Line </h3>
 *
 * @par
 *  Draws a line on the OLED Switch click
 *
 * @param[in]   address - Start and end addresses of line
 * @param[in]        color - RGB Color of the line
 *
 * @endcode
 */
void oled_switch_draw_line( coord_t address, color_t color );

/**
 * @brief <h3> OLED Switch Dim Window </h3>
 *
 * @par
 *  Dims a window of the OLED Switch click
 *
 * @param[in]   window  - Address of start and end positions of window to dim
 *
 * @endcode
 */
void oled_switch_dim_window( coord_t window );

/**
 * @brief <h3> OLED Switch Clear Window </h3>
 *
 * @par
 *  Clears a window of the OLED Switch click
 *
 * @param[in]   window - Address of start and end positions of window to clear
 *
 * @endcode
 */
void oled_switch_clear_window( coord_t window );

/**
 * @brief <h3> OLED Switch Draw Rectangle </h3>
 *
 * @par
 *  Draws a rectangle on the OLED Switch click
 *
 * @param[in]   rect - Address of start and end positions to draw rectangle
 * @param[in]        line - RGB formatted color of the lines of rectangle
 * @param[in]   fill - RGB formatted color of the inside of the rectangle
 *
 * @endcode
 */
void oled_switch_draw_rectangle( coord_t rect, color_t line, color_t fill );

/**
 * @brief <h3> OLED Switch Copy </h3>
 *
 * @par
 *  Copys a window of the OLED Switch click to another area of the same size
 *
 * @param[in]   from - Address of start and end positions of window to copy from
 * @param[in]        to - Address of start and end positioins of window to copy to
 *
 * @endcode
 */
void oled_switch_copy( coord_t from, coord_t to ); //Only need col_start and row_start for the "to" variable

/**
 * @brief <h3> OLED Switch Fill Settings </h3>
 *
 * @par
 *  Disables or enables filling of rectangles when drawing with oled_switch_draw_rectangle, 
 *  and also disables or enables reverse copy during copy command: oled_switch_copy
 *
 * @param[in]   sett - Settings for copying and filling of rectangles
 *
 * @endcode
 */
void oled_switch_fill_settings( fill_sett_t sett );

/**
 * @brief <h3> OLED Switch ABC Contrast </h3>
 *
 * @par
 *  Sets the contrast for ABC ( RGB ) colors on the OLED Switch click display
 *
 * @param[in]   contrast - Contrast of A, B, and C ( RGB ) colors on OLED Switch display
 *
 * @endcode
 */
void oled_switch_set_abc_contrast( contrast_t* contrast );

/**
 * @brief <h3> OLED Switch Master Current </h3>
 *
 * @par
 *  Sets the brightness of the OLED Switch click display LEDs
 *
 * @param[in]   current - Values from 0x00 - 0x0F for brightness of LEDs
 *
 * @endcode
 */
void oled_switch_set_master_current( uint8_t current );
 
/**
 * @brief <h3> OLED Switch Set Remap and Color/Depth </h3>
 *
 * @par
 *  Sets address incrementing (horiz or vertical), RAM pin mapping, RGB order, left-right swapping on
 * COM, and color res.
 *
 * @param[in]   depth - Color depth settings 
 *
 * @endcode
 */
void oled_switch_set_remap_color_depth( color_depth_t depth );

/**
 * @brief <h3> OLED Switch Set Display Start Line </h3>
 *
 * @par
 *  Sets the start line for the OLED Switch click to start at
 *
 * @param[in]   st_line - Line for OLED Switch click to start at
 *
 * @endcode
 */
void oled_switch_set_display_start_line( uint8_t st_line );

/**
 * @brief <h3> OLED Switch Set Display Offset </h3>
 *
 * @par
 *  Sets the display offset
 *
 * @param[in]   offset - OLED Switch click display offset setting
 *
 * @endcode
 */
void oled_switch_set_display_offset( uint8_t offset );

/**
 * @brief <h3> OLED Switch Set Normal Display </h3>
 *
 * @par
 *  Sets the OLED Switch click display to Normal display mode
 *
 * @endcode
 */
void oled_switch_set_normal_display( void );

/**
 * @brief <h3> OLED Switch Set Multiplex Ratio </h3>
 *
 * @par
 *  Sets the multiplex ratio for OLED Switch click display
 *
 * @param[in]   ratio - Ratio for multiplex value on OLED Switch click 
 *
 * @endcode
 */
void oled_switch_set_multiplex_ratio( uint8_t ratio );

/**
 * @brief <h3> OLED Switch Set Row Range </h3>
 *
 * @par
 *  Sets the Row range for the OLED Switch click display, ( for memory allocation on module )
 *
 * @param[in]   start - Start address of row range
 * @param[in]        end - End address of row range
 *
 * @endcode
 */
void oled_switch_set_row_range( uint8_t start, uint8_t end );

/**
 * @brief <h3> OLED Switch Set Column Range </h3>
 *
 * @par
 *  Sets the Column range for the OLED Switch click display, ( for memory allocation on module )
 *
 * @param[in]   start - Start address of column range
 * @param[in]        end - End address of column range
 *
 * @endcode
 */
void oled_switch_set_col_range( uint8_t start, uint8_t end );

#ifdef __cplusplus
} // extern "C"
#endif

#endif /* OLED_SWITCH_HW_H */
/*** End of File **************************************************************/