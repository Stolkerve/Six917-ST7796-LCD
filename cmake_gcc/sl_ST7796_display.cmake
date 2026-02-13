####################################################################
# Automatically-generated file. Do not edit!                       #
####################################################################

set(SDK_PATH "/Users/sebas/.silabs/slt/installs/conan/p/simpleb526998f4a4d/p")
set(COPIED_SDK_PATH "simplicity_sdk_2025.6.2")
set(PKG_PATH "/Users/sebas/.silabs/slt/installs")

add_library(slc OBJECT
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/board/silabs/src/rsi_board.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/ipmu_apis.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/rsi_system_config_917.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/core/chip/src/rsi_deepsleep_soc.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/core/chip/src/rsi_ps_ram_func.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/core/chip/src/startup_si91x.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/core/chip/src/system_si91x.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/core/common/src/rsi_debug.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/core/common/src/sl_si91x_stack_object_declare.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/core/common/src/syscalls.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/core/config/src/rsi_nvic_priorities_config.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/cmsis_driver/GSPI.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/cmsis_driver/UDMA.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/cmsis_driver/USART.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/aux_reference_volt_config.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/clock_update.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_adc.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_crc.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_dac.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_egpio.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_gspi.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_opamp.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_qspi.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_sysrtc.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_timers.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma_wrapper.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_usart.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/service/clock_manager/src/sl_si91x_clock_manager.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/service/sleeptimer/src/sl_sleeptimer_hal_si91x_sysrtc.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_bod.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ipmu.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_pll.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_rtc.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_temp_sensor.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_time_period.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ulpss_clk.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/unified_api/src/rsi_d_cache.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_adc.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_bjt_temperature_sensor.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_dma.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_driver_gpio.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_gspi.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_psram.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_psram_handle.c"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/src/sl_si91x_peripheral_gpio.c"
    "${SDK_PATH}/platform/common/src/sl_assert.c"
    "${SDK_PATH}/platform/common/src/sl_core_cortexm.c"
    "${SDK_PATH}/platform/common/src/sl_syscalls.c"
    "${SDK_PATH}/platform/service/sl_main/src/sl_main_init.c"
    "${SDK_PATH}/platform/service/sl_main/src/sl_main_init_memory.c"
    "${SDK_PATH}/platform/service/sl_main/src/sl_main_process_action.c"
    "${SDK_PATH}/platform/service/sleeptimer/src/sl_sleeptimer.c"
    "../app.c"
    "../autogen/sl_event_handler.c"
    "../main.c"
)

target_include_directories(slc PUBLIC
   "../config"
   "../autogen"
   "../."
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/cmsis_driver/CMSIS/Driver/Include"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/cmsis_driver"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/core/common/inc"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/unified_api/inc"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/rom_driver/inc"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/core/chip/inc"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/inc"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/board/silabs/inc"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/core/config"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/service/clock_manager/inc"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/inc"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/service/sleeptimer/inc"
    "${SDK_PATH}/../../wisece6a05cd369ee2/p/components/device/silabs/si91x/mcu/drivers/systemlevel/inc"
    "${SDK_PATH}/platform/common/inc"
    "${SDK_PATH}/platform/CMSIS/Core/Include"
    "${SDK_PATH}/platform/service/sl_main/inc"
    "${SDK_PATH}/platform/service/sl_main/src"
    "${SDK_PATH}/platform/service/sleeptimer/inc"
)

target_compile_definitions(slc PUBLIC
    "SIWG917M111MGTBA=1"
    "SLI_SI917=1"
    "SLI_SI917B0=1"
    "SLI_SI91X_MCU_ENABLE_FLASH_BASED_EXECUTION=1"
    "SLI_SI91X_MCU_EXTERNAL_LDO_FOR_PSRAM=1"
    "SI917_DEVKIT=1"
    "SLI_SI91X_MCU_COMMON_FLASH_MODE=1"
    "SLI_SI91X_MCU_CONFIG_RADIO_BOARD_BASE_VER=1"
    "SLI_SI91X_MCU_CONFIG_RADIO_BOARD_VER2=1"
    "SL_BOARD_NAME=\"BRD2605A\""
    "SL_BOARD_REV=\"A02\""
    "__FREERTOS_OS_WISECONNECT=1"
    "SLI_SI91X_MCU_PSRAM_APS6404L_SQH=1"
    "SLI_SI91X_MCU_PSRAM_PRESENT=1"
    "SL_SI91X_REQUIRES_INTF_PLL=1"
    "CLOCK_ROMDRIVER_PRESENT=1"
    "ULPSS_CLOCK_ROMDRIVER_PRESENT=1"
    "SL_SI91X_BOARD_INIT=1"
    "SRAM_BASE=0x0cUL"
    "SRAM_SIZE=0x2fc00UL"
    "SLI_CODE_CLASSIFICATION_DISABLE=1"
    "SLI_SI91X_MCU_ENABLE_IPMU_APIS=1"
    "SL_SI91X_SOC_MODE=1"
    "CRC_ROMDRIVER_PRESENT=1"
    "QSPI_ROMDRIVER_PRESENT=1"
    "TIMER_ROMDRIVER_PRESENT=1"
    "DEBUG_ENABLE=1"
    "DEBUG_UART=1"
    "ENABLE_DEBUG_MODULE=1"
    "SL_SI91X_SI917_RAM_MEM_CONFIG=1"
    "UDMA_ROMDRIVER_PRESENT=1"
    "__STATIC_INLINE=static inline"
    "GSPI_CONFIG=1"
    "GSPI_MULTI_SLAVE=1"
    "SL_SI91X_GSPI_DMA=1"
    "SI917=1"
    "SLI_SI91X_MCU_INTERFACE=1"
    "TA_DEEP_SLEEP_COMMON_FLASH=1"
    "SI91X_PLATFORM=1"
    "SI91X_SYSRTC_PRESENT=1"
    "SL_SLEEP_TIMER=1"
    "__WEAK=__attribute__((weak))"
    "PLL_ROMDRIVER_PRESENT=1"
    "SL_COMPONENT_CATALOG_PRESENT=1"
    "SL_CODE_COMPONENT_CORE=core"
    "SL_CODE_COMPONENT_SLEEPTIMER=sleeptimer"
)

