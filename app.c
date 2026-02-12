/***************************************************************************/ /**
                                                                               * @file app.c
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
#include "app.h"
#include <stdio.h>
#include <sl_status.h>
#include <sl_gpio_board.h>
#include <sl_sleeptimer.h>
#include <sl_si91x_gspi_common_config.h>
#include <sl_si91x_psram.h>
#include <sl_si91x_psram_handle.h>
#include <mipi_dbi.h>
#include <mipi_dbi_spi.h>

#include <lvgl.h>
#define LVGL_TIMER_PERIOD 1

sl_status_t PSRAM_init(void);
sl_status_t ST7796_init(void);
sl_status_t ST7796_set_addr_window(uint16_t x, uint16_t y, int16_t w, uint16_t h);
sl_status_t send_command(uint8_t command, const uint8_t *data, uint8_t len);
sl_status_t write_pixels(uint16_t *color, uint32_t len);
sl_status_t write_display(const void *framebuf, size_t framebuf_len, mipi_dbi_transfer_complete_callback_t callback);
sl_status_t lvgl_display_init(void);
void lvgl_tick_timer_callback(sl_sleeptimer_timer_handle_t *timer, void *data);
void init_lvgl(void);
void disp_flush(lv_disp_drv_t *disp_drv, const lv_area_t *area, lv_color_t *color_p);
void draw_hello_world(void);

static sl_sleeptimer_timer_handle_t lvgl_tick_timer;
static uint16_t *framebuffer1 = (uint16_t *)PSRAM_BASE_ADDRESS;
static lv_disp_draw_buf_t draw_buf;
static lv_disp_drv_t disp_drv;

static struct mipi_dbi_device mipi_dbi_device;
static uint16_t dma_buffer[MAX_FRAMEBUFFER_PIXEL_COUNT];

MIPI_DBI_SPI_INTERFACE_DEFINE(mipi_config,
                              SL_GSPI_BITRATE,
                              SL_GSPI_MODE_0,
                              SL_GSPI_MASTER_HW_OUTPUT,
                              SL_GSPI_MASTER_CS0__PORT,
                              SL_GSPI_MASTER_CS0__PIN,
                              HP,
                              SL_SI91X_GPIO_10_PIN);

lv_obj_t *label1;
void draw_hello_world(void)
{
    label1 = lv_label_create(lv_scr_act());
    lv_label_set_long_mode(label1, LV_LABEL_LONG_WRAP);     /*Break the long lines*/
    lv_label_set_recolor(label1, true);                      /*Enable re-coloring by commands in the text*/
    lv_label_set_text(label1, "#0000ff Re-color# #ff00ff words# #ff0000 of a# label, align the lines to the center "
                      "and wrap long text automatically.");
    lv_obj_set_width(label1, 150);  /*Set smaller width to make the lines wrap*/
    lv_obj_set_style_text_align(label1, LV_TEXT_ALIGN_CENTER, 0);
    lv_obj_align(label1, LV_ALIGN_CENTER, 0, -40);

    lv_obj_t * label2 = lv_label_create(lv_scr_act());
    lv_label_set_long_mode(label2, LV_LABEL_LONG_SCROLL_CIRCULAR);     /*Circular scroll*/
    lv_obj_set_width(label2, 150);
    lv_label_set_text(label2, "It is a circularly scrolling text. ");
    lv_obj_align(label2, LV_ALIGN_CENTER, 0, 40);
}

/*******************************************************************************
 * Initialize application.
 ******************************************************************************/
