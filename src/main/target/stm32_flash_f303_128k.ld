/*
*****************************************************************************
**
**  File        : stm32_flash.ld
**
**  Abstract    : Linker script for STM32F30x Device with
**                128KByte FLASH and 40KByte RAM
**
*****************************************************************************
*/

/* Specify the memory areas. */
MEMORY
{
  FLASH (rx)       : ORIGIN = 0x08000000, LENGTH = 124K
  FLASH_CONFIG (r) : ORIGIN = 0x0801F000, LENGTH = 4K

  RAM    (xrw)    : ORIGIN = 0x20000000, LENGTH = 40K
  MEMORY_B1 (rx)  : ORIGIN = 0x60000000, LENGTH = 0K
}

INCLUDE "stm32_flash.ld"
