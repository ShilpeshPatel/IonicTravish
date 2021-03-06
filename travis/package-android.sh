#!/bin/bash -v

set -e

if [[ "$TRAVIS_BRANCH" == "develop" ]]
then
    echo "Skipping package Android for develop branch"
    exit
fi

mkdir -p output
cp platforms/android/app/build/outputs/apk/release/app-release-unsigned.apk output/ionictravis-release-unsigned.apk
# cp platforms/android/app/build/outputs/apk/debug/app-debug.apk output/ionictravis-release-unsigned.apk

