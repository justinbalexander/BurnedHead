const std = @import("std");
const reg = @import("STM32F7x7.zig");

const InitialPinSettings = struct {
    pin: Pin,
    set: bool = false,
    mode: Mode = .Input,
    speed: Speed = .Low,
    output_type: OutputType = .PushPull,
    pull: Pull = .None,
    af: AlternateFunction = 0,
};

pub fn init() void {
    for (initial_settings) |setting| {
        if (setting.set)
            Pin.set(setting.pin)
        else
            Pin.clear(setting.pin);
        Pin.setSpeed(setting.pin, setting.speed);
        Pin.setOutputType(setting.pin, setting.output_type);
        Pin.setAlternateFunction(setting.pin, setting.af);
        Pin.setPull(setting.pin, setting.pull);
        Pin.setMode(setting.pin, setting.mode);
    }
}

pub const Mode = enum(u2) {
    Input, Output, Alternate, Analog
};

pub const Speed = enum(u2) {
    Low, Medium, High, VeryHigh
};

pub const OutputType = enum(u1) {
    PushPull, OpenDrain
};

pub const Pull = enum(u2) {
    None, Up, Down, Reserved
};

pub const AlternateFunction = u4;

// zig fmt: off
pub const Pin = enum(u8) {
    // Port A,
    BUT_RSTICK = 0,
    LCD_NRESET,
    LCD_DIM,
    LCD_B5,
    LCD_VSYNC,
    AUDIO,
    LCD_G2,
    SDNWE,
    LCD_R6,
    LCD_R5,
    LCD_B4,
    LCD_R4,
    BATT_STAT,
    SWDIO,
    SWCLK,
    BUT_LTRIG,
    // Port B,
    LCD_R3 = 16,
    nSPKR_OFF,
    PB2_NC,
    SWO,
    PB4_NC,
    PB5_NC,
    PB6_NC,
    PB7_NC,
    LCD_B6,
    LCD_B7,
    LCD_G4,
    LCD_G5,
    BUT_LSTICK,
    POWER_EN,
    BUT_D,
    BUT_L,
    // Port C
    LEFT_STICK_X = 32,
    LEFT_STICK_Y,
    RIGHT_STICK_X,
    RIGHT_STICK_Y,
    SDNCS,
    SDCKE,
    LCD_HSYNC,
    LCD_G6,
    SDMMC_D0,
    SDMMC_D1,
    SDMMC_D2,
    SDMMC_D3,
    SDMMC_CK,
    PC13_NC,
    PC14_NC,
    SDMMC_DETECT,
    // Port D
    D2 = 48,
    D3,
    SDMMC_CMD,
    LCD_G7,
    PD4_NC,
    PD5_NC,
    PD6_NC,
    PD7_NC,
    D13,
    D14,
    D15,
    PD11_NC,
    BUT_R,
    BUT_U,
    D0,
    D1,
    // Port E
    DQM0 = 64,
    DQM1,
    BUT_SEL,
    BUT_START,
    BUT_RTRIG,
    PE5_NC,
    PE6_NC,
    D4,
    D5,
    D6,
    D7,
    D8,
    D9,
    D10,
    D11,
    D12,
    // Port F
    A0 = 80,
    A1,
    A2,
    A3,
    A4,
    A5,
    BUT_Y,
    BUT_X,
    BUT_B,
    BUT_A,
    LCD_DE,
    SDNRAS,
    A6,
    A7,
    A8,
    A9,
    // Port G
    A10 = 96,
    A11,
    A12,
    ON_SWITCH_5V,
    BA0,
    BA1,
    LCD_R7,
    LCD_CLK,
    SDCLK,
    PG9_NC,
    LCD_G3,
    LCD_B3,
    PG12_NC,
    PG13_NC,
    PG14_NC,
    SDNCAS,

    const Self = @This();
    pub const max_value = @enumToInt(Self.SDNCAS);

    pub fn get(self: Self) bool {
        const integer = @enumToInt(self);
        const port = integer / 16;
        const pin = integer % 16;
        const register = input_data_registers[port];
        return (@as(u32, 0x1) << @as(u5, pin)) > 0;
    }

    pub fn set(self: Self) void {
        setByInteger(@enumToInt(self));
    }

    pub fn setByInteger(integer: u8) void {
        if (integer > Self.max_value) return;
        const port = integer / 16;
        const pin = integer % 16;
        const register = set_clear_registers[port];
        register.* = @as(u32, 0x1) << @intCast(u5, pin);
    }

    pub fn clear(self: Self) void {
        clearByInteger(@enumToInt(self));
    }

    pub fn clearByInteger(integer: u8) void {
        if (integer > Self.max_value) return;
        const port = integer / 16;
        const pin = integer % 16;
        const register = set_clear_registers[port];
        register.* = @as(u32, 0x1) << @intCast(u5, pin + 16);
    }

    pub fn setMode(self: Self, mode: Mode) void {
        setModeByInteger(@enumToInt(self), mode);
    }

    pub fn setModeByInteger(integer: u8, mode: Mode) void{
        if (integer > Self.max_value) return;
        const port = integer / 16;
        const pin = integer % 16;
        const register = mode_registers[port];
        const shift = @intCast(u5, pin * 2);

        const mode_num: u32 = @enumToInt(mode);

        register.* = (register.* & ~(@as(u32,0x3) << shift )) | (mode_num << shift);
    }

    pub fn setOutputType(self: Self, output_type: OutputType) void {
        setOutputTypeByInteger(@enumToInt(self), output_type);
    }

    pub fn setOutputTypeByInteger(integer: u8, output_type: OutputType) void {
        if (integer > Self.max_value) return;
        const port = integer / 16;
        const pin = integer % 16;
        const register = output_type_registers[port];
        const shift = @intCast(u5, pin);

        const type_num: u32 = @enumToInt(output_type);

        register.* = (register.* & ~(@as(u32, 0x1) << shift )) | (type_num << shift);
    }
    
    pub fn setSpeed(self: Self, speed: Speed) void {
        setSpeedByInteger(@enumToInt(self), speed);
    }

    pub fn setSpeedByInteger(integer: u8, speed: Speed) void {
        if (integer > Self.max_value) return;
        const port = integer / 16;
        const pin = integer % 16;
        const register = output_speed_registers[port];
        const shift = @intCast(u5, pin * 2);

        const speed_num: u32 = @enumToInt(speed);

        register.* = (register.* & ~(@as(u32, 0x3) << shift )) | (speed_num << shift);
    }

    pub fn setPull(self: Self, pull: Pull) void {
        setPullByInteger(@enumToInt(self), pull);
    }

    pub fn setPullByInteger(integer: u8, pull: Pull) void {
        if (integer > Self.max_value) return;
        const port = integer / 16;
        const pin = integer % 16;
        const register = pull_direction_registers[port];
        const shift = @intCast(u5, pin * 2);

        const pull_num: u32 = @enumToInt(pull);

        register.* = (register.* & ~(@as(u32, 0x3) << shift )) | (pull_num << shift);
    }

    pub fn setAlternateFunction(self: Self, alt: AlternateFunction) void {
        setAlternateFunctionByInteger(@enumToInt(self), alt);
    }

    pub fn setAlternateFunctionByInteger(integer: u8, alt: AlternateFunction) void {
        if (integer > Self.max_value) return;
        const port = integer / 16;
        const pin = integer % 16;
        var register = alternate_function_registers[(@as(usize,port) * 2) + @boolToInt(pin >= 8)];
        const shift = @intCast(u5, (pin & 7) * 4);

        const af_num: u32 = alt;

        register.* = (register.* & ~(@as(u32, 0xF) << shift )) | (af_num << shift );
    }
};
// zig fmt: on

