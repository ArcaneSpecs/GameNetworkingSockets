#!/bin/bash

# export OPENSSL_ROOT_DIR=/dev_sdks/android/android_openssl/ssl_1.1/arm64-v8a
# export OPENSSL_INCLUDE_DIRkkk=/dev_sdks/android/android_openssl/ssl_1.1/arm64-v8a/include

sudo rm -f CMakeCache.txt
sudo rm -rf CMakeFiles
sudo rm -rf _deps

sudo cmake -DCMAKE_TOOLCHAIN_FILE=/dev_sdks/android/ndk/21.4.7075529/build/cmake/android.toolchain.cmake -DANDROID_NDK_RPATH=/dev_sdks/android/ndk/21.4.7075529 -DANDROID_ABI=arm64-v8a -DANDROID_PLATFORM=android-21 -DCMAKE_CXX_FLAGS=-std=c++11 -DCMAKE_POSITION_INDEPENDENT_CODE=ON -Dprotobuf_BUILD_TESTS=OFF -DCMAKE_BUILD_TYPE=Release -DANDROID_STL=c++_static -DOpenSSLTag=OpenSSL_1_1_1e -DProtobufTag=v3.21.6 -G Ninja ..


