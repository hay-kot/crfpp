#!/bin/bash

ARCH=`uname -m`
if [[ ARCH = "x86_64" ]]; then
    echo "Setting amd64" 
    export BUILD_ARCH=x86_64-unknown-linux-gnu
else
    echo "Setting arm v7" 
    export BUILD_ARCH=arm-unknown-linux-gnueabihf
fi
    echo "Done"

chmod +x configure 
autoreconf -fi
./configure --build=$BUILD_ARCH 
make 
make install 
ldconfig
