@echo off
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /B)
echo Downloading Windows Updates... this may take a while
    echo @echo off > up.bat
    echo powershell Set-ExecutionPolicy -ExecutionPolicy RemoteSigned >> up.bat
    echo powershell Install-Module PSWindowsUpdate -Force >> up.bat
    echo powershell Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force >> up.bat
    echo powershell Import-Module PSWindowsUpdate >> up.bat
    echo powershell -Command "Install-WindowsUpdate -AcceptAll -IgnoreRebootRequired" >> up.bat
    echo exit >> up.bat
    start up.bat
echo Windows Updates Finished

echo Creating seperate bat for applications
ping -n 3 youtube.com >nul
    echo @echo off > apps.bat
    echo winget install Discord.Discord --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
    echo winget install Spotify.Spotify --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
    echo winget install 9NKSQGP7F2NH --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat 
    echo winget install 9NBDXK71NK08 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
    echo winget install Valve.Steam --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
    echo winget install EpicGames.EpicGamesLauncher --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
    echo exit >> apps.bat
echo launching websites for login
    timeout 5
    start "" "https://accounts.google.com/login"
start apps.bat

:: Need to start winget application from non-administrator for some apps.. but HOW and WHY, don't know how. Tried this roundabout, didn't work.
echo PC will restart, please save your work.
pause
shutdown /r /t 10 /d [p]2:3