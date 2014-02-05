# Superclass
include device/intel/baytrail/baytrail.mk

PRODUCT_NAME := byt_t_ffrd8
PRODUCT_DEVICE := byt_t_ffrd8
PRODUCT_MODEL := Baytrail FFRD8

LOCAL_PATH := device/intel/baytrail/byt_t_ffrd8

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.rc:root/init.$(TARGET_PRODUCT).rc \
	$(LOCAL_PATH)/init.recovery.rc:root/init.recovery.$(TARGET_PRODUCT).rc \

$(call inherit-mixin, gms, false)
$(call inherit-mixin, houdini, true)
$(call inherit-mixin, boot-arch, efi)
$(call inherit-mixin, graphics, ufo)
$(call inherit-mixin, video, ufo)
$(call inherit-mixin, display-density, high)
$(call inherit-mixin, ethernet, static)
$(call inherit-mixin, navigationbar, true)
$(call inherit-mixin, touch, max_1664S_8)
$(call inherit-mixin, device-type, tablet)

