/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include "system.h"
#include "altera_avalon_pio_regs.h"
#include "altera_avalon_timer_regs.h"
#include "sys/alt_timestamp.h"

char sevenSeg(char num);


int main()
{
  printf("Yo!\n");
	IOWR_ALTERA_AVALON_PIO_DATA(HEX_PIO_2_BASE, sevenSeg(1));
	IOWR_ALTERA_AVALON_PIO_DATA(HEX_PIO_3_BASE, sevenSeg(2));

  return 0;
}

char sevenSeg(char num)
{
	switch(num)
	{
	case 0:
		return 0xC0;
	case 1:
		return 0xF9;
	case 2 :
		return 0xA4;
	case 3:
		return 0xB0;
	case 4 :
		return 0x99;
	case 5 :
		return 0x92;
	case 6:
		return 0x82;
	case 7:
		return 0xF8;
	case 8:
		return 0x80;
	case 9:
		return 0x90;
	default:
		return 0xFF;
	}
}
