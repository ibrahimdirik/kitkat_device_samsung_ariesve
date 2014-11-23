# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOKP common stuff.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/ariesve/full_ariesve.mk)

# ariesve overlay
PRODUCT_PACKAGE_OVERLAYS += device/samsung/ariesve/overlay

# boot animation
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_720.zip:system/media/bootanimation.zip

PRODUCT_RELEASE_NAME := ariesve

# Setup device configuration
PRODUCT_NAME := aokp_ariesve
PRODUCT_DEVICE := ariesve
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9001

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=samsung/GT-I9001/GT-I9001:2.3.6/GINGERBREAD/XXKQN:user/release-keys PRIVATE_BUILD_DESC="GT-I9001-user 2.3.6 GINGERBREAD XXKQN release-keys"

# Unofficial build name
TARGET_UNOFFICIAL_BUILD_ID := dev_connection_team
