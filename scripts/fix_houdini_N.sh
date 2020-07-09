if [ "$(cat device/generic/common/nativebridge/bin/enable_nativebridge | grep mount\ -o\ ro\ /system/etc/houdini\$v.sfs)" == "" ]
then
	sed -i "s/mount \/system\/etc\/houdini\$v.sfs/mount -o ro \/system\/etc\/houdini\$v.sfs/g" device/generic/common/nativebridge/bin/enable_nativebridge
	echo native bridge script has been patched
else
	echo native bridge script has already been patched, see device/generic/common/nativebridge/bin/enable_nativebridge for other changes
fi
