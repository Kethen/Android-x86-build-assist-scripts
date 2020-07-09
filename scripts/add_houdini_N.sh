if [ "$(cat device/generic/android_x86_64/android_x86_64.mk | grep houdini)" == "" ]
then
	echo PRODUCT_COPY_FILES += extras/houdini7_y.sfs:system/etc/houdini7_y.sfs >> device/generic/android_x86_64/android_x86_64.mk
	echo houdini7_y.sfs added
else
	echo houdini7_y.sfs is already added, please consult device/generic/android_x86_64/android_x86_64.mk for other changes
fi
