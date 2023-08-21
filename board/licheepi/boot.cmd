setenv bootargs earlycon root=/dev/mmcblk0p2 rootwait
kernel_addr_r=0x20000000
fdt_addr_r=0x1d000000
load mmc 0 $kernel_addr_r uImage
load mmc 0 $fdt_addr_r th1520-lichee-pi-4a.dtb
bootm $kernel_addr_r - $fdt_addr_r