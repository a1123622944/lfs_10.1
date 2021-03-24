#!/bin/bash
dirs
pck_name="expat-2.2.10"
echo $pck_name.tar.gz
tar -xf $pck_name.tar.xz
echo $pck_name
pushd expat-2.2.10
./configure --prefix=/usr  --disable-static  --docdir=/usr/share/doc/expat-2.2.10
make
#make check
make install
./configure --prefix=/usr  --disable-static  --enable-libgdddbm-compat
popd

