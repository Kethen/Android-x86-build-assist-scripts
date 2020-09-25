cd frameworks/base/
if [ "$(cat core/res/res/values/config.xml | grep microg)" == "" ]
then
	sed 's/android:protectionLevel="dangerous"/android:protectionLevel="signature|privileged"/' ../../scripts/android_frameworks_base-P.patch | patch -p1 --no-backup-if-mismatch
	echo applied signature spoofing patch
else
	echo signature spoofing patch is already applied
fi
