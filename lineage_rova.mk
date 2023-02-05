#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from rova device
$(call inherit-product, device/xiaomi/rova/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := rova
PRODUCT_NAME := lineage_rova
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4A / 5A
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi



# Rice Stuff
RICE_DEVICE := Rova
RICE_CHIPSET := SD425
RICE_MAINTAINER := @maxx439
SUSHI_BOOTANIMATION := 720
# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true
# Graphene Camera (default: not defined - skipped by the compiler)
TARGET_BUILD_GRAPHENEOS_CAMERA := true

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := false

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

PRODUCT_PACKAGES += \
    xiaomi_riva_overlay_lineage \
    xiaomi_rolex_overlay_lineage

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
