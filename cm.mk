## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800
TARGET_BOOTANIMATION_NAME := 480

# Release name
PRODUCT_RELEASE_NAME := protou

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=HTC \
    PRODUCT_BRAND=HTC \
    BUILD_PRODUCT=msm8626_protou
#   BUILD_FINGERPRINT=qcom/msm8625/msm8625:4.1.2/JZO54K/eng.ZYC.20140213.151118:eng/test-keys

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/protou/device_protou.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := protou
PRODUCT_NAME := cm_protou
PRODUCT_BRAND := htc
PRODUCT_MODEL := protou
PRODUCT_MANUFACTURER := htc