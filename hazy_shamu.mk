# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Hazy stuff.
$(call inherit-product, vendor/hazy/configs/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/hazy/configs/nfc_enhanced.mk)

# Inherit from our Hazy product configuration
$(call inherit-product, vendor/hazy/configs/common.mk)

# Inherit device configuration
$(call inherit-product, device/moto/shamu/device.mk)

DEVICE_PACKAGE_OVERLAYS += device/moto/shamu/overlay
DEVICE_PACKAGE_OVERLAYS += device/moto/shamu/overlay_bt

## Device identifier. This must come after all inclusions
PRODUCT_NAME := hazy_shamu
PRODUCT_DEVICE := shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola

TARGET_VENDOR := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:5.1.1/LYZ28E/1914015:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 5.1.1 LYZ28E 1914015 release-keys"

$(call inherit-product-if-exists, vendor/motorola/shamu/device-vendor.mk)

PRODUCT_PACKAGES += \
    Launcher3
