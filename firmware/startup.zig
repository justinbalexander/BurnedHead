const std = @import("std");
const builtin = std.builtin;

const reg = @import("STM32F7x7.zig");
const main = @import("main.zig");

///****************************************************************************
/// These are symbols that the linker will provide. They will have the address
/// as indicated in the linker script.
///****************************************************************************
extern var _ldata: u8;
extern var _data: u8;
extern var _edata: u8;
extern var _bss: u8;
extern var _ebss: u8;

const IsrHandler = extern fn () void;

comptime {
    asm (
        \\  .section  .isr_vector_stack_val,"a",%progbits
        \\   
        \\  .word  _estack
    );
}

export const isrVectors linksection(".isr_vector") = [_]IsrHandler{
    @ptrCast(IsrHandler, Reset_Handler),
    NMI_Handler,
    HardFault_Handler,
    MemManage_Handler,
    BusFault_Handler,
    UsageFault_Handler,
    @intToPtr(IsrHandler, 4),
    @intToPtr(IsrHandler, 4),
    @intToPtr(IsrHandler, 4),
    @intToPtr(IsrHandler, 4),
    SVC_Handler,
    DebugMon_Handler,
    @intToPtr(IsrHandler, 4),
    PendSV_Handler,
    SysTick_Handler,

    // External Interrupts
    WWDG_IRQHandler, // Window WatchDog
    PVD_IRQHandler, // PVD through EXTI Line detection
    TAMP_STAMP_IRQHandler, // Tamper and TimeStamps through the EXTI line
    RTC_WKUP_IRQHandler, // RTC Wakeup through the EXTI line
    FLASH_IRQHandler, // FLASH
    RCC_IRQHandler, // RCC
    EXTI0_IRQHandler, // EXTI Line0
    EXTI1_IRQHandler, // EXTI Line1
    EXTI2_IRQHandler, // EXTI Line2
    EXTI3_IRQHandler, // EXTI Line3
    EXTI4_IRQHandler, // EXTI Line4
    DMA1_Stream0_IRQHandler, // DMA1 Stream 0
    DMA1_Stream1_IRQHandler, // DMA1 Stream 1
    DMA1_Stream2_IRQHandler, // DMA1 Stream 2
    DMA1_Stream3_IRQHandler, // DMA1 Stream 3
    DMA1_Stream4_IRQHandler, // DMA1 Stream 4
    DMA1_Stream5_IRQHandler, // DMA1 Stream 5
    DMA1_Stream6_IRQHandler, // DMA1 Stream 6
    ADC_IRQHandler, // ADC1, ADC2 and ADC3s
    CAN1_TX_IRQHandler, // CAN1 TX
    CAN1_RX0_IRQHandler, // CAN1 RX0
    CAN1_RX1_IRQHandler, // CAN1 RX1
    CAN1_SCE_IRQHandler, // CAN1 SCE
    EXTI9_5_IRQHandler, // External Line[9:5]s
    TIM1_BRK_TIM9_IRQHandler, // TIM1 Break and TIM9
    TIM1_UP_TIM10_IRQHandler, // TIM1 Update and TIM10
    TIM1_TRG_COM_TIM11_IRQHandler, // TIM1 Trigger and Commutation and TIM11
    TIM1_CC_IRQHandler, // TIM1 Capture Compare
    TIM2_IRQHandler, // TIM2
    TIM3_IRQHandler, // TIM3
    TIM4_IRQHandler, // TIM4
    I2C1_EV_IRQHandler, // I2C1 Event
    I2C1_ER_IRQHandler, // I2C1 Error
    I2C2_EV_IRQHandler, // I2C2 Event
    I2C2_ER_IRQHandler, // I2C2 Error
    SPI1_IRQHandler, // SPI1
    SPI2_IRQHandler, // SPI2
    USART1_IRQHandler, // USART1
    USART2_IRQHandler, // USART2
    USART3_IRQHandler, // USART3
    EXTI15_10_IRQHandler, // External Line[15:10]s
    RTC_Alarm_IRQHandler, // RTC Alarm (A and B) through EXTI Line
    OTG_FS_WKUP_IRQHandler, // USB OTG FS Wakeup through EXTI line
    TIM8_BRK_TIM12_IRQHandler, // TIM8 Break and TIM12
    TIM8_UP_TIM13_IRQHandler, // TIM8 Update and TIM13
    TIM8_TRG_COM_TIM14_IRQHandler, // TIM8 Trigger and Commutation and TIM14
    TIM8_CC_IRQHandler, // TIM8 Capture Compare
    DMA1_Stream7_IRQHandler, // DMA1 Stream7
    FMC_IRQHandler, // FMC
    SDMMC1_IRQHandler, // SDMMC1
    TIM5_IRQHandler, // TIM5
    SPI3_IRQHandler, // SPI3
    UART4_IRQHandler, // UART4
    UART5_IRQHandler, // UART5
    TIM6_DAC_IRQHandler, // TIM6 and DAC1&2 underrun errors
    TIM7_IRQHandler, // TIM7
    DMA2_Stream0_IRQHandler, // DMA2 Stream 0
    DMA2_Stream1_IRQHandler, // DMA2 Stream 1
    DMA2_Stream2_IRQHandler, // DMA2 Stream 2
    DMA2_Stream3_IRQHandler, // DMA2 Stream 3
    DMA2_Stream4_IRQHandler, // DMA2 Stream 4
    ETH_IRQHandler, // Ethernet
    ETH_WKUP_IRQHandler, // Ethernet Wakeup through EXTI line
    CAN2_TX_IRQHandler, // CAN2 TX
    CAN2_RX0_IRQHandler, // CAN2 RX0
    CAN2_RX1_IRQHandler, // CAN2 RX1
    CAN2_SCE_IRQHandler, // CAN2 SCE
    OTG_FS_IRQHandler, // USB OTG FS
    DMA2_Stream5_IRQHandler, // DMA2 Stream 5
    DMA2_Stream6_IRQHandler, // DMA2 Stream 6
    DMA2_Stream7_IRQHandler, // DMA2 Stream 7
    USART6_IRQHandler, // USART6
    I2C3_EV_IRQHandler, // I2C3 event
    I2C3_ER_IRQHandler, // I2C3 error
    OTG_HS_EP1_OUT_IRQHandler, // USB OTG HS End Point 1 Out
    OTG_HS_EP1_IN_IRQHandler, // USB OTG HS End Point 1 In
    OTG_HS_WKUP_IRQHandler, // USB OTG HS Wakeup through EXTI
    OTG_HS_IRQHandler, // USB OTG HS
    DCMI_IRQHandler, // DCMI
    @intToPtr(IsrHandler, 4), // Reserved
    RNG_IRQHandler, // RNG
    FPU_IRQHandler, // FPU
    UART7_IRQHandler, // UART7
    UART8_IRQHandler, // UART8
    SPI4_IRQHandler, // SPI4
    SPI5_IRQHandler, // SPI5
    SPI6_IRQHandler, // SPI6
    SAI1_IRQHandler, // SAI1
    LTDC_IRQHandler, // LTDC
    LTDC_ER_IRQHandler, // LTDC error
    DMA2D_IRQHandler, // DMA2D
    SAI2_IRQHandler, // SAI2
    QUADSPI_IRQHandler, // QUADSPI
    LPTIM1_IRQHandler, // LPTIM1
    CEC_IRQHandler, // HDMI_CEC
    I2C4_EV_IRQHandler, // I2C4 Event
    I2C4_ER_IRQHandler, // I2C4 Error
    SPDIF_RX_IRQHandler, // SPDIF_RX
    @intToPtr(IsrHandler, 4), // Reserved
    DFSDM1_FLT0_IRQHandler, // DFSDM1 Filter 0 global Interrupt
    DFSDM1_FLT1_IRQHandler, // DFSDM1 Filter 1 global Interrupt
    DFSDM1_FLT2_IRQHandler, // DFSDM1 Filter 2 global Interrupt
    DFSDM1_FLT3_IRQHandler, // DFSDM1 Filter 3 global Interrupt
    SDMMC2_IRQHandler, // SDMMC2
    CAN3_TX_IRQHandler, // CAN3 TX
    CAN3_RX0_IRQHandler, // CAN3 RX0
    CAN3_RX1_IRQHandler, // CAN3 RX1
    CAN3_SCE_IRQHandler, // CAN3 SCE
    JPEG_IRQHandler, // JPEG
    MDIOS_IRQHandler, // MDIOS
};

