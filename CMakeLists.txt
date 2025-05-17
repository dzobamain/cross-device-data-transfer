cmake_minimum_required(VERSION 3.20)

project(cross-device-data-transfer VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Widgets)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Widgets)

set(PROJECT_SOURCES
        src/main.cpp

        #Windows
        src/qtwindows/mainwindow.cpp
        src/qtwindows/mainwindow.h
        src/qtwindows/mainwindow.ui

        #Core
        src/file/fcrud.cpp
        src/file/fcrud.h
        src/file/zip.cpp
        src/file/zip.h
        src/user/user_data.cpp
        src/user/user_data.h
)

if(${QT_VERSION_MAJOR} GREATER_EQUAL 6)
    qt_add_executable(cross-device-data-transfer
        MANUAL_FINALIZATION
        ${PROJECT_SOURCES}
    )
# Define target properties for Android with Qt 6 as:
#    set_property(TARGET cross-device-data-transfer APPEND PROPERTY QT_ANDROID_PACKAGE_SOURCE_DIR
#                 ${CMAKE_CURRENT_SOURCE_DIR}/android)
# For more information, see https://doc.qt.io/qt-6/qt-add-executable.html#target-creation
else()
    if(ANDROID)
        add_library(cross-device-data-transfer SHARED
            ${PROJECT_SOURCES}
        )
# Define properties for Android with Qt 5 after find_package() calls as:
#    set(ANDROID_PACKAGE_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/android")
    else()
        add_executable(cross-device-data-transfer
            ${PROJECT_SOURCES}
        )
    endif()
endif()

target_link_libraries(cross-device-data-transfer PRIVATE Qt${QT_VERSION_MAJOR}::Widgets)

if(WIN32)
    # path for Windows
    target_include_directories(${PROJECT_NAME} PRIVATE "C:/path/to/libzip/include")
    target_link_libraries(${PROJECT_NAME} PRIVATE "C:/path/to/libzip/lib/libzip.lib")
elseif(APPLE)
    # macOS, libzip via Homebrew
    target_include_directories(${PROJECT_NAME} PRIVATE /opt/homebrew/include)
    target_link_libraries(${PROJECT_NAME} PRIVATE /opt/homebrew/lib/libzip.dylib)
elseif(UNIX)
    # Linux
    target_include_directories(${PROJECT_NAME} PRIVATE /usr/include)
    target_link_libraries(${PROJECT_NAME} PRIVATE /usr/lib/libzip.so)
endif()

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
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

if(QT_VERSION_MAJOR EQUAL 6)
    qt_finalize_executable(cross-device-data-transfer)
endif()
