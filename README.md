![MikroE](http://www.mikroe.com/img/designs/beta/logo_small.png)

![OLED Switch Click](http://cdn.mikroe.com/img/click/oled-switch/oled-switch-click-c.png)

---
[Product Page](http://www.mikroe.com/index.php?url=click/oled-switch/)

[Manual Page](http://docs.mikroe.com/OLED_switch_click)

---

### General Description
Too many buttons and LEDs confuse users, and a wrong button pushed at the wrong time can be destructive. 

So, if you are designing controls for complex machinery — whether it is a control panel for a power plant or a mock cockpit for your home flight simulator — you want to keep the design as simple as possible. A Smart OLED Switch click can help, because you can use it to replace several components at once.

An OLED built in a button

This board has a module that combines a button and a full color organic LED display, plus input/output screw terminals for connecting external electronics.  

The mechanical button itself is nicely built, with a translucent black housing. When pressed, it gives satisfying tactile feedback. 

The display, built in the button itself, can show 64 by 48 pixel images with up to 65k colors (16-bit depth). 

With the screw terminals, you can toggle an external circuit on and off. 

Displays crisp and clear images

The display is big enough to display simple information, whether as icons or words. Small characters are legible and clear. 

The most interesting feature is that the display can be programmed to change the picture when needed (for example, you can design a reprogrammable keypad that would allow users to switch from latin to cyrillic script or to chinese characters).

VisualTFT can be used to prepare the bmp images. There is a learn.mikroe.com article that explains how to to take 16 or 24 bit bmp pictures and create C arrays.

The board communicates with the target MCU through the mikroBUS SPI interface. It uses a 3.3V power supply only.

---

### Example

#### Configuration
* MCU:             STM32F107VC
* Dev.Board:       EasyMx Pro v7
* Oscillator:      72 Mhz internal
* Ext. Modules:    Color 3 click
* SW:              MikroC PRO for ARM 4.7.4

```

/*      Functions
 ****************************/
#include "oled_switch_hw.h"
#include "paint_bitmap.h"

#define IMG_SIZE      6144      //For still images this size is good, because display is only this size.
#define BIG_IMG_SIZE  12288     //For scrolling, you must use bigger image, because of firmware on module,
                                //( Module attempts to scroll 96x64 display despite memory allocated being smaller )
//GPIOs
sbit OLED_SWITCH_RST         at GPIOC_ODR.B2;
sbit OLED_SWITCH_CS          at GPIOD_ODR.B13;
sbit OLED_SWITCH_CMD         at GPIOA_ODR.B0;

//Function Prototypes
void system_setup( buffer_size_t size );

void main() 
{
    //Local Declarations
    scroll_t scroll;               //Used for scroll settings
    
    scroll.col_horiz_shift = 0x01; //Shift left to right
    scroll.row_offset      = 0;    //No offset of rows
    scroll.row_horiz_shift = 64;   //64: BIG IMAGE, 47:SMALL ( SMALL doesn't work well, because of firmware on click side )
    scroll.row_vert_shift  = 0;    //No vertical shifting
    scroll.interval        = 1;    //1: 10 frames between each shift
    
    //Setup
    system_setup( BIG ); //Provide size of allocated space for images ( 64x48 or 96x64 )

    oled_switch_deactivate_scrolling();                                   //Scrolling must be absolutely deactivated first
    oled_switch_scrolling_setup( scroll );                                //Next, setup scroll settings
    oled_switch_draw_565_img( oled_switch_logo_big_bmp, BIG_IMG_SIZE );   //Draw the image to scroll
    oled_switch_activate_scrolling();                                     //Activate scrolling on screen

    while( 1 )//Forever
    {
    
    }
}

void system_setup( buffer_size_t size )
{
    GPIO_Digital_Output( &GPIOC_BASE, _GPIO_PINMASK_2  );     //RST
    GPIO_Digital_Output( &GPIOD_BASE, _GPIO_PINMASK_13  );    //CS
    GPIO_Digital_Output( &GPIOA_BASE, _GPIO_PINMASK_0  );     //CMD or CD  ( Command / Data )

    //UART
    UART1_Init( 115200 );
    Delay_ms(300);
    UART1_Write_Text( "UART Initialized\r\n" );

    //SPI
    SPI3_Init_Advanced( _SPI_FPCLK_DIV16, _SPI_MASTER | _SPI_8_BIT |
                    _SPI_CLK_IDLE_HIGH | _SPI_FIRST_CLK_EDGE_TRANSITION |
                    _SPI_MSB_FIRST | _SPI_SS_DISABLE | _SPI_SSM_ENABLE |
                    _SPI_SSI_1, &_GPIO_MODULE_SPI3_PC10_11_12 );
    Delay_ms(300);
    UART1_Write_Text( "SPI Initialized\r\n" );

    //Initialize OLED Switch click
    oled_switch_init( size );
    Delay_ms( 300 );
    UART1_Write_Text( "OLED Switch click Initialized\r\n" );

}
```
