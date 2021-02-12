const std = @import("std");
const Builder = std.build.Builder;
const builtin = @import("builtin");

const main_file = "firmware/main.zig";

pub fn build(b: *Builder) void {
    const exe = b.addExecutable("executable.elf", main_file);
    const mode = embeddedFriendlyReleaseOptions(b);
    exe.setBuildMode(mode);
    exe.setLinkerScriptPath("firmware/linker.ld");
    addHal(exe);

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

fn addHal(exe: anytype) void {
    const hal_source = [_][]const u8{
        "CubeMX/Core/Src/main.c",
        "CubeMX/Core/Src/stm32f7xx_it.c",
        "CubeMX/Core/Src/stm32f7xx_hal_msp.c",
        "CubeMX/Core/Src/system_stm32f7xx.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc_ex.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_flash.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_flash_ex.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma_ex.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_cortex.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c_ex.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_exti.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dac.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dac_ex.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma2d.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_fmc.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sdram.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_jpeg.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_ltdc.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_ltdc_ex.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dsi.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_sdmmc.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sd.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_tim.c",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_tim_ex.c",
        "CubeMX/Utilities/JPEG/jpeg_utils.c",
    };
    const clang_cpu_options = [_][]const u8{
        "-mcpu=cortex-m7",
        "-mfpu=fpv5-d16",
        "-mfloat-abi=hard",
        "-mthumb",
    };
    const clang_defines = [_][]const u8{
        "-DUSE_HAL_DRIVER",
        "-DSTM32F767xx",
    };
    const clang_includes = [_][]const u8{
        "-ICubeMX/Core/Inc",
        "-ICubeMX/Drivers/STM32F7xx_HAL_Driver/Inc",
        "-ICubeMX/Drivers/STM32F7xx_HAL_Driver/Inc/Legacy",
        "-ICubeMX/Utilities/JPEG",
        "-ICubeMX/Drivers/CMSIS/Device/ST/STM32F7xx/Include",
        "-ICubeMX/Drivers/CMSIS/Include",
    };
    const clang_flags_options = [_][]const u8{
        "-Wall",
        "-fdata-sections",
        "-ffunction-sections",
        "-ffreestanding",
        "-ggdb3",
    };

    for (hal_source) |source| {
        exe.addCSourceFile(source, &(clang_cpu_options ++ clang_defines ++ clang_includes ++ clang_flags_options));
    }

    const clang_include_dirs = [_][]const u8{
        "CubeMX/Core/Inc",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Inc",
        "CubeMX/Drivers/STM32F7xx_HAL_Driver/Inc/Legacy",
        "CubeMX/Utilities/JPEG",
        "CubeMX/Drivers/CMSIS/Device/ST/STM32F7xx/Include",
        "CubeMX/Drivers/CMSIS/Include",
    };
    for (clang_include_dirs) |include_folder| {
        exe.addIncludeDir(include_folder);
    }
}
