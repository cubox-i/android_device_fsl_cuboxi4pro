#
# Copyright 2013 The Android Open-Source Project
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

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common_tablet.mk)

# Inherit device configuration
$(call inherit-product, device/fsl/cuboxi4pro/device.mk)

# set build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES := \
    BUILD_FINGERPRINT=Freescale/cuboxi4pro/cuboxi4pro:4.4.4/KTU84P/eng.humberos.20141010.142909:userdebug/dev-keys \
    PRIVATE_BUILD_DESC="cuboxi4pro-userdebug 4.4.4 KTU84P eng.humberos.20141010.142909 dev-keys"

# product board
PRODUCT_NAME := omni_cuboxi4pro
PRODUCT_DEVICE := cuboxi4pro
PRODUCT_MODEL := CuBox-i4pro
PRODUCT_BRAND := Freescale
PRODUCT_MANUFACTURER := Freescale
