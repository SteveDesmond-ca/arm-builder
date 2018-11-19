#!/bin/bash
set -e

chroot /rootfs apt-get update
chroot /rootfs apt-get install -y \
    libglib2.0 \
    libicu-dev \
    libperl-dev \
    libreadline-dev \
    libsecret-1-dev \
    libx11-dev \
    libxkbfile-dev \
    libxml2-dev \
    libxslt1-dev \
    pkg-config \
    tcl-dev \
    zlib1g-dev