@echo off
color 0a
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /B)
echo ===============================
echo Launching Windows Update Script
echo =============================== 
    echo @echo off > update.bat
    echo color 0b >> update.bat
    title Updating Windows
    echo Powershell Set-ExecutionPolicy -ExecutionPolicy RemoteSigned >> update.bat
    echo Powershell install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force >> update.bat
    echo Powershell install-Module PSWindowsUpdate -Force >> update.bat
    echo Powershell Import-Module PSWindowsUpdate >> update.bat
    echo @echo on >> update.bat 
    echo Powershell "Get-WindowsUpdate -AcceptAll -IgnoreRebootRequired" >> update.bat
    echo pause >> update.bat
    echo exit >> update.bat
start update.bat
ping -n 10 youtube.com >nul
echo ======================
echo    Downloading Apps
echo ======================
    echo @echo off > apps.bat
    echo color 0d >> apps.bat
    title Installing Apps
    echo winget install Discord.Discord --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
    echo winget install Spotify.Spotify --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
    echo winget install 9NKSQGP7F2NH --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
    echo winget install 9NBDXK71NK08 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
    echo winget install Valve.Steam --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
    echo winget install EpicGames.EpicGamesLauncher --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
    echo winget install SoftDeluxe.FreeDownloadManager --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
    echo winget install CrystalDewWorld.CrystalDiskInfo --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
    echo winget install Microsoft.DotNet.DesktopRuntime.Preview --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
    echo winget install Oracle.JDK.21 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
    echo winget install Discord.Discord --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
    echo pause >> apps.bat
    echo exit >> apps.bat
    start apps.bat
    ping -n 10 youtube.com >nul
echo =========================
echo   Downloading Visual C 
echo =========================
    echo @echo off > vcc.bat
    echo color 0c >> vcc.bat
    title Installing VCRedist 2005-2022
    echo winget install Microsoft.vcRedist.2005.x64 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vcc.bat
    echo winget install Microsoft.vcRedist.2005.x86 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vcc.bat
    echo winget install Microsoft.vcRedist.2008.x64 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vcc.bat
    echo winget install Microsoft.vcRedist.2008.x86 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vcc.bat
    echo winget install Microsoft.vcRedist.2010.x64 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vcc.bat
    echo winget install Microsoft.vcRedist.2010.x86 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vcc.bat
    echo winget install Microsoft.vcRedist.2012.x64 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vcc.bat
    echo winget install Microsoft.vcRedist.2012.x86 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vcc.bat
    echo winget install Microsoft.vcRedist.2013.x64 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vcc.bat
    echo winget install Microsoft.vcRedist.2013.x86 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vcc.bat
    echo winget install Microsoft.vcRedist.2015+.x64 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vcc.bat
    echo winget install Microsoft.vcRedist.2015+.x86 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vcc.bat
    echo pause >> vcc.bat
    echo exit >> vcc.bat
    start vcc.bat
    ping -n 10 youtube.com >nul
echo =======================
echo   Launching Websites
echo =======================
    ::start "" "https://accounts.google.com/login"
    ::start "" "https://discord.com/login"
    ::start "" ""
    ping -n 10 youtube.com >nul
echo ================================
echo         Restarting PC...         
echo   Save all work and continue 
echo ================================
pause
::shutdown /r /t 5