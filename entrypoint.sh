#!/bin/bash

hub checkout master
VERSION_NAME=$(grep -oP 'versionName "\K(.*?)(?=")' ./buildDependencies/android_commons.gradle)
hub release create -a ./"${APP_FOLDER}"/build/outputs/apk/debug/*-debug.apk -m "${RELEASE_TITLE} - v${VERSION_NAME}" $(date +%Y%m%d%H%M%S)
