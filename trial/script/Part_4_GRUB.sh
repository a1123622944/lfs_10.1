#!/bin/bash
dirs
pck_name="grub-2.04"
tar -xf $pck_name.tar.xz
echo $pck_name
pushd grub-2.04
sed "s/gold-version/& -R .note.gnu.property/" \
    -i Makefile.in grub-core/Makefile.in
./configure --prefix=/usr          \
            --sbindir=/sbin        \
            --sysconfdir=/etc      \
            --disable-efiemu       \
            --disable-werror
make
#make check
make install
mv -v /etc/bash_completion.d/grub /usr/share/bash-completion/completions
popd

