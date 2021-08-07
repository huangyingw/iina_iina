#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

# ./prerequisite.sh

xcodebuild -list -project iina.xcodeproj
xcodebuild -target iina
xcodebuild -target iina-cli
xcodebuild -target OpenInIINA
xcodebuild

# open build/Development/iTerm2.app
