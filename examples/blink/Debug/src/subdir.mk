################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/exception.c \
../src/main.c \
../src/spi_flash.c \
../src/system.c 

OBJS += \
./src/exception.o \
./src/main.o \
./src/spi_flash.o \
./src/system.o 

C_DEPS += \
./src/exception.d \
./src/main.d \
./src/spi_flash.d \
./src/system.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=arm926ej-s -march=armv5te -mthumb-interwork -mfloat-abi=soft -mtune=arm926ej-s -marm -Os -ffunction-sections -fdata-sections -ffreestanding -Wall -g -ggdb -D__ARM32_ARCH__=5 -D__ARM926EJS__ -DLOAD_HEADER -I"G:\eclipse_prj\blink\_arm926_\inc" -I"G:\eclipse_prj\blink\inc" -I"G:\eclipse_prj\blink\_drivers_\inc" -I"G:\eclipse_prj\blink\_lib_\inc" -std=gnu99 -fomit-frame-pointer -fverbose-asm -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


