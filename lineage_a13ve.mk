#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/samsung/a13ve/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_a13ve
PRODUCT_DEVICE := a13ve
PRODUCT_MANUFACTURER := samsung
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A137F

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=a13ve \
    PRODUCT_NAME=a13xx \
    PRIVATE_BUILD_DESC="a13vensxx-user 14 UP1A.231005.007 A137FXXS8EXJ1 release-keys"

BUILD_FINGERPRINT := samsung/a13vensxx/a13ve:14/UP1A.231005.007/A137FXXS8EXJ1:user/release-keys