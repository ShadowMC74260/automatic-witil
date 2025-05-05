@echo off
color 0a
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /B)
echo                    =========================
echo                       B  A  T  U  T  I  L 
echo                    =========================
echo                     by Yorii
echo UserID?
set /p user=
if /I "%user%"=="Shadow" goto ashadow
if /I "%user%"=="Yorii" goto yorii
goto util
:ashadow
echo Hello, LoliMaster Shadow.
goto util 
:yorii
echo Hello, Miniyan Yorii.
goto util
:util
echo BatUtil V0.93 @ %user%'s Discretion. 
echo Would you like to install Windows Updates? (Y/N)
set /p choice=
if /I "%choice%"=="Y" goto windowsupdate
if /I "%choice%"=="N" goto appchoice
:windowsupdate
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
ping -n 100 youtube.com >nul
goto appchoice
:appchoice
echo ______________________________________________________________________________________
echo Which AppGroups would you like to install? [You can only enable them. Choose wisely.]
echo Socials * GameLaunchers * GeneralTools * Benchmarks * Cloud * All 
echo [Need help? use H]
echo Done Selecting? Say Install.
set /p choice=
if /I "%choice%"=="Socials" goto socialapps
if /I "%choice%"=="GameLaunchers" goto games
if /I "%choice%"=="generaltools" goto general 
if /I "%choice%"=="benchmarks" goto benchmarks
if /I "%choice%"=="cloud" goto cloud 
if /I "%choice%"=="all" goto all
if /I "%choice%"=="h" goto helpapps
if /I "%choice%"=="install" goto install
if /I "%choice%"=="exit" goto exit
echo invalid choice, go again.
:helpapps
echo Applist for Ver0.93
echo Socials        == Discord, Whatsapp, Spotify
echo GameLaunchers  == Steam, EpicGames, JDK21, Roblox
echo GeneralTools   == Opera, ADB
echo Cloud          == Mega, Onedrive, Google Drive
echo Benchmarks     == CrystalDiskInfo, CrystalDiskMark, FurMark
goto appchoice
:socialapps
echo @echo off > sapps.bat
echo color 0d >> sapps.bat
echo winget install Discord.Discord --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> sapps.bat
echo winget install 9NKSQGP7F2NH --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> sapps.bat
echo winget install 9NBDXK71NK08 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> sapps.bat
echo winget install Spotify.Spotify --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> sapps.bat
echo pause >> sapps.bat
echo exit >> sapps.bat
goto appchoice
:games
echo @echo off > games.bat
echo color 0d >> games.bat
echo winget install Valve.Steam --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> games.bat
echo winget install EpicGames.EpicGamesLauncher --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> games.bat
echo winget install Oracle.JDK.21 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> games.bat
echo winget install Roblox.Roblox --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> games.bat
echo pause >> games.bat
echo exit >> games.bat
goto appchoice
:general
echo @echo off > general.bat
echo color 0d >> general.bat
echo winget install Opera.Opera --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> general.bat
echo winget install Google.PlatformTools --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> general.bat
echo winget install Microsoft.DotNet.DesktopRuntime.Preview --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> general.bat  
echo pause >> general.bat
echo exit >> general.bat
goto appchoice
:benchmarks
echo @echo off > benchmark.bat
echo winget install CrystalDewWorld.CrystalDiskMark.AoiEdition --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> benchmark.bat
echo winget install CrystalDewWorld.CrystalDiskInfo.AoiEdition --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> benchmark.bat
echo winget install Geeks3D.FurMark --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> benchmark..bat
echo exit >> benchmark.bat
goto appchoice
:cloud
echo @echo off > cloud.bat
echo winget install Mega.MEGASync --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> cloud.bat
echo winget install Google.GoogleDrive --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> cloud.bat
echo winget install Microsoft.OneDrive --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> cloud.bat
echo exit >> cloud.bat
goto appchoice
:all
:install
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
echo ================================
echo         Restarting PC...         
echo   Save all work and continue 
echo ================================
pause
::shutdown /r /t 5