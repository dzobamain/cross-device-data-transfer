@echo off
setlocal enabledelayedexpansion

:: -------- Colors (only for echo) --------
set "GREEN=[OK]"
set "RED=[ERROR]"
set "BLUE=[INFO]"

set "OUTPUT_NAME=cross-device-data-transfer.exe"
set "BUILD_DIR=build\bin"
set "OUTPUT_PATH=%BUILD_DIR%\%OUTPUT_NAME%"

:: -------- Check wx-config --------
where wx-config >nul 2>nul
if errorlevel 1 (
    echo %RED% wxWidgets is not installed. Install it first.
    echo Check install\install_lib.*
    exit /b 1
)

:: -------- Extra WX paths (adjust as needed) --------
set "WX_INCLUDE_1=C:\wxWidgets\include\wx-3.3"
set "WX_INCLUDE_2=C:\wxWidgets\lib\wx\include\msw-unicode-3.3"

:: -------- Create build directories --------
echo %BLUE% Creating build directories...
mkdir build\zlib 2>nul
mkdir build\libzip 2>nul
mkdir "%BUILD_DIR%" 2>nul

:: -------- Build zlib --------
if not exist build\zlib\lib\libz.a (
    echo %BLUE% Building zlib...
    pushd lib\zlib
    bash -c "./configure --static --prefix=$(pwd)/../../build/zlib && make && make install"
    popd
) else (
    echo %GREEN% zlib already built.
)

:: -------- Build libzip --------
if not exist build\libzip\lib\libzip.a (
    echo %BLUE% Building libzip...
    pushd lib\libzip
    mkdir build 2>nul
    pushd build

    set "ZLIB_INSTALL_DIR=%CD%\..\..\..\build\zlib"
    set "LIBZIP_INSTALL_DIR=%CD%\..\..\..\build\libzip"

    cmake .. ^
        -DZLIB_LIBRARY="%ZLIB_INSTALL_DIR%\lib\libz.a" ^
        -DZLIB_INCLUDE_DIR="%ZLIB_INSTALL_DIR%\include" ^
        -DCMAKE_INSTALL_PREFIX="%LIBZIP_INSTALL_DIR%" ^
        -DBUILD_SHARED_LIBS=OFF ^
        -DENABLE_BZIP2=ON ^
        -DENABLE_LZMA=ON ^
        -DENABLE_ZSTD=ON

    cmake --build . --config Release
    cmake --install . --config Release
    popd
    popd
) else (
    echo %GREEN% libzip already built.
)

:: -------- Compile --------
echo %BLUE% Compiling the main program...

set SRC_FILES=src\main.cpp src\file\fcrud.cpp src\file\tozip.cpp src\user\user_data.cpp wxui\mainwindow.cpp wxui\wxPanelForTab.cpp
set INCLUDE_DIRS=-Iinclude -Ibuild\zlib\include -Ibuild\libzip\include -Ilib\json -I%WX_INCLUDE_1% -I%WX_INCLUDE_2%
set STATIC_LIBS=build\zlib\lib\libz.a build\libzip\lib\libzip.a
set SYSTEM_LIBS=-lbz2 -llzma -lzstd

clang++ -std=c++17 %SRC_FILES% %INCLUDE_DIRS% %STATIC_LIBS% ^
    %SYSTEM_LIBS% ^
    %WX_INCLUDE_1%\wx-config --cxxflags ^
    %WX_INCLUDE_1%\wx-config --libs std,core,base ^
    -o "%OUTPUT_PATH%"

echo %GREEN% Build completed successfully!
echo Run: .\%OUTPUT_PATH%
