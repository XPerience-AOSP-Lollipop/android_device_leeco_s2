# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from onyx device
$(call inherit-product, device/leeco/s2/device.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/XPe/config/common_full_phone.mk)

# Call the proprietary setup
$(call inherit-product-if-exists, vendor/leeco/s2/s2-vendor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := s2
PRODUCT_NAME := xpe_s2
PRODUCT_BRAND := LeEco
PRODUCT_MANUFACTURER := LeMobile

PRODUCT_GMS_CLIENTID_BASE := android-leeco

TARGET_VENDOR_PRODUCT_NAME := Le2_CN
TARGET_VENDOR_DEVICE_NAME := le_s2
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=le_s2 PRODUCT_NAME=Le2_CN

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=LeEco/Le2_CN/le_s2:6.0.1/IEXCNFN5902012151S/106:user/release-keys \
    PRIVATE_BUILD_DESC="s2-user 6.0.1 IEXCNFN5902012151S 106 release-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model

# Release name
PRODUCT_RELEASE_NAME := s2
