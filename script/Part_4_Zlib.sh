#!/bin/bash
dirs
pck_name="zlib-1.2.11"
tar -xf $pck_name.tar.xz
echo $pck_name
pushd zlib-1.2.11
#make check
make install
mv -v /usr/lib/libz.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libz.so) /usr/lib/libz.so
popd

