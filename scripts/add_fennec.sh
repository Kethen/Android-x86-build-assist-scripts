if [ "$(cat device/generic/common/packages.mk | grep FennecFDroid)" == "" ]
then
	echo PRODUCT_PACKAGES += FennecFDroid >> device/generic/common/packages.mk
	echo FennecFDroid package added
else
	echo FennecFDroid package is already added, please consult device/generic/common/packages.mk for other changes
fi