export fn Reset_Handler() callconv(.Naked) noreturn {
    const init_data_length = @ptrToInt(&_edata) - @ptrToInt(&_data);
    const init_data_slice = @ptrCast([*]u8, &_ldata)[0..init_data_length];
    var ram_data_slice = @ptrCast([*]u8, &_data)[0..init_data_length];
    std.mem.copy(u8, init_data_slice, ram_data_slice);

    const relocate_len = isrVectors[0..].len;
    const relocate_to = @intToPtr([*]u8, 0x04);
    const relocate_from = std.mem.toBytes(isrVectors);
    std.mem.copy(u8, relocate_to[0..relocate_len], relocate_from[0..relocate_len]);

    const bss_slice = @ptrCast([*]u8, &_bss)[0 .. @ptrToInt(&_ebss) - @ptrToInt(&_bss)];
    std.mem.set(u8, bss_slice, 0);

    if (builtin.abi == .eabihf) {
        // Set CP10 and CP11 Full Access
        var cpacr = reg.FPU_CPACR.CPACR.read();
        cpacr |= reg.FPU_CPACR.CPACR.CP.mask;
        reg.FPU_CPACR.CPACR.write(cpacr);
    }

    main.main();
}

inline fn Default_Handler() void {
    @breakpoint();
    while (true) {}
}

