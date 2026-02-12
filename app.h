/***************************************************************************/ /**
 * @file app.h
 * @brief Top level application functions
 *******************************************************************************
 * # License
 * <b>Copyright 2023 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/
#ifndef APP_H
#define APP_H

#define BYTE_PER_PIXEL 2
#define MAX_FRAMEBUFFER_PIXEL_COUNT (MIPI_DBI_SPI_4WIRE_DMA_BUFFER_SIZE_MAX / BYTE_PER_PIXEL)
#define ST7796_SWRESET 0x01
#define ST7796_SLPOUT 0x11
#define ST7796_COLMOD 0x3A
#define ST7796_MADCTL 0x36
#define ST7796_INVOFF 0x20
#define ST7796_NORON 0x13
#define ST7796_DISPON 0x29
#define ST7796_MADCTL_MV 0x20
#define ST7796_MADCTL_RGB 0x00
#define ST7796_CASET 0x2A
#define ST7796_RASET 0x2B
#define ST7796_RAMWR 0x2C
#define ST7796_RAMRD 0x2E
#define DISPLAY_WIDTH 480
#define DISPLAY_HEIGHT 320
#define SL_GSPI_BITRATE 10000000

/***************************************************************************/ /**
 * Initialize application.
 ******************************************************************************/
void app_init(void);

/***************************************************************************/ /**
 * App ticking function.
 ******************************************************************************/
void app_process_action(void);

#endif // APP_H
