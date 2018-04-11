#!/bin/bash

ROOTFS_PATH="$(readlink -f $0 | xargs dirname)/rootfs"

sudo chroot $ROOTFS_PATH /bin/bash