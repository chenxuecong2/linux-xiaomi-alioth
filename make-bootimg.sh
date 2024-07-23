cat arch/arm64/boot/Image.gz arch/arm64/boot/dts/qcom/sm8250-xiaomi-alioth.dtb > kernel-dtb
mkbootimg --kernel kernel-dtb --base 0x00000000 --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --second_offset 0x00f00000 --tags_offset 0x00000100 --pagesize 4096 -o boot.img --cmdline "fw_devlink=permissive clk_ignore_unused pd_ignore_unused"

