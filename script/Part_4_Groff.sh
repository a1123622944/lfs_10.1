#!/bin/bash
dirs
pck_name="groff-1.22.4"
echo $pck_name.tar.gz
tar -xf $pck_name.tar.gz
echo $pck_name
pushd groff-1.22.4
PAGE=A4 ./configure --prefix=/usr
make -j1
#make check
make install
popd

