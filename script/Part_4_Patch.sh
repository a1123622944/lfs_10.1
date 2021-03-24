#!/bin/bash
dirs
pck_name="patch-2.7.6"
tar -xf $pck_name.tar.xz
echo $pck_name
pushd make-4.3

./configure --prefix=/usr
make
#make check
make install
popd

