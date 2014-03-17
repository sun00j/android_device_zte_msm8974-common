#
# Copyright (C) 2013 The CyanogenMod Project
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

TARGET_SPECIFIC_HEADER_PATH := device/zte/msm8974-common/include

BOARD_VENDOR 						:= zte

TARGET_CPU_ABI 						:= armeabi-v7a
TARGET_CPU_ABI2 					:= armeabi
TARGET_CPU_SMP 						:= true
TARGET_ARCH 						:= arm
TARGET_ARCH_VARIANT 				:= armv7-a-neon
ARCH_ARM_HAVE_ARMV7A 				:= true
TARGET_CPU_VARIANT 					:= krait
ARCH_ARM_HAVE_NEON 					:= true
ARCH_ARM_HAVE_TLS_REGISTER 			:= true

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -D__ARM_USE_PLD -D__ARM_CACHE_LINE_SIZE=64

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION:= true
TARGET_USE_KRAIT_PLD_SET 			:= true
TARGET_KRAIT_BIONIC_PLDOFFS 		:= 10
TARGET_KRAIT_BIONIC_PLDTHRESH 		:= 10
TARGET_KRAIT_BIONIC_BBTHRESH 		:= 64
TARGET_KRAIT_BIONIC_PLDSIZE 		:= 64

TARGET_NO_BOOTLOADER 				:= true

TARGET_NO_RADIOIMAGE 				:= true
TARGET_BOARD_PLATFORM 				:= msm8974
TARGET_BOARD_PLATFORM_GPU 			:= qcom-adreno330


# Wifi
BOARD_WPA_SUPPLICANT_DRIVER 		:= NL80211
BOARD_WLAN_DEVICE           		:= bcmdhd
WPA_SUPPLICANT_VERSION      		:= VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB 	:= lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER        		:= NL80211
BOARD_HOSTAPD_PRIVATE_LIB   		:= lib_driver_cmd_$(BOARD_WLAN_DEVICE)

WIFI_DRIVER_MODULE_PATH 	:= "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_MODULE_NAME 	:= "bcmdhd"

WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/vendor/firmware/fw_bcmdhd.bin nvram_path=/system/etc/wifi/nvram.txt"
WIFI_DRIVER_MODULE_AP_ARG   := "firmware_path=/system/vendor/firmware/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram.txt"
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P     := 


# QCOM
BOARD_USES_QCOM_HARDWARE 			:= true
TARGET_USES_QCOM_BSP 				:= true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_BSP
USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY:= true


# Graphics
USE_OPENGL_RENDERER 				:= true
TARGET_USES_ION						:= true
TARGET_USES_C2D_COMPOSITION 		:= true
TARGET_USES_OVERLAY 				:= true
TARGET_USES_SF_BYPASS 				:= true
BOARD_EGL_CFG 						:= device/zte/msm8974-common/configs/egl.cfg

TARGET_QCOM_DISPLAY_VARIANT 		:= caf-new
TARGET_DISPLAY_USE_RETIRE_FENCE 	:= true

HAVE_ADRENO_SOURCE					:= false
OVERRIDE_RS_DRIVER 					:= libRSDriver_adreno.so

NUM_FRAMEBUFFER_SURFACE_BUFFERS 	:= 3

TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

# Audio
TARGET_QCOM_AUDIO_VARIANT 				:= caf
BOARD_USES_ALSA_AUDIO					:= true
BOARD_HAVE_LOW_LATENCY_AUDIO 			:= true
BOARD_USES_LEGACY_ALSA_AUDIO 			:= true
TARGET_USES_QCOM_COMPRESSED_AUDIO 		:= true
BOARD_USES_FLUENCE_INCALL 				:= true
BOARD_USES_FLUENCE_FOR_VOIP 			:= true
BOARD_USES_SEPERATED_AUDIO_INPUT 		:= true
#BOARD_USES_SEPERATED_VOICE_SPEAKER_MIC 	:= true

