if [ "$(cat device/generic/x86_64/android_x86_64.mk | grep houdini)" == "" ]
then
	echo PRODUCT_COPY_FILES += extras/houdini9_y.sfs:system/etc/houdini9_y.sfs >> device/generic/x86_64/android_x86_64.mk
	echo houdini9_y.sfs added
else
	echo houdini9_y.sfs is already added, please consult device/generic/x86_64/android_x86_64.mk for other changes
fi
