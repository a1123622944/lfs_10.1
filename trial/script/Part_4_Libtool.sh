#!/bin/bash
tar -xf libtool-2.4.6.tar.xz
pushd libtool-2.4.6
./configure --prefix=/usr
make
#make check
make install
popd

