LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
OPENCV_INSTALL_MODULES:=on
OPENCV_CAMERA_MODULES:=off
include $(OPENCV_PACKAGE_DIR)/sdk/native/jni/OpenCV.mk

LOCAL_C_INCLUDES += $(OPENCV_PACKAGE_DIR)/sdk/native/jni/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_MODULE    := nonfree
LOCAL_CFLAGS    := -Werror -O3 -ffast-math
LOCAL_LDLIBS    += -llog
LOCAL_SRC_FILES := nonfree_init.cpp sift.cpp surf.cpp surf.ocl.cpp surf_gpu.cpp

include $(BUILD_SHARED_LIBRARY)
