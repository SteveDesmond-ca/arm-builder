#!/bin/bash
set -e

qemu-debootstrap --arch=armhf --variant=minbase xenial /rootfs
mount --bind /dev/pts /rootfs/dev/pts
mount --bind /proc /rootfs/proc