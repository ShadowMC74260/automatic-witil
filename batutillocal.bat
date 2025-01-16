@echo off
net session >nul 2>&1
echo Administrative Privileges AQUIRED.
if %errorLevel% NEQ 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /B
)
echo Downloading Windows Updates...
:: powershell -Command "Install-WindowsUpdate -AcceptAll -AutoReboot"
::remove this before deploying
echo Creating seperate bat for applications
ping -n 3 youtube.com >nul
::silent
echo @echo off > apps.bat
echo winget install Discord.Discord --silent >> apps.bat
echo winget install Spotify.Spotify --silent >> apps.bat
echo winget install 9NKSQGP7F2NH --silent >> apps.bat
echo winget install 9NBDXK71NK08 --silent >> apps.bat
echo winget install Valve.Steam --silent >> apps.bat
echo winget install EpicGames.EpicGamesLauncher --silent >> apps.bat
::idk what else to add yet

:: Need to start winget application from non-administrator, don't know how. Tried this roundabout, didn't work.
echo @echo off > start.bat
echo start apps.bat >> start.bat
start start.bat 

pause