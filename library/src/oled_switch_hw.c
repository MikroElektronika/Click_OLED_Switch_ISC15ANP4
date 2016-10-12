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
 * @file oled_switch_hw.c
 * @brief <h3> Hardware Layer </h3>
 */
/******************************************************************************
* Includes
*******************************************************************************/
#include "oled_switch_hw.h"
#include "oled_switch_hal.h"
#include <stdint.h>
/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/
/**< Scrolling Commands **************************/
#define SCROLLING_SETUP            0x27    /**< Only be used during initialization, or when display is off and scrolling is deactivated. */
/**< Command Sequence: Turn off display, deactivate scrolling, send 0x27( w/ opt. arugments ), then the picture, finally ... */
/**< Turn on display and activate scrolling */
/**< Arguments: A: Set the number of columns shifted horizontally to the right each time( 0x01 - 0x5F ) */
/**<            B: Sets the offset of starting row */
/**<            C: Sets the number of rows that get shifted horizontally. */
/**<            D: Sets number of rows that are vertically shifted up each time 0 = no vert shift, ( 0x01 - 0x3F ) */
/**<            E: Sets the interval between each shift. */
#define DEACTIVATE_SCROLLING       0x2E
#define ACTIVATE_SCROLLING         0x2F
/**< EOF Scrolling Commands ***********************/

/**< Graphics Commands ****************************/
#define DRAW_LINE                  0x21    /**< Arguments: A: Column Address of Start  A[6:0] */
/**<            B: Row Address of Start     B[5:0] */
/**<            C: Column Address of End    C[6:0] */
/**<            D: Row Address of End       D[5:0] */
/**<            E: Color C of the line      E[5:1] */
/**<            F: Color B of the line      F[5:0] */
/**<            G: Color A of the line      G[5:1] */
#define DIM_WINDOW                 0x24    /**< Arguments: A: Column Address of Start  A[6:0] */
/**<            B: Row Address of Start     B[5:0] */
/**<            C: Column Address of End    C[6:0] */
/**<            D: Row Address of End       D[5:0] */
#define CLEAR_WINDOW               0x25    /**< Arguments: A: Column Address of Start  A[6:0] */
/**<            B: Row Address of Start     B[5:0] */
/**<            C: Column Address of End    C[6:0] */
/**<            D: Row Address of End       D[5:0] */
#define DRAW_RECTANGLE             0x22    /**< Arguments: A: Column Address of Start  A[6:0] */
/**<            B: Row Address of Start     B[5:0] */
/**<            C: Column Address of End    C[6:0] */
/**<            D: Row Address of End       D[5:0] */
/**<            E: Color C of the line      E[5:1] */
/**<            F: Color B of the line      F[5:0] */
/**<            G: Color A of the line      G[5:1] */
/**<            H: Color C of the fill area H[5:1] */
/**<            I: Color B of the fill area I[5:0] */
/**<            J: Color A of the fill area J[5:1] */
#define COPY                       0x23    /**< Arguments: A: Column Address of Start     A[6:0] */
/**<            B: Row Address of Start        B[5:0] */
/**<            C: Column Address of End       C[6:0] */
/**<            D: Row Address of End          D[5:0] */
/**<            E: Column Address of New Start E[6:0] */
/**<            F: Row Address of New Start    F[5:0] */
#define FILL_ENABLE_DISABLE        0x26    /**< Arguments: 1 byte: xxxA4xxxA0: A0 = 0: Disable Fill for Draw Rectangle Command */
/**<                                A0 = 1: Enable Fill for Draw Rectangle Command */
/**<                                A4 = 0: Disable Reverse copy */
/**<                                A4 = 1: Enable Reverse during copy command */


