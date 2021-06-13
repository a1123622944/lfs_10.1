#!/bin/bash
dirs
pck_name="autoconf-2.71"
echo $pck_name.tar.gz
tar -xf $pck_name.tar.xz
echo $pck_name
pushd autoconf-2.71
./configure --prefix=/usr
make
#make check
make install
popd

