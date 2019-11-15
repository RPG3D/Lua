
xmake  f -p android  --android_sdk="%ANDROID_HOME%"  --ndk="%ANDROID_NDK_HOME%"  -a armv7-a --ndk_cxxstl=gnustl_shared
xmake -b

xmake  f -p android  --android_sdk="%ANDROID_HOME%"  --ndk="%ANDROID_NDK_HOME%"  -a arm64-v8a --ndk_cxxstl=gnustl_shared
xmake -b


pause


