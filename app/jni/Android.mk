LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := mystring
LOCAL_SRC_FILES := stringutil.c
LOCAL_C_INCLUDES := $(JNI_H_INCLUDE)
#LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -llog

include $(BUILD_SHARED_LIBRARY)
