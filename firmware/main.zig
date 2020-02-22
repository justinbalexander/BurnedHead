const std = @import("std");

comptime {
    // force a reference to file
    _ = @import("startup.zig");
}

pub export fn main() noreturn {
    while (true) {}
}
