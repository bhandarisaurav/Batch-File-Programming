@echo off
setlocal EnableDelayedExpansion
set /p extension=Enter the Extension of Video Files:
set /p path=Enter the path of Video Files:
pushd "%path%"
FOR %%G IN (*.%extension%) DO (
  FOR /F "tokens=1 delims=." %%a IN ("%%G") do (
    set "outFolder=%%a"
    for /D %%i in (*.*) do (
      for /F "tokens=1 delims= " %%b IN ("%%i") do (
        if "%%a"=="%%b" set "outFolder=%%i"
      )
    )
    if not exist "!outfolder!" md "!outfolder!"
    move "%%G" "!outfolder!"
  )
)
popd