#!/bin/bash
set -e

# -------- Colors --------
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[1;34m'
NC='\033[0m'

OUTPUT_NAME="cross-device-data-transfer.out"

info() { echo -e "${BLUE}$1${NC}"; }
success() { echo -e "${GREEN}$1${NC}"; }
error() { echo -e "${RED}$1${NC}"; }

# -------- Check wx-config --------
if ! command -v wx-config &>/dev/null; then
    error "wxWidgets is not installed. Install it first:"
    echo "Check install/install_lib.*"
    exit 1
fi

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

SRC_FILES=(
  src/main.cpp
  src/file/fcrud.cpp
  src/file/tozip.cpp
  src/user/user_data.cpp
)

INCLUDE_DIRS=(
  -Iinclude
  -Ibuild/zlib/include
  -Ibuild/libzip/include
)

STATIC_LIBS=(
  build/zlib/lib/libz.a
  build/libzip/lib/libzip.a
)

SYSTEM_LIBS=(
  -lbz2
  -llzma
  -lzstd
)

BUILD_DIR="build/bin"
OUTPUT_PATH="$BUILD_DIR/$OUTPUT_NAME"

# -------- Compile --------
info "Compiling the main program..."
clang++ -std=c++17 \
    "${SRC_FILES[@]}" \
    "${INCLUDE_DIRS[@]}" \
    "${STATIC_LIBS[@]}" \
    $(wx-config --cxxflags) \
    $(wx-config --libs std,core,base) \
    "${SYSTEM_LIBS[@]}" \
    -o "$OUTPUT_PATH"

success "Build completed successfully!"
echo -e "Run: ${BLUE}./${OUTPUT_PATH}${NC}"
