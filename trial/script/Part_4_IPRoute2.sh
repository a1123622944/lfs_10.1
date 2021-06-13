#!/bin/bash
dirs
pck_name="iproute2-5.10.0"
echo $pck_name.tar.xz
tar -xf $pck_name.tar.xz
echo $pck_name
pushd iproute2-5.10.0
sed -i /ARPD/d Makefile
rm -fv man/man8/arpd.8
sed -i 's/.m_ipt.o//' tc/Makefile
make
#make check
make DOCDIR=/usr/share/doc/iproute2-5.10.0 install
popd

