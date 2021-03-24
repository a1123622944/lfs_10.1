#!/bin/bash
dirs
pck_name="gperf-3.1"
echo $pck_name.tar.gz
tar -xf $pck_name.tar.gz
echo $pck_name
pushd gperf-3.1
./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.1
make
#make check
make install
popd

