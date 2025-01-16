@echo off
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /B)
echo Downloading Windows Updates... this may take a while
    echo @echo off > up.bat
    echo powershell Install-Module PSWindowsUpdate >> up.bat
    echo powershell Import-Module PSWindowsUpdate -y >> up.bat
    echo powershell -Command "Install-WindowsUpdate -AcceptAll -AutoReboot" >> up.bat
    echo exit >> up.bat
    start up.bat
    
::remove this before deploying
::ping -n 50 speedtest.com >nul
::allow windows update to do its thing for a while.
::I dont know if I should keep this

::test bat here
echo start "" "https://accounts.google.com/login" > test.bat
echo exit >> test.bat
start test.bat
timeout 15


echo Creating seperate bat for applications
ping -n 3 youtube.com >nul
::silent
echo @echo off > apps.bat
echo winget install Discord.Discord --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
echo winget install Spotify.Spotify --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
echo winget install 9NKSQGP7F2NH --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat 
echo winget install 9NBDXK71NK08 --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
echo winget install Valve.Steam --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
echo winget install EpicGames.EpicGamesLauncher --accept-package-agreements --accept-source-agreements --disable-interactivity --verbose >> apps.bat
:: ID's are whatsapp

echo launching websites for login
timeout 5
start "" "https://accounts.google.com/login"
start apps.bat
::idk what else to add yet
:: Need to start winget application from non-administrator for some apps.. but HOW and WHY, don't know how. Tried this roundabout, didn't work.
::echo @echo off > start.bat
::echo start apps.bat >> start.bat
::start start.bat 

pause