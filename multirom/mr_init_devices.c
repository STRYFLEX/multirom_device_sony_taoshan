#include <stdlib.h>

// These are paths to folders in /sys which contain "uevent" file
// need to init this device.
// MultiROM needs to init framebuffer, mmc blocks, input devices,
// some ADB-related stuff and USB drives, if OTG is supported
// You can use * at the end to init this folder and all its subfolders
const char *mr_init_devices[] =
{
    // FrameBuffers
    "/sys/devices/virtual/graphics/fb0",
    "/sys/class/graphics/fb0",

    // Storage Devices
    "/sys/block/mmcblk0",
    "/sys/devices/platform/msm_sdcc.1*",
    "/sys/devices/platform/msm_sdcc.3*",
    "/sys/devices/platform/msm_hsusb_host*",
    "/sys/devices/virtual/misc/fuse",


    // Inputs
    "/sys/devices/virtual/input*",
    "/sys/devices/virtual/misc/uinput",
    "/sys/devices/platform/msm_ssbi.0/pm8038-core/pm8xxx-pwrkey/input*",
    "/sys/devices/i2c-3/3-0024/input/input2",
    "/sys/class/misc/uinput",
    "/sys/devices/platform/gpio-keys/input/input11",


    // ADB
    "/sys/class/tty/ptmx",
    "/sys/class/misc/android_adb",
    "/sys/class/android_usb/android0/f_adb",
    NULL
};
