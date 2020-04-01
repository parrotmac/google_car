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

# Auto modules
PRODUCT_PACKAGES += \
            android.hardware.automotive.audiocontrol@1.0-service \
            android.hardware.automotive.can@1.0-service

PRODUCT_PACKAGES_DEBUG += \
            canhalctrl \
            canhaldump \
            canhalsend \
            android.hardware.automotive.occupant_awareness@1.0-service \
            android.hardware.automotive.occupant_awareness@1.0-service_mock

BOARD_SEPOLICY_DIRS += device/google_car/common/sepolicy

# EVS v1.1
PRODUCT_PACKAGES += android.automotive.evs.manager@1.1 \
                    android.hardware.automotive.evs@1.1-sample \
                    evs_app

PRODUCT_PRODUCT_PROPERTIES += persist.automotive.evs.mode=0

# Automotive display service
PRODUCT_PACKAGES += android.frameworks.automotive.display@1.0-service

# Sepolicy for EVS
BOARD_SEPOLICY_DIRS += packages/services/Car/evs/sepolicy
