################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../_drivers_/src/f1c100s_clock.c \
../_drivers_/src/f1c100s_de.c \
../_drivers_/src/f1c100s_gpio.c \
../_drivers_/src/f1c100s_intc.c \
../_drivers_/src/f1c100s_pwm.c \
../_drivers_/src/f1c100s_sdc.c \
../_drivers_/src/f1c100s_timer.c \
../_drivers_/src/f1c100s_tvd.c \
../_drivers_/src/f1c100s_tve.c \
../_drivers_/src/f1c100s_uart.c 

OBJS += \
./_drivers_/src/f1c100s_clock.o \
./_drivers_/src/f1c100s_de.o \
./_drivers_/src/f1c100s_gpio.o \
./_drivers_/src/f1c100s_intc.o \
./_drivers_/src/f1c100s_pwm.o \
./_drivers_/src/f1c100s_sdc.o \
./_drivers_/src/f1c100s_timer.o \
./_drivers_/src/f1c100s_tvd.o \
./_drivers_/src/f1c100s_tve.o \
./_drivers_/src/f1c100s_uart.o 

C_DEPS += \
./_drivers_/src/f1c100s_clock.d \
./_drivers_/src/f1c100s_de.d \
./_drivers_/src/f1c100s_gpio.d \
./_drivers_/src/f1c100s_intc.d \
./_drivers_/src/f1c100s_pwm.d \
./_drivers_/src/f1c100s_sdc.d \
./_drivers_/src/f1c100s_timer.d \
./_drivers_/src/f1c100s_tvd.d \
./_drivers_/src/f1c100s_tve.d \
./_drivers_/src/f1c100s_uart.d 


# Each subdirectory must supply rules for building sources it contributes
_drivers_/src/%.o: ../_drivers_/src/%.c _drivers_/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=arm926ej-s -march=armv5te -mthumb-interwork -mfloat-abi=soft -mtune=arm926ej-s -marm -Os -ffunction-sections -fdata-sections -ffreestanding -Wall -g -ggdb -D__ARM32_ARCH__=5 -D__ARM926EJS__ -DLOAD_HEADER -I"G:\eclipse_prj\blink\_arm926_\inc" -I"G:\eclipse_prj\blink\inc" -I"G:\eclipse_prj\blink\_drivers_\inc" -I"G:\eclipse_prj\blink\_lib_\inc" -std=gnu99 -fomit-frame-pointer -fverbose-asm -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


