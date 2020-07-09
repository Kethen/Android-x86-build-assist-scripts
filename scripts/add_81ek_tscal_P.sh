if [ "$(cat device/generic/common/init.sh | grep 81EK)" == "" ]
then
	sed -i 's/*T91*/*81EK*|*T91*/g' device/generic/common/init.sh
	echo 81EK has been added to the tscal init list
else
	echo 81EK has already been added to the tscal init list, please consult device/generic/common/init.sh for other changes
fi
