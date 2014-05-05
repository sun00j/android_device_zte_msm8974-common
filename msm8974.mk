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

# App
PRODUCT_PACKAGES += \
    PinyinIME
	
# Spn config
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml
	
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/apns-conf.xml:system/etc/apns-conf.xml
	
	
# Live Wallpapers
PRODUCT_PACKAGES += \
	LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

PRODUCT_PACKAGES += \
	libgenlock \
	liboverlay \
	libmemalloc \
	libqdutils \
	hwcomposer.msm8974 \
	gralloc.msm8974 \
	copybit.msm8974 \
	memtrack.msm8974 \
	

PRODUCT_PACKAGES += \
	audio.primary.msm8974 \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	tinymix \
	audiod \
	audio_policy.msm8974 \
	libaudio-resampler \
	libqcomvisualizer \
    libqcomvoiceprocessing \
	
	
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
    libOmxVdecHevc \
    libdashplayer \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libstagefrighthw \
	libtilerenderer \
	libI420colorconvert

# Audio Policy Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_effects.conf:system/vendor/etc/audio_effects.conf \
	$(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
	$(LOCAL_PATH)/configs/mixer_paths.xml:system/etc/mixer_paths.xml
	
# Wifi        
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
	$(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
	$(LOCAL_PATH)/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	$(LOCAL_PATH)/wifi/nvram.txt:system/etc/wifi/nvram.txt \
#	$(LOCAL_PATH)/wifi/fw_bcmdhd_apsta.bin:system/vendor/firmware/fw_bcmdhd_apsta.bin \
#	$(LOCAL_PATH)/wifi/fw_bcmdhd_p2p.bin:system/vendor/firmware/fw_bcmdhd_p2p.bin \
#	$(LOCAL_PATH)/wifi/fw_bcmdhd_apsta.bin:system/vendor/firmware/fw_bcmdhd.bin\
#	$(LOCAL_PATH)/wifi/fw_mfgtest.bin:system/vendor/firmware/fw_mfgtest.bin \
    
# libxml2 is needed for camera
PRODUCT_PACKAGES += libxml2

# Wifi
PRODUCT_PACKAGES += \
    libnetcmdiface \
    crda \
    regulatory.bin \
    linville.key.pub.pem

# Power
PRODUCT_PACKAGES += \
	power.msm8974

# Lights
PRODUCT_PACKAGES += \
	lights.msm8974

# GPS	
PRODUCT_PACKAGES += \
	gps.msm8974 \
	libgps.utils \
	libloc_adapter \
    libloc_eng \

# GPS configuration
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
	$(LOCAL_PATH)/configs/sap.conf:system/etc/sap.conf \
	$(LOCAL_PATH)/configs/sec_config:system/etc/sec_config
	
	
# Extended media support
PRODUCT_PACKAGES += \
    qcmediaplayer

PRODUCT_BOOT_JARS += qcmediaplayer

# FM radio
#PRODUCT_PACKAGES += \
#	qcom.fmradio \
#	libqcomfm_jni \
#	FM2 \
	
#PRODUCT_BOOT_JARS += qcom.fmradio


# for off charging mode
PRODUCT_PACKAGES += \
    charger \
#    charger_res_images
	
# etc configs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/hosts:system/etc/hosts

# Media
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \



# Qcom scripts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/etc/init.crda.sh:system/etc/init.crda.sh \
	$(LOCAL_PATH)/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
	$(LOCAL_PATH)/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
	$(LOCAL_PATH)/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
	$(LOCAL_PATH)/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh
	
	
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

ifeq ($(BOARD_HAVE_NFC),true)

# NFC packages msm8974-common
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras \
	nfc.default

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/configs/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/configs/nfcee_access_debug.xml
endif

# NFC access control + feature files + configuration
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml

endif

# IR packages
PRODUCT_PACKAGES += \
    consumerir.msm8974
    
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
	libemoji \
	libion

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/vendor/lib/libqc-opt.so

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=15 \
    ro.sys.umsdirtyratio=20

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mass_storage

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=0

# WFD
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0

# Time
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

# VIDC debug_levels
# 1:ERROR 2:HIGH 4:LOW 0:NOLOGS 7:AllLOGS
PRODUCT_PROPERTY_OVERRIDES += \
    vidc.debug.level=1
  
    
PRODUCT_PROPERTY_OVERRIDES += \
	ro.chipname=msm8974 \
	ro.sf.lcd_density=480 \
	ro.opengles.version=196608

# Audio Configuration
PRODUCT_PROPERTY_OVERRIDES += \
	persist.audio.handset.mic.type=digital \
	persist.audio.fluence.voicecall=true \
	persist.audio.dualmic.config=endfire \
	persist.audio.fluence.voicerec=true \
	persist.audio.fluence.speaker=false \

PRODUCT_PROPERTY_OVERRIDES += \
    af.resampler.quality=4 \
    audio.offload.buffer.size.kb=32 \
    audio.offload.gapless.enabled=false \
    av.offload.enable=true
    
# Do not power down SIM card when modem is sent to Low Power Mode.
PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.apm_sim_not_pwdn=1

# Ril sends only one RIL_UNSOL_CALL_RING, so set call_ring.multiple to false
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.call_ring.multiple=0
	
# Prefer SPN over PLMN name in nw scan response.
# This avoids different names to be displayed to the user for same PLMN.
# RIL uses this property.
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.prefer_spn=2
    
# update 1x signal strength after 2s
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.radio.snapshot_enabled=1 \
    persist.radio.snapshot_timer=2
    
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.radio.use_cc_names=true


#Upto 3 layers can go through overlays
PRODUCT_PROPERTY_OVERRIDES += \
	com.qc.hardware=true \
	debug.sf.hw=1 \
	debug.egl.hw=1	\
	persist.hwc.mdpcomp.enable=true	\
	debug.mdpcomp.logs=0 \
#	debug.composition.type=c2d
	

PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.clientidbase=android-zte \
	ro.com.google.clientidbase.ms=android-zte \
	ro.com.google.clientidbase.am=android-zte \
	ro.com.google.clientidbase.gmm=android-zte \
	ro.com.google.clientidbase.yt=android-zte


PRODUCT_PROPERTY_OVERRIDES += \
	ro.kernel.android.checkjni=0


# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

$(call inherit-product, hardware/broadcom/wlan/bcmdhd/firmware/bcm4339/device-bcm.mk)

