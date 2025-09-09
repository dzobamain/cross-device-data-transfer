#!/bin/bash
# build_project.sh

set -e

# -------- Colors --------
GREEN='\033[0;32m'
BLUE='\033[1;34m'
RED='\033[0;31m'
NC='\033[0m'

info()    { echo -e "${BLUE}$1${NC}"; }
success() { echo -e "${GREEN}$1${NC}"; }
error()   { echo -e "${RED}$1${NC}"; }

OUTPUT_NAME="cross-device-data-transfer.out"
BUILD_DIR="build/bin"
OUTPUT_PATH="$BUILD_DIR/$OUTPUT_NAME"

info "Cleaning previous build..."
rm -rf "$OUTPUT_PATH"
mkdir -p "$BUILD_DIR"

# -------- Use local wx-config if available --------
if [ -f build/wx/bin/wx-config ]; then
    export PATH="$(pwd)/build/wx/bin:$PATH"
    info "Using local wxWidgets from build/wx/bin/wx-config"
fi

# -------- Check wx-config --------
if ! command -v wx-config &>/dev/null; then
    error "wxWidgets not found. Please install it or add wx-config to PATH."
    exit 1
fi

# -------- Source files --------
SRC_FILES=(
  src/main.cpp
  src/file/fcrud.cpp
  src/file/tozip.cpp
  src/user/user_data.cpp
  wxui/mainwindow.cpp
  wxui/wxPanelForTab.cpp
)

# -------- Include directories --------
INCLUDE_DIRS=(
  -Iinclude
  -Ibuild/zlib/include
  -Ibuild/libzip/include
  -Ilib/json
)

# -------- Static libraries --------
STATIC_LIBS=(
  build/zlib/lib/libz.a
  build/libzip/lib/libzip.a
)

# -------- System libraries --------
SYSTEM_LIBS=(
  -lbz2
  -llzma
  -lzstd
)

info "Compiling project..."
clang++ -std=c++17 \
    "${SRC_FILES[@]}" \
    "${INCLUDE_DIRS[@]}" \
    "${STATIC_LIBS[@]}" \
    $(wx-config --cxxflags) \
    $(wx-config --libs std,core,base) \
    "${SYSTEM_LIBS[@]}" \
    -o "$OUTPUT_PATH"

echo -e "\n${BLUE}📦 Linked libraries and includes:${NC}"
echo -e "  🔹 wxWidgets config: $(command -v wx-config)"
echo -e "  🔹 wxWidgets includes: $(wx-config --cxxflags)"
echo -e "  🔹 wxWidgets libs: $(wx-config --libs std,core,base)"
echo -e "  🔹 zlib: $(realpath build/zlib/lib/libz.a)"
echo -e "  🔹 libzip: $(realpath build/libzip/lib/libzip.a)"
echo -e "  🔹 zlib includes: $(realpath build/zlib/include)"
echo -e "  🔹 libzip includes: $(realpath build/libzip/include)"
echo -e "  🔹 json.hpp: $(realpath lib/json/json.hpp)"

success "✅ Project built successfully!"
echo -e "Run: ${BLUE}./${OUTPUT_PATH}${NC}"
