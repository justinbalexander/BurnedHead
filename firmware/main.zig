const std = @import("std");
const builtin = @import("builtin");
const hw = @import("hardware.zig");
const reg = @import("STM32F7x7.zig");
const cpu = @import("zig-cortex/v7m.zig");

// zig-cortex configuration variables
pub const nvic_priority_bits = 4;

comptime {
    // force a reference to file
    _ = @import("startup.zig");
}

pub export fn zigMain() noreturn {
    while (true) {}
}

export var panic_ptr: [*]const volatile u8 = undefined;
//var panic_string = @ptrCast(*volatile [*]const u8, &panic_ptr);
pub fn panic(msg: []const u8, error_return_trace: ?*builtin.StackTrace) noreturn {
    @setCold(true);
    while (true) {
        panic_ptr = msg.ptr;
        @breakpoint();
    }
}

test "Semantic Analyze" {
    std.meta.refAllDecls(@This());
}
