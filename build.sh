#!/bin/bash
set -e

echo "🔧 Creating directories..."
mkdir -p build/zlib build/libzip build/bin

# === ZLIB ===
if [ ! -f build/zlib/lib/libz.a ]; then
  echo "📦 Compiling zlib..."
  cd lib/zlib
  ./configure --static --prefix=$(pwd)/../../build/zlib
  make
  make install
  cd ../../..
else
  echo "✅ zlib is already built"
fi

# === LIBZIP ===
if [ ! -f build/libzip/lib/libzip.a ]; then
  echo "Compiling libzip..."
  cd lib/libzip
  mkdir -p build && cd build

  ZLIB_INSTALL_DIR="$(cd ../../../build/zlib && pwd)"
  LIBZIP_INSTALL_DIR="$(pwd)/../../../build/libzip"

  cmake .. \
    -DZLIB_LIBRARY="$ZLIB_INSTALL_DIR/lib/libz.a" \
    -DZLIB_INCLUDE_DIR="$ZLIB_INSTALL_DIR/include" \
    -DCMAKE_INSTALL_PREFIX="$LIBZIP_INSTALL_DIR" \
    -DBUILD_SHARED_LIBS=OFF

  make
  make install
  cd ../../../..
else
  echo "libzip is already built"
fi

echo "Current directory: $(pwd)"
ls src/main.cpp

echo "Compiling the main program..."
g++ src/main.cpp \
  -Iinclude \
  -Ibuild/zlib/include \
  -Ibuild/libzip/include \
  build/zlib/lib/libz.a \
  build/libzip/lib/libzip.a \
  -o build/bin/cddt.out

echo "Build completed successfully! Run: ./build/bin/cddt.out"
