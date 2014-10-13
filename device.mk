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

$(call inherit-product, device/fsl/cuboxi-common/common.mk)

DEVICE_PATH := device/fsl/cuboxi4pro

# media config
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio_effects.conf:system/etc/audio_effects.conf \
    $(DEVICE_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# set build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Freescale/cuboxi4pro/cuboxi4pro:4.4.4/KTU84P/eng.humberos.20141010.142909:userdebug/dev-keys \
    PRIVATE_BUILD_DESC="cuboxi4pro-userdebug 4.4.4 KTU84P eng.humberos.20141010.142909 dev-keys"
