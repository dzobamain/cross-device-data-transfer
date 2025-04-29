#!/bin/bash

OUT="CDDT"

SRC=$(find . -name "*.cpp")

if g++ $SRC -o $OUT; then
    echo "Build complete. Executable is: $OUT"
else
    echo "Build failed."
fi