export fn NMI_Handler() void {
    Default_Handler();
}

export fn HardFault_Handler() void {
    Default_Handler();
}

export fn MemManage_Handler() void {
    Default_Handler();
}

export fn BusFault_Handler() void {
    Default_Handler();
}

export fn UsageFault_Handler() void {
    Default_Handler();
}

export fn SVC_Handler() void {
    Default_Handler();
}

export fn DebugMon_Handler() void {
    Default_Handler();
}

export fn PendSV_Handler() void {
    Default_Handler();
}

export fn SysTick_Handler() void {
    Default_Handler();
}

export fn WWDG_IRQHandler() void {
    Default_Handler();
}

export fn PVD_IRQHandler() void {
    Default_Handler();
}

export fn TAMP_STAMP_IRQHandler() void {
    Default_Handler();
}

export fn RTC_WKUP_IRQHandler() void {
    Default_Handler();
}

export fn FLASH_IRQHandler() void {
    Default_Handler();
}

export fn RCC_IRQHandler() void {
    Default_Handler();
}

export fn EXTI0_IRQHandler() void {
    Default_Handler();
}

export fn EXTI1_IRQHandler() void {
    Default_Handler();
}

export fn EXTI2_IRQHandler() void {
    Default_Handler();
}

export fn EXTI3_IRQHandler() void {
    Default_Handler();
}

export fn EXTI4_IRQHandler() void {
    Default_Handler();
}

export fn DMA1_Stream0_IRQHandler() void {
    Default_Handler();
}

export fn DMA1_Stream1_IRQHandler() void {
    Default_Handler();
}

export fn DMA1_Stream2_IRQHandler() void {
    Default_Handler();
}

export fn DMA1_Stream3_IRQHandler() void {
    Default_Handler();
}

export fn DMA1_Stream4_IRQHandler() void {
    Default_Handler();
}

export fn DMA1_Stream5_IRQHandler() void {
    Default_Handler();
}

export fn DMA1_Stream6_IRQHandler() void {
    Default_Handler();
}

export fn ADC_IRQHandler() void {
    Default_Handler();
}

export fn CAN1_TX_IRQHandler() void {
    Default_Handler();
}

export fn CAN1_RX0_IRQHandler() void {
    Default_Handler();
}

export fn CAN1_RX1_IRQHandler() void {
    Default_Handler();
}

export fn CAN1_SCE_IRQHandler() void {
    Default_Handler();
}

export fn EXTI9_5_IRQHandler() void {
    Default_Handler();
}

export fn TIM1_BRK_TIM9_IRQHandler() void {
    Default_Handler();
}

export fn TIM1_UP_TIM10_IRQHandler() void {
    Default_Handler();
}

export fn TIM1_TRG_COM_TIM11_IRQHandler() void {
    Default_Handler();
}

export fn TIM1_CC_IRQHandler() void {
    Default_Handler();
}

export fn TIM2_IRQHandler() void {
    Default_Handler();
}

export fn TIM3_IRQHandler() void {
    Default_Handler();
}

export fn TIM4_IRQHandler() void {
    Default_Handler();
}

export fn I2C1_EV_IRQHandler() void {
    Default_Handler();
}

export fn I2C1_ER_IRQHandler() void {
    Default_Handler();
}

export fn I2C2_EV_IRQHandler() void {
    Default_Handler();
}

export fn I2C2_ER_IRQHandler() void {
    Default_Handler();
}

export fn SPI1_IRQHandler() void {
    Default_Handler();
}

export fn SPI2_IRQHandler() void {
    Default_Handler();
}

export fn USART1_IRQHandler() void {
    Default_Handler();
}

export fn USART2_IRQHandler() void {
    Default_Handler();
}

export fn USART3_IRQHandler() void {
    Default_Handler();
}

export fn EXTI15_10_IRQHandler() void {
    Default_Handler();
}

export fn RTC_Alarm_IRQHandler() void {
    Default_Handler();
}

export fn OTG_FS_WKUP_IRQHandler() void {
    Default_Handler();
}

export fn TIM8_BRK_TIM12_IRQHandler() void {
    Default_Handler();
}

export fn TIM8_UP_TIM13_IRQHandler() void {
    Default_Handler();
}

export fn TIM8_TRG_COM_TIM14_IRQHandler() void {
    Default_Handler();
}

export fn TIM8_CC_IRQHandler() void {
    Default_Handler();
}

export fn DMA1_Stream7_IRQHandler() void {
    Default_Handler();
}

