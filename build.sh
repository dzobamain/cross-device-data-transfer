#!/bin/bash
set -e

# -------- Colors --------
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[1;34m'
NC='\033[0m'

info() { echo -e "${BLUE}$1${NC}"; }
success() { echo -e "${GREEN}$1${NC}"; }
error() { echo -e "${RED}$1${NC}"; }

# -------- Install instructions --------
# Linux:
# - (Debian/Ubuntu):
#   sudo apt install build-essential cmake libbz2-dev liblzma-dev libzstd-dev
# - (Arch/Manjaro):
#   sudo pacman -S --needed base-devel cmake bzip2 xz zstd
#
# macOS (Homebrew):
#   brew install cmake bzip2 xz zstd zlib

# -------- Create directories --------
info "Creating build directories..."
mkdir -p build/zlib build/libzip build/bin

# -------- Build zlib --------
if [ ! -f build/zlib/lib/libz.a ]; then
    info "Building zlib..."
    cd lib/zlib
    ./configure --static --prefix="$(pwd)/../../build/zlib"
    make
    make install
    cd ../../..
else
    success "zlib already built."
fi

# -------- Build libzip --------
if [ ! -f build/libzip/lib/libzip.a ]; then
    info "Building libzip..."
    cd lib/libzip
    mkdir -p build && cd build

    ZLIB_INSTALL_DIR="$(cd ../../../build/zlib && pwd)"
    LIBZIP_INSTALL_DIR="$(pwd)/../../../build/libzip"

    cmake .. \
        -DZLIB_LIBRARY="$ZLIB_INSTALL_DIR/lib/libz.a" \
        -DZLIB_INCLUDE_DIR="$ZLIB_INSTALL_DIR/include" \
        -DCMAKE_INSTALL_PREFIX="$LIBZIP_INSTALL_DIR" \
        -DBUILD_SHARED_LIBS=OFF \
        -DENABLE_BZIP2=ON \
        -DENABLE_LZMA=ON \
        -DENABLE_ZSTD=ON

    make
    make install
    cd ../../../..
else
    success "libzip already built."
fi

# -------- Source files --------
SRC_FILES=(
  src/main.cpp
  src/file/fcrud.cpp
  src/file/tozip.cpp
  src/user/user_data.cpp
)

# -------- Include directories --------
INCLUDE_DIRS=(
  -Iinclude
  -Ibuild/zlib/include
  -Ibuild/libzip/include
)

# -------- Static libraries --------
STATIC_LIBS=(
  build/zlib/lib/libz.a
  build/libzip/lib/libzip.a
)

# -------- System libraries --------
if [[ "$OSTYPE" == "darwin"* ]]; then
  BREW_PREFIX=$(brew --prefix)
  INCLUDE_DIRS+=(-I"$BREW_PREFIX/include")
  SYSTEM_LIBS=(
    -L"$BREW_PREFIX/lib" -lbz2
    -L"$BREW_PREFIX/lib" -llzma
    -L"$BREW_PREFIX/lib" -lzstd
  )
else
  SYSTEM_LIBS=(
    -lbz2
    -llzma
    -lzstd
  )
fi

# -------- Output binary --------
OUT_FILE=build/bin/cross-device-data-transfer.out

# -------- Compile --------
info "Compiling the main program..."
g++ -std=c++17 "${SRC_FILES[@]}" "${INCLUDE_DIRS[@]}" "${STATIC_LIBS[@]}" "${SYSTEM_LIBS[@]}" -o "$OUT_FILE"

#mkdir -p build/bin/user/udata
#cp src/user/udata/user_data.txt build/bin/user/udata/user_data.txt

success "Build completed successfully!"
echo -e "Run: ${BLUE}./$OUT_FILE${NC}"