const input_data_registers = [_]*volatile u32{
    reg.GPIOA_IDR_Ptr,
    reg.GPIOB_IDR_Ptr,
    reg.GPIOC_IDR_Ptr,
    reg.GPIOD_IDR_Ptr,
    reg.GPIOE_IDR_Ptr,
    reg.GPIOF_IDR_Ptr,
    reg.GPIOG_IDR_Ptr,
};

const set_clear_registers = [_]*volatile u32{
    reg.GPIOA_BSRR_Ptr,
    reg.GPIOB_BSRR_Ptr,
    reg.GPIOC_BSRR_Ptr,
    reg.GPIOD_BSRR_Ptr,
    reg.GPIOE_BSRR_Ptr,
    reg.GPIOF_BSRR_Ptr,
    reg.GPIOG_BSRR_Ptr,
};

const mode_registers = [_]*volatile u32{
    reg.GPIOA_MODER_Ptr,
    reg.GPIOB_MODER_Ptr,
    reg.GPIOC_MODER_Ptr,
    reg.GPIOD_MODER_Ptr,
    reg.GPIOE_MODER_Ptr,
    reg.GPIOF_MODER_Ptr,
    reg.GPIOG_MODER_Ptr,
};

const output_type_registers = [_]*volatile u32{
    reg.GPIOA_OTYPER_Ptr,
    reg.GPIOB_OTYPER_Ptr,
    reg.GPIOC_OTYPER_Ptr,
    reg.GPIOD_OTYPER_Ptr,
    reg.GPIOE_OTYPER_Ptr,
    reg.GPIOF_OTYPER_Ptr,
    reg.GPIOG_OTYPER_Ptr,
};

