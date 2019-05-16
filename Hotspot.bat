@echo off

cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )


:start

cls
title Hotspot Menu
echo.

echo Hotspot Menu

echo.
echo.

echo 1. Start Hotspot
echo 2. Stop Hotspot

echo.
echo.
set /p option=What do you want to do?

goto %option%

:1
cls
echo.
echo.
echo.
echo.

set /p ssid=Enter the Name of Your hotspot : 

echo.
echo.

set /p pass=Enter the password for the hotspot : 
echo.
echo.
cls
echo starting hotspot
set hostednetwork mode=allow
set hostednetwork ssid=ssid1
set hostednetwork key=passphrase
netsh wlan start hostednetwork
pause
goto start

:2
cls
netsh wlan stop hostednetwork
pause
goto start