# lpi4a-buildroot

```
git clone https://github.com/buildroot/buildroot.git
cd buildroot
make BR2_EXTERNAL=../lpi4a-buildroot/ licheepi_4a_defconfig
make
```

```
make BR2_EXTERNAL=../lpi4a-buildroot/ menuconfig
make BR2_EXTERNAL=../lpi4a-buildroot/ savedefconfig
```

## boot
` $ load mmc 1:1 0x1a00000 fw_payload.bin; go 0x1a00000`

```
U-Boot 2023.10-rc2 (Aug 22 2023 - 05:11:19 +0000)

CPU:   rv64imafdc
Model: Sipeed Lichee Pi 4A
DRAM:  8 GiB
Core:  9 devices, 6 uclasses, devicetree: separate
MMC:   sd@ffe7090000: 0
Loading Environment from <NULL>... OK
In:    serial@ffe7014000
Out:   serial@ffe7014000
Err:   serial@ffe7014000
Model: Sipeed Lichee Pi 4A
LPI4A=> 
LPI4A=> setenv bootargs earlycon root=/dev/mmcblk0p2 rootwait
LPI4A=> kernel_addr_r=0x20000000
LPI4A=> fdt_addr_r=0x1d000000
LPI4A=> load mmc 0 $kernel_addr_r Image
22027264 bytes read in 1169 ms (18 MiB/s)
LPI4A=> load mmc 0 $fdt_addr_r th1520-lichee-pi-4a.dtb
8929 bytes read in 4 ms (2.1 MiB/s)
LPI4A=> booti $kernel_addr_r - $fdt_addr_r
Moving Image from 0x20000000 to 0x200000, end=177b000
## Flattened Device Tree blob at 1d000000
   Booting using the fdt blob at 0x1d000000
Working FDT set to 1d000000
   Loading Device Tree to 00000000ff77e000, end 00000000ff7832e0 ... OK
Working FDT set to ff77e000

Starting kernel ...

[    0.000000] Linux version 6.5.0-rc6 (mtest@mediaserver) (riscv64-buildroot-linux-gnu-gcc.br_real (Buildroot 2023.08-rc1-93-ga18afb1994) 12.3.0, GNU ld (GNU Binutils) 2.40) #1 SMP Tue Aug 22 05:17:24 UTC 2023
[    0.000000] Machine model: Sipeed Lichee Pi 4A
[    0.000000] SBI specification v1.0 detected
[    0.000000] SBI implementation ID=0x1 Version=0x10003
```