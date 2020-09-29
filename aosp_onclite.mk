#
# Copyright (C) 2020 The Android Open Source Project Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from onclite device.
$(call inherit-product, device/xiaomi/onclite/device.mk)

# Inherit some Evolution X stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Set Bootanimation Resolution.
IS_PHONE := true
TARGET_BOOT_ANIMATION_RES := 720

# Evolution X Configuration.
CUSTOM_BUILD_TYPE := UNOFFICIAL

TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

EVO_DONATE_URL := https://t.me/elizabethangelalorenza
EVO_MAINTAINER := elizabethangelalorenza
EVO_SUPPORT_URL := https://t.me/EvolutionX

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
BOARD_VENDOR := Xiaomi
TARGET_VENDOR := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi 7
PRODUCT_DEVICE := onclite
PRODUCT_NAME := aosp_onclite

BUILD_FINGERPRINT := "google/coral/coral:10/QQ3A.200805.001/6578210:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="onc" \
    TARGET_DEVICE="onc"
    PRIVATE_BUILD_DESC="onc-user 9 PKQ1.181021.001 V10.3.4.0.PFLMIXM release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
