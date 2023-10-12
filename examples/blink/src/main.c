#include "main.h"
#include <stdio.h>
#include <string.h>
#include <math.h>
#include "system.h"
#include "f1c100s_de.h"
#include "f1c100s_timer.h"
#include "f1c100s_intc.h"
#include "f1c100s_gpio.h"
#include "f1c100s_pwm.h"
#include "arm32.h"
#include "f1c100s.h"
#include "io.h"
#include "spi_flash.h"

void delay(uint32_t t);
void timer_init(void);

int main(void)
{
	system_init(); // Initialize clocks, mmu, cache, uart, ...
	arm32_interrupt_enable(); // Enable interrupts

	printf("Blink led!\r\n");

	gpio_pin_init(GPIOE, 4, GPIO_MODE_OUTPUT, GPIO_PULL_NONE, GPIO_DRV_3);
	gpio_pin_init(GPIOE, 5, GPIO_MODE_OUTPUT, GPIO_PULL_NONE, GPIO_DRV_3);
	gpio_pin_init(GPIOE, 6, GPIO_MODE_OUTPUT, GPIO_PULL_NONE, GPIO_DRV_3);

	timer_init();

	while (1)
	{
		gpio_pin_set(GPIOE, 4);
		gpio_pin_set(GPIOE, 5);
		gpio_pin_set(GPIOE, 6);
		delay(500);
		gpio_pin_clear(GPIOE, 4);
		gpio_pin_clear(GPIOE, 5);
		gpio_pin_clear(GPIOE, 6);
		delay(500);
	}

	return 0;
}

void timer_init(void)
{

	tim_init(TIM0, TIM_MODE_CONT, TIM_SRC_HOSC, TIM_PSC_1);
	tim_set_period(TIM0, 0xffffffff);
	tim_start(TIM0);
}

void delay(uint32_t t)
{
	uint32_t i;

	for (i = 0; i < t; ++i)
	{
		tim_set_cnt(TIM0, 24000);
		tim_clear_irq(TIM0);
		while ((tim_get_int_status() & 0x01) == 0x00)
		{
		}
	}
}
