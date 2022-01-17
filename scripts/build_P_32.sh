source build/envsetup.sh
lunch android_x86-userdebug
ccache -M 20G
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
m -j$(nproc) iso_img
