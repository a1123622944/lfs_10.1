#!/bin/bash
dirs
pck_name="meson-0.57.1"
tar -xf $pck_name.tar.gz
echo $pck_name
pushd meson-0.57.1
python3 setup.py build
python3 setup.py install --root=dest
cp -rv dest/* /
popd

