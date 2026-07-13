<p align="center">
  <img src="https://img.shields.io/badge/license-GPL--3.0-545ded" alt="Lisensi">
  <img src="https://img.shields.io/badge/platform-Windows-80848e" alt="Platform">
</p>

---

# IDM Reset Tool

Reset masa trial Internet Download Manager (IDM) dengan satu klik.

---

## Cara Pakai

```
1. Jalankan IDM Reset.bat sebagai Administrator
2. Selesai — trial IDM sudah di-reset
```

> [!NOTE]
> Tool ini me-reset masa trial 30 hari, bukan aktivasi penuh. Kamu tetap butuh lisensi valid untuk penggunaan setelah masa trial habis.

---

## Penggunaan

| File | Cara Jalankan | Catatan |
|------|--------------|---------|
| `IDM Reset.bat` | Klik kanan → **Run as Administrator** | Tanpa dependensi, disarankan |
| `IDM Reset.ps1` | Klik kanan → **Run with PowerShell** | Mungkin butuh perubahan execution policy |

Kedua file melakukan prosedur reset yang sama. Versi `.bat` disarankan untuk kebanyakan pengguna.

### Yang dilakukan script

Script menghapus registry key dan file lisensi terkait IDM, efektif mereset periode evaluasi 30 hari. Meliputi:

- Menghapus registry entry yang menyimpan tanggal mulai trial
- Menghapus file data lisensi IDM dari sistem
- Membersihkan cache status aktivasi

---

## FAQ

**T: Apakah ini mengaktifkan IDM secara permanen?**
J: Tidak. Ini hanya mereset masa trial. Tidak melewati aktivasi atau memberikan lisensi permanen.

**T: Bekerja dengan semua versi IDM?**
J: Menargetkan path registry standar yang dipakai versi IDM terbaru. Versi sangat lama atau baru mungkin beda path.

**T: Harus tutup IDM dulu?**
J: Ya. Tutup IDM (termasuk icon tray) sebelum menjalankan tool.

**T: Apakah aman?**
J: Script hanya menyentuh registry dan file IDM. Tidak mengubah pengaturan sistem lain.

**T: Seberapa sering bisa dipakai?**
J: Kapan saja. Setiap run mereset trial dari awal.

---

## Troubleshooting

| Masalah | Penyebab | Solusi |
|---------|----------|--------|
| `Access denied` | Script tidak dijalankan sebagai admin | Klik kanan → **Run as Administrator** |
| IDM masih expired | File lisensi belum bersih | Jalankan ulang script, pastikan IDM tertutup |
| PowerShell error | Kebijakan execution policy | Jalankan `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass` dulu |

---

## Kredit

Dibuat oleh [norvramis](https://github.com/norvramis).

---

## Lisensi

GPL-3.0. Lihat [LICENSE](LICENSE).

<details>
<summary>Teks lisensi lengkap</summary>

```
GNU GENERAL PUBLIC LICENSE
Copyright (c) 2026 norvramis
...
```

</details>

---

**AI Assistance.** Proyek ini dikembangkan dengan bantuan AI (LLM) untuk menyusun kode dan mengotomatiskan proses pengaturan.
