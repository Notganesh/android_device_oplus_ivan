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

DEVICE_PATH := device/oplus/ivan

# Inherit from oplus mt6877-common
include device/oplus/mt6877-common/BoardConfigCommon.mk

TARGET_2ND_ARCH_VARIANT := armv8-2a

# Init
TARGET_INIT_VENDOR_LIB ?= //$(DEVICE_PATH):init_ivan
TARGET_RECOVERY_DEVICE_MODULES ?= init_ivan

# Call proprietary blob setup
include vendor/oplus/ivan/BoardConfigVendor.mk
