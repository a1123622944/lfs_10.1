#!/bin/bash
dirs
pck_name="gdbm-1.19"
echo $pck_name.tar.gz
tar -xf $pck_name.tar.gz
echo $pck_name
pushd gdbm-1.19
./configure --prefix=/usr  --disable-static  --enable-libgdbm-compat
make
#make check
make install
popd