#AUDIO_FEATURE_DISABLED_ANC_HEADSET := true
#AUDIO_FEATURE_DISABLED_MULTI_VOICE_SESSIONS := true
#AUDIO_FEATURE_DISABLED_FM := true
#AUDIO_FEATURE_DISABLED_SSR := true
#AUDIO_FEATURE_DISABLED_INCALL_MUSIC := true
#AUDIO_FEATURE_DISABLED_SPKR_PROTECTION := true
#AUDIO_FEATURE_DISABLED_DS1_DOLBY_DDP := true

BOARD_HAVE_NEW_QCOM_CSDCLIENT 			:= true
BOARD_HAVE_AUDIENCE_ES325_2MIC			:= true
#BOARD_USES_SEPERATED_HEADSET_MIC 		:= true

AUDIO_FEATURE_DEEP_BUFFER_PRIMARY 		:= true
AUDIO_FEATURE_DYNAMIC_VOLUME_MIXER 		:= true

COMMON_GLOBAL_CFLAGS += -DLPA_DEFAULT_BUFFER_SIZE=512
COMMON_GLOBAL_CFLAGS += -DQCOM_PROXY_DEVICE_ENABLED -DQCOM_ACDB_ENABLED -DQCOM_CSDCLIENT_ENABLED 

BOARD_HAVE_QCOM_FM := true
BOARD_HAVE_QCOM_MR1_FM := true
COMMON_GLOBAL_CFLAGS += -DQCOM_DIRECTTRACK -DMR1_AUDIO_BLOB -DQCOM_MR1_FM -DQCOM_FM_ENABLED
#-DAUDIO_LISTEN_ENABLED


# Media
TARGET_QCOM_MEDIA_VARIANT 			:= caf-new

# QCOM enhanced A/V
TARGET_ENABLE_QC_AV_ENHANCEMENTS 	:= true


# Camera
USE_DEVICE_SPECIFIC_CAMERA 			:= true
TARGET_PROVIDES_CAMERA_HAL 			:= true
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS -DQCOM_BSP_CAMERA_ABI_HACK -DDISABLE_HW_ID_MATCH_CHECK


# Bluetooth
BOARD_HAVE_BLUETOOTH 				:= true
BOARD_HAVE_BLUETOOTH_BCM 			:= true
#BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY := false

# Thermal
#BOARD_USES_EXTRA_THERMAL_SENSOR 	:= true

#Preload Boot Animation
TARGET_BOOTANIMATION_PRELOAD 		:= true

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
TARGET_NO_RPC := true

# PowerHAL
#TARGET_PROVIDES_POWERHAL 			:= true
TARGET_USES_CM_POWERHAL 			:= true

# LightHAL
TARGET_PROVIDES_LIBLIGHT 			:= true

# Override healthd HAL
BOARD_HAL_STATIC_LIBRARIES := libhealthd.qcom

# NFC for z5s lte
#BOARD_HAVE_NFC 					:= true

# Enable WEBGL in WebKit
ENABLE_WEBGL 						:= true

# Webkit
TARGET_FORCE_CPU_UPLOAD 			:= true

# Charger
BOARD_CHARGER_DISABLE_INIT_BLANK 	:= true
BOARD_CHARGER_ENABLE_SUSPEND 		:= true

BOARD_HAL_STATIC_LIBRARIES			:= libdumpstate.msm8974

#BOARD_HARDWARE_CLASS 				:= device/zte/msm8974-common/cmhw/

BOARD_SEPOLICY_DIRS += \
        device/zte/msm8974-common/sepolicy

# The list below is order dependent
BOARD_SEPOLICY_UNION += \
        file_contexts \
        app.te \
        device.te

TARGET_RELEASETOOLS_EXTENSIONS 			:= device/zte/msm8974-common

BOARD_USES_QC_TIME_SERVICES := true