const output_speed_registers = [_]*volatile u32{
    reg.GPIOA_GPIOB_OSPEEDR_Ptr,
    reg.GPIOB_GPIOB_OSPEEDR_Ptr,
    reg.GPIOC_GPIOB_OSPEEDR_Ptr,
    reg.GPIOD_GPIOB_OSPEEDR_Ptr,
    reg.GPIOE_GPIOB_OSPEEDR_Ptr,
    reg.GPIOF_GPIOB_OSPEEDR_Ptr,
    reg.GPIOG_GPIOB_OSPEEDR_Ptr,
};

const pull_direction_registers = [_]*volatile u32{
    reg.GPIOA_PUPDR_Ptr,
    reg.GPIOB_PUPDR_Ptr,
    reg.GPIOC_PUPDR_Ptr,
    reg.GPIOD_PUPDR_Ptr,
    reg.GPIOE_PUPDR_Ptr,
    reg.GPIOF_PUPDR_Ptr,
    reg.GPIOG_PUPDR_Ptr,
};

const alternate_function_registers = [_]*volatile u32{
    reg.GPIOA_AFRL_Ptr,
    reg.GPIOA_AFRH_Ptr,
    reg.GPIOB_AFRL_Ptr,
    reg.GPIOB_AFRH_Ptr,
    reg.GPIOC_AFRL_Ptr,
    reg.GPIOC_AFRH_Ptr,
    reg.GPIOD_AFRL_Ptr,
    reg.GPIOD_AFRH_Ptr,
    reg.GPIOE_AFRL_Ptr,
    reg.GPIOE_AFRH_Ptr,
    reg.GPIOF_AFRL_Ptr,
    reg.GPIOF_AFRH_Ptr,
    reg.GPIOG_AFRL_Ptr,
    reg.GPIOG_AFRH_Ptr,
};

const initial_settings = [_]InitialPinSettings{
    .{
        .pin = Pin.LCD_NRESET,
        .mode = .Output,
    },
    .{ .pin = .A0, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .A1, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .A2, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .A3, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .A4, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .A5, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .A6, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .A7, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .A8, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .A9, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .A10, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .A11, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .A12, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .D0, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .D1, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .D2, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .D3, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .D4, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .D5, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .D6, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .D7, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .D8, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .D9, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .D10, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .D11, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .D12, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .D13, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .D14, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .D15, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .BA0, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .BA1, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .SDNRAS, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .SDNCAS, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .SDNWE, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .SDNCS, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .DQM0, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .DQM1, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .SDCLK, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
    .{ .pin = .SDCKE, .speed = .VeryHigh, .mode = .Alternate, .af = 12 },
};

test "ref" {
    std.meta.refAllDecls(@This());
}
