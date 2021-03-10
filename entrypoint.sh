#!/bin/bash

hub checkout master
VERSION_NAME=$(grep -oP 'versionName "\K(.*?)(?=")' ./buildDependencies/android_commons.gradle)
hub release create -a ./"${APP_FOLDER}"/build/outputs/apk/debug/*-debug.apk -p -m "${RELEASE_TITLE} - v${VERSION_NAME}" Pre-Release
