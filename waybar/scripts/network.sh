#!/bin/sh

# Gives network connectivity in percentage

NUM=$(mmcli -L | sed 's/[^0-9]*//g' | awk '{ print substr($0, 2)}' || 0)
#echo $NUM
#mmcli -m 0 | grep "signal" | sed -e 's/^[ \t]*//'#>> output.txt


#mmcli -m 0 | grep "signal" | sed -e 's/^[ \t]*//'

MODEM=$(mmcli -m $NUM | grep "signal" | sed 's/[^0-9]*//g' || 0)

if ((MODEM == 0)); then
    CONNECTION=🌑
elif ((MODEM <= 25)); then
    CONNECTION=🌘
elif ((MODEM <= 50)); then
    CONNECTION=🌗
elif ((MODEM <= 75)); then
    CONNECTION=🌖
elif ((MODEM <= 100)); then
    CONNECTION=🌕
fi
#CONNECTION=
if ((MODEM == 0)); then
    echo "NoLTE"
elif ((MODEM > 0)); then
    echo "${MODEM}%${CONNECTION}4G"
fi
