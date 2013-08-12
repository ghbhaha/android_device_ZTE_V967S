## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := V967S

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/ZTE/V967S/device_V967S.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := V967S
PRODUCT_NAME := cm_V967S
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := P188F07
PRODUCT_MANUFACTURER := ZTE
