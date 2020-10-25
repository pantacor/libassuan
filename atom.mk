LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libassuan
LOCAL_DESCRIPTION := libassuan

LOCAL_LIBRARIES := \
	libgpg-error \
	$(NULL)

LOCAL_EXPORT_LDLIBS = -l:libassuan.a

LOCAL_AUTOTOOLS_VERSION := 2.0.4
LOCAL_AUTOTOOLS_CONFIGURE_ARGS := --with-libgpg-error-prefix=$(TARGET_OUT_STAGING)/usr
LOCAL_AUTOTOOLS_CONFIGURE_ENV :=


#LOCAL_CLEAN_DIRS := $(call local-get-build-dir)/usr/share/ $(call local-get-build-dir)/usr/include/

include $(BUILD_AUTOTOOLS)
