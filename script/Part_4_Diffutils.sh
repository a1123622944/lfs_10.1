#!/bin/bash
dirs
pck_name="diffutils-3.7"
tar -xf $pck_name.tar.xz
echo $pck_name
pushd diffutils-3.7
./configure --prefix=/usr
make
#make check
make install
popd

