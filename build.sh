#!/bin/bash
# simple bash script for executing build

RDIR=$(pwd)
THREADS=5

export ARCH=arm
export CROSS_COMPILE=`pwd`/toolchain/bin/arm-eabi-  

make clean
make kali_defconfig
make -j"$THREADS"
