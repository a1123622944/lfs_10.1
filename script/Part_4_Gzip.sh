#!/bin/bash
dirs
pck_name="gzip-1.10"
tar -xf $pck_name.tar.xz
echo $pck_name
pushd gzip-1.10
./configure --prefix=/usr
make
#make check
make install
mv -v /usr/bin/gzip /bin
popd

