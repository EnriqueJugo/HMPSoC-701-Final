#include <stdio.h>
#include <system.h>
#include <altera_avalon_pio_regs.h>
#include "sys/alt_stdio.h"
#include "stdlib.h"

int main()
{
  alt_putstr("Hello from Nios II!\n");

  char buffer[16];  // buffer to hold the string form of the number
  int pd = 0;
  float freq = 0;

  ALT_CI_config_asp("00000000000000000000000000000000");

  while (1)
  {

	ALT_CI_ASP_CONFIG_0(A,B);
    itoa(freq, buffer, 10);  // convert int to string (base 10)
	alt_putstr("Peak Value: ");
	alt_putstr(buffer);
	alt_putstr("\n\r");

  }

  return 0;
}
