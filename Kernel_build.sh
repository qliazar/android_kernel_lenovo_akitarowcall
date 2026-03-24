mkdir out
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=${PWD}/prebuilds/toolchain/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export CC=${PWD}/prebuilds/toolchain/clang-r353983c/bin/clang
make O=out akita_row_call_defconfig
make  -j4 O=out EXTRA_CFLAGS=-Wno-error EXTRA_CFLAGS=-Wno-error=strict-prototypes 2>&1 | tee Build_log.txt
