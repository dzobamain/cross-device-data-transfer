#!/bin/bash

OUT="cddt"

SRC=$(find . -name "*.cpp")

if g++ -std=c++17 $SRC -o $OUT; then
    echo "Build complete. Executable is: $OUT"
else
    echo $SRC
    echo "Build failed."
fi