void app_init(void)
{
    sl_status_t status = SL_STATUS_OK;
    if (PSRAM_init() != SL_STATUS_OK)
    {
        printf("PSRAM_init faild 0x%02lX\r\n", status);
        return;
    }

    // init MIPI driver
    status = mipi_dbi_device_init(&mipi_dbi_device, (const struct mipi_dbi_config *)&mipi_config);
    if (status != SL_STATUS_OK)
    {
        printf("mipi_dbi_device_init 0x%02lX\r\n", status);
        return;
    }
    printf("mipi dbi device init done\r\n");

    if (ST7796_init() != SL_STATUS_OK)
    {
        printf("ST7796_init faild 0x%02lX\r\n", status);
        return;
    }
    sl_sleeptimer_start_periodic_timer_ms(&lvgl_tick_timer,
                                          LVGL_TIMER_PERIOD,
                                          lvgl_tick_timer_callback,
                                          NULL,
                                          0,
                                          0);
    printf("Start sleep timer %dms\r\n", LVGL_TIMER_PERIOD);
    init_lvgl();

    draw_hello_world();
}
/*******************************************************************************
 * App ticking function.
 ******************************************************************************/
void app_process_action(void)
{
    static int a = 0;
    lv_timer_handler_run_in_period(5);
    if (label1 != NULL)
    {
        lv_label_set_text_fmt(label1, "#0000ff Hello# #ff0000 World# %d", a);
        a += 1;
    }
}

void lvgl_tick_timer_callback(sl_sleeptimer_timer_handle_t *timer,
                              void *data)
{
    (void)timer;
    (void)data;

    lv_tick_inc(LVGL_TIMER_PERIOD);
}

sl_status_t PSRAM_init(void)
{
    sl_status_t status = SL_STATUS_OK;
    status = sl_si91x_psram_uninit();
    if (status != SL_STATUS_OK)
    {
        return status;
    }
    printf("psram uninit done\r\n");

    // Initialize PSRAM. Just to throw an error if the PSRAM is not present
    status = sl_si91x_psram_init();
    if (status != PSRAM_SUCCESS)
    {
        return status;
    }
    printf("psram init done\r\n");
    return status;
}

sl_status_t ST7796_init(void)
{
    const uint8_t col_16bit = 0x55;
    const uint8_t memCtrl = 0x55;

    sl_status_t status = SL_STATUS_OK;
    status = send_command(ST7796_SWRESET, NULL, 0);
    if (status != SL_STATUS_OK)
    {
        return status;
    }
    sl_sleeptimer_delay_millisecond(150);
    status = send_command(ST7796_SLPOUT, NULL, 0);
    if (status != SL_STATUS_OK)
    {
        return status;
    }
    sl_sleeptimer_delay_millisecond(10);
    status = send_command(ST7796_COLMOD, &col_16bit, 1);
    if (status != SL_STATUS_OK)
    {
        return status;
    }
    sl_sleeptimer_delay_millisecond(10);
    status = send_command(ST7796_MADCTL, &memCtrl, 1);
    if (status != SL_STATUS_OK)
    {
        return status;
    }
    sl_sleeptimer_delay_millisecond(10);
    status = send_command(ST7796_INVOFF, NULL, 0);
    if (status != SL_STATUS_OK)
    {
        return status;
    }
    sl_sleeptimer_delay_millisecond(10);
    status = send_command(ST7796_NORON, NULL, 0);
    if (status != SL_STATUS_OK)
    {
        return status;
    }
    sl_sleeptimer_delay_millisecond(10);
    status = send_command(ST7796_DISPON, NULL, 0);
    if (status != SL_STATUS_OK)
    {
        return status;
    }
    sl_sleeptimer_delay_millisecond(10);
    printf("ST7796 display init done\r\n");

    // rotate 90deg
    uint8_t madctl = ST7796_MADCTL_MV | ST7796_MADCTL_RGB;
    status = send_command(ST7796_MADCTL, &madctl, 1);
    if (status != SL_STATUS_OK)
    {
        return status;
    }
    sl_sleeptimer_delay_millisecond(10);
    printf("ST7796 rotate done\r\n");

    return status;
}

sl_status_t send_command(uint8_t command,
                         const uint8_t *data,
                         uint8_t len)
{
    return mipi_dbi_device.api->command_write(
        &mipi_dbi_device,
        command,
        data, len);
}

