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
 * @file oled_switch_hal.h
 * @brief <h2> HAL layer </h2>
 */

#ifndef OLED_SWITCH_HAL_H_
#define OLED_SWITCH_HAL_H_

/******************************************************************************
* Includes
*******************************************************************************/

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

/******************************************************************************
* Function Prototypes
*******************************************************************************/

#ifdef __cplusplus
extern "C" {
#endif

/**
 * @brief <h3> CS Control </h3>
 *
 * @param[in] logic - logical state of CS pin
 */
void oled_switch_hal_cs( uint8_t logic );

/**
 * @brief <h3> RST Control </h3>
 *
 * @param[in] logic - logical state of RST pin
 */
void oled_switch_hal_rst( uint8_t logic );

/**
 * @brief <h3> RST CMD Control </h3>
 *
 * @param[in] logic - logical state of CMD pin
 */
void oled_switch_hal_cmd( uint8_t logic );

/**
 * @brief <h3> HAL Initialization </h3>
 *
 * Hal layer initialization. Must be called before any other function.
 */
void oled_switch_hal_init( void );

/**
 * @brief <h3> SPI Write </h3>
 *
 * @par
 * Writes data through SPI bus
 *
 * @note Function have no affect to the CS PIN state - chip select is
 * controled directly from HW layer.
 *
 * @param[in] buffer
 * @param[in] count
 */
void oled_switch_hal_write( uint8_t cmd, uint8_t* buffer, uint16_t count );

/**
 * @brief <h3> OLED Switch HAL Write Image </h3>
 *
 * @par
 *  Writes an image to the RAM of OLED Switch click module
 *
 *
 * @param[in] ptr - 565 formatted image to display
 * @param[in] image_size - Size of bytes in array
 */
void oled_switch_hal_write_image( const unsigned char* ptr, uint16_t image_size );

#ifdef __cplusplus
} // extern "C"
#endif

#endif /* OLED_SWITCH_HAL_H_ */

/*** End of File **************************************************************/