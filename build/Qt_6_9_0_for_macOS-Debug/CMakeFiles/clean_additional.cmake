# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/cross-device-data-transfer_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/cross-device-data-transfer_autogen.dir/ParseCache.txt"
  "cross-device-data-transfer_autogen"
  )
endif()
