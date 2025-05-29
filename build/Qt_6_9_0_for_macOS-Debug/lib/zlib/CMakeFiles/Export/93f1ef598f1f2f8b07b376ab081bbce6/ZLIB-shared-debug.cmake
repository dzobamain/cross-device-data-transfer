#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ZLIB::ZLIB" for configuration "Debug"
set_property(TARGET ZLIB::ZLIB APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ZLIB::ZLIB PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libz.1.4.1.1.dylib"
  IMPORTED_SONAME_DEBUG "@rpath/libz.1.dylib"
  )

list(APPEND _cmake_import_check_targets ZLIB::ZLIB )
list(APPEND _cmake_import_check_files_for_ZLIB::ZLIB "${_IMPORT_PREFIX}/lib/libz.1.4.1.1.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
