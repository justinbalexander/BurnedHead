const cm = @import("zig-cortex/v7m.zig");
const std = @import("std");
const gpio = @import("gpio.zig");
const reg = @import("STM32F7x7.zig");

const Pllp = enum(u2) {
    PLLP_2 = 0,
    PLLP_4 = 1,
    PLLP_6 = 2,
    PLLP_8 = 3,
};

pub const xtal = 8000000;
const max_vco_input_freq = 2000000;
const vco_input_freq = 2000000;
const pllm = (xtal + max_vco_input_freq - 1) / vco_input_freq;
const plln = pllclk / vco_input_freq;
const pllp = Pllp.PLLP_2;
const pllr = 7; // don't care, dsi clock
const pllq = pllclk / sdmmc1_clock;
const pllsain = 192;
const pllsaiq = 2; // don't care
const pllsair = 2;
const pllsaip = Pllp.PLLP_8; // don't care, more division == less power
const pllclk = 432000000;

pub const sysclk = pllclk / 2;
pub const hclk = sysclk;
pub const system_timer_clock = hclk / 8;
pub const fclk = hclk;
pub const ahb_prescaler = 1;
const ahb_prescaler_setting = 0;
pub const apb1_prescaler = 4;
const apb1_prescaler_setting = 5;
pub const apb1_peripheral_clock = hclk / apb1_prescaler;
pub const apb1_timer_clock = apb1_peripheral_clock * 2;
pub const apb2_prescaler = 2;
const apb2_prescaler_setting = 4;
pub const apb2_peripheral_clock = hclk / apb2_prescaler;
pub const apb2_timer_clock = apb2_peripheral_clock * 2;
pub const sdmmc1_clock = 48000000; // max sdmmc1 frequency
pub const lcd_clock = (((vco_input_freq * pllsain) / pllsair) / 2);
// TODO: assert at compile time

pub const sys_tick_priority = 15;

pub fn init() void {
    cm.ICache.enable();
    cm.DCache.enable();
    // all bits to priority groups, no sub-priority bits
    cm.PriorityBitsGrouping.set(.GroupPriorityBits_4);
    initSysTick();
    initClocks();
    gpio.init();
}

fn initSysTick() void {
    cm.SysTick.config(.External, true, true, (xtal / 1000) - 1);
    cm.Exceptions.SysTickHandler.setPriority(sys_tick_priority);
}

