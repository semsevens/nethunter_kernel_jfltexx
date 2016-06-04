#!/bin/bash
# simple bash script for executing build

RDIR=$(pwd)
THREADS=5

export ARCH=arm
export CROSS_COMPILE=`pwd`/toolchain/bin/arm-cortex_a15-linux-gnueabihf-

make clean
make kali_defconfig
make -j"$THREADS"
