#!/usr/bin/env bash

chromium & 

sleep .1

wm_id=$(wmctrl -l | grep Chromium | awk '{print $1}')





echo $wm_id
wmctrl -i -r $wm_id -e 0,333,115,1020,825
echo done
