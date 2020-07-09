LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := FennecFDroid
LOCAL_SRC_FILES := org.mozilla.fennec_fdroid_689110.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PREBUILT_JNI_LIBS := libfreebl3.so liblgpllibs.so libmozavcodec.so libmozavutil.so libmozglue.so libnss3.so libnssckbi.so libplugin-container.so libsoftokn3.so libxul.so
LOCAL_MODULE_TARGET_ARCH := x86
include $(BUILD_PREBUILT)
