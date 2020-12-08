#!/usr/bin/env bash 
#    
#                     _                                _          _            _
#     ____ __  ___ __| |_ _ ___ __ ___ __    __ _ _  _| |_ ___ __| |_ __ _ _ _| |_
#    (_-< '_ \/ -_) _|  _| '_\ V  V / '  \  / _` | || |  _/ _ (_-<  _/ _` | '_|  _|
#    /__/ .__/\___\__|\__|_|  \_/\_/|_|_|_| \__,_|\_,_|\__\___/__/\__\__,_|_|  \__|
#       |_|
#    
#    BUILD: MacBook Pro 
#    VERSION: 1.0
#    

# SETUP TOUCHPAD
/home/r3dux/bin/env/touchy.sh

# DPI SCALING, KEY REPEAT, KEYSWAP...
#/home/r3dux/bin/env/display_settings/dual_displays.sh
#/home/r3dux/set_monitors.sh
# xrandr --output LVDS1 --auto --primary
# xrandr --output DP1 --auto --rotate left
# xrandr --output VGA1 --auto --primary --right-of DP1
xrandr --dpi 96
xset r rate 275 200
/usr/bin/setxkbmap -option "caps:swapescape" &

# RELOAD PYWAL
wal -R

# COMPILE ST
python /home/r3dux/bin/env/pywal/st_pywal.py

# PROGRAMS
clipmenud &
killall -q xfce4-power-manager
xfce4-power-manager &
~/bin/env/pywal/dunst_pywal.sh
killall -q nitrogen
nitrogen --restore &
killall -q xautolock slock
xautolock -time 20 -locker slock &
# killall -q polybar
# polybar -r new &
killall -q picom
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
picom --experimental-backends &
