#!/bin/bash
dirs
pck_name="gawk-5.1.0"
echo $pck_name.tar.xz
tar -xf $pck_name.tar.xz
echo $pck_name
pushd gawk-5.1.0
sed -i 's/extras//' Makefile.in
./configure --prefix=/usr
make
#make check
make install
mkdir -v /usr/share/doc/gawk-5.1.0
cp -v doc/{awkforai.txt,*.{eps,pdf,jpg}} /usr/share/doc/gawk-5.1.0
popd

