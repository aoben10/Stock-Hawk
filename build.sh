#!/bin/bash -e


echo "Executing build.sh"

export CI_LANE_DEV=${CI_LANE_DEV:="alpha"}
export CI_LANE_STAGE=${CI_LANE_STAGE:="beta"}
export CI_LANE_PROD=${CI_LANE_PROD:="deploy"}

############################################
## Define custom fastlane parameters here ##
############################################


exists()
{
  command -v "$1" >/dev/null 2>&1
}

if exists fastlane; then
    echo ">> Found existing version of fastlane"
    fastlane -v
else
    echo ">> fastlane not found"
    echo ">> install fastlane now? "

fi