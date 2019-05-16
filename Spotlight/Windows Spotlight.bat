@echo off
set name=%random%
md %name%
copy %USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets %name%\

cd %name%

ren *.* *.jpg
pause