$clsid = "{07999AC3-058B-40BF-984F-69EB1E554CA7}"
$basePath = "HKCU:\Software\Classes\WOW6432Node\CLSID"
$targetPath = "$basePath\$clsid"

Clear-Host
# Banner: Header (Centered with ─ character)
Write-Host @"
─────────────────▄▀▄─────▄▀▄
────────────────▄█░░▀▀▀▀▀░░█▄
────────────▄▄──█░░░░░░░░░░░█──▄▄
───────────█▄▄█─█░░▀░░┬░░▀░░█─█▄▄█ 

██╗██████╗░███╗░░░███╗  ██████╗░███████╗░██████╗███████╗████████╗
██║██╔══██╗████╗░████║  ██╔══██╗██╔════╝██╔════╝██╔════╝╚══██╔══╝
██║██║░░██║██╔████╔██║  ██████╔╝█████╗░░╚█████╗░█████╗░░░░░██║░░░
██║██║░░██║██║╚██╔╝██║  ██╔══██╗██╔══╝░░░╚═══██╗██╔══╝░░░░░██║░░░
██║██████╔╝██║░╚═╝░██║  ██║░░██║███████╗██████╔╝███████╗░░░██║░░░
╚═╝╚═════╝░╚═╝░░░░░╚═╝  ╚═╝░░╚═╝╚══════╝╚═════╝░╚══════╝░░░╚═╝░░░
"@

$target = Get-Item -Path $targetPath -ErrorAction SilentlyContinue

if ($target) {
    Write-Host "`n[!] IDM is ready for a reset."
    $confirm = Read-Host "[?] Proceed with the operation? (Y/n)"
    
    if ($confirm -match '^[yY]$') {
        try {
            Remove-Item -Path $targetPath -Recurse -Force -ErrorAction Stop
            Clear-Host
            # Banner: IDM RESET
            Write-Host @"
─────────────────▄▀▄─────▄▀▄
────────────────▄█░░▀▀▀▀▀░░█▄
────────────▄▄──█░░░░░░░░░░░█──▄▄
───────────█▄▄█─█░░▀░░┬░░▀░░█─█▄▄█ 

██╗██████╗░███╗░░░███╗  ██████╗░███████╗░██████╗███████╗████████╗
██║██╔══██╗████╗░████║  ██╔══██╗██╔════╝██╔════╝██╔════╝╚══██╔══╝
██║██║░░██║██╔████╔██║  ██████╔╝█████╗░░╚█████╗░█████╗░░░░░██║░░░
██║██║░░██║██║╚██╔╝██║  ██╔══██╗██╔══╝░░░╚═══██╗██╔══╝░░░░░██║░░░
██║██████╔╝██║░╚═╝░██║  ██║░░██║███████╗██████╔╝███████╗░░░██║░░░
╚═╝╚═════╝░╚═╝░░░░░╚═╝  ╚═╝░░╚═╝╚══════╝╚═════╝░╚══════╝░░░╚═╝░░░
"@
            Write-Host "`n[+] Operation completed successfully."
        } catch {
            Write-Host "`n[X] Error: $($_.Exception.Message)"
        }
    } else {
        Write-Host "`n[-] Process aborted."
    }
} else {
    Write-Host "`n[-] Reset currently unavailable: IDM configuration appears clean."
}

Write-Host "`nPress Enter to exit..."
Read-Host
