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
    device/huawei/ideos/prebuilt/init.ideos.rc:root/init.ideos.rc \
    device/huawei/ideos/prebuilt/ueventd.ideos.rc:root/ueventd.ideos.rc

# OEM logo and boot splash
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/initlogo.rle:root/initlogo.rle \
    device/huawei/ideos/prebuilt/installlogo:system/media/installlogo \
    device/huawei/ideos/prebuilt/media/oemlogo.mbn:system/media/oemlogo.mbn \
    vendor/huawei/ideos/proprietary/bin/load_oemlogo:system/bin/load_oemlogo

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
    device/huawei/ideos/prebuilt/etc/firmware/fw_bcm4319_apsta.bin:system/etc/firmware/fw_bcm4319_apsta.bin \
    device/huawei/ideos/prebuilt/etc/firmware/fw_bcm4319.bin:system/etc/firmware/fw_bcm4319.bin \
    device/huawei/ideos/prebuilt/etc/firmware/nvram.txt:system/etc/firmware/nvram.txt \
    device/huawei/ideos/prebuilt/lib/modules/bcm4319.ko:system/lib/modules/bcm4319.ko \
    device/huawei/ideos/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/ideos/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Keylayouts
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

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

# Lights & Sensors & Gralloc
PRODUCT_COPY_FILES += \
    vendor/huawei/ideos/proprietary/lib/hw/lights.msm7k.so:system/lib/hw/lights.msm7k.so \
    vendor/huawei/ideos/proprietary/lib/hw/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so \
    vendor/huawei/ideos/proprietary/lib/hw/sensors.ideos.so:system/lib/hw/sensors.ideos.so

# GPS
PRODUCT_COPY_FILES += \
    vendor/huawei/ideos/proprietary/lib/hw/gps.ideos.so:system/lib/hw/gps.ideos.so \
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
    device/huawei/ideos/prebuilt/etc/AudioFilterU8150.csv:system/etc/AudioFilterC8150.csv \
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

# USB mounting
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/cdrom/autorun.iso:system/cdrom/autorun.iso

# APNs
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Other
PRODUCT_COPY_FILES += \
    device/huawei/ideos/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/huawei/ideos/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
    device/huawei/ideos/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/huawei/ideos/prebuilt/etc/hosts:system/etc/hosts 

#TESTING
PRODUCT_COPY_FILES += \
    vendor/huawei/ideos/proprietary/lib/libauth.so:system/lib/libauth.so \
    vendor/huawei/ideos/proprietary/lib/libcommondefs.so:system/lib/libcommondefs.so \
    vendor/huawei/ideos/proprietary/lib/libfotaagent.so:system/lib/libfotaagent.so \
    vendor/huawei/ideos/proprietary/lib/libfotatrigger.so:system/lib/libfotatrigger.so \
    vendor/huawei/ideos/proprietary/lib/libhwfotaadapter.so:system/lib/libhwfotaadapter.so \
    vendor/huawei/ideos/proprietary/lib/libhwnv.so:system/lib/libhwnv.so \
    vendor/huawei/ideos/proprietary/lib/libicudata.so:system/lib/libicudata.so \
    vendor/huawei/ideos/proprietary/lib/libjni_pinyinime.so:system/lib/libjni_pinyinime.so \
    vendor/huawei/ideos/proprietary/lib/libloc_api-rpc.so:system/lib/libloc_api-rpc.so \
    vendor/huawei/ideos/proprietary/lib/libloc_api.so:system/lib/libloc_api.so \
    vendor/huawei/ideos/proprietary/lib/libmmitest.so:system/lib/libmmitest.so \
    vendor/huawei/ideos/proprietary/lib/libmvs.so:system/lib/libmvs.so \
    vendor/huawei/ideos/proprietary/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \
    vendor/huawei/ideos/proprietary/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \
    vendor/huawei/ideos/proprietary/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \
    vendor/huawei/ideos/proprietary/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \
    vendor/huawei/ideos/proprietary/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \
    vendor/huawei/ideos/proprietary/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \
    vendor/huawei/ideos/proprietary/lib/libomx_sharedlibrary_qc.so:system/lib/libomx_sharedlibrary_qc.so \
    vendor/huawei/ideos/proprietary/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so \
    vendor/huawei/ideos/proprietary/lib/libopencore_author.so:system/lib/libopencore_author.so \
    vendor/huawei/ideos/proprietary/lib/libopencore_common.so:system/lib/libopencore_common.so \
    vendor/huawei/ideos/proprietary/lib/libopencore_downloadreg.so:system/lib/libopencore_downloadreg.so \
    vendor/huawei/ideos/proprietary/lib/libopencore_download.so:system/lib/libopencore_download.so \
    vendor/huawei/ideos/proprietary/lib/libopencorehw.so:system/lib/libopencorehw.so \
    vendor/huawei/ideos/proprietary/lib/libopencore_mp4localreg.so:system/lib/libopencore_mp4localreg.so \
    vendor/huawei/ideos/proprietary/lib/libopencore_mp4local.so:system/lib/libopencore_mp4local.so \
    vendor/huawei/ideos/proprietary/lib/libopencore_net_support.so:system/lib/libopencore_net_support.so \
    vendor/huawei/ideos/proprietary/lib/libopencore_player.so:system/lib/libopencore_player.so \
    vendor/huawei/ideos/proprietary/lib/libopencore_rtspreg.so:system/lib/libopencore_rtspreg.so \
    vendor/huawei/ideos/proprietary/lib/libopencore_rtsp.so:system/lib/libopencore_rtsp.so \
    vendor/huawei/ideos/proprietary/lib/libpdapi.so:system/lib/libpdapi.so \
    vendor/huawei/ideos/proprietary/lib/libpdsm_atl.so:system/lib/libpdsm_atl.so \
    vendor/huawei/ideos/proprietary/lib/libping_mdm.so:system/lib/libping_mdm.so \
    vendor/huawei/ideos/proprietary/lib/libprojectmenu.so:system/lib/libprojectmenu.so \
    vendor/huawei/ideos/proprietary/lib/libreference-cdma-sms.so:system/lib/libreference-cdma-sms.so \
    vendor/huawei/ideos/proprietary/lib/libreference-ril.so:system/lib/libreference-ril.so \
    vendor/huawei/ideos/proprietary/lib/libsnd.so:system/lib/libsnd.so \
    vendor/huawei/ideos/proprietary/lib/libtouchpal.so:system/lib/libtouchpal.so \
    vendor/huawei/ideos/proprietary/lib/libuim.so:system/lib/libuim.so \
    vendor/huawei/ideos/proprietary/lib/libwbxml_jni.so:system/lib/libwbxml_jni.so \
    vendor/huawei/ideos/proprietary/lib/libwnndict.so:system/lib/libwnndict.so \
    vendor/huawei/ideos/proprietary/lib/libxml2wbxml.so:system/lib/libxml2wbxml.so

# Additions to build.prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dataroaming=false \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heapsize=24m \
    persist.sys.use_dithering=0 \
    persist.sys.purgeable_assets=1 \
    ro.setupwizard.enable_bypass=1 \
    ring.delay=0 \
    ro.telephony.call_ring.delay=0 \
    ro.telephony.call_ring.multiple=false


$(call inherit-product, build/target/product/full_base.mk)

#$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_NAME := full_ideos
PRODUCT_DEVICE := ideos
PRODUCT_BRAND := huawei
