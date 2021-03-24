#!/bin/bash
dirs
pck_name="linux-5.10.17"
tar -xf $pck_name.tar.gz
echo $pck_name
pushd linux-5.10.17
make mrproper
make defconfig
make
#make check
make modules_install
cp -iv arch/x86/boot/bzImage /boot/vmlinuz-5.10.17-lfs-10.1
cp -iv System.map /boot/System.map-5.10.17
cp -iv .config /boot/config-5.10.17
install -d /usr/share/doc/linux-5.10.17
cp -r Documentation/* /usr/share/doc/linux-5.10.17
install -v -m755 -d /etc/modprobe.d
cat > /etc/modprobe.d/usb.conf << "EOF"
# Begin /etc/modprobe.d/usb.conf

install ohci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i ohci_hcd ; true
install uhci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i uhci_hcd ; true

# End /etc/modprobe.d/usb.conf
EOF
popd

