#!/usr/bin/env bash



battery_status=$(acpi | awk '{print $3}' | sed 's/,//g')
battery_level=$(acpi | awk '{print $4}' | sed 's/,//g')
memory=$(free -mh | awk 'FNR == 2 {print}' | awk '{print $3}')
ssid=$(python3 ~/.config/spectrwm/bar/get_ssid.py)
local_ip=$(python3 ~/.config/spectrwm/bar/get_ip.py)


notify-send " [$ssid]      [$local_ip]       [$battery_status:$battery_level]"







