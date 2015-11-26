# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

PRODUCT_COPY_FILES += \
    vendor/hazy/prebuilt/bootanimation/hazy.zip:system/media/bootanimation.zip

#LatinIME fixed lib
#PRODUCT_COPY_FILES += \
    #vendor/hazy/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Inherit from our Hazy product configuration
$(call inherit-product, vendor/hazy/main.mk)

# Inherit device configuration
$(call inherit-product, device/moto/shamu/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := hazy_shamu
PRODUCT_DEVICE := shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := Motorola
