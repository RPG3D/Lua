
xmake  f -p android  --android_sdk="%ANDROID_HOME%"  --ndk="%ANDROID_NDK_ROOT%"  -a armv7-a --ndk_cxxstl=gnustl_shared
xmake -b

xmake  f -p android  --android_sdk="%ANDROID_HOME%"  --ndk="%ANDROID_NDK_ROOT%"  -a arm64-v8a --ndk_cxxstl=gnustl_shared
xmake -b

xmake  f -p android  --android_sdk="%ANDROID_HOME%"  --ndk="%ANDROID_NDK_ROOT%"  -a x86_64 --ndk_cxxstl=gnustl_shared
xmake -b


pause


