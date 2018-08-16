# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := a23
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := sun8i

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
ARCH_ARM_HAVE_TLS_REGISTER := true

# Kernel
TARGET_PREBUILT_KERNEL := device/allwinner/a23/kernel
BOARD_KERNEL_CMDLINE := console=ttyS0,115200 rw init=/init loglevel=8 androidboot.selinux=permissive androidboot.hardware=sun8i
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100  --second_offset 0x00f00000

# Sizes to be put in in bytes. cant stress this enough.
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 41940355
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26843545600
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_USES_MMCUTILS := true
BOARD_USE_LEGACY_TOUCHSCREEN := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TARGET_RECOVERY_DEVICE_DIRS := device/allwinner/a23
TARGET_RECOVERY_FSTAB := device/allwinner/a23/recovery/root/etc/recovery.fstab

# TWRP
#TW_THEME := landscape_mdpi
DEVICE_RESOLUTION := 800x480
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := "/sys/devices/virtual/disp/disp/attr/lcd_bl"
TW_INCLUDE_NTFS_3G := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TW_NO_REBOOT_BOOTLOADER := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
