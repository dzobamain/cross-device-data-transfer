# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/cross-device-data-transfer_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/cross-device-data-transfer_autogen.dir/ParseCache.txt"
  "cross-device-data-transfer_autogen"
  "lib/libzip/lib/CMakeFiles/zip_autogen.dir/AutogenUsed.txt"
  "lib/libzip/lib/CMakeFiles/zip_autogen.dir/ParseCache.txt"
  "lib/libzip/lib/zip_autogen"
  "lib/libzip/ossfuzz/CMakeFiles/zip_read_file_fuzzer_autogen.dir/AutogenUsed.txt"
  "lib/libzip/ossfuzz/CMakeFiles/zip_read_file_fuzzer_autogen.dir/ParseCache.txt"
  "lib/libzip/ossfuzz/CMakeFiles/zip_read_fuzzer_autogen.dir/AutogenUsed.txt"
  "lib/libzip/ossfuzz/CMakeFiles/zip_read_fuzzer_autogen.dir/ParseCache.txt"
  "lib/libzip/ossfuzz/CMakeFiles/zip_write_encrypt_aes256_file_fuzzer_autogen.dir/AutogenUsed.txt"
  "lib/libzip/ossfuzz/CMakeFiles/zip_write_encrypt_aes256_file_fuzzer_autogen.dir/ParseCache.txt"
  "lib/libzip/ossfuzz/CMakeFiles/zip_write_encrypt_pkware_file_fuzzer_autogen.dir/AutogenUsed.txt"
  "lib/libzip/ossfuzz/CMakeFiles/zip_write_encrypt_pkware_file_fuzzer_autogen.dir/ParseCache.txt"
  "lib/libzip/ossfuzz/zip_read_file_fuzzer_autogen"
  "lib/libzip/ossfuzz/zip_read_fuzzer_autogen"
  "lib/libzip/ossfuzz/zip_write_encrypt_aes256_file_fuzzer_autogen"
  "lib/libzip/ossfuzz/zip_write_encrypt_pkware_file_fuzzer_autogen"
  )
endif()
