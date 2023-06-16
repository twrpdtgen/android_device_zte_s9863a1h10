#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from s9863a1h10 device
$(call inherit-product, device/zte/s9863a1h10/device.mk)

PRODUCT_DEVICE := s9863a1h10
PRODUCT_NAME := omni_s9863a1h10
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE Blade A5 2019RU
PRODUCT_MANUFACTURER := zte

PRODUCT_GMS_CLIENTID_BASE := android-zte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="s9863a1h10_Natv-user 9 PPR1.180610.011 307 release-keys"

BUILD_FINGERPRINT := ZTE/GEN_RU_P963F30P/P963F30P:9/PPR1.180610.011/20191015.201602:user/release-keys