sl_status_t ST7796_set_addr_window(uint16_t x, uint16_t y, int16_t w, uint16_t h)
{
    sl_status_t status;
    uint16_t x1 = x + w - 1;
    uint16_t y1 = y + h - 1;
    uint8_t posx[4] = {x >> 8, x & 0xFF, x1 >> 8, x1 & 0xff};
    uint8_t posy[4] = {y >> 8, y & 0xFF, y1 >> 8, y1 & 0xff};

    status = send_command(ST7796_CASET, posx, 4);
    if (SL_STATUS_OK != status)
    {
        return status;
    }

    status = send_command(ST7796_RASET, posy, 4);
    if (SL_STATUS_OK != status)
    {
        return status;
    }

    // Write to display RAM
    return send_command(ST7796_RAMWR, NULL, 0);
}

static volatile uint8_t block_write_pixels = 0;
void write_pixels_transfer_complete_callback(void)
{
    block_write_pixels = false;
}

sl_status_t write_pixels(uint16_t *color, uint32_t len)
{
    uint32_t i, n, size;
    sl_status_t status;

    if (!len)
    {
        return SL_STATUS_INVALID_PARAMETER;
    }
    for (n = 0; n < len; n += MAX_FRAMEBUFFER_PIXEL_COUNT)
    {
        while (block_write_pixels);
        if (n + MAX_FRAMEBUFFER_PIXEL_COUNT <= len)
        {
            size = MAX_FRAMEBUFFER_PIXEL_COUNT;
        }
        else
        {
            size = len - n;
        }

        for (i = 0; i < size; i++)
        {
            dma_buffer[i] = (*color) >> 8 | ((uint16_t)((*color) & 0xff) << 8);
            color++;
        }
        block_write_pixels = true;
        status = write_display(dma_buffer,
                               size * 2,
                               write_pixels_transfer_complete_callback);
        if (SL_STATUS_OK != status)
        {
            block_write_pixels = false;
            goto error;
        }
    }

    while (block_write_pixels);
    return SL_STATUS_OK;
error:
    return SL_STATUS_IO;
}

sl_status_t write_display(const void *framebuf, size_t framebuf_len, mipi_dbi_transfer_complete_callback_t callback)
{
    struct mipi_dbi_display_buffer_descriptor desc;

    desc.buf_size = framebuf_len;

    return mipi_dbi_device.api->write_display(
        &mipi_dbi_device,
        (const uint8_t *)framebuf,
        &desc,
        PIXEL_FORMAT_RGB_565,
        callback);
}

void init_lvgl()
{
    lv_init();
    lv_disp_draw_buf_init(&draw_buf, (lv_color_t *)framebuffer1, NULL, DISPLAY_WIDTH * DISPLAY_HEIGHT);
    lv_disp_drv_init(&disp_drv);

    disp_drv.hor_res = DISPLAY_WIDTH;
    disp_drv.ver_res = DISPLAY_HEIGHT;
    disp_drv.flush_cb = disp_flush;
    disp_drv.draw_buf = &draw_buf;

    lv_disp_drv_register(&disp_drv);
}

void disp_flush(lv_disp_drv_t *disp_drv, const lv_area_t *area, lv_color_t *color_p)
{
    uint16_t w = area->x2 - area->x1 + 1;
    uint16_t h = area->y2 - area->y1 + 1;
    ST7796_set_addr_window(area->x1, area->y1, w, h);
    write_pixels((uint16_t *)color_p, w * h);
    // (x1 >= 0) && (x1 < DISPLAY_WIDTH) && (x2 >= 0) && (x2 < DISPLAY_WIDTH) && (y1 >= 0) && (y1 < DISPLAY_HEIGHT) && (y2 >= 0) && (y2 < DISPLAY_HEIGHT) && (x2 >= x1) && (y2 >= y1)
    lv_disp_flush_ready(disp_drv);
}
