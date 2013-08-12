$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/ZTE/V967S/V967S-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/ZTE/V967S/overlay

LOCAL_PATH := device/ZTE/V967S
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/advanced_meta_init.project.rc:recovery/root/advanced_meta_init.project.rc \
    $(LOCAL_PATH)/recovery/advanced_meta_init.rc:recovery/root/advanced_meta_init.rc \
    $(LOCAL_PATH)/recovery/fstab:recovery/root/fstab \
    $(LOCAL_PATH)/recovery/init.usb.rc:recovery/root/init.usb.rc \
    $(LOCAL_PATH)/recovery/meta_init.rc:recovery/root/meta_init.rc \
    $(LOCAL_PATH)/recovery/sbup.ko:recovery/root/sbup.ko \
    $(LOCAL_PATH)/recovery/ueventd.rc:recovery/root/ueventd.rc

PRODUCT_PACKAGES += \
    static_busybox \
    make_ext4fs \
    setup_fs

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_V967S
PRODUCT_DEVICE := V967S
