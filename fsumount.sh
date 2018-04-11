#!/bin/bash

ROOTFS_PATH="$(readlink -f $0 | xargs dirname)/rootfs"
sudo umount $ROOTFS_PATH/dev
sudo umount $ROOTFS_PATH/dev/pts

sudo umount $ROOTFS_PATH/proc

sudo umount $ROOTFS_PATH/sys
sudo umount $ROOTFS_PATH/sys/kernel/debug
