#!/bin/bash
dirs
pck_name="kbd-2.4.0"
tar -xf $pck_name.tar.xz
echo $pck_name
pushd kbd-2.4.0

patch -Np1 -i ../kbd-2.4.0-backspace-1.patch
sed -i '/RESIZECONS_PROGS=/s/yes/no/' configure
sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in
./configure --prefix=/usr --disable-vlock
make
#make check
make install
popd

