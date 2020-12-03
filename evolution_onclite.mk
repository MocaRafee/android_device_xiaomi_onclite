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

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Set Bootanimation Resolution.
IS_PHONE := true
TARGET_BOOT_ANIMATION_RES := 720

# GApps Configuration.
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Evolution X Configuration.
EVO_BUILD_TYPE := UNOFFICIAL

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
PRODUCT_NAME := evolution_onclite

BUILD_FINGERPRINT := "google/redfin/redfin:11/RD1A.201105.003.A1/6886512:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="onclite" \
    PRODUCT_NAME="onclite" \
    PRIVATE_BUILD_DESC="redfin-user 11 RD1A.201105.003.A1 6886512 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/redfin/redfin:11/RD1A.201105.003.A1/6886512:user/release-keys
    ro.vendor.build.fingerprint=google/redfin/redfin:11/RD1A.201105.003.A1/6886512:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
