#!/usr/bin/env bash


st -n pulsemixer -e pulsemixer &

sleep .15

pulse=$(wmctrl -l | grep pulsemixer | awk '{print $1}')

wmctrl -a pulse -b toggle,above
wmctrl -i -r $pulse -e 0,590,375,500,300


