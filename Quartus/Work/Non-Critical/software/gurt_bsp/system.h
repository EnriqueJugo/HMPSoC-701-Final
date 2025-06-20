/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'cpu' in SOPC Builder design 'Nios_System_2A'
 * SOPC Builder design path: ../../Nios_System_2A.sopcinfo
 *
 * Generated: Mon Jun 09 00:11:37 NZST 2025
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x08010820
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000001
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0x1c
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x04000020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x1c
#define ALT_CPU_NAME "cpu"
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x04000000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x08010820
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000001
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0x1c
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x04000020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0x1c
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x04000000


/*
 * Custom instruction macros
 *
 */

#define ALT_CI_ASP_CONFIG_0(A,B) __builtin_custom_inii(ALT_CI_ASP_CONFIG_0_N,(A),(B))
#define ALT_CI_ASP_CONFIG_0_N 0x0
#define ALT_CI_RECEIVE_DATA_0(A,B) __builtin_custom_inii(ALT_CI_RECEIVE_DATA_0_N,(A),(B))
#define ALT_CI_RECEIVE_DATA_0_N 0x1


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_NEW_SDRAM_CONTROLLER
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_TIMER
#define __ALTERA_NIOS2_GEN2
#define __ASP_CONFIG
#define __RECEIVE_DATA


/*
 * LED_pio configuration
 *
 */

#define ALT_MODULE_CLASS_LED_pio altera_avalon_pio
#define LED_PIO_BASE 0x80110a0
#define LED_PIO_BIT_CLEARING_EDGE_REGISTER 0
#define LED_PIO_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LED_PIO_CAPTURE 0
#define LED_PIO_DATA_WIDTH 10
#define LED_PIO_DO_TEST_BENCH_WIRING 0
#define LED_PIO_DRIVEN_SIM_VALUE 0
#define LED_PIO_EDGE_TYPE "NONE"
#define LED_PIO_FREQ 50000000
#define LED_PIO_HAS_IN 0
#define LED_PIO_HAS_OUT 1
#define LED_PIO_HAS_TRI 0
#define LED_PIO_IRQ -1
#define LED_PIO_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LED_PIO_IRQ_TYPE "NONE"
#define LED_PIO_NAME "/dev/LED_pio"
#define LED_PIO_RESET_VALUE 0
#define LED_PIO_SPAN 16
#define LED_PIO_TYPE "altera_avalon_pio"


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone V"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart"
#define ALT_STDERR_BASE 0x80110b0
#define ALT_STDERR_DEV jtag_uart
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart"
#define ALT_STDIN_BASE 0x80110b0
#define ALT_STDIN_DEV jtag_uart
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart"
#define ALT_STDOUT_BASE 0x80110b0
#define ALT_STDOUT_DEV jtag_uart
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "Nios_System_2A"


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 32
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK HIGH_RES_TIMER


/*
 * hex_pio_0 configuration
 *
 */

#define ALT_MODULE_CLASS_hex_pio_0 altera_avalon_pio
#define HEX_PIO_0_BASE 0x8011080
#define HEX_PIO_0_BIT_CLEARING_EDGE_REGISTER 0
#define HEX_PIO_0_BIT_MODIFYING_OUTPUT_REGISTER 0
#define HEX_PIO_0_CAPTURE 0
#define HEX_PIO_0_DATA_WIDTH 8
#define HEX_PIO_0_DO_TEST_BENCH_WIRING 0
#define HEX_PIO_0_DRIVEN_SIM_VALUE 0
#define HEX_PIO_0_EDGE_TYPE "NONE"
#define HEX_PIO_0_FREQ 50000000
#define HEX_PIO_0_HAS_IN 0
#define HEX_PIO_0_HAS_OUT 1
#define HEX_PIO_0_HAS_TRI 0
#define HEX_PIO_0_IRQ -1
#define HEX_PIO_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define HEX_PIO_0_IRQ_TYPE "NONE"
#define HEX_PIO_0_NAME "/dev/hex_pio_0"
#define HEX_PIO_0_RESET_VALUE 0
#define HEX_PIO_0_SPAN 16
#define HEX_PIO_0_TYPE "altera_avalon_pio"


/*
 * hex_pio_1 configuration
 *
 */

