# Start a Raspberry Pi emulator
alias rpi="qemu-system-arm \
-cpu arm1176 \
-m 256 \
-M versatilepb \
-no-reboot \
-serial stdio \
-append \"root=/dev/sda2 panic=1 rootfstype=ext4 rw\" \
-kernel /nfs/Public/kernel-qemu \
-hda '/nfs/Public/Linux Distros/2015-02-16-raspbian-wheezy.img'"
