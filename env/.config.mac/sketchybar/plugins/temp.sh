#!/usr/bin/env sh

filter="PMU tdev"
sensor_output=$(./plugins/macos-temp-tool -f "${filter}" -a | awk '{print $NF}')
LABEL="${sensor_output}°"

sketchybar --set "$NAME" label="$LABEL"
