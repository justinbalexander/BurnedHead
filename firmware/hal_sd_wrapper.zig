const std = @import("std");

pub const c = @cImport({
    @cDefine("USE_HAL_DRIVER", "1");
    @cDefine("STM32F767xx", "1");
    @cDefine("SDMMC1", "1");
    @cDefine("HAL_SD_MODULE_ENABLED", "1");
    @cInclude("stm32f7xx_hal_sd.h");
});

pub fn init() void {
    c.HAL_SD_Init();
}
