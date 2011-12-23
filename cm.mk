## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, device/huawei/u8150/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/u8150/device_u8150.mk)

PRODUCT_NAME := cm_u8150

# Release name and versioning
PRODUCT_RELEASE_NAME := GN
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cm/config/common_versions.mk

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := u8150
