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

# Inherit from u8150 device
$(call inherit-product, $(LOCAL_PATH)/u8150.mk)

# Inherit some common CM stuff
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-240x320

# Setup device configuration
PRODUCT_NAME := cm_u8150
PRODUCT_RELEASE_NAME := u8150
PRODUCT_DEVICE := u8150
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := u8150
PRODUCT_MANUFACTURER := Huawei
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=google/soju/crespo:4.0.4/IMM76D/299849:user/release-keys PRIVATE_BUILD_DESC="soju-user 4.0.4 IMM76D 299849 release-keys"