export fn FMC_IRQHandler() void {
    Default_Handler();
}

export fn SDMMC1_IRQHandler() void {
    Default_Handler();
}

export fn TIM5_IRQHandler() void {
    Default_Handler();
}

export fn SPI3_IRQHandler() void {
    Default_Handler();
}

export fn UART4_IRQHandler() void {
    Default_Handler();
}

export fn UART5_IRQHandler() void {
    Default_Handler();
}

export fn TIM6_DAC_IRQHandler() void {
    Default_Handler();
}

export fn TIM7_IRQHandler() void {
    Default_Handler();
}

export fn DMA2_Stream0_IRQHandler() void {
    Default_Handler();
}

export fn DMA2_Stream1_IRQHandler() void {
    Default_Handler();
}

export fn DMA2_Stream2_IRQHandler() void {
    Default_Handler();
}

export fn DMA2_Stream3_IRQHandler() void {
    Default_Handler();
}

export fn DMA2_Stream4_IRQHandler() void {
    Default_Handler();
}

export fn ETH_IRQHandler() void {
    Default_Handler();
}

export fn ETH_WKUP_IRQHandler() void {
    Default_Handler();
}

export fn CAN2_TX_IRQHandler() void {
    Default_Handler();
}

export fn CAN2_RX0_IRQHandler() void {
    Default_Handler();
}

export fn CAN2_RX1_IRQHandler() void {
    Default_Handler();
}

export fn CAN2_SCE_IRQHandler() void {
    Default_Handler();
}

export fn OTG_FS_IRQHandler() void {
    Default_Handler();
}

export fn DMA2_Stream5_IRQHandler() void {
    Default_Handler();
}

export fn DMA2_Stream6_IRQHandler() void {
    Default_Handler();
}

export fn DMA2_Stream7_IRQHandler() void {
    Default_Handler();
}

export fn USART6_IRQHandler() void {
    Default_Handler();
}

export fn I2C3_EV_IRQHandler() void {
    Default_Handler();
}

export fn I2C3_ER_IRQHandler() void {
    Default_Handler();
}

export fn OTG_HS_EP1_OUT_IRQHandler() void {
    Default_Handler();
}

export fn OTG_HS_EP1_IN_IRQHandler() void {
    Default_Handler();
}

export fn OTG_HS_WKUP_IRQHandler() void {
    Default_Handler();
}

export fn OTG_HS_IRQHandler() void {
    Default_Handler();
}

export fn DCMI_IRQHandler() void {
    Default_Handler();
}

export fn RNG_IRQHandler() void {
    Default_Handler();
}

export fn FPU_IRQHandler() void {
    Default_Handler();
}

export fn UART7_IRQHandler() void {
    Default_Handler();
}

export fn UART8_IRQHandler() void {
    Default_Handler();
}

export fn SPI4_IRQHandler() void {
    Default_Handler();
}

export fn SPI5_IRQHandler() void {
    Default_Handler();
}

export fn SPI6_IRQHandler() void {
    Default_Handler();
}

export fn SAI1_IRQHandler() void {
    Default_Handler();
}

export fn LTDC_IRQHandler() void {
    Default_Handler();
}

export fn LTDC_ER_IRQHandler() void {
    Default_Handler();
}

export fn DMA2D_IRQHandler() void {
    Default_Handler();
}

export fn SAI2_IRQHandler() void {
    Default_Handler();
}

export fn QUADSPI_IRQHandler() void {
    Default_Handler();
}

export fn LPTIM1_IRQHandler() void {
    Default_Handler();
}

export fn CEC_IRQHandler() void {
    Default_Handler();
}

export fn I2C4_EV_IRQHandler() void {
    Default_Handler();
}

export fn I2C4_ER_IRQHandler() void {
    Default_Handler();
}

export fn SPDIF_RX_IRQHandler() void {
    Default_Handler();
}

export fn DFSDM1_FLT0_IRQHandler() void {
    Default_Handler();
}

export fn DFSDM1_FLT1_IRQHandler() void {
    Default_Handler();
}

export fn DFSDM1_FLT2_IRQHandler() void {
    Default_Handler();
}

export fn DFSDM1_FLT3_IRQHandler() void {
    Default_Handler();
}

export fn SDMMC2_IRQHandler() void {
    Default_Handler();
}

export fn CAN3_TX_IRQHandler() void {
    Default_Handler();
}

export fn CAN3_RX0_IRQHandler() void {
    Default_Handler();
}

export fn CAN3_RX1_IRQHandler() void {
    Default_Handler();
}

export fn CAN3_SCE_IRQHandler() void {
    Default_Handler();
}

export fn JPEG_IRQHandler() void {
    Default_Handler();
}

export fn MDIOS_IRQHandler() void {
    Default_Handler();
}
