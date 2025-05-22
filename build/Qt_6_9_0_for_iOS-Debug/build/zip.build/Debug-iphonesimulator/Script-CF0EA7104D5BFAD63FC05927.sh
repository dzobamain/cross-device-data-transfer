#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib
  /Applications/Qt/Tools/CMake/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib/Debug${EFFECTIVE_PLATFORM_NAME}/libzip.5.5.dylib /Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib/Debug${EFFECTIVE_PLATFORM_NAME}/libzip.5.dylib /Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib/Debug${EFFECTIVE_PLATFORM_NAME}/libzip.dylib
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib
  /Applications/Qt/Tools/CMake/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib/Release${EFFECTIVE_PLATFORM_NAME}/libzip.5.5.dylib /Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib/Release${EFFECTIVE_PLATFORM_NAME}/libzip.5.dylib /Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib/Release${EFFECTIVE_PLATFORM_NAME}/libzip.dylib
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib
  /Applications/Qt/Tools/CMake/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib/MinSizeRel${EFFECTIVE_PLATFORM_NAME}/libzip.5.5.dylib /Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib/MinSizeRel${EFFECTIVE_PLATFORM_NAME}/libzip.5.dylib /Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib/MinSizeRel${EFFECTIVE_PLATFORM_NAME}/libzip.dylib
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib
  /Applications/Qt/Tools/CMake/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib/RelWithDebInfo${EFFECTIVE_PLATFORM_NAME}/libzip.5.5.dylib /Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib/RelWithDebInfo${EFFECTIVE_PLATFORM_NAME}/libzip.5.dylib /Users/volodymyrdzoba/it-hub/projects/cross-device-data-transfer/build/Qt_6_9_0_for_iOS-Debug/lib/libzip/lib/RelWithDebInfo${EFFECTIVE_PLATFORM_NAME}/libzip.dylib
fi

