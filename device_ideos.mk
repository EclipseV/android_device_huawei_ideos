#
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

DEVICE_PACKAGE_OVERLAYS += device/huawei/ideos/overlay

LOCAL_KERNEL := device/huawei/ideos/prebuilt/kernel

PRODUCT_COPY_FILES += $(LOCAL_KERNEL):kernel

PRODUCT_PACKAGES += \
    libRS \
    hwprops \
    rzscontrol \
    libOmxCore \
    libmm-omxcore \
    copybit.ideos \
    lights.ideos \
    gps.ideos

PRODUCT_PACKAGES += \
    Gallery \
    Stk

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
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Vold Config
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# Init files
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/ueventd.ideos.rc:root/ueventd.ideos.rc

# DCHP config for Wi-Fi
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/etc/firmware/fw_bcm4319_apsta.bin:system/etc/firmware/fw_bcm4319_apsta.bin \
    device/huawei/ideos/prebuilt/etc/firmware/fw_bcm4319.bin:system/etc/firmware/fw_bcm4319.bin \
    device/huawei/ideos/prebuilt/etc/firmware/nvram.txt:system/etc/firmware/nvram.txt \
    device/huawei/ideos/prebuilt/lib/modules/bcm4319.ko:system/lib/modules/bcm4319.ko \
    device/huawei/ideos/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

# OEM logo and boot splash
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/initlogo.rle:root/initlogo.rle \
    device/huawei/ideos/prebuilt/installlogo:system/media/installlogo \
    device/huawei/ideos/prebuilt/media/oemlogo.mbn:system/media/oemlogo.mbn

# WPA Supplicant configuration file
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# GPS
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/etc/gps.conf:system/etc/gps.conf

PRODUCT_PROPERTY_OVERRIDES := \
    keyguard.no_require_sim=true \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.media.dec.jpeg.memcap=20000000


## (2) Also get non-open-source aspects if available
$(call inherit-product-if-exists, vendor/huawei/ideos/ideos-vendor.mk)

PRODUCT_NAME := full_ideos
PRODUCT_DEVICE := ideos
PRODUCT_BRAND := huawei
