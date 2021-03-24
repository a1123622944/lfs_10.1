#!/bin/bash
dirs
pck_name="procps-ng-3.3.17"
tar -xf $pck_name.tar.xz
echo $pck_name
pushd procps-3.3.17
./configure --prefix=/usr                            \
            --exec-prefix=                           \
            --libdir=/usr/lib                        \
            --docdir=/usr/share/doc/procps-ng-3.3.17 \
            --disable-static                         \
            --disable-kill
make
#make check
make install
mv -v /usr/lib/libprocps.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libprocps.so) /usr/lib/libprocps.so
popd

