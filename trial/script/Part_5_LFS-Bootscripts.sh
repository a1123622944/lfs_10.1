#!/bin/bash
dirs
pck_name="lfs-bootscripts-20210201"
tar -xf $pck_name.tar.xz
echo $pck_name
pushd lfs-bootscripts-20210201

make install
popd

