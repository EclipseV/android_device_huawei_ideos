# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_SPECIFIC_HEADER_PATH := device/huawei/u8150/include

# Arch related defines
TARGET_BOARD_PLATFORM := msm7x27
TARGET_ARCH_VARIANT := armv6j
TARGET_CPU_ABI := armeabi
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi

# Target properties
TARGET_BOOTLOADER_BOARD_NAME := u8150
TARGET_OTA_ASSERT_DEVICE := u8150,ideos,U8150

# Target information
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := false

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# QCOM
BOARD_USES_QCOM_LIBS := true
BOARD_USES_LEGACY_QCOM := true
BOARD_USES_QCOM_LIBRPC := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8150

# Browser
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
TARGET_WEBKIT_USE_MORE_MEMORY := true

# USB mass storage
BOARD_CUSTOM_USB_CONTROLLER := ../../device/huawei/u8150/UsbController.cpp
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/vold/179:1
BOARD_SDEXT_DEVICE := /dev/block/vold/179:2
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file
TARGET_USE_CUSTOM_LUN_FILE_PATH  := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true
BOARD_VENDOR_USE_AKMD := akm8973

# ICS Stuff 
BOARD_USE_LEGACY_TOUCHSCREEN := true
BOARD_USE_LEGACY_TRACKPAD := true
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_GRALLOC_BUFFERS -DMISSING_EGL_PIXEL_FORMAT_YV12 -DREFRESH_RATE=60
TARGET_SUPPPORTS_LIVE_WALLPAPERS_PICKER := false

# Audio
BOARD_PROVIDES_LIBAUDIO := true
BOARD_USES_GENERIC_AUDIO := false

# RIL
BOARD_PROVIDES_LIBRIL := true

# Graphics
BOARD_EGL_CFG := device/huawei/u8150/prebuilt/lib/egl/egl.cfg
BOARD_HAS_LIMITED_EGL := true
TARGET_SPECIFIC_HEADER_PATH := device/huawei/u8150/include

# WiFI
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WEXT_NO_COMBO_SCAN := true
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/fw_4319.bin"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/fw_4319_apsta.bin"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/fw_4319.bin nvram_path=/system/etc/nv_4319.txt"
WIFI_DRIVER_MODULE_NAME := "dhd"

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u8150/recovery/recovery_keys.c
# BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/u8150/recovery/recovery_graphics.c
BOARD_USE_CUSTOM_RECOVERY_FONT := 7x16

# Kernel
TARGET_PREBUILT_KERNEL := device/huawei/u8150/prebuilt/kernel
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_CMDLINE := mem=211M console=ttyMSM2,115200n8 androidboot.hardware=u8150
BOARD_KERNEL_PAGESIZE := 4096

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "boot"
# mtd1: 00500000 00020000 "recovery"
# mtd2: 00140000 00020000 "misc"
# mtd3: 00060000 00020000 "splash"
# mtd4: 0aa00000 00020000 "system"
# mtd5: 05d00000 00020000 "cache"
# mtd6: 0a6a0000 00020000 "userdata"
# mtd7: 01400000 00020000 "cust"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0af00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a6a0000

# (BOARD_KERNEL_PAGESIZE * 64)
BOARD_FLASH_BLOCK_SIZE := 262144 
