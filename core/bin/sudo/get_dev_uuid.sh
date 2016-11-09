#!/usr/bin/env bash

# This runs the blkid command on some /dev device. We don't particularly care which one,
# since this command only reads.

source libs.sh

if check_arg "$1" "$DEVICE_RE"; then
    /sbin/blkid -o value -s UUID "$1"
fi
