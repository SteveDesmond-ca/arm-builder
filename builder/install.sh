#!/bin/bash
set -e

mount --bind /dev/pts /rootfs/dev/pts
mount --bind /proc /rootfs/proc

chroot /rootfs apt-get update
chroot /rootfs apt-get install -y \
    apt-utils \
    libicu-dev \
    libglib2.0 \
    libperl-dev \
    libpython-dev \
    libreadline-dev \
    libsecret-1-dev \
    libx11-dev \
    libxkbfile-dev \
    libxml2-dev \
    libxslt1-dev \
    pkg-config \
    tcl-dev \
    zlib1g-dev \
