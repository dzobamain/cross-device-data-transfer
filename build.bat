@echo off
setlocal enabledelayedexpansion

echo Creating directories...
mkdir build\zlib 2>nul
mkdir build\libzip 2>nul
mkdir build\bin 2>nul

:: === ZLIB ===
if not exist build\zlib\lib\zlibstatic.lib (
    echo Compiling zlib...
    cd lib\zlib
    mkdir build 2>nul
    cd build
    cmake .. -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=..\..\..\build\zlib -DBUILD_SHARED_LIBS=OFF
    cmake --build . --target install --config Release
    cd ..\..\..
) else (
    echo zlib is already built
)

:: === LIBZIP ===
if not exist build\libzip\lib\libzip.lib (
    echo Compiling libzip...
    cd lib\libzip
    mkdir build 2>nul
    cd build

    set ZLIB_PATH=%~dp0build\zlib
    cmake .. -G "MinGW Makefiles" ^
        -DZLIB_LIBRARY=%ZLIB_PATH:\=\\%\lib\zlibstatic.lib ^
        -DZLIB_INCLUDE_DIR=%ZLIB_PATH:\=\\%\include ^
        -DCMAKE_INSTALL_PREFIX=%~dp0build\libzip ^
        -DBUILD_SHARED_LIBS=OFF

    cmake --build . --target install --config Release
    cd ..\..\..
) else (
    echo libzip is already built
)

echo Current directory: %CD%
if exist src\main.cpp (
    echo Found src\main.cpp
) else (
    echo ERROR: src\main.cpp not found
    exit /b 1
)

echo Compiling the main program...
g++ src\main.cpp ^
  -Iinclude ^
  -Ibuild\zlib\include ^
  -Ibuild\libzip\include ^
  build\zlib\lib\zlibstatic.lib ^
  build\libzip\lib\libzip.lib ^
  -o build\bin\cddt.exe

echo Build completed successfully. Run: build\bin\cddt.exe
