// Modul Wi-Fi
// Dibuat oleh: Mr.Rm19
// Repository: github.com/Rm19x

const std = @import("std");
const net = std.net;

pub fn sendFileViaWifi(allocator: std.mem.Allocator, address: []const u8, port: u16, file_path: []const u8) !void {
    _ = allocator; 

    const host_addr = try net.Address.parseIp(address, port);
    
    const stream = try net.tcpConnectToAddress(host_addr);
    defer stream.close();

    const file = try std.fs.cwd().openFile(file_path, .{ .mode = .read_only });
    defer file.close();

    var buffer: [4096]u8 = undefined;
    while (true) {
        const bytes_read = try file.read(&buffer);
        if (bytes_read == 0) break; 
        
        const bytes_written = try stream.write(buffer[0..bytes_read]);
        if (bytes_written != bytes_read) {
            return error.IncompleteWrite;
        }
    }
    
    std.debug.print("File {s} berhasil dikirim ke {s}:{d}\n", .{file_path, address, port});
}
