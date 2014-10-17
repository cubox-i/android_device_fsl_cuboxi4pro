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

DEVICE_PATH := device/fsl/cuboxi4pro

# media config
PRODUCT_COPY_FILES := \
    $(DEVICE_PATH)/configs/audio_effects.conf:system/etc/audio_effects.conf \
    $(DEVICE_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(DEVICE_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(DEVICE_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

$(call inherit-product, device/fsl/cuboxi-common/common.mk)
