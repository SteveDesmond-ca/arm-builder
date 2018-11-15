#!/bin/bash
set -e

qemu-debootstrap --arch=armhf --variant=minbase xenial /rootfs
mount --bind /dev/pts /rootfs/dev/pts
mount --bind /proc /rootfs/proc
chroot /rootfs sh -c "apt-get update \
    && apt-get install -y \
        libglib2.0 \
        libreadline-dev \
        libsecret-1-dev \
        libx11-dev \
        libxkbfile-dev \
        pkg-config \
        zlib1g-dev"