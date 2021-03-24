#!/bin/bash
dirs
pck_name="Python-3.9.2"
echo $pck_name.tar.xz
tar -xf $pck_name.tar.xz
echo $pck_name
pushd Python-3.9.2
./configure --prefix=/usr       \
            --enable-shared     \
            --with-system-expat \
            --with-system-ffi   \
            --with-ensurepip=yes
make
#make check
make install
install -v -dm755 /usr/share/doc/python-3.9.2/html 

tar --strip-components=1  \
    --no-same-owner       \
    --no-same-permissions \
    -C /usr/share/doc/python-3.9.2/html \
    -xvf ../python-3.9.2-docs-html.tar.bz2
popd

