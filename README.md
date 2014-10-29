#OpenCV Nonfree Build for Android
from OpenCV-2.4.9-android-sdk opencv-2.4.9

based on https://sites.google.com/site/wghsite/technical-notes/sift_surf_opencv_android

## build

* download OpenCV & unzip to /home/user/opencv-android-sdk
* export OPENCV_PACKAGE_DIR="/home/user/opencv-android-sdk"
* cd jni && ndk-build
