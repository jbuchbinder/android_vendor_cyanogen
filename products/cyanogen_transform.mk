# Inherit AOSP device configuration for transform.
$(call inherit-product, device/samsung/transform/transform.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Inherit some common cyanogenmod stuff.
#$(call inherit-product, device/samsung/transform/generic_transform.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_transform
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := transform
PRODUCT_MODEL := SPH-M920
PRODUCT_MANUFACTURER := samsung

# Add the Torch app
PRODUCT_PACKAGES += Torch

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-NS
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-NS
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-NS-KANG
    endif
endif

