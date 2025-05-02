#
# Copyright (C) 2025 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/oplus/ivan/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_ivan
PRODUCT_DEVICE := ivan
PRODUCT_BRAND := oneplus
PRODUCT_MODEL := Oneplus Nord CE 2 5G
PRODUCT_MANUFACTURER := oneplus
PRODUCT_SYSTEM_NAME := ivan
PRODUCT_SYSTEM_DEVICE := ivan

# Build info
PRODUCT_GMS_CLIENTID_BASE := android-oneplus
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=ivan \
    TARGET_PRODUCT=ivan