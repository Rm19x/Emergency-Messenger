const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    // Menentukan mode build secara manual agar tidak error fungsi
    const mode = b.standardReleaseOptions();

    const exe = b.addExecutable("emergency-messenger", "src/main.zig");
    exe.setBuildMode(mode);
    exe.install();
}