#define ALT_MODULE_CLASS_hex_pio_1 altera_avalon_pio
#define HEX_PIO_1_BASE 0x8011070
#define HEX_PIO_1_BIT_CLEARING_EDGE_REGISTER 0
#define HEX_PIO_1_BIT_MODIFYING_OUTPUT_REGISTER 0
#define HEX_PIO_1_CAPTURE 0
#define HEX_PIO_1_DATA_WIDTH 8
#define HEX_PIO_1_DO_TEST_BENCH_WIRING 0
#define HEX_PIO_1_DRIVEN_SIM_VALUE 0
#define HEX_PIO_1_EDGE_TYPE "NONE"
#define HEX_PIO_1_FREQ 50000000
#define HEX_PIO_1_HAS_IN 0
#define HEX_PIO_1_HAS_OUT 1
#define HEX_PIO_1_HAS_TRI 0
#define HEX_PIO_1_IRQ -1
#define HEX_PIO_1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define HEX_PIO_1_IRQ_TYPE "NONE"
#define HEX_PIO_1_NAME "/dev/hex_pio_1"
#define HEX_PIO_1_RESET_VALUE 0
#define HEX_PIO_1_SPAN 16
#define HEX_PIO_1_TYPE "altera_avalon_pio"


/*
 * hex_pio_2 configuration
 *
 */

#define ALT_MODULE_CLASS_hex_pio_2 altera_avalon_pio
#define HEX_PIO_2_BASE 0x8011060
#define HEX_PIO_2_BIT_CLEARING_EDGE_REGISTER 0
#define HEX_PIO_2_BIT_MODIFYING_OUTPUT_REGISTER 0
#define HEX_PIO_2_CAPTURE 0
#define HEX_PIO_2_DATA_WIDTH 8
#define HEX_PIO_2_DO_TEST_BENCH_WIRING 0
#define HEX_PIO_2_DRIVEN_SIM_VALUE 0
#define HEX_PIO_2_EDGE_TYPE "NONE"
#define HEX_PIO_2_FREQ 50000000
#define HEX_PIO_2_HAS_IN 0
#define HEX_PIO_2_HAS_OUT 1
#define HEX_PIO_2_HAS_TRI 0
#define HEX_PIO_2_IRQ -1
#define HEX_PIO_2_IRQ_INTERRUPT_CONTROLLER_ID -1
#define HEX_PIO_2_IRQ_TYPE "NONE"
#define HEX_PIO_2_NAME "/dev/hex_pio_2"
#define HEX_PIO_2_RESET_VALUE 0
#define HEX_PIO_2_SPAN 16
#define HEX_PIO_2_TYPE "altera_avalon_pio"


/*
 * hex_pio_3 configuration
 *
 */

#define ALT_MODULE_CLASS_hex_pio_3 altera_avalon_pio
#define HEX_PIO_3_BASE 0x8011050
#define HEX_PIO_3_BIT_CLEARING_EDGE_REGISTER 0
#define HEX_PIO_3_BIT_MODIFYING_OUTPUT_REGISTER 0
#define HEX_PIO_3_CAPTURE 0
#define HEX_PIO_3_DATA_WIDTH 8
#define HEX_PIO_3_DO_TEST_BENCH_WIRING 0
#define HEX_PIO_3_DRIVEN_SIM_VALUE 0
#define HEX_PIO_3_EDGE_TYPE "NONE"
#define HEX_PIO_3_FREQ 50000000
#define HEX_PIO_3_HAS_IN 0
#define HEX_PIO_3_HAS_OUT 1
#define HEX_PIO_3_HAS_TRI 0
#define HEX_PIO_3_IRQ -1
#define HEX_PIO_3_IRQ_INTERRUPT_CONTROLLER_ID -1
#define HEX_PIO_3_IRQ_TYPE "NONE"
#define HEX_PIO_3_NAME "/dev/hex_pio_3"
#define HEX_PIO_3_RESET_VALUE 0
#define HEX_PIO_3_SPAN 16
#define HEX_PIO_3_TYPE "altera_avalon_pio"


/*
 * hex_pio_4 configuration
 *
 */

#define ALT_MODULE_CLASS_hex_pio_4 altera_avalon_pio
#define HEX_PIO_4_BASE 0x8011040
#define HEX_PIO_4_BIT_CLEARING_EDGE_REGISTER 0
#define HEX_PIO_4_BIT_MODIFYING_OUTPUT_REGISTER 0
#define HEX_PIO_4_CAPTURE 0
#define HEX_PIO_4_DATA_WIDTH 8
#define HEX_PIO_4_DO_TEST_BENCH_WIRING 0
#define HEX_PIO_4_DRIVEN_SIM_VALUE 0
#define HEX_PIO_4_EDGE_TYPE "NONE"
#define HEX_PIO_4_FREQ 50000000
#define HEX_PIO_4_HAS_IN 0
#define HEX_PIO_4_HAS_OUT 1
#define HEX_PIO_4_HAS_TRI 0
#define HEX_PIO_4_IRQ -1
#define HEX_PIO_4_IRQ_INTERRUPT_CONTROLLER_ID -1
#define HEX_PIO_4_IRQ_TYPE "NONE"
#define HEX_PIO_4_NAME "/dev/hex_pio_4"
#define HEX_PIO_4_RESET_VALUE 0
#define HEX_PIO_4_SPAN 16
#define HEX_PIO_4_TYPE "altera_avalon_pio"


