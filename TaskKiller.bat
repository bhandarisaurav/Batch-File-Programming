@echo OFF
echo.
echo.
echo.

set /p name=Enter the name of the process (for eg chrome): 

echo.
echo.
echo.

TASKKILL /f /im %name%.exe

echo.
echo.
echo.
pause