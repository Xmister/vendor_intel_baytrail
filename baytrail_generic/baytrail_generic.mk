# Superclass
include device/intel/baytrail/baytrail.mk

PRODUCT_NAME := baytrail_generic
PRODUCT_DEVICE := baytrail_generic
PRODUCT_MODEL := Bay Trail Generic Platform

LOCAL_PATH := device/intel/baytrail/baytrail_generic

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.rc:root/init.$(TARGET_PRODUCT).rc \
	$(LOCAL_PATH)/camera_baytrail_generic.xml:system/etc/camera_baytrail_generic.xml \
	$(LOCAL_PATH)/init.recovery.rc:root/init.recovery.$(TARGET_PRODUCT).rc \
	$(LOCAL_PATH)/busybox:root/sbin/busybox \
	$(LOCAL_PATH)/rt3290.bin:system/etc/firmware/rt3290.bin \
        frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
        frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \

# Enable Camera Launcher app support.

INTEL_USE_CAMERA_LAUNCHER := true

$(call inherit-mixin, audio, byt_alc262)
$(call inherit-mixin, gms, true)
$(call inherit-mixin, houdini, true)
$(call inherit-mixin, boot-arch, efi)
$(call inherit-mixin, graphics, ufo)
$(call inherit-mixin, ethernet, configurable)
$(call inherit-mixin, video, ufo)
$(call inherit-mixin, governor, interactive)
$(call inherit-mixin, liblights, intel)
$(call inherit-mixin, power, interactive_gov)
$(call inherit-mixin, navigationbar, true)
$(call inherit-mixin, camera-usb, usb)
$(call inherit-mixin, storage, 1xSD_3xUSB)
$(call inherit-mixin, bluetooth, wp)
$(call inherit-mixin, wifi, intel-compat)
$(call inherit-mixin, sensors, hid_sensorhub_bytm)
$(call inherit-mixin, video-img, vxd392)
$(call inherit-mixin, security, txei)
$(call inherit-mixin, selinux, enforcing)
$(call inherit-mixin, thermals, thermal-daemon)
$(call inherit-mixin, touch, usb_hid)
$(call inherit-mixin, miracast, intel_miracast)
$(call inherit-mixin, widevine, classic)
$(call inherit-mixin, firmware-update, ifwi-capsule)
$(call inherit-mixin, libm, intel)
$(call inherit-mixin, device-type, tablet)


