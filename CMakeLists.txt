cmake_minimum_required(VERSION 3.12)
project(zephyr-infrastructure VERSION 0.0.0)

# Our project will have an include directory with public include files
zephyr_include_directories(include)
# Treat all warnings as errors
zephyr_compile_options("-Werror")
# Enable all standard warnings
zephyr_compile_options("-Wall")
# Extra warnings
zephyr_compile_options("-Wextra")
# Format options validation
zephyr_compile_options("-Wformat=2")
zephyr_compile_options("-Wformat-truncation")
# Detect some out of bounds array indices
zephyr_compile_options("-Warray-bounds")
# Detect uninitialized variables
zephyr_compile_options("-Wuninitialized")
# Detects passing null arguments into functions that do not check for it
zephyr_compile_options("-Wnonnull")
# Disable unused parameter warning
# Reason: zephyr pm functions fail to compile
zephyr_compile_options("-Wno-unused-parameter")
# Disable error on type limits (zephyr ASSERT)
# Reason: zephyr sys/assert does not compile
zephyr_compile_options("-Wno-type-limits")
# Disable error on comparison of integers of different signedness (zephyr)
# Reason: zephyr os/cbprintf does not compile
zephyr_compile_options("-Wno-sign-compare")
# Disable error on checking non-literal format (zephyr)
# Reason: zephyr drivers/serial/uart_native_posix.c does not compile
zephyr_compile_options("-Wno-format-nonliteral")