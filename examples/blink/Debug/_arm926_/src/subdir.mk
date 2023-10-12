################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../_arm926_/src/cache-v5.S \
../_arm926_/src/start.S 

OBJS += \
./_arm926_/src/cache-v5.o \
./_arm926_/src/start.o 

S_UPPER_DEPS += \
./_arm926_/src/cache-v5.d \
./_arm926_/src/start.d 


# Each subdirectory must supply rules for building sources it contributes
_arm926_/src/%.o: ../_arm926_/src/%.S _arm926_/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross Assembler'
	arm-none-eabi-gcc -mcpu=arm926ej-s -march=armv5te -mthumb-interwork -mfloat-abi=soft -mtune=arm926ej-s -marm -Os -ffunction-sections -fdata-sections -ffreestanding -Wall -g -ggdb -x assembler-with-cpp -D__ARM32_ARCH__=5 -D__ARM926EJS__ -DLOAD_HEADER -I"G:\eclipse_prj\blink\_arm926_\inc" -I"G:\eclipse_prj\blink\inc" -I"G:\eclipse_prj\blink\_drivers_\inc" -I"G:\eclipse_prj\blink\_lib_\inc" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


