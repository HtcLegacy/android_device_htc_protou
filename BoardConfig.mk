#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from the proprietary version
-include vendor/htc/protou/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/htc/protou/include

# cflags
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP_ABI_HACK -DUSE_MDP3
COMMON_GLOBAL_CFLAGS += -DLPA_DEFAULT_BUFFER_SIZE=480
TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
# Try to use ASHMEM if possible (when non-MDP composition is used)
TARGET_GRALLOC_USES_ASHMEM := true

# Arch related defines and optimizations
TARGET_ARCH := arm
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a5
TARGET_CPU_SMP := true
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOOTLOADER_BOARD_NAME := 7х27


TARGET_CORTEX_CACHE_LINE_32 := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

TARGET_BOARD_PLATFORM_GPU := qcom-adreno203
BOARD_USES_ADRENO_200 := true

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/htc/protou/kernel
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=protou no_console_suspend=1
BOARD_KERNEL_BASE    :=  0x03200000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset  0x01200000
BOARD_KERNEL_PAGESIZE := 2048
#Spare size is (BOARD_KERNEL_PAGESIZE>>9)*16

TARGET_PREBUILT_KERNEL := device/htc/protou/kernel

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USES_UNCOMPRESSED_KERNEL := false

BOARD_KERNEL_CMDLINE :=  androidboot.hardware=protou msm_cpr.enable=0
ARCH_ARM_HAVE_TLS_REGISTER := true
BOARD_EGL_CFG := device/htc/protou/config/egl.cfg

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1004535296
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1291845120
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 13104640
BOARD_CACHEIMAGE_PARTITION_SIZE := 251658240
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
TARGET_NO_RECOVERY := true
TARGET_USERIMAGES_USE_EXT4 := true

# FM
BOARD_HAVE_QCOM_FM := true
COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_PROVIDES_LIBAUDIO := true
BOARD_QCOM_VOIP_ENABLED := true
BOARD_USES_LEGACY_ALSA_AUDIO := true
TARGET_HAS_QACT := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/protou/bluetooth

# Dalvik
TARGET_ARCH_LOWMEM := true

# Display
BOARD_USES_QCOM_HARDWARE := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
USE_OPENGL_RENDERER := true
TARGET_USES_ION := false
TARGET_USES_QCOM_BSP := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
BOARD_USE_MHEAP_SCREENSHOT := true
HWUI_COMPILE_FOR_PERF := true

# Hardware
BOARD_HARDWARE_CLASS := device/htc/protou/cmhw

# BIONIC
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Add QC Video Enhancements flag
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# SEPOLICY
BOARD_SEPOLICY_DIRS := \
       device/htc/protou/sepolicy

BOARD_SEPOLICY_UNION := \
       device.te \
       app.te \
       file_contexts

# EGL
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_EGL_CFG := device/htc/protou/config/egl.cfg

# Media
TARGET_QCOM_MEDIA_VARIANT := caf-new
COMMON_GLOBAL_CFLAGS += -DLPA_DEFAULT_BUFFER_SIZE=480
TARGET_QCOM_LEGACY_MMPARSER := true

# Storage / Sharing
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 36
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file

# GPS
QCOM_GPS_PATH := hardware/qcom/gps
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)

TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

TARGET_PROVIDES_LIBLIGHT := true

# Camera
USE_CAMERA_STUB := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
CAMERA_USES_SURFACEFLINGER_CLIENTSTUB := true
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
COMMON_GLOBAL_CFLAGS += -DHTC_CAMERA_HARDWARE
# USE_DEVICE_SPECIFIC_CAMERA := true

# Webkit
ENABLE_WEBGL := true
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes
TARGET_FORCE_CPU_UPLOAD := true

DISABLE_DEXPREOPT := true

# RIL
BOARD_USES_LEGACY_RIL := true
BOARD_USE_NEW_LIBRIL_HTC := true


# Wi-Fi
BOARD_HAS_QCOM_WLAN              := true
BOARD_HAS_QCOM_WLAN_SDK          := true
BOARD_WLAN_DEVICE                := qcwcn
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_EXT_MODULE_PATH             := "/system/lib/modules/librasdioif.ko"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlan.ko"
WIFI_EXT_MODULE_NAME             := "librasdioif"
WIFI_DRIVER_MODULE_NAME          := "wlan"
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"
WIFI_DRIVER_FW_PATH_P2P          := "p2p"
WIFI_DRIVER_FW_PATH_PARAM        := "/data/misc/wifi/fwpath"
BOARD_LEGACY_NL80211_STA_EVENTS  := true

# Recovery
TW_BOARD_CUSTOM_GRAPHICS := ../../../device/htc/protou/recovery/tw_graphics.c
TARGET_RECOVERY_FSTAB := device/htc/protou/recovery.fstab
BOARD_HAS_NO_SELECT_BUTTON := true