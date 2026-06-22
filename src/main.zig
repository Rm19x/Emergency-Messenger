// Emergency Messenger
// Dibuat oleh: Mr.Rm19
// Repository: github.com/Rm19x

const std = @import("std");
const network = @import("network.zig");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("--- Emergency Messenger (Windows) ---\n", .{});
    try stdout.print("Author: Mr.Rm19 | {s}\n\n", .{"github.com/Rm19x"});
    try stdout.print("Mode: 1. Send File (Wi-Fi) | 2. Send File (Bluetooth)\n", .{});
}
