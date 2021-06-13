#!/bin/bash
dirs
pck_name="XML-Parser-2.46"
echo $pck_name.tar.gz
tar -xf $pck_name.tar.gz
echo $pck_name
pushd XML-Parser-2.46
perl Makefile.PL
make
#make check
make install
popd

