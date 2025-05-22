# Install script for directory: /Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/lib/libzip

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/tmp")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

set(CMAKE_BINARY_DIR "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug")

if(NOT PLATFORM_NAME)
  if(NOT "$ENV{PLATFORM_NAME}" STREQUAL "")
    set(PLATFORM_NAME "$ENV{PLATFORM_NAME}")
  endif()
  if(NOT PLATFORM_NAME)
    set(PLATFORM_NAME iphonesimulator)
  endif()
endif()

if(NOT EFFECTIVE_PLATFORM_NAME)
  if(NOT "$ENV{EFFECTIVE_PLATFORM_NAME}" STREQUAL "")
    set(EFFECTIVE_PLATFORM_NAME "$ENV{EFFECTIVE_PLATFORM_NAME}")
  endif()
  if(NOT EFFECTIVE_PLATFORM_NAME)
    set(EFFECTIVE_PLATFORM_NAME -iphonesimulator)
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/libzip.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libzip/modules" TYPE FILE FILES
    "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/lib/libzip/cmake/FindNettle.cmake"
    "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/lib/libzip/cmake/Findzstd.cmake"
    "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/lib/libzip/cmake/FindMbedTLS.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/zipconf.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libzip" TYPE FILE FILES
    "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/libzip-config.cmake"
    "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/libzip-config-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libzip/libzip-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libzip/libzip-targets.cmake"
         "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/CMakeFiles/Export/ab63c3a9eda5ec24a2943b813039874c/libzip-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libzip/libzip-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libzip/libzip-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libzip" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/CMakeFiles/Export/ab63c3a9eda5ec24a2943b813039874c/libzip-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libzip" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/CMakeFiles/Export/ab63c3a9eda5ec24a2943b813039874c/libzip-targets-debug.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libzip" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/CMakeFiles/Export/ab63c3a9eda5ec24a2943b813039874c/libzip-targets-minsizerel.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libzip" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/CMakeFiles/Export/ab63c3a9eda5ec24a2943b813039874c/libzip-targets-relwithdebinfo.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libzip" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/CMakeFiles/Export/ab63c3a9eda5ec24a2943b813039874c/libzip-targets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libzip/libzip-bin-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libzip/libzip-bin-targets.cmake"
         "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/CMakeFiles/Export/ab63c3a9eda5ec24a2943b813039874c/libzip-bin-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libzip/libzip-bin-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libzip/libzip-bin-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libzip" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/CMakeFiles/Export/ab63c3a9eda5ec24a2943b813039874c/libzip-bin-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libzip" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/CMakeFiles/Export/ab63c3a9eda5ec24a2943b813039874c/libzip-bin-targets-debug.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libzip" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/CMakeFiles/Export/ab63c3a9eda5ec24a2943b813039874c/libzip-bin-targets-minsizerel.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libzip" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/CMakeFiles/Export/ab63c3a9eda5ec24a2943b813039874c/libzip-bin-targets-relwithdebinfo.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libzip" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/CMakeFiles/Export/ab63c3a9eda5ec24a2943b813039874c/libzip-bin-targets-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib/cmake_install.cmake")
  include("/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/cmake_install.cmake")
  include("/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/src/cmake_install.cmake")
  include("/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/ossfuzz/cmake_install.cmake")
  include("/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/examples/cmake_install.cmake")

endif()

