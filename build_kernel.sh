#!/bin/bash

mkdir out

make -j$(nproc) -C $(pwd) O=$(pwd)/out ARCH=x86 LLVM=1 LLVM_IAS=1 wsl2_defconfig || exit 1
make -j$(nproc) -C $(pwd) O=$(pwd)/out ARCH=x86 LLVM=1 LLVM_IAS=1 || exit 1

cp $(pwd)/out/arch/x86/boot/bzImage $(pwd)/out/bzImage
