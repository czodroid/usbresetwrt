# OpenWRT usbreset

A clone of usbutils without lsusb; only usbreset

## Building

get the sdk, untar it, then cd to it

    ./scripts/feeds update -a
    make tools/install
    make toolchain/install

    cd feeds/packages/utils
    git clone https://github.com/czodroid/usbresetwrt
    cd ../../..
    ./scripts/feeds update -a
    ./scripts/feeds install usbresetwrt
    make menuconfig

Then in `Utilities  --->` select usbresetwrt `<*> usbresetwrt`

    make package/usbresetwrt/compile
    make package/index

opkg .ipk is a file like `bin/packages/arm_cortex-a7_neon-vfpv4/packages/usbresetwrt_1-2_arm_cortex-a7_neon-vfpv4.ipk`

## Source code
https://github.com/czodroid/usbresetwrt


## License

License: GPL-2.0 (http://www.gnu.org/copyleft)

Copyright: (C) 2024-2026 Olivier Sirol <czo@free.fr>