/**< EOF Graphics Commands ************************/
#define A_CONTRAST                 0x81
#define B_CONTRAST                 0x82
#define C_CONTRAST                 0x83
#define MAST_CURR_CNTL             0x87    /**< Only to be used once the display is off 0x00 - 0x0F */
#define REMAP_CLR_DPTH_SETT        0xA0    /**< Arguments: 1 byte: A7,A6,A5,A4,A3,A2,A1,A0: */
                                           /**< A0 = 0: Horizontal Address Increment, A0 = 1: Vertical Address Increment */
                                           /**< A1 = 0: Ram column 0 to 95 maps to pin seg 0 to 95, A1 = 1: Ram column 0 to 95 maps to pin seg 95 to 0 */
                                           /**< A2 = 0: Normal Order ( eg RGB ), A2 = 1: Reverse Order ( eg BGR ) */
                                           /**< A3 = 0: Disable left-right swapping on COM, A3 = 1: Set left-right swapping on COM */
                                           /**< A4 must be set to 1 */
                                           /**< A5 must be set to 1 */
                                           /**< A6 and A7 = 00: 256 Color, A6 and A7 = 01: 65k Color, A6 and A7 otherwise: reserved */
#define SET_DSPLY_STRT_LINE        0xA1
#define SET_DSPLY_OFFSET           0xA2
#define NORMAL_DSPLY               0xA4
#define ALL_PIXELS_ON_HIGH_BRGHT   0xA5
#define ALL_PIXELS_ON_LOW_INTENS   0xA6
#define INVERSE_DISPLAY            0xA7
#define MULTIPLEX_RATIO            0xA8
#define DIM_MODE_ABC               0xAB
#define DIM_DISPLAY                0xAC
#define DISPLAY_OFF                0xAE
#define DISPLAY_ON                 0xAF
#define MASTER_CONFIG              0xAD
#define PWR_SAVE_MODE              0xB0
#define PHASE_1_2_ADJ              0xB1
#define DSPLY_CLK_DIV_OSC_FREQ     0xB3
#define ENABLE_LINEAR_GRAY_SCALE   0xB9
#define PRE_CHRGE_LVL              0xBB
#define SET_VCOMH                  0xBE
#define DSPLY_ON_NORMAL_MODE       0xAF
#define SET_COL_RANGE              0x15
#define SET_ROW_RANGE              0x75
#define NOP                        0xE3

/**< Image size for 64x48 oled display */
//#define IMG_SIZE 6144
/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/

/******************************************************************************
* Module Typedefs
*******************************************************************************/

/******************************************************************************
* Module Variable Definitions
*******************************************************************************/

/******************************************************************************
* Function Prototypes
*******************************************************************************/

/******************************************************************************
* Private Function Definitions
*******************************************************************************/
static void _oled_switch_set_dim_mode( void );
static void _oled_switch_set_master_config( void );
static void _oled_switch_set_power_save_mode( void );
static void _oled_switch_set_phase_1_2_period_adjustment( void );
static void _oled_switch_display_clock_div_osc_freq( void );
static void _oled_switch_enable_linear_gray_scale( void );
static void _oled_switch_pre_charge_level( void );
static void _oled_switch_set_vcomh( void );
static void _oled_switch_display_normal_mode( void );
/******************************************************************************
* Public Function Definitions
*******************************************************************************/
static void _oled_switch_set_dim_mode( void )
{
    uint8_t dim_modes[10] = { 0x00, 0x12, 0x0C, 0x14, 0x12 };

    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( DIM_MODE_ABC, dim_modes, 5 );
    oled_switch_hal_cs( 1 );
}

static void _oled_switch_set_master_config( void )
{
    uint8_t arg = 0x8E;

    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( MASTER_CONFIG, &arg, 1 );
    oled_switch_hal_cs( 1 );
}

static void _oled_switch_set_power_save_mode( void )
{
    uint8_t arg = 0x0B;

    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( PWR_SAVE_MODE, &arg, 1 );
    oled_switch_hal_cs( 1 );
}

static void _oled_switch_set_phase_1_2_period_adjustment( void )
{
    uint8_t arg = 0x44;

    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( PHASE_1_2_ADJ, &arg, 1 );
    oled_switch_hal_cs( 1 );
}

static void _oled_switch_display_clock_div_osc_freq( void )
{
    uint8_t arg = 0xA0;

    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( DSPLY_CLK_DIV_OSC_FREQ, &arg, 1 );
    oled_switch_hal_cs( 1 );
}

static void _oled_switch_enable_linear_gray_scale( void )
{
    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( ENABLE_LINEAR_GRAY_SCALE, 0, 0 );
    oled_switch_hal_cs( 1 );
}

