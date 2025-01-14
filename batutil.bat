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
echo Creating apps.bat
ping -n 3 youtube.com >nul
::silent
echo @echo off > apps.bat
echo winget install discord --silent >> apps.bat
echo winget install spotify --silent >> apps.bat 
echo winget install whatsapp --silent >> apps.bat
::idk what else to add yet

:: Need to start winget application from non-administrator, don't know how. Tried this roundabout, didn't work.
echo @echo off > start.bat
echo start apps.bat >> start.bat
start start.bat 

pause
code dump:
:: If running with admin privileges, run your application
if %errorLevel% NEQ 1 (
    echo Running with administrative privileges...
    start "" "C:\Program FIles\CrystalDiskInfo\DiskInfo64S.exe"
)
pause
::might wanna try to implement auto detection.