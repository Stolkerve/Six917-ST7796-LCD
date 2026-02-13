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