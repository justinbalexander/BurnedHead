const std = @import("std");
const Builder = std.build.Builder;
const builtin = @import("builtin");

pub fn build(b: *Builder) void {
    const exe = b.addExecutable("executable.elf", "firmware/main.zig");
    exe.setBuildMode(b.standardReleaseOptions());
    exe.setLinkerScriptPath("firmware/linker.ld");

    exe.setTheTarget(std.Target{
        .Cross = std.Target.Cross{
            .arch = .{ .thumb = .v7em },
            .os = .freestanding,
            .abi = .eabihf,
            .cpu_features = std.Target.CpuFeatures.initFromCpu(
                .{ .thumb = .v7em },
                &std.Target.arm.cpu.cortex_m7,
            ),
        },
    });

    b.default_step.dependOn(&exe.step);
}