/*
 * hex_pio_5 configuration
 *
 */

#define ALT_MODULE_CLASS_hex_pio_5 altera_avalon_pio
#define HEX_PIO_5_BASE 0x8011030
#define HEX_PIO_5_BIT_CLEARING_EDGE_REGISTER 0
#define HEX_PIO_5_BIT_MODIFYING_OUTPUT_REGISTER 0
#define HEX_PIO_5_CAPTURE 0
#define HEX_PIO_5_DATA_WIDTH 8
#define HEX_PIO_5_DO_TEST_BENCH_WIRING 0
#define HEX_PIO_5_DRIVEN_SIM_VALUE 0
#define HEX_PIO_5_EDGE_TYPE "NONE"
#define HEX_PIO_5_FREQ 50000000
#define HEX_PIO_5_HAS_IN 0
#define HEX_PIO_5_HAS_OUT 1
#define HEX_PIO_5_HAS_TRI 0
#define HEX_PIO_5_IRQ -1
#define HEX_PIO_5_IRQ_INTERRUPT_CONTROLLER_ID -1
#define HEX_PIO_5_IRQ_TYPE "NONE"
#define HEX_PIO_5_NAME "/dev/hex_pio_5"
#define HEX_PIO_5_RESET_VALUE 0
#define HEX_PIO_5_SPAN 16
#define HEX_PIO_5_TYPE "altera_avalon_pio"


/*
 * high_res_timer configuration
 *
 */

#define ALT_MODULE_CLASS_high_res_timer altera_avalon_timer
#define HIGH_RES_TIMER_ALWAYS_RUN 0
#define HIGH_RES_TIMER_BASE 0x8011000
#define HIGH_RES_TIMER_COUNTER_SIZE 32
#define HIGH_RES_TIMER_FIXED_PERIOD 0
#define HIGH_RES_TIMER_FREQ 50000000
#define HIGH_RES_TIMER_IRQ 0
#define HIGH_RES_TIMER_IRQ_INTERRUPT_CONTROLLER_ID 0
#define HIGH_RES_TIMER_LOAD_VALUE 49999
#define HIGH_RES_TIMER_MULT 0.001
#define HIGH_RES_TIMER_NAME "/dev/high_res_timer"
#define HIGH_RES_TIMER_PERIOD 1
#define HIGH_RES_TIMER_PERIOD_UNITS "ms"
#define HIGH_RES_TIMER_RESET_OUTPUT 0
#define HIGH_RES_TIMER_SNAPSHOT 1
#define HIGH_RES_TIMER_SPAN 32
#define HIGH_RES_TIMER_TICKS_PER_SEC 1000
#define HIGH_RES_TIMER_TIMEOUT_PULSE_OUTPUT 0
#define HIGH_RES_TIMER_TYPE "altera_avalon_timer"


/*
 * jtag_uart configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart altera_avalon_jtag_uart
#define JTAG_UART_BASE 0x80110b0
#define JTAG_UART_IRQ 1
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/jtag_uart"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8


/*
 * key_pio configuration
 *
 */

#define ALT_MODULE_CLASS_key_pio altera_avalon_pio
#define KEY_PIO_BASE 0x8011090
#define KEY_PIO_BIT_CLEARING_EDGE_REGISTER 0
#define KEY_PIO_BIT_MODIFYING_OUTPUT_REGISTER 0
#define KEY_PIO_CAPTURE 1
#define KEY_PIO_DATA_WIDTH 4
#define KEY_PIO_DO_TEST_BENCH_WIRING 0
#define KEY_PIO_DRIVEN_SIM_VALUE 0
#define KEY_PIO_EDGE_TYPE "RISING"
#define KEY_PIO_FREQ 50000000
#define KEY_PIO_HAS_IN 1
#define KEY_PIO_HAS_OUT 0
#define KEY_PIO_HAS_TRI 0
#define KEY_PIO_IRQ 2
#define KEY_PIO_IRQ_INTERRUPT_CONTROLLER_ID 0
#define KEY_PIO_IRQ_TYPE "EDGE"
#define KEY_PIO_NAME "/dev/key_pio"
#define KEY_PIO_RESET_VALUE 0
#define KEY_PIO_SPAN 16
#define KEY_PIO_TYPE "altera_avalon_pio"


