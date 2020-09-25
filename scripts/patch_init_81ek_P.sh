cd device/generic/common
if [ "$(cat init.sh | grep 81EK)" == "" ]
then
	cat ../../../scripts/81ek_init_P.patch | patch -p1
	echo device/generic/common/init.sh has been patched for 81EK
else
	echo device/generic/common/init.sh has already been patched for 81EK
fi
