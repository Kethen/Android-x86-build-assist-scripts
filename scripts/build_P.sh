source build/envsetup.sh
lunch android_x86_64-userdebug
m -j$(nproc) iso_img
