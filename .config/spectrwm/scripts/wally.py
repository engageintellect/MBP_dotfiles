#!/usr/bin/env python
#               _ _
#__      ____ _| | |_   _
#\ \ /\ / / _` | | | | | |
# \ V  V / (_| | | | |_| |
#  \_/\_/ \__,_|_|_|\__, |
#                   |___/
# A python script for setting wallpaper using sxiv gui
# and generate/apply colorscheme made from wallpaper.
#
# BUILD: MacBook Pro (SPECTRWM)
# VERSION: 1.0

import os
import time
import subprocess

def setwall():
    pic = subprocess.getoutput('sxiv -b -t -o ~/media/photos/wallpapers')
    if pic == '':
        quit()
    else:
        os.system(f'nitrogen --save --set-zoom-fill {pic}')
        os.system(f'wal --saturate 0.3 -i {pic}')
        os.system('python3 ~/.config/spectrwm/scripts/pywal_spectrwm.py')
        os.system('xdotool key super+shift+r')
        quit()

setwall()
