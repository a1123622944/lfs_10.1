#!/bin/bash
dirs
pck_name="tar-1.34"
tar -xf $pck_name.tar.xz
echo $pck_name
pushd tar-1.34
FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr \
            --bindir=/bin
make
#make check
make install
make -C doc install-html docdir=/usr/share/doc/tar-1.34
popd

