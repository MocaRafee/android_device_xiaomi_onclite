#
# Copyright (C) 2020 The Android Open Source Project Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from onclite device
$(call inherit-product, device/xiaomi/onclite/device.mk)

# Inherit some common WeebProjekt stuff.
$(call inherit-product, vendor/weeb/config/common_telephony_phone.mk)
WEEB_BUILD_TYPE := EXPERIMENTAL

# GApps Configuration.
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Set Bootanimation Resolution.
IS_PHONE := true
TARGET_BOOT_ANIMATION_RES := 720

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
BOARD_VENDOR := Xiaomi
TARGET_VENDOR := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi 7
PRODUCT_DEVICE := onclite
PRODUCT_NAME := weeb_onclite

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ1A.201205.010/6953398:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="onclite" \
    PRODUCT_NAME="onclite" \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ1A.201205.010 6953398 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/redfin/redfin:11/RQ1A.201205.010/6953398:user/release-keys
    ro.vendor.build.fingerprint=google/redfin/redfin:11/RQ1A.201205.010/6953398:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