static void _oled_switch_pre_charge_level( void )
{
    uint8_t arg = 0x12;

    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( PRE_CHRGE_LVL, &arg, 1 );
    oled_switch_hal_cs( 1 );
}

static void _oled_switch_set_vcomh( void )
{
    uint8_t arg = 0x3E;

    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( SET_VCOMH, &arg, 1 );
    oled_switch_hal_cs( 1 );
}

static void _oled_switch_display_normal_mode( void )
{
    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( DSPLY_ON_NORMAL_MODE, 0, 0 );
    oled_switch_hal_cs( 1 );
}

void oled_switch_init( buffer_size_t size )
{
    //Local Declarations
    contrast_t contrast;
    coord_t coords;
    uint8_t row_range[ 5 ] = { 0 };
    uint8_t col_range[ 5 ] = { 0 };

    contrast.a_contrast = 0x0F;
    contrast.b_contrast = 0x0E;
    contrast.c_contrast = 0x1B;
    if ( size == SMALL )
    {
        coords.col_start    = 0x10;
        coords.row_start    = 0x00;
        coords.col_end      = 0x4F;
        coords.row_end      = 0x2F;
        row_range[0]        = 0x00;
        row_range[1]        = 0x2F;
        col_range[0]        = 0x10;
        col_range[1]        = 0x4F;
    }
    else
    {
        coords.col_start    = 0x00;
        coords.row_start    = 0x00;
        coords.col_end      = 0x5F;
        coords.row_end      = 0x3F;
        row_range[0]        = 0x00;
        row_range[1]        = 0x3F;
        col_range[0]        = 0x00;
        col_range[1]        = 0x5F;
    }

    //Reset
    oled_switch_hal_rst( 0 );
    Delay_us(3);
    oled_switch_hal_rst( 1 );

    //Initialize HAL first
    oled_switch_hal_init();

    //OLED ( 64x48 ) 30,000 hr life Initialization Sequence
    oled_switch_set_abc_contrast( &contrast );
    oled_switch_set_master_current( 0x0F );
    oled_switch_set_remap_color_depth( 0 ); //Defaults
    oled_switch_set_display_start_line( 0 );
    oled_switch_set_display_offset( 0x10 );
    oled_switch_set_normal_display();
    oled_switch_set_multiplex_ratio( 0x2F );
    _oled_switch_set_dim_mode();            //Static functions used because datasheet doesn't explain how to use these features
    _oled_switch_set_master_config();
    _oled_switch_set_power_save_mode();
    _oled_switch_set_phase_1_2_period_adjustment();
    _oled_switch_display_clock_div_osc_freq();
    _oled_switch_enable_linear_gray_scale();
    _oled_switch_pre_charge_level();
    _oled_switch_set_vcomh();
    _oled_switch_display_normal_mode();

    //Allocate RAM space for display buffer
    oled_switch_set_row_range( row_range[0], row_range[1] );
    oled_switch_set_col_range( col_range[0], col_range[1] );

    //Clear Window
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

    args[0] = setup.col_horiz_shift;    //Populate args w/ scroll settings
    args[1] = setup.row_offset;
    args[2] = setup.row_horiz_shift;
    args[3] = setup.row_vert_shift;
    args[4] = setup.interval;

    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( SCROLLING_SETUP, args, 5 );
    oled_switch_hal_cs( 1 );

}

void oled_switch_deactivate_scrolling( void )
{
    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( DEACTIVATE_SCROLLING, 0, 0 );
    oled_switch_hal_cs( 1 );
}

void oled_switch_activate_scrolling( void )
{
    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( ACTIVATE_SCROLLING, 0, 0 );
    oled_switch_hal_cs( 1 );
}

void oled_switch_draw_line( coord_t address, color_t color )
{
    uint8_t args[ 20 ] = { 0 };

    args[0] = address.col_start;    //Populate args w/ coords for line and color
    args[1] = address.row_start;
    args[2] = address.col_end;
    args[3] = address.row_end;
    args[4] = color.color_b;
    args[5] = color.color_g;
    args[6] = color.color_r;

    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( DRAW_LINE, args, 7 );
    oled_switch_hal_cs( 1 );
}

