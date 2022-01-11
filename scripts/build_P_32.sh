source build/envsetup.sh
lunch android_x86-userdebug
m -j$(nproc) iso_img
