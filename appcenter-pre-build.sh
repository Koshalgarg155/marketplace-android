#!/usr/bin/env bash
react-native start
react-native run-android
# Example: Change bundle name of an iOS app for non-production
if [ "$APPCENTER_BRANCH" != "appcenter" ];
    react-native start
    react-native run-android
then
    react-native start
    react-native run-android
    plutil -replace CFBundleDisplayName -string "\$(PRODUCT_NAME) Beta" $APPCENTER_SOURCE_DIRECTORY/MyApp/Info.plist
fi
react-native start
react-native run-android