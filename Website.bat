echo off

title Verification
set n=0

color 09

cls
set /p name=Name:

:checking
color 0e
title Checking
cls
echo %random%%random%%random%%random%%random%%random%%
echo %random%%random%%random%%random%%random%%random%%
echo %random%%random%%random%%random%%random%%random%%
echo %random%%random%%random%%random%%random%%random%%
echo %random%%random%%random%%random%%random%%random%%
echo %random%%random%%random%%random%%random%%random%%
echo %random%%random%%random%%random%%random%%random%%
echo %random%%random%%random%%random%%random%%random%%
echo %random%%random%%random%%random%%random%%random%%
echo %random%%random%%random%%random%%random%%random%%
echo %random%%random%%random%%random%%random%%random%%
echo %random%%random%%random%%random%%random%%random%%
echo %random%%random%%random%%random%%random%%random%%
echo %random%%random%%random%%random%%random%%random%%
echo %random%%random%%random%%random%%random%%random%%
echo %random%%random%%random%%random%%random%%random%%
echo %random%%random%%random%%random%%random%%random%%
echo %random%%random%%random%%random%%random%%random%%
echo %random%%random%%random%%random%%random%%random%%
echo %random%%random%%random%%random%%random%%random%%

set /a n+=1
if %n%==100 goto start
goto checking

:start
title %name%'s menu
color 09
cls
echo Welcome %name%
timeout /t 1 /nobreak>nul
cls
echo Welcome %name%.
timeout /t 1 /nobreak>nul
cls
echo Welcome %name%..
timeout /t 1 /nobreak>nul
color 0a
cls
echo Welcome %name%...
timeout /t 1 /nobreak>nul
cls
goto list

:list
color 0b
cls
echo 1-Open Facebook
echo 2-Open Torrent Website in incognito
echo 3-Open Messenger
echo 4-Exit
set /p op=Choose an option:
if %op%==1 (
start https://facebook.com
goto list
)
if %op%==2 (
call "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" -incognito https://1337x.to 
goto list
)
if %op%==3 (
start https://messenger.com -incognito
goto list
)

if %op%==4 (
exit
)
if %op%==' ' goto list
if not %op%=%op% goto list