const std = @import("std");
const reg = @import("STM32F7x7.zig");

const InitialPinSettings = struct {
    pin: u8,
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
            Pin.setByInteger(setting.pin)
        else
            Pin.clearByInteger(setting.pin);
        Pin.setSpeedByInteger(setting.pin, setting.speed);
        Pin.setOutputTypeByInteger(setting.pin, setting.output_type);
        Pin.setPullByInteger(setting.pin, setting.pull);
        Pin.setAlternateFunctionByInteger(setting.pin, setting.af);
        Pin.setModeByInteger(setting.pin, setting.mode);
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
    BUT_RSTICK,
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
    LCD_R3,
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
    LEFT_STICK_X,
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
    D2,
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
    DQM0,
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
    A0,
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
    A10,
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

    pub fn get(comptime self: Self) bool {
        const integer = @enumToInt(self);
        const layout = pin_layout[integer];
        const register = input_data_registers[layout.port];
        return (@as(u32, 0x1) << layout.pin) > 0;
    }

    pub fn set(comptime self: Self) void {
        setByInteger(@enumToInt(self));
    }

    pub fn setByInteger(integer: u8) void {
        if (integer >= pin_layout.len) return;
        const layout = pin_layout[integer];
        const register = set_clear_registers[layout.port];
        register.* = @as(u32, 0x1) << layout.pin;
    }

    pub fn clear(comptime self: Self) void {
        clearByInteger(@enumToInt(Self));
    }

    pub fn clearByInteger(integer: u8) void {
        if (integer >= pin_layout.len) return;
        const layout = pin_layout[integer];
        const register = set_clear_registers[layout.port];
        register.* = @as(u32, 0x1) << (layout.pin + 16);
    }

    pub fn setMode(comptime self: Self, mode: Mode) void {
        setModeByInteger(@enumToInt(self), mode);
    }

    pub fn setModeByInteger(integer: u8, mode: Mode) void{
        if (integer >= pin_layout.len) return;
        const layout = pin_layout[integer];
        const register = mode_registers[layout.port];
        const shift = layout.pin * 2;

        const mode_num: u32 = @enumToInt(mode);

        register.* = (register.* & ~(@as(u32,0x3) << shift )) | (mode_num << shift);
    }

    pub fn setOutputType(comptime self: Self, output_type: OutputType) void {
        setOutputTypeByInteger(@enumToInt(self), output_type);
    }

    pub fn setOutputTypeByInteger(integer: u8, output_type: OutputType) void {
        if (integer >= pin_layout.len) return;
        const layout = pin_layout[integer];
        const register = output_type_registers[layout.port];
        const shift = layout.pin;

        const type_num: u32 = @enumToInt(output_type);

        register.* = (register.* & ~(@as(u32, 0x1) << shift )) | (type_num << shift);
    }
    
    pub fn setSpeed(comptime self: Self, speed: Speed) void {
        setSpeedByInteger(@enumToInt(self), speed);
    }

    pub fn setSpeedByInteger(integer: u8, speed: Speed) void {
        if (integer >= pin_layout.len) return;
        const layout = pin_layout[integer];
        const register = output_speed_registers[layout.port];
        const shift = layout.pin * 2;

        const speed_num: u32 = @enumToInt(speed);

        register.* = (register.* & ~(@as(u32, 0x3) << shift )) | (speed_num << shift);
    }

    pub fn setPull(comptime self: Self, pull: Pull) void {
        setPullByInteger(@enumToInt(self), pull);
    }

    pub fn setPullByInteger(integer: u8, pull: Pull) void {
        if (integer >= pin_layout.len) return;
        const layout = pin_layout[integer];
        const register = pull_direction_registers[layout.port];
        const shift = layout.pin * 2;

        const pull_num: u32 = @enumToInt(pull);

        register.* = (register.* & ~(@as(u32, 0x3) << shift )) | (pull_num << shift);
    }

    pub fn setAlternateFunction(comptime self: Self, alt: AlternateFunction) void {
        setAlternateFunctionByInteger(@enumToInt(self), alt);
    }

    pub fn setAlternateFunctionByInteger(integer: u8, alt: AlternateFunction) void {
        if (integer >= pin_layout.len) return;
        const layout = pin_layout[integer];
        const register = alternate_function_registers[(@as(usize,layout.port) * 2) + @boolToInt(layout.pin >= 8)];
        const shift = (layout.pin & 7) * 4;

        const af_num: u32 = alt;

        register.* = (register.* & ~(@as(u32, 0xF) << shift )) | (af_num << shift );
    }
};
// zig fmt: on

