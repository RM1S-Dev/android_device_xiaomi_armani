LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    CameraWrapper.cpp

LOCAL_SHARED_LIBRARIES := \
    libhardware \
    libbase \
    libhidltransport \
    liblog \
    libcamera_client \
    libutils \
    libcutils \
    libgui \
    android.hidl.token@1.0-utils

LOCAL_C_INCLUDES += \
    framework/native/include \
    system/media/camera/include

LOCAL_STATIC_LIBRARIES := \
    libarect

LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE := camera.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
#include $(BUILD_HEAPTRACKED_SHARED_LIBRARY)
