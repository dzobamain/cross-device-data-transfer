cmake_minimum_required(VERSION 3.16)

project(cross-device-data-transfer VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# -------- Sources --------
set(SOURCES
    src/main.cpp
    src/file/fcrud.cpp
    src/file/tozip.cpp
    src/user/user_data.cpp
    wxui/mainwindow.cpp
    wxui/wxPanelForTab.cpp
)

# -------- Dependencies --------
include(FetchContent)

# --- wxWidgets ---
find_package(wxWidgets QUIET COMPONENTS core base std)
if(NOT wxWidgets_FOUND)
    message(STATUS "wxWidgets not found, fetching from GitHub...")
    FetchContent_Declare(
        wxWidgets
        GIT_REPOSITORY https://github.com/wxWidgets/wxWidgets.git
        GIT_TAG master
    )
    FetchContent_MakeAvailable(wxWidgets)
    find_package(wxWidgets REQUIRED COMPONENTS core base std)
endif()
include(${wxWidgets_USE_FILE})

# --- zlib ---
find_package(ZLIB QUIET)
if(NOT ZLIB_FOUND)
    message(STATUS "zlib not found, fetching...")
    FetchContent_Declare(
        zlib
        URL https://github.com/madler/zlib/archive/refs/tags/v1.3.tar.gz
    )
    FetchContent_MakeAvailable(zlib)
endif()

# --- libzip ---
find_package(PkgConfig QUIET)
pkg_check_modules(LIBZIP libzip)
if(NOT LIBZIP_FOUND)
    message(STATUS "libzip not found, fetching...")
    FetchContent_Declare(
        libzip
        URL https://libzip.org/download/libzip-1.10.1.tar.gz
    )
    set(BUILD_SHARED_LIBS OFF CACHE BOOL "" FORCE)
    set(ENABLE_BZIP2 ON CACHE BOOL "" FORCE)
    set(ENABLE_LZMA ON CACHE BOOL "" FORCE)
    set(ENABLE_ZSTD ON CACHE BOOL "" FORCE)
    FetchContent_MakeAvailable(libzip)
endif()

# -------- Executable --------
add_executable(${PROJECT_NAME} ${SOURCES})

# -------- Include directories --------
target_include_directories(${PROJECT_NAME} PRIVATE
    include
    lib/json
    ${wxWidgets_INCLUDE_DIRS}
    ${LIBZIP_INCLUDE_DIRS}
    ${ZLIB_INCLUDE_DIRS}
)

# -------- Linking --------
target_link_libraries(${PROJECT_NAME} PRIVATE
    ${wxWidgets_LIBRARIES}
    ZLIB::ZLIB
    ${LIBZIP_LIBRARIES}
    bz2
    lzma
    zstd
)

# -------- Install --------
install(TARGETS ${PROJECT_NAME} DESTINATION bin)
