#!/bin/sh

# Turns on the flashlight for the Pinephone and Pinephone Pro

# LIGHT=$(cat /sys/devices/platform/led-controller/leds/white:flash/brightness)

# if (($LIGHT == 0)); then
#     $(echo 1 > /sys/devices/platform/led-controller/leds/white:flash/brightness)
# else
#     $(echo 0 > /sys/devices/platform/led-controller/leds/white:flash/brightness)
# fi

sxmo_flashtoggle.sh
