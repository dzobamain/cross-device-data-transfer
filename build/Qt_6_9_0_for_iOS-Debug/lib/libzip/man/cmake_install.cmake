# Install script for directory: /Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/lib/libzip/man

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/ZIP_SOURCE_GET_ARGS.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/libzip.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man5" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip.5")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_add.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_add_dir.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_close.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_compression_method_supported.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_delete.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_dir_add.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_discard.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_encryption_method_supported.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man5" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_error.5")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_error_clear.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_error_code_system.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_error_code_zip.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_error_fini.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_error_get.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_error_get_sys_type.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_error_init.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_error_set.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_error_set_from_source.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_error_strerror.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_error_system_type.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_error_to_data.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_error_to_str.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_errors.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_fclose.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_fdopen.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man5" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file.5")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_add.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_attributes_init.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_extra_field_delete.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_extra_field_get.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_extra_field_set.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_extra_fields_count.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_get_comment.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_get_error.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_get_external_attributes.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_rename.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_set_comment.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_set_encryption.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_set_external_attributes.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_set_mtime.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_strerror.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_fopen.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_fopen_encrypted.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_fread.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_fseek.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_ftell.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_get_archive_comment.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_get_archive_flag.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_get_error.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_get_file_comment.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_get_name.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_get_num_entries.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_get_num_files.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_libzip_version.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_name_locate.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_open.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_register_cancel_callback_with_state.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_register_progress_callback.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_register_progress_callback_with_state.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_rename.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_set_archive_comment.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_set_archive_flag.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_set_default_password.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_set_file_comment.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_set_file_compression.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man5" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source.5")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_begin_write.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_buffer.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_buffer_fragment.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_close.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_commit_write.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_error.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_file.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_filep.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_free.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_function.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_is_deleted.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_is_seekable.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_layered.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_keep.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_make_command_bitmap.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_open.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_read.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_rollback_write.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_seek.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_seek_compute_offset.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_seek_write.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_stat.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_tell.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_tell_write.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_win32a.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_win32handle.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_win32w.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_window_create.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_write.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_zip.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_zip_file.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_stat.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_stat_init.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_unchange.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_unchange_all.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_unchange_archive.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zipcmp.1")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zipmerge.1")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/ziptool.1")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_replace.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_add.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_file_error_clear.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_error_clear.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_file_error_get.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_error_get.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_error_init_with_code.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_error_init.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_file_replace.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_add.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_file_extra_field_delete_by_id.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_extra_field_delete.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_file_extra_field_get_by_id.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_extra_field_get.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_file_extra_fields_count_by_id.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_extra_fields_count.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_file_set_dostime.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_set_mtime.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_strerror.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_file_strerror.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_fopen_index.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_fopen.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_fopen_index_encrypted.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_fopen_encrypted.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_file_is_seekable.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_fseek.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_open_from_source.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_open.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_source_begin_write_cloning.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_begin_write.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_source_buffer_create.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_buffer.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_source_buffer_fragment_create.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_buffer_fragment.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_source_file_create.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_file.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_source_filep_create.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_filep.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_source_function_create.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_function.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_source_layered_create.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_layered.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_source_win32a_create.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_win32a.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_source_win32handle_create.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_win32handle.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_source_win32w_create.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_win32w.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_source_zip_create.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_zip.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_source_zip_file_create.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_source_zip_file.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE RENAME "zip_stat_index.3" FILES "/Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/man/zip_stat.3")
endif()

