# Superclass
include device/intel/baytrail/baytrail.mk

PRODUCT_NAME := minnowboard_max
PRODUCT_DEVICE := minnowboard_max
PRODUCT_MODEL := MinnowBoard MAX

LOCAL_PATH := device/intel/baytrail/minnowboard_max

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.rc:root/init.$(TARGET_PRODUCT).rc \
    $(LOCAL_PATH)/init.recovery.rc:root/init.recovery.$(TARGET_PRODUCT).rc \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \

PRODUCT_PROPERTY_OVERRIDES += \
    net.utilitynet.eth0.hwaddr=26:6d:98:9f:f5:c0

$(call inherit-mixin, audio, byt_alc283)
$(call inherit-mixin, boot-arch, efi)
$(call inherit-mixin, display-density, tv)
$(call inherit-mixin, product-aapt, tvdpi_1920X1080)
$(call inherit-mixin, graphics, ufo)
$(call inherit-mixin, ethernet, static)
$(call inherit-mixin, video, ufo)
$(call inherit-mixin, governor, interactive)
$(call inherit-mixin, liblights, intel)
$(call inherit-mixin, power, interactive_gov)
$(call inherit-mixin, navigationbar, true)
$(call inherit-mixin, storage, 1xSD_2xUSB)
$(call inherit-mixin, video-img, vxd392)
$(call inherit-mixin, security, txei)
$(call inherit-mixin, selinux, enforcing)
$(call inherit-mixin, thermals, thermal-daemon)
$(call inherit-mixin, firmware-update, ifwi-capsule)
$(call inherit-mixin, device-type, minnowboard)
