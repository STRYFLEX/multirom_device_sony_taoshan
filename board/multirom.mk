# MultiROM configuration
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/sony/taoshan/multirom/mr_init_devices.c
MR_DPI := hdpi
MR_DPI_MUL := 0.8
MR_DPI_FONT := 180
MR_FSTAB := device/sony/taoshan/multirom/recovery.fstab
MR_USE_MROM_FSTAB := true
MR_KEXEC_MEM_MIN := 0x85000000
MR_DEVICE_VARIANTS := C2105 C2104
MR_UNIFIED_TABS := true
MR_USE_DEBUGFS_MOUNT := true

# MultiROM versioning
ifeq ($(MR_REC_VERSION),)
MR_REC_VERSION := $(shell date -u +%Y%m%d)
endif

# MultiROM build
DEVICE_RESOLUTION := 720x1280
TARGET_RECOVERY_IS_MULTIROM := true

# MultiROM no-kexec workaround
MR_NO_KEXEC := enabled
