# Install script for directory: /Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/Debug${EFFECTIVE_PLATFORM_NAME}/cross-device-data-transfer.app" USE_SOURCE_PERMISSIONS)
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./cross-device-data-transfer.app/cross-device-data-transfer" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./cross-device-data-transfer.app/cross-device-data-transfer")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib/Debug${EFFECTIVE_PLATFORM_NAME}"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./cross-device-data-transfer.app/cross-device-data-transfer")
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/Release${EFFECTIVE_PLATFORM_NAME}/cross-device-data-transfer.app" USE_SOURCE_PERMISSIONS)
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./cross-device-data-transfer.app/cross-device-data-transfer" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./cross-device-data-transfer.app/cross-device-data-transfer")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib/Release${EFFECTIVE_PLATFORM_NAME}"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./cross-device-data-transfer.app/cross-device-data-transfer")
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/MinSizeRel${EFFECTIVE_PLATFORM_NAME}/cross-device-data-transfer.app" USE_SOURCE_PERMISSIONS)
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./cross-device-data-transfer.app/cross-device-data-transfer" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./cross-device-data-transfer.app/cross-device-data-transfer")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib/MinSizeRel${EFFECTIVE_PLATFORM_NAME}"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./cross-device-data-transfer.app/cross-device-data-transfer")
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/RelWithDebInfo${EFFECTIVE_PLATFORM_NAME}/cross-device-data-transfer.app" USE_SOURCE_PERMISSIONS)
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./cross-device-data-transfer.app/cross-device-data-transfer" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./cross-device-data-transfer.app/cross-device-data-transfer")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib/RelWithDebInfo${EFFECTIVE_PLATFORM_NAME}"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./cross-device-data-transfer.app/cross-device-data-transfer")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
  file(WRITE "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
