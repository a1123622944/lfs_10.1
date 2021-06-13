#!/bin/bash
dirs
pck_name="check-0.15.2"
echo $pck_name.tar.gz
tar -xf $pck_name.tar.gz
echo $pck_name
pushd check-0.15.2
./configure --prefix=/usr --disable-static
make
#make check
make docdir=/usr/share/doc/check-0.15.2 install
popd

