include device/intel/baytrail/BoardConfig.mk

TARGET_USE_MOKMANAGER := true

# Releasetools extensions for updating EFI System Partition and
# userfastboot (if present). Product teams will need to copy this
# file and make their own changes to it if they have additional
# OTA tasks; there currently can only be one of these.
TARGET_RELEASETOOLS_EXTENSIONS := device/intel/common/releasetools/releasetools-generic-efi.py

TARGET_KERNEL_CONFIG_OVERRIDES += device/intel/baytrail/baytrail_generic/kernel_defconfig_overlay
TARGET_KERNEL_CONFIG_OVERRIDES += device/intel/baytrail/baytrail_generic/pavilion
