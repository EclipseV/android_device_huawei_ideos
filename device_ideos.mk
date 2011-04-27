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

DEVICE_PACKAGE_OVERLAYS += device/huawei/ideos/overlay

# Kernel target
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/huawei/ideos/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += $(LOCAL_KERNEL):kernel

# HAL libs
PRODUCT_PACKAGES += \
    copybit.ideos

# Live Wallpapers
PRODUCT_PACKAGES += \
    librs_jni \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers

#   MagicSmokeWallpapers

# Live Wallpapers support
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Hardware properties
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Init files
PRODUCT_COPY_FILES += \
    device/huawei/ideos/init.ideos.rc:root/init.ideos.rc \
    device/huawei/ideos/ueventd.ideos.rc:root/ueventd.ideos.rc

# OEM logo
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/initlogo.rle:root/initlogo.rle

# Hardware specific
PRODUCT_COPY_FILES += \
    device/huawei/ideos/include/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/ideos/include/vold.fstab:system/etc/vold.fstab \
    device/huawei/ideos/include/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf
    
# RIL specific
PRODUCT_COPY_FILES += \
    vendor/huawei/ideos/proprietary/bin/qmuxd:system/bin/qmuxd \
    vendor/huawei/ideos/proprietary/bin/rild:system/bin/rild \
    vendor/huawei/ideos/proprietary/lib/libcm.so:system/lib/libcm.so \
    vendor/huawei/ideos/proprietary/lib/libdiag.so:system/lib/libdiag.so \
    vendor/huawei/ideos/proprietary/lib/libdll.so:system/lib/libdll.so \
    vendor/huawei/ideos/proprietary/lib/libdsm.so:system/lib/libdsm.so \
    vendor/huawei/ideos/proprietary/lib/libdss.so:system/lib/libdss.so \
    vendor/huawei/ideos/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/huawei/ideos/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/huawei/ideos/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/huawei/ideos/proprietary/lib/libnv.so:system/lib/libnv.so \
    vendor/huawei/ideos/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/huawei/ideos/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/huawei/ideos/proprietary/lib/libqmi.so:system/lib/libqmi.so \
    vendor/huawei/ideos/proprietary/lib/libqueue.so:system/lib/libqueue.so \
    vendor/huawei/ideos/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/huawei/ideos/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    vendor/huawei/ideos/proprietary/lib/libwms.so:system/lib/libwms.so \
    vendor/huawei/ideos/proprietary/lib/libwmsts.so:system/lib/libwmsts.so

# Wi-Fi
PRODUCT_COPY_FILES += \
    device/huawei/ideos/firmware/fw_bcm4319_apsta.bin:system/etc/firmware/fw_bcm4319_apsta.bin \
    device/huawei/ideos/firmware/fw_bcm4319.bin:system/etc/firmware/fw_bcm4319.bin \
    device/huawei/ideos/firmware/nvram.txt:system/etc/firmware/nvram.txt \
    device/huawei/ideos/prebuilt/bcm4319.ko:system/lib/modules/bcm4319.ko

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
    device/huawei/ideos/melfas-touch-keypad.kl:system/usr/keylayout/melfas-touch-keypad.kl \
    device/huawei/ideos/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# OEM RPC
PRODUCT_COPY_FILES += \
    vendor/huawei/ideos/proprietary/bin/modempre:system/bin/modempre \
    vendor/huawei/ideos/proprietary/bin/oem_rpc_svc:system/bin/oem_rpc_svc \
    vendor/huawei/ideos/proprietary/lib/libhwrpc.so:system/lib/libhwrpc.so \
    vendor/huawei/ideos/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so
    
# OMX
PRODUCT_COPY_FILES += \
    vendor/huawei/ideos/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/huawei/ideos/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/huawei/ideos/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/huawei/ideos/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/huawei/ideos/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so

# Lights & Sensors
PRODUCT_COPY_FILES += \
    vendor/huawei/ideos/proprietary/lib/hw/lights.msm7k.so:system/lib/hw/lights.msm7k.so \
    vendor/huawei/ideos/proprietary/lib/hw/sensors.default.so:system/lib/hw/sensors.ideos.so

# Bluetooth & Compass
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    vendor/huawei/ideos/proprietary/bin/akmd2:system/bin/akmd2 \
    vendor/huawei/ideos/proprietary/bin/hci_qcomm_init:system/bin/hci_qcomm_init \

# Audio
PRODUCT_COPY_FILES += \
    device/huawei/ideos/include/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/ideos/include/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    vendor/huawei/ideos/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so

# Camera
PRODUCT_COPY_FILES += \
    vendor/huawei/ideos/proprietary/lib/libcamera.so:system/lib/libcamera.so \
    vendor/huawei/ideos/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/huawei/ideos/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    vendor/huawei/ideos/proprietary/lib/libqcamera.so:system/lib/libqcamera.so

# Other
PRODUCT_COPY_FILES += \
    device/huawei/ideos/egl.cfg:system/lib/egl/egl.cfg \
    vendor/huawei/ideos/proprietary/lib/hw/gralloc.msm7k.so:system/lib/hw/gralloc.ideos.so

$(call inherit-product, build/target/product/full_base.mk)

$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_NAME := full_ideos
PRODUCT_DEVICE := ideos
PRODUCT_BRAND := huawei
