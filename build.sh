#!/bin/bash
# simple bash script for executing build

RDIR=$(pwd)
THREADS=5
DEFCONFIG=kali_defconfig
DEVICE=jfltexx

export ARCH=arm
export CROSS_COMPILE=`pwd`/toolchain/bin/arm-cortex_a15-linux-gnueabihf-

echo "Cleaning build..."
rm -rf build && mkdir build

make -C $RDIR O=build $DEFCONFIG &&
echo "Starting build for $DEVICE..." &&
make -C $RDIR O=build -j"$THREADS" &&
echo "Done building $DEVICE."
