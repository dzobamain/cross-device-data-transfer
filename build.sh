#!/bin/bash

OUT="cddt"
SRC=$(find . -name "*.cpp")

LIBZIP_PREFIX="/opt/homebrew/opt/libzip"

if g++ -std=c++20 -Ifile -I$LIBZIP_PREFIX/include -L$LIBZIP_PREFIX/lib -lzip $SRC -o $OUT; then
    echo "✅ Build complete. Executable is: $OUT"
else
    echo "❌ Build failed."
fi