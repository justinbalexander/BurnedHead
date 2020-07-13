const std = @import("std");

const Atomic32 = std.atomic.Int(u32);

/// List of implemented timer instances
pub const Instance = enum(u8) {
    US_100,
    MS_1,

    const Self = @This();
    pub const max_value = @enumToInt(Self.MS_1);
};

var timer_list = [_]Atomic32{Atomic32.init(0)} ** (Instance.max_value + 1);

/// Advances timer by one tick
pub fn tick(instance: Instance) void {
    const timer = &timer_list[@enumToInt(instance)];
    _ = timer.incr();
}

pub fn Timer(comptime I: Instance) type {
    return struct {
        const Self = @This();
        const timer = &timer_list[@enumToInt(I)];

        match_value: u32,

        pub fn init(delay_units: u32) Self {
            return Self{
                .match_value = timer.get() +% delay_units,
            };
        }

        pub fn set(self: *Self, delay_units: u32) void {
            self.match_value = timer.get() +% delay_units;
        }

        pub fn hasMatched(self: Self) bool {
            return self.secondsUntilMatch() <= 0;
        }

        pub fn secondsUntilMatch(self: Self) i32 {
            return @intCast(i32, self.match_value -% timer.get());
        }
    };
}

test "ref" {
    std.meta.refAllDecls(@This());
    const testio = Timer(.US_100).init(2);
}
