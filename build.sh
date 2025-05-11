#!/bin/bash

OUT="cddt"
SRC=$(find . -name "*.cpp")

LIBZIP_PREFIX="/opt/homebrew/opt/libzip" # Only for Homebrew, MacOS!!!

if clang++ -std=c++17 -I/opt/homebrew/include -L/opt/homebrew/lib -lzip $SRC -o $OUT; then
    echo "✅ Build complete. Executable is: $OUT"
else
    echo "❌ Build failed."
fi