#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
DEVICE_CODENAME := waffle
DEVICE_PATH := device/oneplus/waffle
COMMON_DEVICE_PATH := device/oneplus/sm8650-common
VENDOR_PATH := vendor/oneplus/waffle
COMMON_VENDOR_PATH := vendor/oneplus/sm8650-common
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit some common stuff
ROM_VENDOR := lineage
ifdef ROM_VENDOR
$(call inherit-product, vendor/$(ROM_VENDOR)/config/common_full_phone.mk)
else
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
endif

# Device identifier. This must come after all inclusions
ifdef ROM_VENDOR
PRODUCT_NAME := $(ROM_VENDOR)_$(DEVICE_CODENAME)
else
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)
endif
PRODUCT_DEVICE := $(DEVICE_CODENAME)
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2581

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# UDFPS support
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true

# Blur
TARGET_ENABLE_BLUR := true

# Lawnchair
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# Exclude Aperture camera app
PRODUCT_NO_CAMERA := true

# Custom package installer
TARGET_USE_CUSTOM_PACKAGE_INSTALLER := true

# Live wallpapers
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Quick tap
TARGET_SUPPORTS_QUICK_TAP  := true

# Now Playing
TARGET_SUPPORTS_NOW_PLAYING := true

# Clear Calling
TARGET_SUPPORTS_CLEAR_CALLING := true

# Call Recording Support
TARGET_SUPPORTS_CALL_RECORDING := true

# GMS
WITH_GMS := true

# Mist OS Flags
MIST_BUILD_TYPE := UNOFFICIAL
MISTOS_MAINTAINER := GamerBoy1234294

# Boot animation
scr_resolution := 1440
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="CPH2581EEA-user 15 AP3A.240617.008 U.R4T3.1c799fe_ca44_2 release-keys" \
    BuildFingerprint=OnePlus/CPH2581EEA/OP595DL1:15/AP3A.240617.008/U.R4T3.1c799fe_ca44_2:user/release-keys \
    DeviceName=OP595DL1 \
    DeviceProduct=CPH2581 \
    SystemDevice=OP595DL1 \
    SystemName=CPH2581

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
