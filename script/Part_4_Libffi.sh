#!/bin/bash
dirs
pck_name="libffi-3.3"
echo $pck_name.tar.gz
tar -xf $pck_name.tar.gz
echo $pck_name
pushd libffi-3.3
./configure --prefix=/usr --disable-static --with-gcc-arch=native
make
#make check
make install
popd

