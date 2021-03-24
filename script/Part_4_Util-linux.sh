#!/bin/bash
dirs
pck_name="util-linux-2.36.2"
tar -xf $pck_name.tar.xz
echo $pck_name
pushd util-linux-2.36.2
./configure ADJTIME_PATH=/var/lib/hwclock/adjtime   \
            --docdir=/usr/share/doc/util-linux-2.36.2 \
            --disable-chfn-chsh  \
            --disable-login      \
            --disable-nologin    \
            --disable-su         \
            --disable-setpriv    \
            --disable-runuser    \
            --disable-pylibmount \
            --disable-static     \
            --without-python     \
            --without-systemd    \
            --without-systemdsystemunitdir \
            runstatedir=/run
make
#make check
chown -Rv tester .
make install
popd