const PinPlacement = struct {
    port: u3,
    pin: u5,
};

// zig fmt: off
const pin_layout = init: {
    var array = [_]PinPlacement{.{.port = 0, .pin = 0}} ** (Pin.max_value + 1);
    // Port A,
    array[@enumToInt(Pin.BUT_RSTICK)]       = .{ .port = 0, .pin = 0 };
    array[@enumToInt(Pin.LCD_NRESET)]       = .{ .port = 0, .pin = 1 };
    array[@enumToInt(Pin.LCD_DIM)]          = .{ .port = 0, .pin = 2 };
    array[@enumToInt(Pin.LCD_B5)]           = .{ .port = 0, .pin = 3 };
    array[@enumToInt(Pin.LCD_VSYNC)]        = .{ .port = 0, .pin = 4 };
    array[@enumToInt(Pin.AUDIO)]            = .{ .port = 0, .pin = 5 };
    array[@enumToInt(Pin.LCD_G2)]           = .{ .port = 0, .pin = 6 };
    array[@enumToInt(Pin.SDNWE)]            = .{ .port = 0, .pin = 7 };
    array[@enumToInt(Pin.LCD_R6)]           = .{ .port = 0, .pin = 8 };
    array[@enumToInt(Pin.LCD_R5)]           = .{ .port = 0, .pin = 9 };
    array[@enumToInt(Pin.LCD_B4)]           = .{ .port = 0, .pin = 10 };
    array[@enumToInt(Pin.LCD_R4)]           = .{ .port = 0, .pin = 11 };
    array[@enumToInt(Pin.BATT_STAT)]        = .{ .port = 0, .pin = 12 };
    array[@enumToInt(Pin.SWDIO)]            = .{ .port = 0, .pin = 13 };
    array[@enumToInt(Pin.SWCLK)]            = .{ .port = 0, .pin = 14 };
    array[@enumToInt(Pin.BUT_LTRIG)]        = .{ .port = 0, .pin = 15 };
    // Port B
    array[@enumToInt(Pin.LCD_R3)]           = .{ .port = 1, .pin = 0 };
    array[@enumToInt(Pin.nSPKR_OFF)]        = .{ .port = 1, .pin = 1 };
    array[@enumToInt(Pin.PB2_NC)]           = .{ .port = 1, .pin = 2 };
    array[@enumToInt(Pin.SWO)]              = .{ .port = 1, .pin = 3 };
    array[@enumToInt(Pin.PB4_NC)]           = .{ .port = 1, .pin = 4 };
    array[@enumToInt(Pin.PB5_NC)]           = .{ .port = 1, .pin = 5 };
    array[@enumToInt(Pin.PB6_NC)]           = .{ .port = 1, .pin = 6 };
    array[@enumToInt(Pin.PB7_NC)]           = .{ .port = 1, .pin = 7 };
    array[@enumToInt(Pin.LCD_B6)]           = .{ .port = 1, .pin = 8 };
    array[@enumToInt(Pin.LCD_B7)]           = .{ .port = 1, .pin = 9 };
    array[@enumToInt(Pin.LCD_G4)]           = .{ .port = 1, .pin = 10 };
    array[@enumToInt(Pin.LCD_G5)]           = .{ .port = 1, .pin = 11 };
    array[@enumToInt(Pin.BUT_LSTICK)]       = .{ .port = 1, .pin = 12 };
    array[@enumToInt(Pin.POWER_EN)]         = .{ .port = 1, .pin = 13 };
    array[@enumToInt(Pin.BUT_D)]            = .{ .port = 1, .pin = 14 };
    array[@enumToInt(Pin.BUT_L)]            = .{ .port = 1, .pin = 15 };
    // Port C
    array[@enumToInt(Pin.LEFT_STICK_X)]     = .{ .port = 2, .pin = 0 };
    array[@enumToInt(Pin.LEFT_STICK_Y)]     = .{ .port = 2, .pin = 1 };
    array[@enumToInt(Pin.RIGHT_STICK_X)]    = .{ .port = 2, .pin = 2 };
    array[@enumToInt(Pin.RIGHT_STICK_Y)]    = .{ .port = 2, .pin = 3 };
    array[@enumToInt(Pin.SDNCS)]            = .{ .port = 2, .pin = 4 };
    array[@enumToInt(Pin.SDCKE)]            = .{ .port = 2, .pin = 5 };
    array[@enumToInt(Pin.LCD_HSYNC)]        = .{ .port = 2, .pin = 6 };
    array[@enumToInt(Pin.LCD_G6)]           = .{ .port = 2, .pin = 7 };
    array[@enumToInt(Pin.SDMMC_D0)]         = .{ .port = 2, .pin = 8 };
    array[@enumToInt(Pin.SDMMC_D1)]         = .{ .port = 2, .pin = 9 };
    array[@enumToInt(Pin.SDMMC_D2)]         = .{ .port = 2, .pin = 10 };
    array[@enumToInt(Pin.SDMMC_D3)]         = .{ .port = 2, .pin = 11 };
    array[@enumToInt(Pin.SDMMC_CK)]         = .{ .port = 2, .pin = 12 };
    array[@enumToInt(Pin.PC13_NC)]          = .{ .port = 2, .pin = 13 };
    array[@enumToInt(Pin.PC14_NC)]          = .{ .port = 2, .pin = 14 };
    array[@enumToInt(Pin.SDMMC_DETECT)]     = .{ .port = 2, .pin = 15 };
    // Port D
    array[@enumToInt(Pin.D2)]               = .{ .port = 3, .pin = 0 };
    array[@enumToInt(Pin.D3)]               = .{ .port = 3, .pin = 1 };
    array[@enumToInt(Pin.SDMMC_CMD)]        = .{ .port = 3, .pin = 2 };
    array[@enumToInt(Pin.LCD_G7)]           = .{ .port = 3, .pin = 3 };
    array[@enumToInt(Pin.PD4_NC)]           = .{ .port = 3, .pin = 4 };
    array[@enumToInt(Pin.PD5_NC)]           = .{ .port = 3, .pin = 5 };
    array[@enumToInt(Pin.PD6_NC)]           = .{ .port = 3, .pin = 6 };
    array[@enumToInt(Pin.PD7_NC)]           = .{ .port = 3, .pin = 7 };
    array[@enumToInt(Pin.D13)]              = .{ .port = 3, .pin = 8 };
    array[@enumToInt(Pin.D14)]              = .{ .port = 3, .pin = 9 };
    array[@enumToInt(Pin.D15)]              = .{ .port = 3, .pin = 10 };
    array[@enumToInt(Pin.PD11_NC)]          = .{ .port = 3, .pin = 11 };
    array[@enumToInt(Pin.BUT_R)]            = .{ .port = 3, .pin = 12 };
    array[@enumToInt(Pin.BUT_U)]            = .{ .port = 3, .pin = 13 };
    array[@enumToInt(Pin.D0)]               = .{ .port = 3, .pin = 14 };
    array[@enumToInt(Pin.D1)]               = .{ .port = 3, .pin = 15 };
    // Port E
    array[@enumToInt(Pin.DQM0)]             = .{ .port = 4, .pin = 0 };
    array[@enumToInt(Pin.DQM1)]             = .{ .port = 4, .pin = 1 };
    array[@enumToInt(Pin.BUT_SEL)]          = .{ .port = 4, .pin = 2 };
    array[@enumToInt(Pin.BUT_START)]        = .{ .port = 4, .pin = 3 };
    array[@enumToInt(Pin.BUT_RTRIG)]        = .{ .port = 4, .pin = 4 };
    array[@enumToInt(Pin.PE5_NC)]           = .{ .port = 4, .pin = 5 };
    array[@enumToInt(Pin.PE6_NC)]           = .{ .port = 4, .pin = 6 };
    array[@enumToInt(Pin.D4)]               = .{ .port = 4, .pin = 7 };
    array[@enumToInt(Pin.D5)]               = .{ .port = 4, .pin = 8 };
    array[@enumToInt(Pin.D6)]               = .{ .port = 4, .pin = 9 };
    array[@enumToInt(Pin.D7)]               = .{ .port = 4, .pin = 10 };
    array[@enumToInt(Pin.D8)]               = .{ .port = 4, .pin = 11 };
    array[@enumToInt(Pin.D9)]               = .{ .port = 4, .pin = 12 };
    array[@enumToInt(Pin.D10)]              = .{ .port = 4, .pin = 13 };
    array[@enumToInt(Pin.D11)]              = .{ .port = 4, .pin = 14 };
    array[@enumToInt(Pin.D12)]              = .{ .port = 4, .pin = 15 };
    // Port F
    array[@enumToInt(Pin.A0)]               = .{ .port = 5, .pin = 0 };
    array[@enumToInt(Pin.A1)]               = .{ .port = 5, .pin = 1 };
    array[@enumToInt(Pin.A2)]               = .{ .port = 5, .pin = 2 };
    array[@enumToInt(Pin.A3)]               = .{ .port = 5, .pin = 3 };
    array[@enumToInt(Pin.A4)]               = .{ .port = 5, .pin = 4 };
    array[@enumToInt(Pin.A5)]               = .{ .port = 5, .pin = 5 };
    array[@enumToInt(Pin.BUT_Y)]            = .{ .port = 5, .pin = 6 };
    array[@enumToInt(Pin.BUT_X)]            = .{ .port = 5, .pin = 7 };
    array[@enumToInt(Pin.BUT_B)]            = .{ .port = 5, .pin = 8 };
    array[@enumToInt(Pin.BUT_A)]            = .{ .port = 5, .pin = 9 };
    array[@enumToInt(Pin.LCD_DE)]           = .{ .port = 5, .pin = 10 };
    array[@enumToInt(Pin.SDNRAS)]           = .{ .port = 5, .pin = 11 };
    array[@enumToInt(Pin.A6)]               = .{ .port = 5, .pin = 12 };
    array[@enumToInt(Pin.A7)]               = .{ .port = 5, .pin = 13 };
    array[@enumToInt(Pin.A8)]               = .{ .port = 5, .pin = 14 };
    array[@enumToInt(Pin.A9)]               = .{ .port = 5, .pin = 15 };
    // Port G
    array[@enumToInt(Pin.A10)]              = .{ .port = 6, .pin = 0 };
    array[@enumToInt(Pin.A11)]              = .{ .port = 6, .pin = 1 };
    array[@enumToInt(Pin.A12)]              = .{ .port = 6, .pin = 2 };
    array[@enumToInt(Pin.ON_SWITCH_5V)]     = .{ .port = 6, .pin = 3 };
    array[@enumToInt(Pin.BA0)]              = .{ .port = 6, .pin = 4 };
    array[@enumToInt(Pin.BA1)]              = .{ .port = 6, .pin = 5 };
    array[@enumToInt(Pin.LCD_R7)]           = .{ .port = 6, .pin = 6 };
    array[@enumToInt(Pin.LCD_CLK)]          = .{ .port = 6, .pin = 7 };
    array[@enumToInt(Pin.SDCLK)]            = .{ .port = 6, .pin = 8 };
    array[@enumToInt(Pin.PG9_NC)]           = .{ .port = 6, .pin = 9 };
    array[@enumToInt(Pin.LCD_G3)]           = .{ .port = 6, .pin = 10 };
    array[@enumToInt(Pin.LCD_B3)]           = .{ .port = 6, .pin = 11 };
    array[@enumToInt(Pin.PG12_NC)]          = .{ .port = 6, .pin = 12 };
    array[@enumToInt(Pin.PG13_NC)]          = .{ .port = 6, .pin = 13 };
    array[@enumToInt(Pin.PG14_NC)]          = .{ .port = 6, .pin = 14 };
    array[@enumToInt(Pin.SDNCAS)]           = .{ .port = 6, .pin = 15 };
    break :init array;
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
        .pin = @enumToInt(Pin.LCD_NRESET),
        .mode = .Output,
    },
};

test "ref" {
    std.meta.refAllDecls(@This());
}
