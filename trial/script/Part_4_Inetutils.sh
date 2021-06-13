#!/bin/bash
dirs
pck_name="inetutils-2.0"
tar -xf $pck_name.tar.xz
echo $pck_name
pushd inetutils-2.0
echo '#define PATH_PROCNET_DEV "/proc/net/dev"' >> ifconfig/ifconfig.h
./configure --prefix=/usr        \
            --localstatedir=/var \
            --disable-logger     \
            --disable-whois      \
            --disable-rcp        \
            --disable-rexec      \
            --disable-rlogin     \
            --disable-rsh        \
            --disable-servers
make 
#make check
make install
mv -v /usr/bin/{hostname,ping,ping6,traceroute} /bin
mv -v /usr/bin/ifconfig /sbin
popd

