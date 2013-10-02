include device/intel/baytrail/BoardConfig.mk

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 805306368

TARGET_USE_MOKMANAGER := true
TARGET_IAGO_DEFAULT_INI := device/intel/baytrail/baylake/iago-default.ini

# Note, Iago installer also sets androidboot.disk via bootloader
# config, if Iago not used you will need to add
# androidboot.disk=80860F14:00
BOARD_KERNEL_CMDLINE += \
		androidboot.sdcard=mmcblk1
