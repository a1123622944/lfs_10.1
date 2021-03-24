#!/bin/bash
dirs
pck_name="kmod-28"
echo $pck_name.tar.xz
tar -xf $pck_name.tar.xz
echo $pck_name
pushd kmod-28
./configure --prefix=/usr          \
            --bindir=/bin          \
            --sysconfdir=/etc      \
            --with-rootlibdir=/lib \
            --with-xz              \
            --with-zstd            \
            --with-zlib
make
#make check
make install
for target in depmod insmod lsmod modinfo modprobe rmmod; do
  ln -sfv ../bin/kmod /sbin/$target
done

ln -sfv kmod /bin/lsmod
popd

