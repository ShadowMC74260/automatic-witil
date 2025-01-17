@echo off
color 0a
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    Powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /B)
echo =====================================
echo || Launching Windows Update Script ||
echo =====================================
    echo @echo off > up.bat
    echo Powershell Set-ExecutionPolicy -ExecutionPolicy RemoteSigned >> up.bat
    echo Powershell install-Module PSWindowsUpdate -Force >> up.bat
    echo Powershell install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force >> up.bat
    echo Powershell Import-Module PSWindowsUpdate >> up.bat
    echo Powershell "Install-WindowsUpdate -AcceptAll -IgnoreRebootRequired" >> up.bat
    echo pause >> up.bat
start up.bat
echo =====================
echo || Downloading Apps||
echo =====================
    echo @echo off > ap.bat
    echo winget install Discord.Discord --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> ap.bat
    echo winget install Spotify.Spotify --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> ap.bat
    echo winget install 9NKSQGP7F2NH --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> ap.bat
    echo winget install 9NBDXK71NK08 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> ap.bat
    echo winget install Valve.Steam --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> ap.bat
    echo winget install EpicGames.EpicGamesLauncher --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> ap.bat
    echo winget install SoftDeluxe.FreeDownloadManager --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> ap.bat
    echo winget install CrystalDewWorld.CrystalDiskInfo --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> ap.bat
    echo winget install Microsoft.DotNet.DesktopRuntime.Preview --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> ap.bat
    echo winget install Oracle.JDK.21 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> ap.bat
    echo winget install Discord.Discord --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> ap.bat
    echo exit >> ap.bat
    start ap.bat
echo ==========================
echo || Downloading Visual C ||
echo ==========================
    echo @echo off > vc.bat
    echo winget install Microsoft.VCRedist.2005.x64 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vc.bat
    echo winget install Microsoft.VCRedist.2005.x86 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vc.bat
    echo winget install Microsoft.VCRedist.2008.x64 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vc.bat
    echo winget install Microsoft.VCRedist.2008.x86 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vc.bat
    echo winget install Microsoft.VCRedist.2010.x64 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vc.bat
    echo winget install Microsoft.VCRedist.2010.x86 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vc.bat
    echo winget install Microsoft.VCRedist.2012.x64 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vc.bat
    echo winget install Microsoft.VCRedist.2012.x86 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vc.bat
    echo winget install Microsoft.VCRedist.2013.x64 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vc.bat
    echo winget install Microsoft.VCRedist.2013.x86 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vc.bat
    echo winget install Microsoft.VCRedist.2015+.x64 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vc.bat
    echo winget install Microsoft.VCRedist.2015+.x86 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> vc.bat
    echo exit >> vc.bat
    start vc.bat
echo =======================
echo || Launching Websites||
echo =======================
    ::start "" "https://accounts.google.com/login"
    ::start "" ""
    ::start "" ""
echo ================================
echo || Restarting PC...           ||
echo || Save all work and continue ||
echo ================================
pause >nul
shutdown /r /d [p]2:3