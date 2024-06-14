#!/bin/sh
# uses nmcli to get if wifi is enabled or not then either
# enables or disables the wifi 
STATUS=$(nmcli radio wifi)
if [ "$STATUS" = "enabled" ]; then
    $(nmcli radio wifi off)
    $(notify-send "WiFi turned off")
else
    $(nmcli radio wifi on)
    $(notify-send "WiFi turned on")
fi
