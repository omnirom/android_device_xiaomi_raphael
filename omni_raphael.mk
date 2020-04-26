# Copyright (C) 2010 The Android Open Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/xiaomi/raphael/overlay
# CarrierConfig
DEVICE_PACKAGE_OVERLAYS += vendor/omni/overlay/CarrierConfig

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/xiaomi/raphael/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := raphael
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := omni_raphael

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

VENDOR_RELEASE := 10/QKQ1.190825.002/V11.0.5.0.QFKEUXM:user/release-keys
BUILD_FINGERPRINT := Xiaomi/raphael_eea/raphael:$(VENDOR_RELEASE)
OMNI_BUILD_FINGERPRINT := Xiaomi/raphael_eea/raphael:$(VENDOR_RELEASE)
OMNI_PRIVATE_BUILD_DESC := "'raphael-user 10 QKQ1.190825.002 V11.0.5.0.QFKEUXM release-keys'"

PLATFORM_SECURITY_PATCH_OVERRIDE := 2020-01-01

# Inherit from custom vendor
$(call inherit-product-if-exists, vendor/MiuiCamera/config.mk)
