/*
*****************************************************************************
**
**  File        : stm32_flash.ld
**
**  Abstract    : Linker script for STM32F103RC Device with
**                256KByte FLASH, 48KByte RAM
**
*****************************************************************************
*/

/* Specify the memory areas. */
MEMORY
{
  FLASH (rx)       : ORIGIN = 0x08000000, LENGTH = 252K
  FLASH_CONFIG (r) : ORIGIN = 0x0803F000, LENGTH = 4K
  
  RAM (xrw)       : ORIGIN = 0x20000000, LENGTH = 48K
  MEMORY_B1 (rx)  : ORIGIN = 0x60000000, LENGTH = 0K
}

INCLUDE "stm32_flash.ld"
