# Emergency Messenger

Proyek **Emergency Messenger** adalah alat komunikasi *low-level* berbasis bahasa pemrograman **Zig**. Alat ini dirancang untuk mengirimkan file secara cepat dan efisien antara perangkat dalam jaringan yang sama (Wi-Fi) atau melalui koneksi Bluetooth.

### Fitur Utama
* **Transfer File Wi-Fi:** Pengiriman file cepat menggunakan protokol TCP *stream* antar perangkat dalam jaringan lokal.
* **Transfer File Bluetooth:** Integrasi *low-level* untuk pengiriman data nirkabel jarak dekat.
* **Performa Tinggi:** Ditulis sepenuhnya dengan Zig untuk efisiensi memori dan kecepatan eksekusi.
* **Windows Native:** Dioptimalkan untuk sistem operasi Windows.

###  Persiapan Build
Pastikan Anda memiliki *Zig Compiler* (disarankan versi 0.10.1) terinstal di sistem Anda.

  **Clone repository ini:**
```
    git clone https://github.com/Rm19x/Emergency-Messenger
    cd emergency-messenger
```

 ## **Compile program:**
```
    zig build
```

 **Jalankan:**
File *executable* akan tersedia di folder `zig-out/bin/emergency-messenger.exe`.

###  Struktur Proyek
```text
emergency-messenger/
├── build.zig          # Konfigurasi sistem build
├── src/
│   ├── main.zig       # Titik masuk utama (CLI)
│   ├── network.zig    # Logika socket Wi-Fi
│   └── bluetooth.zig  # Logika koneksi Bluetooth
