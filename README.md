<p align="center">
  <img src="https://img.shields.io/badge/license-GPL--3.0-545ded" alt="License">
  <img src="https://img.shields.io/badge/platform-Windows-80848e" alt="Platform">
</p>

---

# IDM Reset Tool

Reset the Internet Download Manager (IDM) trial period with one click.

---

## Quick Start

```
1. Run IDM Reset.bat as Administrator
2. Done — IDM trial is reset
```

> [!NOTE]
> This tool resets the 30-day trial period, not a full activation or crack. You still need a valid license for continued use after the trial window.

---

## Usage

| File | How to Run | Notes |
|------|-----------|-------|
| `IDM Reset.bat` | Right-click → **Run as Administrator** | No dependencies, recommended |
| `IDM Reset.ps1` | Right-click → **Run with PowerShell** | May require execution policy change |

Both files perform the same reset procedure. The `.bat` version is recommended for most users.

### What it does

The script removes IDM's trial-related registry keys and license files, effectively resetting the 30-day evaluation period. This includes:

- Deleting registry entries that store trial start date
- Removing IDM license data files from the system
- Cleaning cached activation state

---

## FAQ

**Q: Does this activate IDM permanently?**
A: No. It resets the trial period, allowing you to use the evaluation again. It does not bypass activation or provide a permanent license.

**Q: Will this work with any IDM version?**
A: It targets the standard registry paths used by recent IDM versions. Very old or very new versions may use different paths.

**Q: Do I need to close IDM before running?**
A: Yes. Close IDM (including the tray icon) before running the reset tool.

**Q: Is this safe?**
A: The script only touches IDM-related registry keys and files. It does not modify other system settings.

**Q: How often can I use it?**
A: As often as you like. Each run resets the trial period from scratch.

---

## Troubleshooting

| Problem | Cause | Fix |
|---------|-------|-----|
| `Access denied` | Script not run as administrator | Right-click → **Run as Administrator** |
| `Not recognized as a command` | Path issue | Run the file directly from its folder |
| IDM still shows expired | License file not fully cleared | Run the script again, ensure IDM is closed |
| PowerShell won't run scripts | Execution policy restriction | Run `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass` first |

---

## Credits

Created by [norvramis](https://github.com/norvramis).

---

## License

GPL-3.0. See [LICENSE](LICENSE).

<details>
<summary>Full license text</summary>

```
GNU GENERAL PUBLIC LICENSE

Copyright (c) 2026 norvramis

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

</details>

---

**AI Assistance.** This project was developed with the assistance of AI (LLMs) to structure the code and automate the setup process.
