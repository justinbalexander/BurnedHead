const std = @import("std");

comptime {
    // force a reference to file
    _ = @import("startup.zig");
}

pub fn main() noreturn {
    while (true) {}
}
