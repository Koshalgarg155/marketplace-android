#!/usr/bin/env bash
npm install
npx react-native start
npx react-native run-android
# Example: Change bundle name of an iOS app for non-production
if [ "$APPCENTER_BRANCH" != "appcenter" ];
    npm install
    npx react-native start
    npx react-native run-android
then
    npm install
    npx react-native start
    npx react-native run-android
    plutil -replace CFBundleDisplayName -string "\$(PRODUCT_NAME) Beta" $APPCENTER_SOURCE_DIRECTORY/MyApp/Info.plist
fi
npm install
npx react-native start
npx react-native run-android