/*
 * Copyright 2013-2014 Jonas Zaddach <zaddach@eurecom.fr>, EURECOM
 *
 * You can redistribute and/or modify this program under the terms of the
 * GNU General Public License version 2 or later.
 */

OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
OUTPUT_ARCH(arm)
ENTRY(_start)
SECTIONS
{
    . = 0x80000000 ;  
    _gdb_stub_start = .;
/*    . = 0x359E00 ;   */
    .text         : { *(.vect) *(.text) }
    .data         : { *(.data) }
    .bss          : { *(.bss) }
    _gdb_stub_end = .;
}
