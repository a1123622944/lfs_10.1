#!/bin/bash
dirs
pck_name="less-563"
tar -xf $pck_name.tar.gz
echo $pck_name
pushd less-563
./configure --prefix=/usr --sysconfdir=/etc
make
#make check
make install
popd

