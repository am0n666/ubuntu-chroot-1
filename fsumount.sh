#!/bin/bash

ROOTFS_PATH="/home/huangxiaolu/proj/chroot/ubuntu-1604-lts"

    sudo umount $ROOTFS_PATH/dev
    sudo umount $ROOTFS_PATH/dev/pts

    sudo umount $ROOTFS_PATH/proc

    sudo umount $ROOTFS_PATH/sys
    sudo umount $ROOTFS_PATH/sys/kernel/debug
