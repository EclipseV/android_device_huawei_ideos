# inherit from the proprietary version
$(call inherit-product-if-exists, vendor/huawei/ideos/ideos-vendor.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product, build/target/product/full.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/ideos/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/huawei/ideos/include/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-1.so \
    ro.sf.lcd_density=120 \
    ro.telephony.default_network=0 \
    wifi.interface=eth0

# live wallpaper
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers
    
# board-specific init
PRODUCT_COPY_FILES := \
    device/huawei/ideos/prebuilt/init.huawei.rc:root/init.huawei.rc

# hardware properties
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
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# live wallpaper support
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# wifi
PRODUCT_COPY_FILES += \
    vendor/huawei/ideos/proprietary/wifi/firmware.bin:system/etc/firmware/firmware.bin \
    vendor/huawei/ideos/proprietary/wifi/nvram.txt:system/etc/firmware/nvram.txt \
    device/huawei/ideos/prebuilt/dhd.ko:system/lib/modules/dhd.ko

# ril
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
    vendor/huawei/ideos/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/huawei/ideos/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    vendor/huawei/ideos/proprietary/lib/libril.so:system/lib/libril.so \
    vendor/huawei/ideos/proprietary/lib/libwms.so:system/lib/libwms.so \
    vendor/huawei/ideos/proprietary/lib/libwmsts.so:system/lib/libwmsts.so

# omx
PRODUCT_COPY_FILES += \
    vendor/huawei/ideos/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/huawei/ideos/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/huawei/ideos/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/huawei/ideos/proprietary/lib/libomx_sharedlibrary_qc.so:system/lib/libomx_sharedlibrary_qc.so \
    vendor/huawei/ideos/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/huawei/ideos/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so

# camera
PRODUCT_COPY_FILES += \
    vendor/huawei/ideos/proprietary/lib/libcameraservice.so:system/lib/libcameraservice.so \
    vendor/huawei/ideos/proprietary/lib/libcamera.so:system/lib/libcamera.so \
    vendor/huawei/ideos/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/huawei/ideos/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    vendor/huawei/ideos/proprietary/lib/libqcamera.so:system/lib/libqcamera.so

# render
PRODUCT_COPY_FILES += \
    vendor/huawei/ideos/proprietary/lib/librs_jni.so:system/lib/librs_jni.so \
    vendor/huawei/ideos/proprietary/lib/libRS.so:system/lib/libRS.so

# oem_rpc_svc
PRODUCT_COPY_FILES += \
    vendor/huawei/ideos/proprietary/bin/modempre:system/bin/modempre \
    vendor/huawei/ideos/proprietary/bin/oem_rpc_svc:system/bin/oem_rpc_svc \
    vendor/huawei/ideos/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so

# hw
PRODUCT_COPY_FILES += \
    vendor/huawei/ideos/proprietary/lib/hw/copybit.msm7k.so:system/lib/hw/copybit.msm7k.so \
    vendor/huawei/ideos/proprietary/lib/hw/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so \
    vendor/huawei/ideos/proprietary/lib/hw/lights.msm7k.so:system/lib/hw/lights.msm7k.so \
    vendor/huawei/ideos/proprietary/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so

# other
PRODUCT_COPY_FILES := \
    vendor/huawei/ideos/proprietary/bin/akmd2:system/bin/akmd2 \
    vendor/huawei/ideos/proprietary/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    device/huawei/ideos/include/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/ideos/include/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/huawei/ideos/prebuilt/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    vendor/huawei/ideos/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \
    vendor/huawei/ideos/proprietary/lib/libhwrpc.so:system/lib/libhwrpc.so \
    vendor/huawei/ideos/proprietary/lib/libmmprocess.so:system/lib/libmmprocess.so \
    vendor/huawei/ideos/proprietary/lib/libqueue.so:system/lib/libqueue.so

PRODUCT_COPY_FILES += \
    device/huawei/ideos/include/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/ideos/include/etc/vold.fstab:system/etc/vold.fstab \
    device/huawei/ideos/include/etc/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf
    
PRODUCT_NAME := ideos
PRODUCT_BRAND := huawei
PRODUCT_DEVICE := u8150
