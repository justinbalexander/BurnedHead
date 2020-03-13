const std = @import("std");
const Builder = std.build.Builder;
const builtin = @import("builtin");

pub fn build(b: *Builder) void {
    const exe = b.addExecutable("executable.elf", "firmware/main.zig");
    exe.setBuildMode(b.standardReleaseOptions());
    exe.setLinkerScriptPath("firmware/linker.ld");

    exe.setTarget(
        std.zig.CrossTarget.parse(.{
            .arch_os_abi = "thumb-freestanding-eabihf",
            .cpu_features = "cortex_m7",
        }) catch unreachable,
    );

    b.default_step.dependOn(&exe.step);
    exe.install();
}
