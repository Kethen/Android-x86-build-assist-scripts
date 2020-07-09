if [ "$(cat device/generic/common/packages.mk | grep GmsCore)" == "" ]
then
	echo PRODUCT_PACKAGES += GmsCore GsfProxy FakeStore MozillaNlpBackend NominatimNlpBackend com.google.android.maps.jar FDroid FDroidPrivilegedExtension >> device/generic/common/packages.mk
	echo microg packages added
else
	echo microg packages are already added, please consult device/generic/common/packages.mk for other changes
fi
