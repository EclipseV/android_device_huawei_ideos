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

# Kernel target
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/huawei/ideos/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

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
    copybit.ideos

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
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
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
    device/huawei/ideos/prebuilt/init.ideos.rc:root/init.ideos.rc \
    device/huawei/ideos/prebuilt/ueventd.ideos.rc:root/ueventd.ideos.rc

# OEM logo and boot splash
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/initlogo.rle:root/initlogo.rle \
    device/huawei/ideos/prebuilt/installlogo:system/media/installlogo \
    device/huawei/ideos/prebuilt/media/oemlogo.mbn:system/media/oemlogo.mbn \
    vendor/huawei/ideos/proprietary/bin/load_oemlogo:system/bin/load_oemlogo

# Hardware specific
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/etc/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/ideos/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/huawei/ideos/prebuilt/etc/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf
    
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
    vendor/huawei/ideos/proprietary/lib/libril.so:system/lib/libril.so \
    vendor/huawei/ideos/proprietary/lib/libril.so:obj/lib/libril.so \
    vendor/huawei/ideos/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/huawei/ideos/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    vendor/huawei/ideos/proprietary/lib/libwms.so:system/lib/libwms.so \
    vendor/huawei/ideos/proprietary/lib/libwmsts.so:system/lib/libwmsts.so

# Wi-Fi
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/firmware/fw_bcm4319_apsta.bin:system/etc/firmware/fw_bcm4319_apsta.bin \
    device/huawei/ideos/prebuilt/firmware/fw_bcm4319.bin:system/etc/firmware/fw_bcm4319.bin \
    device/huawei/ideos/prebuilt/firmware/nvram.txt:system/etc/firmware/nvram.txt \
    device/huawei/ideos/prebuilt/lib/modules/bcm4319.ko:system/lib/modules/bcm4319.ko

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/usr/keylayout/ideos-keypad.kl:system/usr/keylayout/ideos-keypad.kl \
    device/huawei/ideos/prebuilt/usr/keylayout/ideos-melfas-tk.kl:system/usr/keylayout/ideos-melfas-tk.kl \
    device/huawei/ideos/prebuilt/usr/keylayout/ideos-synaptics-tk.kl:system/usr/keylayout/ideos-synaptics-tk.kl

# OEM RPC
PRODUCT_COPY_FILES += \
    vendor/huawei/ideos/proprietary/bin/modempre:system/bin/modempre \
    vendor/huawei/ideos/proprietary/bin/oem_rpc_svc:system/bin/oem_rpc_svc \
    vendor/huawei/ideos/proprietary/lib/libhwrpc.so:system/lib/libhwrpc.so \
    vendor/huawei/ideos/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so
    
# OMX
PRODUCT_COPY_FILES += \
    vendor/huawei/ideos/proprietary/lib/libmm-omxcore.so:system/lib/libmm-omxcore.so \
    vendor/huawei/ideos/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/huawei/ideos/proprietary/lib/libOmxCore.so:system/lib/libOmxCore.so \
    vendor/huawei/ideos/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/huawei/ideos/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/huawei/ideos/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/huawei/ideos/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so

# Lights & Sensors & Gralloc & GPS
PRODUCT_COPY_FILES += \
    vendor/huawei/ideos/proprietary/lib/hw/lights.msm7k.so:system/lib/hw/lights.msm7k.so \
    vendor/huawei/ideos/proprietary/lib/hw/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so \
    vendor/huawei/ideos/proprietary/lib/hw/gps.ideos.so:system/lib/hw/gps.ideos.so \
    vendor/huawei/ideos/proprietary/lib/hw/sensors.ideos.so:system/lib/hw/sensors.ideos.so

# GPS
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/etc/gps.conf:system/etc/gps.conf

# Bluetooth & Compass
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    vendor/huawei/ideos/proprietary/bin/akmd2:system/bin/akmd2 \
    vendor/huawei/ideos/proprietary/bin/hci_qcomm_init:system/bin/hci_qcomm_init

# Audio
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/ideos/prebuilt/etc/AudioFilterU8150.csv:system/etc/AudioFilterU8150.csv \
    device/huawei/ideos/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    vendor/huawei/ideos/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so

# Camera
PRODUCT_COPY_FILES += \
    vendor/huawei/ideos/proprietary/lib/libcamera.so:obj/lib/libcamera.so \
    vendor/huawei/ideos/proprietary/lib/libcamera.so:system/lib/libcamera.so \
    vendor/huawei/ideos/proprietary/lib/libqcamera.so:system/lib/libqcamera.so \
    vendor/huawei/ideos/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    vendor/huawei/ideos/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/huawei/ideos/proprietary/lib/libmmprocess.so:system/lib/libmmprocess.so

# media configuration xml file
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/etc/media_profiles.xml:/system/etc/media_profiles.xml

# USB mounting
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/cdrom/autorun.iso:system/cdrom/autorun.iso

# Other
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/huawei/ideos/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf

# Additions to build.prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dataroaming=false \
    persist.sys.use_dithering=0 \
    persist.sys.purgeable_assets=1 \
    ro.setupwizard.enable_bypass=1 \
    ring.delay=0 \
    ro.telephony.call_ring.delay=0 \
    ro.telephony.call_ring.multiple=false


$(call inherit-product, build/target/product/full_base.mk)

# $(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_NAME := full_ideos
PRODUCT_DEVICE := ideos
PRODUCT_BRAND := huawei
