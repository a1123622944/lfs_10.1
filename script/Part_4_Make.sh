#!/bin/bash
dirs
pck_name="make-4.3"
tar -xf $pck_name.tar.gz
echo $pck_name
pushd make-4.3

./configure --prefix=/usr
make
#make check
make install
popd

