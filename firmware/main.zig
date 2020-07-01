const std = @import("std");
const hw = @import("hardware.zig");
const reg = @import("STM32F7x7.zig");
const cpu = @import("zig-cortex/v7m.zig");

comptime {
    // force a reference to file
    _ = @import("startup.zig");
}

pub export fn main() noreturn {
    hw.init();
    while (true) {}
}

test "Semantic Analyze" {
    std.meta.refAllDecls(@This());
}
