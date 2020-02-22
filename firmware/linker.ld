MEMORY
{
    ITCM_FLASH (rx) : ORIGIN = 0x00200000, LENGTH = 0x00200000
    AXIM_FLASH (rx) : ORIGIN = 0x08000000, LENGTH = 0x00200000
    ITCM_RAM (rwx) : ORIGIN = 0x00000000, LENGTH = 0x00004000
    DTCM (rwx) : ORIGIN = 0x20000000, LENGTH = 0x00020000
    SRAM1 (rwx) : ORIGIN = 0x20020000, LENGTH = 0x0005C000
    SRAM2 (rwx) : ORIGIN = 0x2007C000, LENGTH = 0x00004000
}

SECTIONS
{
    .text :
    {
        _text = .;
        KEEP(*(.isr_vector_stack_val*))
        KEEP(*(.isr_vector*))
        *(.text*)
        *(.rodata*)
        _etext = .;
    } > ITCM_FLASH

    .ARM.exidx : AT(ADDR(.text) + SIZEOF(.text))
    {
        __exidx_start = .;
        *(.ARM.exidx* .gnu.linkonce.armexidx.*)
        __exidx_end = .;
    } > ITCM_FLASH

    .data : AT(ADDR(.ARM.exidx) + SIZEOF(.ARM.exidx))
    {
        _data = .;
        _ldata = LOADADDR (.data);
        *(vtable)
        *(.data*)
        _edata = .;
    } > ITCM_RAM

    .bss :
    {
        _bss = .;
        *(.bss*)
        *(COMMON)
        _ebss = .;
    } > ITCM_RAM
}
_estack = ORIGIN(ITCM_RAM) + LENGTH(ITCM_RAM);
