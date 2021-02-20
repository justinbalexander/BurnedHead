ENTRY(Reset_Handler)

MEMORY
{
    ITCM_FLASH (rx) : ORIGIN = 0x00200000, LENGTH = 0x00200000
    AXIM_FLASH (rx) : ORIGIN = 0x08000000, LENGTH = 0x00200000
    ITCM_RAM (rwx) : ORIGIN = 0x00000000, LENGTH = 0x00004000
    DTCM (rwx) : ORIGIN = 0x20000000, LENGTH = 0x00020000
    SRAM1 (rwx) : ORIGIN = 0x20020000, LENGTH = 0x0005C000
    SRAM2 (rwx) : ORIGIN = 0x2007C000, LENGTH = 0x00004000
    SDRAM (rwx) : ORIGIN = 0xC0000000, LENGTH = 32M
}

SECTIONS
{
    .text :
    {
        . = ALIGN(4);
        _text = .;
        KEEP(*(.isr_vector*))
        KEEP (*(.init))
        KEEP (*(.fini))
        *(.text*)

        *(.glue_7)
        *(.glue_7t)
        *(.eh_frame)

        *(.rodata*)
        . = ALIGN(4);
        _etext = .;
    } > ITCM_FLASH

    .ARM.exidx :
    {
        __exidx_start = .;
        *(.ARM.exidx* .gnu.linkonce.armexidx.*)
        __exidx_end = .;
    } > ITCM_FLASH

    .preinit_array :
    {
        PROVIDE_HIDDEN (__preinit_array_start = .);
        KEEP (*(.preinit_array*))
        PROVIDE_HIDDEN (__preinit_array_end = .);
    } >ITCM_FLASH

    .init_array :
    {
        PROVIDE_HIDDEN (__init_array_start = .);
        KEEP (*(SORT(.init_array.*)))
        KEEP (*(.init_array*))
        PROVIDE_HIDDEN (__init_array_end = .);
    } >ITCM_FLASH

    .fini_array :
    {
        PROVIDE_HIDDEN (__fini_array_start = .);
        KEEP (*(SORT(.fini_array.*)))
        KEEP (*(.fini_array*))
        PROVIDE_HIDDEN (__fini_array_end = .);
    } >ITCM_FLASH

    .data :
    {
        . = ALIGN(4);
        _sidata = LOADADDR (.data);
        _sdata = .;
        *(.data*)
        . = ALIGN(4);
        _edata = .;
    } > SRAM2 AT> ITCM_FLASH

    .bss :
    {
        . = ALIGN(4);
        _sbss = .;
        *(.bss*)
        *(COMMON)
        . = ALIGN(4);
        _ebss = .;
    } > SRAM2
}
_estack = ORIGIN(SRAM2) + LENGTH(SRAM2);
_start_sdram = ORIGIN(SDRAM);
_end_sdram = ORIGIN(SDRAM) + LENGTH(SDRAM) - 1;
