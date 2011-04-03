USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/ideos/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL     := false
TARGET_NO_RECOVERY   := false

TARGET_BOARD_PLATFORM        := msm7k
TARGET_CPU_ABI               := armeabi
TARGET_BOOTLOADER_BOARD_NAME := u8150
TARGET_PREBUILT_KERNEL       := device/huawei/ideos/kernel

BOARD_KERNEL_CMDLINE := mem=211M console=ttyMSM2,115200n8 console=ttyUSBCONSOLE0 androidboot.console=ttyUSBCONSOLE0 androidboot.hardware=qcom
BOARD_KERNEL_BASE    := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS     := true

BOARD_HAVE_BLUETOOTH     := true
BOARD_HAVE_BLUETOOTH_BCM := true

## cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "boot"
# mtd1: 00500000 00020000 "recovery"
# mtd2: 00140000 00020000 "misc"
# mtd3: 00060000 00020000 "splash"
# mtd4: 0aa00000 00020000 "system"
# mtd5: 05d00000 00020000 "cache"
# mtd6: 0a6a0000 00020000 "userdata"
# mtd7: 01400000 00020000 "cust"

BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x0aa00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a6a0000

BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/firmware/firmware.bin nvram_path=/system/etc/firmware/nvram.txt"
WIFI_DRIVER_MODULE_NAME     := "dhd"

BOARD_USES_GENERIC_AUDIO := false
