#!/bin/bash
dirs
pck_name="findutils-4.8.0"
tar -xf $pck_name.tar.xz
echo $pck_name
pushd findutils-4.8.0
./configure --prefix=/usr --localstatedir=/var/lib/locate
make
chown -Rv tester .
make install
mv -v /usr/bin/find /bin
sed -i 's|find:=${BINDIR}|find:=/bin|' /usr/bin/updatedb
popd

