@echo off

:start
cls
echo.
echo.
set /p input=Enter any operation: 
echo.
echo.
set /a res = %input%

echo The value of %input% is %res%

echo.
echo.
pause

goto start