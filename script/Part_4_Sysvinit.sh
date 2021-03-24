#!/bin/bash
dirs
pck_name="sysvinit-2.98"
tar -xf $pck_name.tar.xz
echo $pck_name
pushd sysvinit-2.98
patch -Np1 -i ../sysvinit-2.98-consolidated-1.patch
make
#make check
make install
popd

