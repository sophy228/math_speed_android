LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := time_math
LOCAL_SRC_FILES := time_math.c timing.c
LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_SHARED_LIBRARIES := libc libm
LOCAL_CFLAGS := -g -Ofast -DNOFLT80 -DNOFLT128 -std=c99  #-DNOMEMALIGN
LOCAL_CPPFLAGS  += -std=c99
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := time_arit
LOCAL_SRC_FILES := time_arit.c timing.c
LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_SHARED_LIBRARIES := libc libm
LOCAL_CFLAGS := -g -Ofast -DNOFLT80 -DNOFLT128 -std=c99  #-DNOMEMALIGN
LOCAL_CPPFLAGS  += -std=c99
include $(BUILD_EXECUTABLE)


