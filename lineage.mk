#
# Copyright (C) 2017 The LineageOS Project
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
#

# Boot animation
TARGET_SCREEN_HEIGHT := 600
TARGET_SCREEN_WIDTH := 480

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/light/lightphone2/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_lightphone2
PRODUCT_DEVICE := lightphone2
PRODUCT_BRAND := Light
PRODUCT_MODEL := Light Lightphone2
PRODUCT_MANUFACTURER := LIGHT

PRODUCT_GMS_CLIENTID_BASE := android-light

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="LightPhone2-user 8.1.0 4101.0.A.0073 12091933 release-keys" \
    TARGET_DEVICE="LightPhone2"

BUILD_FINGERPRINT := Light/LightPhone2/LightPhone2:8.1.0/4101.0.A.0077/06051434:user/release-keys
