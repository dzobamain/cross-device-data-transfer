cmake_minimum_required(VERSION 3.20)

project(cross-device-data-transfer VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Widgets)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Widgets)

set(CMAKE_AUTOUIC_SEARCH_PATHS ${PROJECT_SOURCE_DIR}/ui)

set(HEADERS
    # QTWindow
    include/qtwindow/mainwindow.h
    include/qtwindow/tab/tprofile.h

    # Core
    include/file/fcrud.h
    include/file/tozip.h
    include/user/user_data.h
)

set(SOURCES
    src/main.cpp

    # QTWindow
    src/qtwindow/mainwindow.cpp
    include/qtwindow/mainwindow.h
    src/qtwindow/tab/tprofile.cpp

    # Core
    src/file/fcrud.cpp
    src/file/tozip.cpp
    src/user/user_data.cpp
)

set(UI_FILES
    ui/mainwindow.ui
)

set(RESOURCE_FILES
    src/resources.qrc
)

qt_add_executable(cross-device-data-transfer
    MANUAL_FINALIZATION
    ${SOURCES}
    ${UI_FILES}
    ${RESOURCE_FILES}
    ${HEADERS}
)

# Lib
target_link_libraries(cross-device-data-transfer PRIVATE Qt${QT_VERSION_MAJOR}::Widgets)
# - libzip
find_package(ZLIB REQUIRED)
include_directories(${ZLIB_INCLUDE_DIRS})
include_directories(${CMAKE_SOURCE_DIR}/lib/libzip)
add_subdirectory(lib/libzip)
target_link_libraries(${PROJECT_NAME} PRIVATE zip ZLIB::ZLIB)

# Include
target_include_directories(cross-device-data-transfer PRIVATE
    ${PROJECT_SOURCE_DIR}/include
    ${PROJECT_SOURCE_DIR}/ui
)

if(${QT_VERSION} VERSION_LESS 6.1.0)
    set(BUNDLE_ID_OPTION MACOSX_BUNDLE_GUI_IDENTIFIER com.example.cross-device-data-transfer)
endif()

set_target_properties(cross-device-data-transfer PROPERTIES
    ${BUNDLE_ID_OPTION}
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

include(GNUInstallDirs)
install(TARGETS cross-device-data-transfer
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_finalize_executable(cross-device-data-transfer)
