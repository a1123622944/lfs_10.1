#!/bin/bash
dirs
pck_name="texinfo-6.7"
tar -xf $pck_name.tar.xz
echo $pck_name
pushd texinfo-6.7

./configure --prefix=/usr
make
#make check
make install
make TEXMF=/usr/share/texmf install-tex
pushd /usr/share/info
  rm -v dir
  for f in *
    do install-info $f dir 2>/dev/null
  done
popd
popd

