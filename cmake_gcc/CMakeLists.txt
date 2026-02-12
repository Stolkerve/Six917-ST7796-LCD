# Define minimal required version of CMake.
cmake_minimum_required(VERSION "3.25")

# Project definition
project(
	sl_ST7796_display
	VERSION 1.0
	LANGUAGES C CXX ASM
)

# Include the definition of the slc_sl_ST7796_display target,
# which contains the content of the SLC project
include(sl_ST7796_display.cmake)

add_executable(sl_ST7796_display
    # Add additional sources here
)

target_include_directories(sl_ST7796_display PUBLIC
    # Add additional include paths here
)

target_compile_definitions(sl_ST7796_display PUBLIC
    # Add additional macros here
)

target_compile_options(sl_ST7796_display PUBLIC
    # Set additional compiler flags here
)

target_link_options(sl_ST7796_display PUBLIC
    # Set additional linker flags here
)

# Link with the content defined in the SLC project
target_link_libraries(sl_ST7796_display PRIVATE
    slc
)

# Include managed project content if available
include(sl_ST7796_display_project.cmake OPTIONAL RESULT_VARIABLE managed_project)
if(managed_project)
    message(STATUS "Using managed project content from ${managed_project}")
endif()

# Force the gcc linker command
set_target_properties(sl_ST7796_display PROPERTIES LINKER_LANGUAGE C)

# Create .bin, .hex and .s37 artifacts after building the project
add_custom_command(TARGET sl_ST7796_display
    POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} ${OBJCOPY_SREC_CMD} "$<TARGET_FILE:sl_ST7796_display>" "$<TARGET_FILE_DIR:sl_ST7796_display>/$<TARGET_FILE_BASE_NAME:sl_ST7796_display>.s37"
    COMMAND ${CMAKE_OBJCOPY} ${OBJCOPY_IHEX_CMD} "$<TARGET_FILE:sl_ST7796_display>" "$<TARGET_FILE_DIR:sl_ST7796_display>/$<TARGET_FILE_BASE_NAME:sl_ST7796_display>.hex"
    COMMAND ${CMAKE_OBJCOPY} ${OBJCOPY_BIN_CMD}  "$<TARGET_FILE:sl_ST7796_display>" "$<TARGET_FILE_DIR:sl_ST7796_display>/$<TARGET_FILE_BASE_NAME:sl_ST7796_display>.bin" 
)

# Run post-build pipeline to perform additional post-processing
if(post_build_command)
add_custom_command(TARGET sl_ST7796_display
    POST_BUILD
    WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/..
    COMMAND ${post_build_command}
)
endif()