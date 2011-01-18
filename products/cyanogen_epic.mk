# Inherit device configuration for Epic.
$(call inherit-product, device/samsung/epic/full_epic.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_epic
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := epic
PRODUCT_MODEL := Samsung-SPH-D700
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SPH-D700 TARGET_DEVICE=SPH-D700 TARGET_BOOTLOADER_BOARD_NAME=SPH-D700 BUILD_ID=GRH78 BUILD_DISPLAY_ID=GRH78 BUILD_FINGERPRINT=google/soju/crespo:2.3.1/GRH78/85442:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.1 GRH78 85442 release-keys"

# Extra Galaxy S overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/galaxys

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-Epic
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-BETA0-Epic
endif

#
# Copy Epic specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
