#!/bin/sh
#keyboard battery
BAT=$(upower -i /org/freedesktop/UPower/devices/keyboard_ip5xxx_charger | grep "percentage" | sed 's/[^0-9]*//g')
echo "${BAT}%"
