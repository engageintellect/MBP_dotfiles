#!/usr/bin/env bash

# BUILD: ThinkPad X220


# SLEEP TIMER
SLEEP_SEC=1  # set bar_delay = 5 in /etc/spectrwm.conf
COUNT=0

# MAIN LOOP
while :; do

    # BATTERY
    if [[ $(acpi -b | awk 'NR==1 {print $4}'| sed 's/,//g') == 0% ]]; then 
        battery=$(acpi -b | awk 'NR==2 {print $4}' | sed 's/,//g' | sed 's/Unknown/Full/g') 
    else battery=$(acpi -b | awk 'NR==1 {print $4}' | sed 's/,//g' | sed 's/Unknown/Full/g')
    fi

    # MEMORY
    memory=$(free -mh | awk 'FNR == 2 {print}' | awk '{print $3}')

    # WIFI NETWORK
    ssid=$(python3 ~/.config/spectrwm/bar/get_ssid.py)

    # LOCAL IP
    local_ip=$(python3 ~/.config/spectrwm/bar/get_ip.py)

	let COUNT=$COUNT+1


        # DISPLAY BAR
        echo " $ssid   $local_ip    $battery"
        sleep $SLEEP_SEC
done





