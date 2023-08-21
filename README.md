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