void oled_switch_dim_window( coord_t window )
{
    uint8_t args[ 20 ] = { 0 };

    args[0] = window.col_start;    //Populate args w/ coords for dimming window
    args[1] = window.row_start;
    args[2] = window.col_end;
    args[3] = window.row_end;

    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( DIM_WINDOW, args, 4 );
    oled_switch_hal_cs( 1 );
}

void oled_switch_clear_window( coord_t window )
{
    uint8_t args[ 20 ] = { 0 };

    args[0] = window.col_start;    //Populate args w/ coords for clearing window
    args[1] = window.row_start;
    args[2] = window.col_end;
    args[3] = window.row_end;

    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( CLEAR_WINDOW, args, 4 );
    oled_switch_hal_cs( 1 );
}

void oled_switch_draw_rectangle( coord_t rect, color_t line, color_t fill )
{
    uint8_t args[ 20 ] = { 0 };

    args[0] = rect.col_start;    //Populate args w/ coords and colors for lines and fill
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
    oled_switch_hal_write( DRAW_RECTANGLE, args, 10 );
    oled_switch_hal_cs( 1 );
}

void oled_switch_copy( coord_t from, coord_t to )
{
    uint8_t args[ 20 ] = { 0 };

    args[0] = from.col_start;    //Populate args w/ coords for the "from" and then the "to"
    args[1] = from.row_start;
    args[2] = from.col_end;
    args[3] = from.row_end;
    args[4] = to.col_start;
    args[5] = to.row_start;

    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( COPY, args, 6 );
    oled_switch_hal_cs( 1 );
}

void oled_switch_fill_settings( fill_sett_t sett )
{
    uint8_t arg = sett;

    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( FILL_ENABLE_DISABLE, &arg, 1 );
    oled_switch_hal_cs( 1 );
}

void oled_switch_set_abc_contrast( contrast_t* contrast )
{
    uint8_t arg;

    oled_switch_hal_cmd( 0 );
    arg = contrast->a_contrast;
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( A_CONTRAST, &arg, 1 );
    oled_switch_hal_cs( 1 );
    arg = contrast->b_contrast;
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( B_CONTRAST, &arg, 1 );
    oled_switch_hal_cs( 1 );
    arg = contrast->c_contrast;
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( C_CONTRAST, &arg, 1 );
    oled_switch_hal_cs( 1 );
}

void oled_switch_set_master_current( uint8_t current )
{
    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( MAST_CURR_CNTL, &current, 1 );
    oled_switch_hal_cs( 1 );
}

void oled_switch_set_remap_color_depth( color_depth_t depth )
{
    uint8_t arg = depth;

    arg |= 0x70;  //These bits must be 1
    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( REMAP_CLR_DPTH_SETT, &arg, 1 );
    oled_switch_hal_cs( 1 );
}

void oled_switch_set_display_start_line( uint8_t st_line )
{
    uint8_t arg = st_line;

    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( SET_DSPLY_STRT_LINE, &arg, 1 );
    oled_switch_hal_cs( 1 );
}

void oled_switch_set_display_offset( uint8_t offset )
{
    uint8_t arg = offset;

    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( SET_DSPLY_OFFSET, &arg, 1 );
    oled_switch_hal_cs( 1 );
}

void oled_switch_set_normal_display( void )
{
    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( NORMAL_DSPLY, 0, 0 );
    oled_switch_hal_cs( 1 );
}

void oled_switch_set_multiplex_ratio( uint8_t ratio )
{
    uint8_t arg = ratio;

    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( MULTIPLEX_RATIO, &arg, 1 );
    oled_switch_hal_cs( 1 );
}

void oled_switch_set_row_range( uint8_t start, uint8_t end )
{
    uint8_t args[ 4 ] = { 0 };

    args[0] = start;
    args[1] = end;

    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( SET_ROW_RANGE, &args, 2 );
    oled_switch_hal_cs( 1 );
}

void oled_switch_set_col_range( uint8_t start, uint8_t end )
{
    uint8_t args[ 4 ] = { 0 };

    args[0] = start;
    args[1] = end;

    oled_switch_hal_cmd( 0 );
    oled_switch_hal_cs( 0 );
    oled_switch_hal_write( SET_COL_RANGE, &args, 2 );
    oled_switch_hal_cs( 1 );
}
/*************** END OF FUNCTIONS *********************************************/