LOCAL_PATH := $(call my-dir)

$(call add-radio-file,recovery/images/firmware_install.565)
$(call add-radio-file,recovery/images/firmware_error.565)
$(call add-radio-file,recovery/images/bitmap_size.txt)




include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := hero-keypad.kcm
include $(BUILD_KEY_CHAR_MAP)
        
-include vendor/htc/hero/AndroidBoardVendor.mk#

include $(LOCAL_PATH)/AndroidKernel.mk

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)
