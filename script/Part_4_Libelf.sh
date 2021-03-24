#!/bin/bash
dirs
pck_name="elfutils-0.183"
tar -xf $pck_name.tar.bz2
echo $pck_name
pushd elfutils-0.183
./configure --prefix=/usr                \
            --disable-debuginfod         \
            --enable-libdebuginfod=dummy \
            --libdir=/lib
make -C libelf install
install -vm644 config/libelf.pc /usr/lib/pkgconfig
rm /lib/libelf.a
popd

