#!/bin/bash
# install/reset_lib.sh

# -------- Environment Cleanup --------
# If you need to recompile all libraries from scratch — for example, after build errors,
# version conflicts, or changes in source code — this section will completely remove
# the lib/ and build/ directories. ⚠️ All downloaded and compiled dependencies will be deleted,
# so the next run of install_libs.sh will perform a full reinstall.

set -e

# -------- Colors --------
BLUE='\033[1;34m'
NC='\033[0m'

info() { echo -e "${BLUE}$1${NC}"; }

info "Cleaning lib/ and build/ directories..."
rm -rf lib/*
rm -rf build/*
