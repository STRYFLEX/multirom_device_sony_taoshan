#
# Copyright 2013 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Board device path
DEVICE_PATH := device/sony/taoshan

# Partitions informations
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x108BB9E
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1258291200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1711276032

# Partitions types
TARGET_USERIMAGES_USE_EXT4 := true

# Partitions blocks
BOARD_FLASH_BLOCK_SIZE := 131072

# Kernel informations
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom androidboot.bootdevice=msm_sdcc.1 user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=2
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000

# Kernel properties
TARGET_KERNEL_SOURCE := kernel/sony/msm8930
TARGET_KERNEL_CONFIG := cyanogenmod_taoshan_defconfig
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilts/kernel

# Custom boot
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/boot/custombootimg.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := qcom

# Vendor platform
BOARD_VENDOR := sony
BOARD_VENDOR_PLATFORM := taoshan

# Images
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOARD_PLATFORM := msm8960

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait

# TWRP configurations
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_FSTAB := device/sony/taoshan/rootdir/twrp.fstab
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,barrier=1,noauto_da_alloc,discard"
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_KEY_LOC := "footer"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/msm_sdcc.1/by-name/userdata"
TW_DEFAULT_BRIGHTNESS := 51
TW_EXCLUDE_SUPERSU := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_FLASH_FROM_STORAGE := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_JB_CRYPTO := false
TW_INCLUDE_L_CRYPTO := true
TW_HAS_NO_RECOVERY_PARTITION := true
TW_MAX_BRIGHTNESS := 255
TW_NO_SCREEN_BLANK := true
TW_THEME := portrait_mdpi
TW_IGNORE_ABS_MT_TRACKING_ID := true

# MultiROM configuration
MR_INPUT_TYPE := type_a
MR_INIT_DEVICES := device/sony/taoshan/multirom/mr_init_devices.c
MR_DPI := hdpi
MR_DPI_FONT := 180
MR_FSTAB := device/sony/taoshan/rootdir/twrp.fstab
MR_USE_MROM_FSTAB := true
MR_KEXEC_MEM_MIN := 0x85000000
MR_DEVICE_VARIANTS := C2105 C2104
MR_UNIFIED_TABS := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# MultiROM build
DEVICE_RESOLUTION := 720x1280
TARGET_RECOVERY_IS_MULTIROM := true

# MultiROM no-kexec workaround
MR_NO_KEXEC := enabled
