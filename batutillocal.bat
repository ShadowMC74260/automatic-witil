@echo off
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /B)
echo Downloading Windows Updates... this may take a while
    echo @echo off > up.bat
    echo powershell Install-Module PSWindowsUpdate >> up.bat
    echo powershell Import-Module PSWindowsUpdate -y >> up.bat
    echo powershell -Command "Install-WindowsUpdate -AcceptAll" >> up.bat
    echo exit >> up.bat
    start up.bat    
echo Creating seperate bat for applications
    ping -n 3 youtube.com >nul
        echo @echo off > apps.bat
        echo winget install Discord.Discord --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
        echo winget install Spotify.Spotify --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
        echo winget install 9NKSQGP7F2NH --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat 
        echo winget install 9NBDXK71NK08 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
        echo winget install Valve.Steam --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
        echo winget install EpicGames.EpicGamesLauncher --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
        :: ID's are whatsapp
    start apps.bat
echo Launching websites..
timeout 30
    start "" "https://accounts.google.com/login"
    start "" "microsoft"
    start "" "whatsapp"
    start "" "discord"
::Winget needs to be non-admin for some apps for some reason.. idk how to do that yet
echo Please login to all websites & save all work. PC will reboot.
pause
shutdown /r /t 10 /d [p]2:3