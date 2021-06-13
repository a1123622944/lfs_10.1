#!/bin/bash
dirs
pck_name="libpipeline-1.5.3"
tar -xf $pck_name.tar.gz
echo $pck_name
pushd libpipeline-1.5.3
./configure --prefix=/usr
make
#make check
make install
popd

