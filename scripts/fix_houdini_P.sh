if [ "$(cat device/generic/common/nativebridge/bin/enable_nativebridge | grep 'context="u:object_r:system_file:s0",ro')" == "" ]
then
	sed -i "s/context=\"u:object_r:system_file:s0\"/context=\"u:object_r:system_file:s0\",ro/g" device/generic/common/nativebridge/bin/enable_nativebridge
	echo native bridge script has been patched
else
	echo native bridge script has already been patched
fi
