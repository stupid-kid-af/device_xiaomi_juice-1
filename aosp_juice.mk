#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/juice/device.mk)

# Inherit some common Aosp stuff.
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_GAPPS_ARCH := arm64
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_PIXEL_CHARGER := true
WITH_GAPPS := true
$(call inherit-product, vendor/aosp/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_juice
PRODUCT_DEVICE := juice
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Juice
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# PEX Official
PEX_BUILD_TYPE := OFFICIAL

# PEX Maintainer
PEX_MAINTAINER := PranayKiran

# Boot Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Fingerprint
BUILD_FINGERPRINT := "google/raven/raven:12/SQ1D.220105.007/8030436:user/release-keys"
BUILD_DESCRIPTION := raven-user 12 SQ1D.220105.007 8030436 release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)" 
