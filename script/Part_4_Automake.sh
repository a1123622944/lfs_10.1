#!/bin/bash
dirs
pck_name="automake-1.16.3"
echo $pck_name.tar.xz
tar -xf $pck_name.tar.xz
echo $pck_name
pushd automake-1.16.3
sed -i "s/''/etags/" t/tags-lisp-space.sh
./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.16.3
make
#make check
make install
popd

