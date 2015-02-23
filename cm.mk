# Boot animation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

DEVICE_PACKAGE_OVERLAYS += device/htc/protou/overlay

# Release name
PRODUCT_RELEASE_NAME := protou

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Inherit device configuration
$(call inherit-product, device/htc/protou/protou.mk)


# Product name
PRODUCT_NAME := cm_protou
PRODUCT_BRAND := htc
PRODUCT_DEVICE := protou
PRODUCT_MODEL := Desire X T328e
PRODUCT_MANUFACTURER := HTC
PRODUCT_CHARACTERISTICS := phone