/*
 * onchip_memory configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_memory altera_avalon_onchip_memory2
#define ONCHIP_MEMORY_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_MEMORY_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEMORY_BASE 0x8008000
#define ONCHIP_MEMORY_CONTENTS_INFO ""
#define ONCHIP_MEMORY_DUAL_PORT 0
#define ONCHIP_MEMORY_GUI_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY_INIT_CONTENTS_FILE "Nios_System_2A_onchip_memory"
#define ONCHIP_MEMORY_INIT_MEM_CONTENT 1
#define ONCHIP_MEMORY_INSTANCE_ID "NONE"
#define ONCHIP_MEMORY_IRQ -1
#define ONCHIP_MEMORY_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_MEMORY_NAME "/dev/onchip_memory"
#define ONCHIP_MEMORY_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_MEMORY_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_MEMORY_SINGLE_CLOCK_OP 0
#define ONCHIP_MEMORY_SIZE_MULTIPLE 1
#define ONCHIP_MEMORY_SIZE_VALUE 20480
#define ONCHIP_MEMORY_SPAN 20480
#define ONCHIP_MEMORY_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_MEMORY_WRITABLE 1


/*
 * sdram configuration
 *
 */

#define ALT_MODULE_CLASS_sdram altera_avalon_new_sdram_controller
#define SDRAM_BASE 0x4000000
#define SDRAM_CAS_LATENCY 3
#define SDRAM_CONTENTS_INFO
#define SDRAM_INIT_NOP_DELAY 0.0
#define SDRAM_INIT_REFRESH_COMMANDS 2
#define SDRAM_IRQ -1
#define SDRAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SDRAM_IS_INITIALIZED 1
#define SDRAM_NAME "/dev/sdram"
#define SDRAM_POWERUP_DELAY 100.0
#define SDRAM_REFRESH_PERIOD 7.8125
#define SDRAM_REGISTER_DATA_IN 1
#define SDRAM_SDRAM_ADDR_WIDTH 0x19
#define SDRAM_SDRAM_BANK_WIDTH 2
#define SDRAM_SDRAM_COL_WIDTH 10
#define SDRAM_SDRAM_DATA_WIDTH 16
#define SDRAM_SDRAM_NUM_BANKS 4
#define SDRAM_SDRAM_NUM_CHIPSELECTS 1
#define SDRAM_SDRAM_ROW_WIDTH 13
#define SDRAM_SHARED_DATA 0
#define SDRAM_SIM_MODEL_BASE 0
#define SDRAM_SPAN 67108864
#define SDRAM_STARVATION_INDICATOR 0
#define SDRAM_TRISTATE_BRIDGE_SLAVE ""
#define SDRAM_TYPE "altera_avalon_new_sdram_controller"
#define SDRAM_T_AC 5.4
#define SDRAM_T_MRD 3
#define SDRAM_T_RCD 15.0
#define SDRAM_T_RFC 70.0
#define SDRAM_T_RP 15.0
#define SDRAM_T_WR 14.0


/*
 * sw_pio configuration
 *
 */

#define ALT_MODULE_CLASS_sw_pio altera_avalon_pio
#define SW_PIO_BASE 0x8011020
#define SW_PIO_BIT_CLEARING_EDGE_REGISTER 0
#define SW_PIO_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SW_PIO_CAPTURE 1
#define SW_PIO_DATA_WIDTH 10
#define SW_PIO_DO_TEST_BENCH_WIRING 0
#define SW_PIO_DRIVEN_SIM_VALUE 0
#define SW_PIO_EDGE_TYPE "RISING"
#define SW_PIO_FREQ 50000000
#define SW_PIO_HAS_IN 1
#define SW_PIO_HAS_OUT 0
#define SW_PIO_HAS_TRI 0
#define SW_PIO_IRQ -1
#define SW_PIO_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SW_PIO_IRQ_TYPE "NONE"
#define SW_PIO_NAME "/dev/sw_pio"
#define SW_PIO_RESET_VALUE 0
#define SW_PIO_SPAN 16
#define SW_PIO_TYPE "altera_avalon_pio"

#endif /* __SYSTEM_H_ */
