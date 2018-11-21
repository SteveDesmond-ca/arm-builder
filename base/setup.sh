#!/bin/bash
set -e
qemu-debootstrap --arch=armhf --variant=minbase xenial /rootfs