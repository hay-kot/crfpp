ARCH=`uname -m`
if [[ ARCH = "x86_64" ]]; then
    echo "Setting amd64" 
    export BUILD_ARCH=x86_64-unknown-linux-gnu
else
    echo "Setting arm64" 
    export BUILD_ARCH=aarch64-unknown-linux-gnu 
fi
    echo "Done"
    
./configure --build=$BUILD_ARCH 
make 
make install 
ldconfig