target_link_libraries(slc PUBLIC
    "-Wl,--start-group"
    "gcc"
    "nosys"
    "c"
    "m"
    "-Wl,--end-group"
)
target_compile_options(slc PUBLIC
    $<$<COMPILE_LANGUAGE:C>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:C>:-mthumb>
    $<$<COMPILE_LANGUAGE:C>:-mfpu=fpv4-sp-d16>
    $<$<COMPILE_LANGUAGE:C>:-mfloat-abi=softfp>
    $<$<COMPILE_LANGUAGE:C>:-Wall>
    $<$<COMPILE_LANGUAGE:C>:-Wextra>
    $<$<COMPILE_LANGUAGE:C>:-Os>
    $<$<COMPILE_LANGUAGE:C>:-fdata-sections>
    $<$<COMPILE_LANGUAGE:C>:-ffunction-sections>
    $<$<COMPILE_LANGUAGE:C>:-fomit-frame-pointer>
    $<$<COMPILE_LANGUAGE:C>:-g>
    "$<$<COMPILE_LANGUAGE:C>:SHELL:-Wall -Werror>"
    $<$<COMPILE_LANGUAGE:C>:-Wno-error=deprecated-declarations>
    $<$<COMPILE_LANGUAGE:C>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:C>:-fno-lto>
    $<$<COMPILE_LANGUAGE:C>:--specs=nano.specs>
    $<$<COMPILE_LANGUAGE:CXX>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:CXX>:-mthumb>
    $<$<COMPILE_LANGUAGE:CXX>:-mfpu=fpv4-sp-d16>
    $<$<COMPILE_LANGUAGE:CXX>:-mfloat-abi=softfp>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
    $<$<COMPILE_LANGUAGE:CXX>:-Wall>
    $<$<COMPILE_LANGUAGE:CXX>:-Wextra>
    $<$<COMPILE_LANGUAGE:CXX>:-Os>
    $<$<COMPILE_LANGUAGE:CXX>:-fdata-sections>
    $<$<COMPILE_LANGUAGE:CXX>:-ffunction-sections>
    $<$<COMPILE_LANGUAGE:CXX>:-fomit-frame-pointer>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    "$<$<COMPILE_LANGUAGE:CXX>:SHELL:-Wall -Werror>"
    $<$<COMPILE_LANGUAGE:CXX>:-Wno-error=deprecated-declarations>
    $<$<COMPILE_LANGUAGE:CXX>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-lto>
    $<$<COMPILE_LANGUAGE:CXX>:--specs=nano.specs>
    $<$<COMPILE_LANGUAGE:ASM>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:ASM>:-mthumb>
    $<$<COMPILE_LANGUAGE:ASM>:-mfpu=fpv4-sp-d16>
    $<$<COMPILE_LANGUAGE:ASM>:-mfloat-abi=softfp>
    "$<$<COMPILE_LANGUAGE:ASM>:SHELL:-x assembler-with-cpp>"
)

set(post_build_command ${POST_BUILD_EXE} postbuild "./sl_ST7796_display.slpb" --parameter build_dir:"$<TARGET_FILE_DIR:sl_ST7796_display>")
set_property(TARGET slc PROPERTY C_STANDARD 17)
set_property(TARGET slc PROPERTY CXX_STANDARD 17)
set_property(TARGET slc PROPERTY CXX_EXTENSIONS OFF)

target_link_options(slc INTERFACE
    -mcpu=cortex-m4
    -mthumb
    -mfpu=fpv4-sp-d16
    -mfloat-abi=softfp
    -T${CMAKE_CURRENT_LIST_DIR}/../autogen/linkerfile_SoC.ld
    --specs=nano.specs
    "SHELL:-Xlinker -Map=$<TARGET_FILE_DIR:sl_ST7796_display>/sl_ST7796_display.map"
    "SHELL:-u _printf_float"
    -fno-lto
    -Wl,--gc-sections
)

# BEGIN_SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA