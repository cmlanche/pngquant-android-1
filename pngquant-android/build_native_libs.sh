#!/usr/bin/env bash
# Builds our native library using the Android NDK.

set -e

cd pngquant-android/src/main/
../../../android-ndk-r10e/ndk-build -j8
rm -R jniLibs | true
mv libs jniLibs
