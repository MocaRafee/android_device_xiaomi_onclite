#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from onclite device
$(call inherit-product, device/xiaomi/onclite/device.mk)

# Inherit some common NusantaraROM stuff
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)
$(call inherit-product, packages/apps/NusantaraParts/nadproject.mk)

NAD_BUILD_TYPE := OFFICIAL
USE_PIXEL_CHARGING := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := nad_onclite
PRODUCT_DEVICE := onclite
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 7
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="onc" \
    TARGET_DEVICE="onc" \
    PRIVATE_BUILD_DESC="coral-user 11 RP1A.201005.006 6828489 release-keys"

BUILD_FINGERPRINT := "google/coral/coral:11/RP1A.200720.009/6720564:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Gapps
TARGET_GAPPS_ARCH := arm64
USE_GAPPS := true

