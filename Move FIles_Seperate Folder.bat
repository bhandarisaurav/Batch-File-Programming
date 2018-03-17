@echo off
setlocal EnableDelayedExpansion
pushd "E:\utorrents\.watching"
FOR %%G IN (*.mkv) DO (
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
pause