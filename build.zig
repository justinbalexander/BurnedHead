const std = @import("std");
const Builder = std.build.Builder;
const builtin = @import("builtin");

const main_file = "firmware/main.zig";

pub fn build(b: *Builder) void {
    const exe = b.addExecutable("executable.elf", main_file);
    const mode = embeddedFriendlyReleaseOptions(b);
    exe.setBuildMode(mode);
    exe.setLinkerScriptPath("firmware/linker.ld");

    exe.setTarget(
        std.zig.CrossTarget.parse(.{
            .arch_os_abi = "thumb-freestanding-eabihf",
            .cpu_features = "cortex_m7",
        }) catch unreachable,
    );

    const build_docs = b.addSystemCommand(&[_][]const u8{
        b.zig_exe,
        "test",
        main_file,
        "-target",
        "arm-linux-eabihf", // must use arm-linux in order for tests to build
        "-mcpu=cortex_m7",
        "-femit-docs",
        "-fno-emit-bin",
        "--output-dir",
        ".",
    });
    const doc_step = b.step("docs", "Builds docs");
    doc_step.dependOn(&build_docs.step);

    b.default_step.dependOn(&exe.step);
    exe.install();
}

fn embeddedFriendlyReleaseOptions(self: *Builder) builtin.Mode {
    if (self.release_mode) |mode| return mode;

    const release_fast = self.option(bool, "release-fast", "Optimizations on and safety off") orelse false;
    const release_small = self.option(bool, "release-small", "Size optimizations on and safety off") orelse false;

    const mode = if (release_fast and !release_small)
        builtin.Mode.ReleaseFast
    else if (release_small and !release_fast)
        builtin.Mode.ReleaseSmall
    else
        builtin.Mode.ReleaseSafe;

    self.is_release = mode != .ReleaseSafe;
    self.release_mode = mode;
    return mode;
}
