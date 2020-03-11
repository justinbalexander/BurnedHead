const std = @import("std");
const reg = @import("STM32F7x7.zig");
const cpu = @import("zig-cortex/cm7.zig");

comptime {
    // force a reference to file
    _ = @import("startup.zig");
}

pub export fn main() noreturn {
    initHardware();
    while (true) {}
}

fn initHardware() void {
    cpu.SCB.ICache.enable();
    cpu.SCB.DCache.enable();
    // enable ART Accelerator and prefetch buffer
    reg.Flash_ACR_Ptr.* |= reg.Flash_ACR_ARTEN_Mask | reg.Flash_ACR_PRFTEN_Mask;
}

test "Semantic Analyze" {
    std.meta.refAllDecls(@This());
}
