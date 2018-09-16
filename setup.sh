#!/bin/bash
set -e

qemu-debootstrap --arch=armhf --variant=minbase xenial /rootfs
mount --bind /dev/pts /rootfs/dev/pts
mount --bind /proc /rootfs/proc
chroot /rootfs sh -c "apt-get update \
    && apt-get install -y \
        libx11-dev \
        libxkbfile-dev \
        pkg-config \
        libsecret-1-dev \
        libglib2.0"