package_name=OpenVPN
if [ "$(cat device/generic/common/packages.mk | grep $package_name)" == "" ]
then
	echo PRODUCT_PACKAGES += $package_name >> device/generic/common/packages.mk
	echo $package_name package added
else
	echo $package_name package is already added, please consult device/generic/common/packages.mk for other changes
fi
