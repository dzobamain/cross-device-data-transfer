@echo off
setlocal enabledelayedexpansion

set OUT=CDDT.exe
set SRC=

for /r %%f in (*.cpp) do (
    set "SRC=!SRC! %%f"
)

if "%SRC%"=="" (
    echo No .cpp files found.
    exit /b 1
)

g++ %SRC% -o %OUT%
if errorlevel 1 (
    echo Build failed.
    exit /b 1
)

echo Build complete. Executable is: %OUT%
pause