fn initClocks() void {
    // enable clock for power controller so
    // it can control the voltage scaling once
    // pll is enabled
    reg.RCC_APB1ENR_Ptr.* |= reg.RCC_APB1ENR_PWREN(1);
    // using HSE, enable first in bypass mode for resonator
    // See "Entering Over-drive mode" RM0410
    reg.RCC_CR_Ptr.* |= reg.RCC_CR_HSEBYP(1) | reg.RCC_CR_HSEON(1);
    // set VOS to scale 1, highest power consumption and performance
    reg.PWR_CR1_Ptr.* = (reg.PWR_CR1_Ptr.* & ~@as(u32, reg.PWR_CR1_VOS_Mask)) | reg.PWR_CR1_VOS(3);

    var pllcfgr = reg.RCC_PLLCFGR_Ptr.*;
    pllcfgr &= ~@as(u32, reg.RCC_PLLCFGR_Write_Mask);
    reg.RCC_PLLCFGR_Ptr.* |=
        pllcfgr |
        reg.RCC_PLLCFGR_PLLM(pllm) |
        reg.RCC_PLLCFGR_PLLR(pllr) |
        reg.RCC_PLLCFGR_PLLQ(pllq) |
        reg.RCC_PLLCFGR_PLLSRC(1) | // hse
        reg.RCC_PLLCFGR_PLLP(@enumToInt(pllp)) |
        reg.RCC_PLLCFGR_PLLN(plln);

    var pllsaicfgr = reg.RCC_PLLSAICFGR_Ptr.*;
    pllcfgr &= ~@as(u32, reg.RCC_PLLSAICFGR_Write_Mask);
    reg.RCC_PLLSAICFGR_Ptr.* |=
        pllsaicfgr |
        reg.RCC_PLLSAICFGR_PLLSAIR(pllsair) |
        reg.RCC_PLLSAICFGR_PLLSAIQ(pllsaiq) |
        reg.RCC_PLLSAICFGR_PLLSAIP(@enumToInt(pllsaip)) |
        reg.RCC_PLLSAICFGR_PLLSAIN(pllsain);

    var ded_clock_1 = reg.RCC_DCKCFGR1_Ptr.*;
    ded_clock_1 &= ~@as(u32, reg.RCC_DCKCFGR1_Write_Mask);
    ded_clock_1 &= ~@as(u32, reg.RCC_DCKCFGR1_PLLSAIDIVR_Mask);
    reg.RCC_DCKCFGR1_Ptr.* =
        ded_clock_1 |
        reg.RCC_DCKCFGR1_PLLSAIDIVR(@enumToInt(Pllp.PLLP_2));

    var ded_clock_2 = reg.RCC_DCKCFGR2_Ptr.*;
    ded_clock_2 &= ~@as(u32, reg.RCC_DCKCFGR2_Write_Mask);
    reg.RCC_DCKCFGR2_Ptr.* =
        ded_clock_2 |
        reg.RCC_DCKCFGR2_SDMMC1SEL(0) | // 48MHz Clock
        reg.RCC_DCKCFGR2_CK48MSEL(0); // 48MHz Clock from PLL
    // enable pll
    reg.RCC_CR_Ptr.* |= reg.RCC_CR_PLLON(1) | reg.RCC_CR_PLLSAION(1);
    // enable overdrive, wait for ready
    reg.PWR_CR1_Ptr.* |= reg.PWR_CR1_ODEN(1);
    while ((reg.PWR_CSR1_Ptr.* & reg.PWR_CSR1_ODRDY_Mask) == 0) {}
    // do overdrive switch, wait for completion
    reg.PWR_CR1_Ptr.* |= reg.PWR_CR1_ODSWEN(1);
    while ((reg.PWR_CSR1_Ptr.* & reg.PWR_CSR1_ODSWRDY_Mask) == 0) {}
    // select required flash latency
    // enable ART Accelerator and prefetch buffer, only for flash on ITCM
    const acr_value = reg.Flash_ACR_ARTEN_Mask |
        reg.Flash_ACR_PRFTEN_Mask |
        reg.Flash_ACR_LATENCY(hclkToWaitStates(hclk));
    while (reg.Flash_ACR_Ptr.* != acr_value) {
        // check that new number of wait states is taken into account
        reg.Flash_ACR_Ptr.* = acr_value;
    }
    // set ahb, apb1, and apb2 prescaler
    reg.RCC_CFGR_Ptr.* |=
        reg.RCC_CFGR_PPRE2(apb2_prescaler_setting) |
        reg.RCC_CFGR_PPRE1(apb1_prescaler_setting) |
        reg.RCC_CFGR_HPRE(ahb_prescaler_setting);
    // wait for pll lock
    while ((reg.RCC_CR_Ptr.* & (reg.RCC_CR_PLLSAIRDY_Mask | reg.RCC_CR_PLLRDY_Mask)) != 0) {}
    // switch system clock to pll
    while ((reg.RCC_CFGR_Ptr.* & reg.RCC_CFGR_SWS_Mask) != reg.RCC_CFGR_SWS(2)) {
        reg.RCC_CFGR_Ptr.* =
            (reg.RCC_CFGR_Ptr.* & ~@as(u32, reg.RCC_CFGR_SW_Mask)) |
            reg.RCC_CFGR_SW(2);
    }
    // enable peripherals that are not generated by sytem pll
    // (lcd clock, sdmmc clock, etc)
    reg.RCC_AHB1ENR_Ptr.* |=
        reg.RCC_AHB1ENR_DMA2DEN(1) |
        reg.RCC_AHB1ENR_GPIOAEN(1) |
        reg.RCC_AHB1ENR_GPIOBEN(1) |
        reg.RCC_AHB1ENR_GPIOCEN(1) |
        reg.RCC_AHB1ENR_GPIODEN(1) |
        reg.RCC_AHB1ENR_GPIOEEN(1) |
        reg.RCC_AHB1ENR_GPIOFEN(1) |
        reg.RCC_AHB1ENR_GPIOGEN(1) |
        reg.RCC_AHB1ENR_GPIOHEN(1) |
        reg.RCC_AHB1ENR_GPIOIEN(1) |
        reg.RCC_AHB1ENR_GPIOJEN(1) |
        reg.RCC_AHB1ENR_GPIOKEN(1);
    reg.RCC_AHB2ENR_Ptr.* |=
        reg.RCC_AHB2ENR_RNGEN(1) |
        reg.RCC_AHB2ENR_JPEGEN(0); // TODO: use in graphics pipeline?
    reg.RCC_AHB3ENR_Ptr.* |=
        reg.RCC_AHB3ENR_FMCEN(1);
    reg.RCC_APB1ENR_Ptr.* |=
        reg.RCC_APB1ENR_DACEN(1) |
        reg.RCC_APB1ENR_TIM2EN(0) |
        reg.RCC_APB1ENR_TIM3EN(0) |
        reg.RCC_APB1ENR_TIM4EN(0) |
        reg.RCC_APB1ENR_TIM5EN(0) |
        reg.RCC_APB1ENR_TIM6EN(0) |
        reg.RCC_APB1ENR_TIM7EN(0) |
        reg.RCC_APB1ENR_TIM12EN(0) |
        reg.RCC_APB1ENR_TIM13EN(0) |
        reg.RCC_APB1ENR_TIM14EN(0) |
        reg.RCC_APB1ENR_LPTIM1EN(0);
    reg.RCC_APB2ENR_Ptr.* |=
        reg.RCC_APB2ENR_LTDCEN(1) |
        reg.RCC_APB2ENR_TIM1EN(0) |
        reg.RCC_APB2ENR_TIM8EN(0) |
        reg.RCC_APB2ENR_TIM9EN(0) |
        reg.RCC_APB2ENR_TIM10EN(0) |
        reg.RCC_APB2ENR_TIM11EN(0) |
        reg.RCC_APB2ENR_SDMMC1EN(1) |
        reg.RCC_APB2ENR_ADC2EN(1);
}

/// This function assumes Vcc of 2.7V - 3.6V
fn hclkToWaitStates(comptime clk: comptime_int) u4 {
    if (clk <= 30000000) {
        return 0;
    } else if (clk <= 60000000) {
        return 1;
    } else if (clk <= 90000000) {
        return 2;
    } else if (clk <= 120000000) {
        return 3;
    } else if (clk <= 150000000) {
        return 4;
    } else if (clk <= 180000000) {
        return 5;
    } else if (clk <= 210000000) {
        return 6;
    } else {
        return 7;
    }
}
