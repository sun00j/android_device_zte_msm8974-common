#
# Copyright (C) 2011 The Android Open-Source Project
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

# This file includes all definitions that apply to ALL msm8960-common devices, and
# are also specific to msm8960-common devices
#
# Everything in this directory will become public

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay


# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni

PRODUCT_PACKAGES += \
	libgenlock \
	liboverlay \
	libmemalloc \
	libqdutils \
	libtilerenderer \
	libI420colorconvert\
	hwcomposer.msm8974 \
	gralloc.msm8974 \
	copybit.msm8974 \
	memtrack.msm8974 \
	

PRODUCT_PACKAGES += \
	audio_policy.msm8974 \
	audio.primary.msm8974 \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	libaudio-resampler \
	tinymix \
	audiod

# Omx
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libc2dcolorconvert \
    libdashplayer \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libstagefrighthw

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_effects.conf:system/vendor/etc/audio_effects.conf

# Audio Policy Config
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf
	
# Wifi        
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
	$(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
	$(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf
	
PRODUCT_PACKAGES += \
    keystore.msm8974
    
# libxml2 is needed for camera
PRODUCT_PACKAGES += libxml2

# Power
PRODUCT_PACKAGES += \
	power.msm8974

# Lights
PRODUCT_PACKAGES += \
	lights.msm8974

PRODUCT_PACKAGES += \
	libmmcamera_interface2 \
	libmmcamera_interface

# GPS
PRODUCT_PACKAGES += \
	libloc_adapter \
	libloc_eng \
	libloc_api_v02 \
	libgps.utils \
	gps.msm8974

# GPS configuration
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
	$(LOCAL_PATH)/configs/sec_config:system/etc/sec_config


# for off charging mode
PRODUCT_PACKAGES += \
    charger \
#    charger_res_images
	
# etc configs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/hosts:system/etc/hosts \
	$(LOCAL_PATH)/configs/lowi.conf:system/etc/lowi.conf \
	$(LOCAL_PATH)/configs/quipc.conf:system/etc/quipc.conf \
	$(LOCAL_PATH)/configs/sap.conf:system/etc/sap.conf \
	$(LOCAL_PATH)/configs/wfdconfig1280_720.xml:system/etc/wfdconfig1280_720.xml \
	$(LOCAL_PATH)/configs/wfdconfig640_480.xml:system/etc/wfdconfig640_480.xml \
	$(LOCAL_PATH)/configs/wfdconfig800_480.xml:system/etc/wfdconfig800_480.xml \
	$(LOCAL_PATH)/configs/wfdconfig960_540.xml:system/etc/wfdconfig960_540.xml \
	$(LOCAL_PATH)/configs/wfdconfig.xml:system/etc/wfdconfig.xml \
	$(LOCAL_PATH)/configs/xtra_root_cert.pem:system/etc/xtra_root_cert.pem \
	$(LOCAL_PATH)/configs/xtwifi.conf:system/etc/xtwifi.conf
	
# Haptics
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/haptics_A2H.conf:system/etc/haptics_A2H.conf \
	$(LOCAL_PATH)/configs/RingHaptics.xml:system/etc/RingHaptics.xml

# Media
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml 
	
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/qosmgr_rules.xml:system/etc/qosmgr_rules.xml

# Qcom scripts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/etc/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
	$(LOCAL_PATH)/etc/init.crda.sh:system/etc/init.crda.sh \
	$(LOCAL_PATH)/etc/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
	$(LOCAL_PATH)/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
	$(LOCAL_PATH)/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
	$(LOCAL_PATH)/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
	$(LOCAL_PATH)/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
	$(LOCAL_PATH)/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
	$(LOCAL_PATH)/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
	$(LOCAL_PATH)/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
	$(LOCAL_PATH)/etc/init.qcom.thermal_conf.sh:system/etc/init.qcom.thermal_conf.sh \
	$(LOCAL_PATH)/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
	$(LOCAL_PATH)/etc/usf_settings.sh:system/etc/usf_settings.sh \
	$(LOCAL_PATH)/etc/usf_post_boot.sh:system/etc/usf_post_boot.sh \
	
# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# NFC packages msm8974-common
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    NfcNci \
    nfc_nci.nubia \
    Tag \
    com.android.nfc_extras
   

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/nfc/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/nfc/nfcee_access_debug.xml
endif

# NFC access control + feature files + configuration
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml

# IR packages
#PRODUCT_PACKAGES += \
#    consumerir.msm8974
    
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml
    
      
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
	e2fsck
	
# Qualcomm Random Numbers Generator
PRODUCT_PACKAGES += \
    qrngd \
    qrngp

PRODUCT_PACKAGES += \
	libemoji 
	
#PRODUCT_PACKAGES += \
#    libion


# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/vendor/lib/libqc-opt.so

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=60 \
#    ro.sys.umsdirtyratio=20

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mass_storage \
#	persist.sys.usb.config=nubia


# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=0

## Audio
#PRODUCT_PROPERTY_OVERRIDES += \
#    persist.audio.handset.mic=analog \
#    persist.audio.hp=true \
#    ro.qc.sdk.audio.fluencetype=none \
#    persist.speaker.prot.enable=false \
#    lpa.decode=false \
#    lpa.use-stagefright=true \
#    tunnel.decode=false \
#    tunnel.audiovideo.decode=false \
#    tunnel.multiple=false
#
## aDSP
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.qualcomm.sensors.qmd=true \
#    debug.qualcomm.sns.hal=w \
#    ro.qc.sdk.sensors.gestures=false \
#    ro.qc.sensors.max_accel_rate=false \
#    ro.qc.sensors.max_gyro_rate=false \
#    ro.qc.sensors.max_mag_rate=false \
#    ro.qualcomm.sensors.pedometer=true \
#    ro.qualcomm.sensors.pam=false \
#    ro.qualcomm.sensors.scrn_ortn=false

# WFD
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0

# HDMI
PRODUCT_PROPERTY_OVERRIDES += \
    persist.demo.hdmirotationlock=false

# Time
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

# VIDC debug_levels
# 1:ERROR 2:HIGH 4:LOW 0:NOLOGS 7:AllLOGS
PRODUCT_PROPERTY_OVERRIDES += \
    vidc.debug.level=1

## Bluetooth
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.qualcomm.bt.hci_transport=smd
    
PRODUCT_PROPERTY_OVERRIDES += \
	ro.chipname=msm8974 \
	ro.sf.lcd_density=480 \
	ro.opengles.version=196608

## Audio Configuration
#PRODUCT_PROPERTY_OVERRIDES += \
#	persist.audio.fluence.voicecall=true \
#	persist.audio.dualmic.config=endfire \
#
PRODUCT_PROPERTY_OVERRIDES += \
    af.resampler.quality=4 \
    audio.offload.buffer.size.kb=32 \
    audio.offload.gapless.enabled=true \
    av.offload.enable=true
    
# Do not power down SIM card when modem is sent to Low Power Mode.
PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.apm_sim_not_pwdn=1

# Ril sends only one RIL_UNSOL_CALL_RING, so set call_ring.multiple to false
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.call_ring.multiple=0


#Upto 3 layers can go through overlays
PRODUCT_PROPERTY_OVERRIDES += \
	com.qc.hardware=true \
	debug.sf.hw=1 \
	debug.egl.hw=1	\
	persist.hwc.mdpcomp.enable=true	\
	debug.mdpcomp.logs=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.texture_cache_size=72 \
    ro.hwui.layer_cache_size=48 \
    ro.hwui.r_buffer_cache_size=8 \
    ro.hwui.path_cache_size=32 \
    ro.hwui.gradient_cache_size=1 \
    ro.hwui.drop_shadow_cache_size=6 \
    ro.hwui.texture_cache_flushrate=0.4 \
    ro.hwui.text_small_cache_width=1024 \
    ro.hwui.text_small_cache_height=1024 \
    ro.hwui.text_large_cache_width=2048 \
    ro.hwui.text_large_cache_height=1024

PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.clientidbase=android-zte \
	ro.com.google.clientidbase.ms=android-zte \
	ro.com.google.clientidbase.am=android-zte \
	ro.com.google.clientidbase.gmm=android-zte \
	ro.com.google.clientidbase.yt=android-zte


# Our /cache is big enough to dexopt /system apps to it.
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=0


# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

#$(call inherit-product-if-exists, hardware/qcom/msm8x74/msm8x74.mk)
$(call inherit-product-if-exists, vendor/qcom/gpu/msm8x74/msm8x74-gpu-vendor.mk)
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4339/device-bcm.mk)

