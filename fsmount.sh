#!/bin/bash

ROOTFS_PATH="$(readlink -f $0 | xargs dirname)/rootfs"

echo $ROOTFS_PATH
mountpoint $ROOTFS_PATH/proc > /dev/null

if [ $? != 0 ]; then
    sudo mount -o bind /dev $ROOTFS_PATH/dev
    sudo mount -o bind /dev/pts $ROOTFS_PATH/dev/pts

    sudo mount -o bind /proc $ROOTFS_PATH/proc

    sudo mount -o bind /sys $ROOTFS_PATH/sys
    sudo mount -o bind /sys/kernel/debug $ROOTFS_PATH/sys/kernel/debug
fi
