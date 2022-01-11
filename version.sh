#!/bin/sh
#
ARCH=$(uname -m)

config="icicle_kit_defconfig"

build_prefix="-mpfs-r"
branch_prefix="mpfs-linux-"
branch_postfix=".y"

#https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/Documentation/process/changes.rst?h=v5.13-rc1
#arm
#KERNEL_ARCH=arm
#DEBARCH=armhf
#toolchain="gcc_6_arm"
#toolchain="gcc_7_arm"
#toolchain="gcc_8_arm"
#toolchain="gcc_9_arm"
#toolchain="gcc_10_arm"
#toolchain="gcc_11_arm"
#arm64
#KERNEL_ARCH=arm64
#DEBARCH=arm64
#toolchain="gcc_6_aarch64"
#toolchain="gcc_7_aarch64"
#toolchain="gcc_8_aarch64"
#toolchain="gcc_9_aarch64"
#toolchain="gcc_10_aarch64"
#toolchain="gcc_11_aarch64"
#riscv64
KERNEL_ARCH=riscv
DEBARCH=riscv64
#toolchain="gcc_7_riscv64"
#toolchain="gcc_8_riscv64"
#toolchain="gcc_9_riscv64"
#toolchain="gcc_10_riscv64"
toolchain="gcc_11_riscv64"

#Kernel
KERNEL_REL=5.12
KERNEL_TAG=${KERNEL_REL}.19
kernel_rt=".X-rtY"
#Kernel Build
BUILD=${build_prefix}0

#v5.X-rcX + upto SHA
#prev_KERNEL_SHA=""
#KERNEL_SHA=""

#git branch
BRANCH="${branch_prefix}${KERNEL_REL}${branch_postfix}"

DISTRO=xross

ti_git_old_release="af8d45d947327131c662f7c9804e1b24b05336f5"
        ti_git_pre="af8d45d947327131c662f7c9804e1b24b05336f5"
       ti_git_post="05617585f5bf1ce3f06935cb7ed88925b540413b"
#
