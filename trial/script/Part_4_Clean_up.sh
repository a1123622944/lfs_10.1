#!/bin/bash
rm -rf /tmp/*
logout
chroot "$LFS" /usr/bin/env -i  HOME=/root TERM="$TERM"  PS1='(lfs chroot) \u:\w\$ '  PATH=/bin:/usr/bin:/sbin:/usr/sbin  /bin/bash --login
find /usr/lib /usr/libexec -name \*.la -delete
find /usr -depth -name $(uname -m)-lfs-linux-gnu\* | xargs rm -rf
rm -rf /tools
userdel -r tester
