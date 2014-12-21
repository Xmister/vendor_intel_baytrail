include device/intel/baytrail/BoardConfig.mk

TARGET_USE_MOKMANAGER := true

# Releasetools extensions for updating EFI System Partition and
# userfastboot (if present). Product teams will need to copy this
# file and make their own changes to it if they have additional
# OTA tasks; there currently can only be one of these.
TARGET_RELEASETOOLS_EXTENSIONS := device/intel/common/releasetools/releasetools-generic-efi.py

TARGET_KERNEL_CONFIG_OVERRIDES += device/intel/baytrail/baytrail_generic/kernel_defconfig_overlay
TARGET_KERNEL_CONFIG_OVERRIDES += device/intel/baytrail/baytrail_generic/pavilion

BOARD_WLAN_DEVICE                       := wlan0
WPA_SUPPLICANT_VERSION                  := VER_0_8_UNITE
WIFI_DRIVER_MODULE_PATH                 := "/system/lib/modules/rt2800pci.ko"
WIFI_DRIVER_MODULE_NAME                 := "rt2800pci"
WIFI_DRIVER_MODULE_ARG                  := ""
WIFI_DRIVER_P2P_MODULE_ARG              := ""
WIFI_SDIO_IF_DRIVER_MODULE_PATH         := "/system/lib/modules/cfg80211.ko"
WIFI_SDIO_IF_DRIVER_MODULE_NAME         := "cfg80211"
WIFI_SDIO_IF_DRIVER_MODULE_ARG          := ""
WIFI_COMPAT_MODULE_PATH                 := "/system/lib/modules/compat.ko"
WIFI_COMPAT_MODULE_NAME                 := "compat"
WIFI_COMPAT_MODULE_ARG                  := ""

TARGET_KERNEL_MODULES += \
   linux/kernel-uefi/net/wireless/cfg80211.ko:system/lib/modules/cfg80211.ko \
   linux/kernel-uefi/net/mac80211/mac80211.ko:system/lib/modules/mac80211.ko \
   linux/kernel-uefi/drivers/net/wireless/rt2x00/rt2x00lib.ko:system/lib/modules/rt2x00lib.ko \
   linux/kernel-uefi/drivers/net/wireless/rt2x00/rt2800lib.ko:system/lib/modules/rt2800lib.ko \
   linux/kernel-uefi/drivers/net/wireless/rt2x00/rt2x00pci.ko:system/lib/modules/rt2x00pci.ko \
   linux/kernel-uefi/drivers/net/wireless/rt2x00/rt2800pci.ko:system/lib/modules/rt2800pci.ko
