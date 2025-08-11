@echo off
setlocal enabledelayedexpansion

set OUTPUT_NAME=cross-device-data-transfer.exe
set BUILD_DIR=build\bin
set OUTPUT_PATH=%BUILD_DIR%\%OUTPUT_NAME%

REM -------- Functions --------
:info
echo [INFO] %*
goto :eof

:success
echo [SUCCESS] %*
goto :eof

:error
echo [ERROR] %*
exit /b 1

REM -------- Check wx-config --------
where wx-config >nul 2>&1
if errorlevel 1 (
    call :error wxWidgets is not installed. Install it first:
    echo Check install/install_lib.*
    exit /b 1
)

call :info Creating build directories...
if not exist build\zlib mkdir build\zlib
if not exist build\libzip mkdir build\libzip
if not exist %BUILD_DIR% mkdir %BUILD_DIR%

REM -------- Build zlib --------
if not exist build\zlib\lib\libz.a (
    call :info Building zlib...
    pushd lib\zlib
    popd
) else (
    call :success zlib already built.
)

REM -------- Build libzip --------
if not exist build\libzip\lib\libzip.a (
    call :info Building libzip...
    pushd lib\libzip
    if not exist build mkdir build
    pushd build

    set ZLIB_INSTALL_DIR=%CD%\..\..\..\build\zlib
    set LIBZIP_INSTALL_DIR=%CD%\..\..\..\build\libzip

    cmake .. -DZLIB_LIBRARY="%ZLIB_INSTALL_DIR%\lib\libz.a" -DZLIB_INCLUDE_DIR="%ZLIB_INSTALL_DIR%\include" -DCMAKE_INSTALL_PREFIX="%LIBZIP_INSTALL_DIR%" -DBUILD_SHARED_LIBS=OFF -DENABLE_BZIP2=ON -DENABLE_LZMA=ON -DENABLE_ZSTD=ON

    cmake --build . --target install

    popd
    popd
) else (
    call :success libzip already built.
)

set SRC_FILES=src\main.cpp src\file\fcrud.cpp src\file\tozip.cpp src\user\user_data.cpp
set INCLUDE_DIRS=-Iinclude -Ibuild\zlib\include -Ibuild\libzip\include
set STATIC_LIBS=build\zlib\lib\libz.a build\libzip\lib\libzip.a
set SYSTEM_LIBS=-lbz2 -llzma -lzstd

REM -------- Compile --------
call :info Compiling the main program...

clang++ -std=c++17 %SRC_FILES% %INCLUDE_DIRS% %STATIC_LIBS% %SYSTEM_LIBS% -o %OUTPUT_PATH%

if errorlevel 1 (
    call :error Build failed.
    exit /b 1
)

call :success Build completed successfully!
echo Run: .\%OUTPUT_PATH%

endlocal
