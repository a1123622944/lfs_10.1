#!/bin/bash
tar -xf bash-5.1.tar.gz
pushd bash-5.1
sed -i  '/^bashline.o:.*shmbchar.h/a bashline.o: ${DEFDIR}/builtext.h' Makefile.in
./configure --prefix=/usr                    \
            --docdir=/usr/share/doc/bash-5.1 \
            --without-bash-malloc            \
            --with-installed-readline
make
chown -Rv tester .
make install
mv -vf /usr/bin/bash /bin
exec /bin/bash --login +h
popd

