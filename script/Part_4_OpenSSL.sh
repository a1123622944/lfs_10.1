#!/bin/bash
dirs
pck_name="openssl-1.1.1j"
echo $pck_name.tar.gz
tar -xf $pck_name.tar.gz
echo $pck_name
pushd openssl-1.1.1j
./config --prefix=/usr         \
         --openssldir=/etc/ssl \
         --libdir=lib          \
         shared                \
         zlib-dynamic
make
#make check
sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile
make MANSUFFIX=ssl install
mv -v /usr/share/doc/openssl /usr/share/doc/openssl-1.1.1j
cp -vfr doc/* /usr/share/doc/openssl-1.1.1j
popd

