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


DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Extra LDPI overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/ldpi/overlay

# Discard inherited values and use our own instead.
PRODUCT_NAME := cm_u8150
PRODUCT_DEVICE := u8150
PRODUCT_MODEL := u8150

PRODUCT_AAPT_CONFIG := mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_LOCALES += mdpi

# Graphics 
PRODUCT_PACKAGES += \
    gralloc.u8150
#    copybit.u8150

# Audio
PRODUCT_PACKAGES += \
    audio.primary.u8150 \
    audio_policy.u8150 \
    audio.a2dp.default

# Zram
PRODUCT_PACKAGES += \
    hwprops \
    rzscontrol

# Video decoding
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libopencorehw \
    libmm-omxcore \
    libOmxCore

# Other
PRODUCT_PACKAGES += \
    audio.usb.default \
    lights.u8150 \
    gps.u8150 \
    camera.u8150 \
    Apollo

PRODUCT_COPY_FILES += \
        device/common/gps/gps.conf_EU_SUPL:system/etc/gps.conf

# Hardware permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Vold and USB
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/huawei/u8150/prebuilt/etc/start_usb0.sh:system/etc/start_usb0.sh \
    device/huawei/u8150/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/huawei/u8150/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/huawei/u8150/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf

# Init files
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/init.huawei.usb.rc:root/init.huawei.usb.rc \
    device/huawei/u8150/prebuilt/init.huawei.rc:root/init.huawei.rc \
    device/huawei/u8150/prebuilt/initlogo.rle:root/initlogo.rle \
    device/huawei/u8150/prebuilt/ueventd.huawei.rc:root/ueventd.huawei.rc

# Wi-Fi releated
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
    device/huawei/u8150/prebuilt/etc/fw_4319.bin:system/etc/fw_4319.bin \
    device/huawei/u8150/prebuilt/etc/fw_4319_apsta.bin:system/etc/fw_4319_apsta.bin \
    device/huawei/u8150/prebuilt/etc/nv_4319.txt:system/etc/nv_4319.txt \
    device/huawei/u8150/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8150/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Audio
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/huawei/u8150/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv

# Touchscreen
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/usr/idc/surf_keypad.idc:system/usr/idc/surf_keypad.idc \
    device/huawei/u8150/prebuilt/usr/idc/touchscreen.idc:system/usr/idc/melfas-touchscreen.idc \
    device/huawei/u8150/prebuilt/usr/idc/touchscreen.idc:system/usr/idc/synaptics.idc \
    device/huawei/u8150/prebuilt/usr/idc/touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Keylayouts
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    device/huawei/u8150/prebuilt/usr/keylayout/touchscreen-keys.kl:system/usr/keylayout/melfas-touchscreen.kl \
    device/huawei/u8150/prebuilt/usr/keylayout/touchscreen-keys.kl:system/usr/keylayout/synaptics.kl \
    device/huawei/u8150/prebuilt/usr/keylayout/touchscreen-keys.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl

# Bluetooth
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/etc/bluetooth/BCM4329.hcd:system/etc/bluetooth/BCM4329.hcd \
    device/huawei/u8150/prebuilt/bin/brcm_patchram_plus:system/bin/brcm_patchram_plus \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

$(call inherit-product, vendor/huawei/u8150/u8150-vendor.mk)
