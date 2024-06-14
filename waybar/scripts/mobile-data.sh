#!/bin/sh
# turns mobile data on an off when pressing the data icon

DATA=$(nmcli radio wwan)

if [ "$DATA" = "enabled" ]; then
    $(nmcli radio wwan off)
    $(notify-send "Mobile data turned off" -i phone)
else
    $(nmcli radio wwan on)
    $(notify-send "Mobile data turned on" -i phone)
fi
