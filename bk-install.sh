#!/bin/bash
cd ..
mv libharu/ libharu-src/
# remove previous installation
rm -r libharu/ 
rm -r libharu-build/ 
mkdir libharu-build
mkdir libharu
cd libharu-build
cmake \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX=../libharu \
-DBUILD_SHARED_LIBS=On \
-DPNG_LIBRARY_RELEASE=../libpng/lib/libpng.so \
-DPNG_PNG_INCLUDE_DIR=../libpng/include \
-DZLIB_LIBRARY_RELEASE=../zlib/lib/libz.so \
-DZLIB_INCLUDE_DIR=../zlib/include \
../libharu-src
make -j 8
make install
cd ..
mkdir -p libharu/lib
cp libharu-build/src/libharu.so libharu/lib
rm -r libharu-build
cp libharu-src/bk.cmake libharu

