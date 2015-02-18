$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/htc/protou
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

DEVICE_PACKAGE_OVERLAYS := device/htc/protou/overlay

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
	
$(call inherit-product, build/target/product/full.mk)

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml 
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml
# Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/thermald-8x25-msm1-pmic_therm.conf:system/etc/thermald-8x25-msm1-pmic_therm.conf \
    $(LOCAL_PATH)/config/thermald-8x25-msm2-msm_therm.conf:system/etc/thermald-8x25-msm2-msm_therm.conf \
    $(LOCAL_PATH)/config/thermald-8x25-msm2-pmic_therm.conf:system/etc/thermald-8x25-msm2-pmic_therm.conf \
    $(LOCAL_PATH)/config/init.qcom.thermald_conf.sh:system/etc/init.qcom.thermald_conf.sh \
    $(LOCAL_PATH)/config/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/config/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/config/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/config/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/config/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/config/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/config/nexcodec.cfg:system/etc/nexcodec.cfg \
    $(LOCAL_PATH)/config/audio_policy.conf:system/etc/audio_policy.conf 

# Brunch
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/brunch_featureinfo.xml:system/etc/brunch_featureinfo.xml \
    $(LOCAL_PATH)/config/brunch_featureinfo_ex.xml:system/etc/brunch_featureinfo_ex.xml \
    $(LOCAL_PATH)/config/brunch_featureswitch.xml:system/etc/brunch_featureswitch.xml \
    $(LOCAL_PATH)/config/brunch_featureswitch_ex.xml:system/etc/brunch_featureswitch_ex.xml \
    $(LOCAL_PATH)/config/brunch_media_codec_ex.xml:system/etc/brunch_media_codec_ex.xml \
    $(LOCAL_PATH)/config/brunch_notusedcodecs.xml:system/etc/brunch_notusedcodecs.xml \
    $(LOCAL_PATH)/config/brunch_notusedcodecs_ex.xml:system/etc/brunch_notusedcodecs_ex.xml \
    $(LOCAL_PATH)/config/brunch_player_list.xml:system/etc/brunch_player_list.xml \
    $(LOCAL_PATH)/config/brunch_player_list_ex.xml:system/etc/brunch_player_list_ex.xml 

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_profiles_7627a.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/media/media_codecs_7627a.xml:system/etc/media_codecs.xml


# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/wlan.ko:system/lib/modules/wlan.ko

# Ramdisk
PRODUCT_COPY_FILES += \
	device/htc/protou/ramdisk/fstab.protou:root/fstab.protou \
 	device/htc/protou/ramdisk/init.protou.rc:root/init.protou.rc \
	device/htc/protou/ramdisk/ueventd.protou.rc:root/ueventd.protou.rc \
	device/htc/protou/ramdisk/init.htc.protou.rc:root/init.htc.protou.rc \
	device/htc/protou/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
	device/htc/protou/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
	device/htc/protou/ramdisk/init.qcom.rc:root/init.qcom.rc \
	device/htc/protou/ramdisk/init.qcom.ril.path.sh:root/init.qcom.ril.path.sh \
	device/htc/protou/ramdisk/init.qcom.sh:root/init.qcom.sh \
	device/htc/protou/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
	device/htc/protou/ramdisk/init.target.rc:root/init.target.rc \
	device/htc/protou/ramdisk/init.trace.rc:root/init.trace.rc \
	device/htc/protou/ramdisk/init.trace.rc:root/init.trace.rc \
	device/htc/protou/ramdisk/init.usb.rc:root/init.usb.rc \
	device/htc/protou/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
	device/htc/protou/ramdisk/init.leds.nfc.rc:root/init.leds.nfc.rc \
	device/htc/protou/ramdisk/ueventd.rc:root/ueventd.rc 

# SoftAP files 
PRODUCT_PACKAGES += \
    hostapd.accept \
    hostapd.deny \
    hostapd_default.conf 

PRODUCT_PACKAGES += \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf

PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg

PRODUCT_PACKAGES += \
    WCN1314_qcom_wlan_nv.bin \
    WCN1314_qcom_fw.bin \
    WCN1314_cfg.dat \
    WCN1314_qcom_cfg.ini

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory 

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm7x27a \
    audio.usb.default \
    audio_policy.msm7x27a \
    libaudioutils

# Display
PRODUCT_PACKAGES += \
    libgenlock \
    gralloc.msm7x27a \
    copybit.msm7x27a \
    libqdMetaData \
    memtrack.msm7x27a \
    hwcomposer.msm7x27a

# Wal
PRODUCT_PACKAGES += \
    librs_jni \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    resize2fs \
    setup_fs

# Keys
PRODUCT_PACKAGES += \
    AVRCP.kl \
    protou_keypad \
    7k_handset.kl \
    touch_dev.kl

# FM Radio
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    libqcomfm_jni \
    qcom.fmradio

# GPS
PRODUCT_PACKAGES += \
    gps.default \
    libgps.utils \
    libloc_adapter \
    libloc_eng \
    libloc_api-rpc-qc

PRODUCT_PACKAGES += \
    gps.msm7x27a


# light hal
PRODUCT_PACKAGES += \
    lights.msm7x27a

# Misc
PRODUCT_PACKAGES += \
    charger \
    charger_res_images \
    libcnefeatureconfig \
    libnl_2 \
    lights.msm7x27a

# Omx
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libdashplayer \
    libOmxVdec \
    libOmxVenc \
    qcmediaplayer

# stagefright cmdline tools
PRODUCT_PACKAGES += \
    stagefright \
    record \
    recordvideo \
    audioloop \
    stream \
    sf2 \
    codec \
    muxer

# Camera Hal
# PRODUCT_PACKAGES += \
#    camera.msm7x27a

# Power Hal

PRODUCT_PACKAGES += \
    power.msm7x27a

# Enable Torch
PRODUCT_PACKAGES += Torch

# TWRP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_PACKAGES += \
    init.target.rc \
    init.htc.usb.rc \
    init.qcom.post_boot.sh \
    init.qcom.efs.sync.sh \
    init.htc.target.sh \
    init.qcom.baseband.sh 

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so \
    ro.sf.hwrotation=180

ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0 \
	ro.adb.secure=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.fm.analogpath.supported=false \
    ro.fm.transmitter=false \
    ro.fm.mulinst.recording.support=false

$(call inherit-product, vendor/htc/protou/protou-vendor.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_MANUFACTURER := HTC
PRODUCT_NAME := full_protou
PRODUCT_DEVICE := protou
PRODUCT_BRAND := htc
