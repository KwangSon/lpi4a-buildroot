#!/bin/sh

BOARD_DIR="$(dirname $0)"
MKIMAGE=$HOST_DIR/bin/mkimage

if [ -e $BINARIES_DIR/Image ]; then
    $MKIMAGE -A riscv -O linux -T kernel -C none \
	     -n "linux with sbi" -d $BINARIES_DIR/fw_payload.bin $BINARIES_DIR/uImage
fi