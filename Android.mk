$(shell mkdir -p $(OUT)/obj/SHARED_LIBRARIES/libcamera_intermediates)
$(shell touch $(OUT)/obj/SHARED_LIBRARIES/libcamera_intermediates/export_includes)
$(shell mkdir -p $(OUT)/obj/SHARED_LIBRARIES/libril_intermediates)
$(shell touch $(OUT)/obj/SHARED_LIBRARIES/libril_intermediates/export_includes)

LOCAL_PATH := $(my-dir)

ifeq ($(TARGET_DEVICE),u8150)

subdir_makefiles := \
    $(LOCAL_PATH)/libcamera/Android.mk \
    $(LOCAL_PATH)/libcopybit/Android.mk \
    $(LOCAL_PATH)/libgralloc/Android.mk \
    $(LOCAL_PATH)/liblights/Android.mk \
    $(LOCAL_PATH)/libopencorehw/Android.mk \
    $(LOCAL_PATH)/librpc/Android.mk

    include $(subdir_makefiles)

endif

#    $(LOCAL_PATH)/libaudio/Android.mk \
