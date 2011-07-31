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

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8150/overlay

LOCAL_KERNEL := device/huawei/u8150/prebuilt/kernel

PRODUCT_COPY_FILES += $(LOCAL_KERNEL):kernel

PRODUCT_PACKAGES += \
    libRS \
    hwprops \
    rzscontrol \
    libOmxCore \
    libmm-omxcore \
    libOmxVidEnc \
    Gallery \
    Stk \
    Provision \
    GoogleSearch \
    LatinIME \
    copybit.ideos

PRODUCT_PACKAGES += \
    FM \
    hcitool

# Live Wallpapers
PRODUCT_PACKAGES += \
    librs_jni \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers

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
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Init files
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/init.ideos.rc:root/init.ideos.rc \
    device/huawei/u8150/prebuilt/ueventd.ideos.rc:root/ueventd.ideos.rc

# OEM logo and boot splash
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/initlogo.rle:root/initlogo.rle \
    device/huawei/u8150/prebuilt/waitting.rle:root/waitting.rle \
    device/huawei/u8150/prebuilt/installlogo:system/media/installlogo \
    device/huawei/u8150/prebuilt/media/oemlogo.mbn:system/media/oemlogo.mbn \
    vendor/huawei/u8150/proprietary/bin/load_oemlogo:system/bin/load_oemlogo

# RIL specific
PRODUCT_COPY_FILES += \
    vendor/huawei/u8150/proprietary/bin/qmuxd:system/bin/qmuxd \
    vendor/huawei/u8150/proprietary/bin/rild:system/bin/rild \
    vendor/huawei/u8150/proprietary/lib/libcm.so:system/lib/libcm.so \
    vendor/huawei/u8150/proprietary/lib/libdiag.so:system/lib/libdiag.so \
    vendor/huawei/u8150/proprietary/lib/libdll.so:system/lib/libdll.so \
    vendor/huawei/u8150/proprietary/lib/libdsm.so:system/lib/libdsm.so \
    vendor/huawei/u8150/proprietary/lib/libdss.so:system/lib/libdss.so \
    vendor/huawei/u8150/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/huawei/u8150/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/huawei/u8150/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/huawei/u8150/proprietary/lib/libnv.so:system/lib/libnv.so \
    vendor/huawei/u8150/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/huawei/u8150/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/huawei/u8150/proprietary/lib/libqmi.so:system/lib/libqmi.so \
    vendor/huawei/u8150/proprietary/lib/libqueue.so:system/lib/libqueue.so \
    vendor/huawei/u8150/proprietary/lib/libril.so:system/lib/libril.so \
    vendor/huawei/u8150/proprietary/lib/libril.so:obj/lib/libril.so \
    vendor/huawei/u8150/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/huawei/u8150/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    vendor/huawei/u8150/proprietary/lib/libwms.so:system/lib/libwms.so \
    vendor/huawei/u8150/proprietary/lib/libwmsts.so:system/lib/libwmsts.so

# Wi-Fi
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/etc/firmware/fw_bcm4319_apsta.bin:system/etc/firmware/fw_bcm4319_apsta.bin \
    device/huawei/u8150/prebuilt/etc/firmware/fw_bcm4319.bin:system/etc/firmware/fw_bcm4319.bin \
    device/huawei/u8150/prebuilt/etc/firmware/nvram.txt:system/etc/firmware/nvram.txt \
    device/huawei/u8150/prebuilt/lib/modules/bcm4319.ko:system/lib/modules/bcm4319.ko \
    device/huawei/u8150/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8150/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# OEM RPC
PRODUCT_COPY_FILES += \
    vendor/huawei/u8150/proprietary/bin/modempre:system/bin/modempre \
    vendor/huawei/u8150/proprietary/bin/oem_rpc_svc:system/bin/oem_rpc_svc \
    vendor/huawei/u8150/proprietary/lib/libhwrpc.so:system/lib/libhwrpc.so \
    vendor/huawei/u8150/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so
    
# OMX
PRODUCT_COPY_FILES += \
    vendor/huawei/u8150/proprietary/lib/libmm-omxcore.so:system/lib/libmm-omxcore.so \
    vendor/huawei/u8150/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/huawei/u8150/proprietary/lib/libOmxCore.so:system/lib/libOmxCore.so \
    vendor/huawei/u8150/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/huawei/u8150/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/huawei/u8150/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/huawei/u8150/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so

# Lights & Sensors & Gralloc
PRODUCT_COPY_FILES += \
    vendor/huawei/u8150/proprietary/lib/hw/sensors.ideos.so:system/lib/hw/sensors.ideos.so \
    vendor/huawei/u8150/proprietary/lib/hw/lights.ideos.so:system/lib/hw/lights.ideos.so \
    vendor/huawei/u8150/proprietary/lib/hw/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so

# GPS
PRODUCT_COPY_FILES += \
    vendor/huawei/u8150/proprietary/lib/hw/gps.ideos.so:system/lib/hw/gps.ideos.so \
    device/huawei/u8150/prebuilt/etc/gps.conf:system/etc/gps.conf

# Bluetooth & Compass
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    vendor/huawei/u8150/proprietary/bin/akmd2:system/bin/akmd2 \
    vendor/huawei/u8150/proprietary/bin/hci_qcomm_init:system/bin/hci_qcomm_init

# Audio
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/u8150/prebuilt/etc/AudioFilterU8150.csv:system/etc/AudioFilterU8150.csv \
    device/huawei/u8150/prebuilt/etc/01_qc.cfg:system/etc/01_qc.cfg \
    device/huawei/u8150/prebuilt/etc/pvplayer.cfg:system/etc/pvplayer.cfg \
    vendor/huawei/u8150/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so

# Camera
PRODUCT_COPY_FILES += \
    vendor/huawei/u8150/proprietary/lib/libcamera.so:obj/lib/libcamera.so \
    vendor/huawei/u8150/proprietary/lib/libcamera.so:system/lib/libcamera.so \
    vendor/huawei/u8150/proprietary/lib/libqcamera.so:system/lib/libqcamera.so \
    vendor/huawei/u8150/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    vendor/huawei/u8150/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/huawei/u8150/proprietary/lib/libmmprocess.so:system/lib/libmmprocess.so

# APNs
PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Other
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/huawei/u8150/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
    device/huawei/u8150/prebuilt/etc/init.d/12sdext:system/etc/init.d/12sdext \
    device/huawei/u8150/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# Additions to build.prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dataroaming=false \
    persist.sys.use_dithering=0 \
    persist.sys.purgeable_assets=1 \
    ring.delay=0 \
    ro.telephony.call_ring.delay=0 \
    ro.telephony.call_ring.multiple=false


$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_NAME := full_u8150
PRODUCT_DEVICE := u8150
PRODUCT_BRAND := huawei
