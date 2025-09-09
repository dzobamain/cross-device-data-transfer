#!/bin/bash
# install/install_lib.sh

set -e

# -------- Colors --------
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[1;34m'
NC='\033[0m'

info()    { echo -e "${BLUE}$1${NC}"; }
success() { echo -e "${GREEN}$1${NC}"; }
error()   { echo -e "${RED}$1${NC}"; }

# -------- Project Root --------
PROJECT_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$PROJECT_ROOT"

# -------- Create directories --------
mkdir -p lib build/zlib build/libzip build/wxWidgets

# -------- wxWidgets --------
if [ ! -f build/wxWidgets/bin/wx-config ]; then
    info "Downloading wxWidgets..."
    git clone https://github.com/wxWidgets/wxWidgets.git lib/wxWidgets
    cd lib/wxWidgets
    git submodule update --init --recursive
    cd "$PROJECT_ROOT"

    mkdir -p build/wxWidgets/build
    cd build/wxWidgets/build

    "$PROJECT_ROOT/lib/wxWidgets/configure" \
        --disable-shared \
        --prefix="$PROJECT_ROOT/build/wxWidgets"

    make -j4
    make install
    cd "$PROJECT_ROOT"

    success "wxWidgets installed successfully."
else
    success "wxWidgets already installed."
fi

# -------- zlib --------
if [ -f build/zlib/lib/libz.a ]; then
    success "zlib already built."
else
    if [ ! -d lib/zlib ]; then
        info "Downloading zlib..."
        curl -fL https://github.com/madler/zlib/archive/refs/tags/v1.3.tar.gz -o zlib.tar.gz
        tar -xzf zlib.tar.gz && mv zlib-1.3 lib/zlib && rm zlib.tar.gz
    fi

    info "Building zlib..."
    cd lib/zlib
    ./configure --static --prefix="$PROJECT_ROOT/build/zlib"
    make -j4
    make install
    cd "$PROJECT_ROOT"
    success "zlib built successfully."
fi

# -------- libzip --------
if [ -f build/libzip/lib/libzip.a ]; then
    success "libzip already built."
else
    if [ ! -d lib/libzip ]; then
        info "Downloading libzip..."
        curl -fL https://libzip.org/download/libzip-1.10.1.tar.gz -o libzip.tar.gz
        tar -xzf libzip.tar.gz && mv libzip-1.10.1 lib/libzip && rm libzip.tar.gz
    fi

    info "Building libzip..."
    mkdir -p lib/libzip/build
    cd lib/libzip/build

    ZLIB_INSTALL_DIR="$PROJECT_ROOT/build/zlib"
    LIBZIP_INSTALL_DIR="$PROJECT_ROOT/build/libzip"

    cmake .. \
        -DZLIB_LIBRARY="$ZLIB_INSTALL_DIR/lib/libz.a" \
        -DZLIB_INCLUDE_DIR="$ZLIB_INSTALL_DIR/include" \
        -DCMAKE_INSTALL_PREFIX="$LIBZIP_INSTALL_DIR" \
        -DBUILD_SHARED_LIBS=OFF \
        -DENABLE_BZIP2=ON \
        -DENABLE_LZMA=ON \
        -DENABLE_ZSTD=ON

    make -j4
    make install
    cd "$PROJECT_ROOT"
    success "libzip built successfully."
fi

# -------- json.hpp --------
JSON_PATH="$PROJECT_ROOT/lib/json/json.hpp"
if [ -f "$JSON_PATH" ]; then
    success "json.hpp already exists."
else
    info "Downloading json.hpp..."
    mkdir -p "$(dirname "$JSON_PATH")"
    curl -fL https://raw.githubusercontent.com/nlohmann/json/master/single_include/nlohmann/json.hpp -o "$JSON_PATH" || {
        error "❌ Failed to download json.hpp"
        exit 1
    }
    success "json.hpp downloaded."
fi

success "✅ All libraries are ready!"
