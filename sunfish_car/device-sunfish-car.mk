#
# Copyright 2020 The Android Open Source Project
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

PRODUCT_HARDWARE := sunfish
PHONE_CAR_BOARD_CONFIG := device/google_car/sunfish_car/BoardConfig.mk
ORIG_LOCAL_PATH=device/google/sunfish

$(call inherit-product, packages/services/Car/car_product/build/car.mk)
include device/google_car/sunfish_car/device-common.mk

DEVICE_PACKAGE_OVERLAYS += device/google/sunfish/sunfish/overlay

# Audio XMLs for sunfish
PRODUCT_COPY_FILES += \
    $(ORIG_LOCAL_PATH)/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml

# Bluetooth Tx power caps for sunfish
PRODUCT_COPY_FILES += \
    $(ORIG_LOCAL_PATH)/bluetooth_power_limits_sunfish.csv:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_power_limits.csv
