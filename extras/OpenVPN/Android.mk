LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := OpenVPN
LOCAL_SRC_FILES := de.blinkt.openvpn_168.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PREBUILT_JNI_LIBS := libjbcrypto.so libopenvpn.so libopvpnutil.so libosslspeedtest.so libovpn3.so libovpnexec.so
LOCAL_MODULE_TARGET_ARCH := x86_64
include $(BUILD_PREBUILT)
