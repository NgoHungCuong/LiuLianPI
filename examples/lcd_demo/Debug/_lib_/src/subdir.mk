################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../_lib_/src/printf.c \
../_lib_/src/syscalls.c 

OBJS += \
./_lib_/src/printf.o \
./_lib_/src/syscalls.o 

C_DEPS += \
./_lib_/src/printf.d \
./_lib_/src/syscalls.d 


# Each subdirectory must supply rules for building sources it contributes
_lib_/src/%.o: ../_lib_/src/%.c _lib_/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=arm926ej-s -march=armv5te -mthumb-interwork -mfloat-abi=soft -mtune=arm926ej-s -marm -Os -ffunction-sections -fdata-sections -ffreestanding -Wall -g -ggdb -D__ARM32_ARCH__=5 -D__ARM926EJS__ -DLOAD_HEADER -I"G:\eclipse_prj\lcd_demo\_arm926_\inc" -I"G:\eclipse_prj\lcd_demo\inc" -I"G:\eclipse_prj\lcd_demo\_drivers_\inc" -I"G:\eclipse_prj\lcd_demo\_lib_\inc" -std=gnu99 -fomit-frame-pointer -fverbose-asm -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


