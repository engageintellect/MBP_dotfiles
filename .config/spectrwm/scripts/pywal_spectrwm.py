#!/usr/bin/env python3
import os, subprocess, json, pprint
from shutil import copyfile
from time import sleep


def hexColors(color):
    return (color[:3] + '/' + color[3:5] + '/' + color[5:]).translate({ord('#'): 'rgb:'})
    # '#123456' to 'rgb:12/34/56'


pywal = {'background':'','text':''}
with open(os.environ["HOME"] + "/.cache/wal/colors.json", "r") as Pywal_json:
    data = json.load(Pywal_json)['colors']

    # GET COLORS FROM "~/.cache/wal/colors.json"
    pywal['background'] = hexColors(data['color0'])
    pywal['primary'] = hexColors(data['color2'])
    pywal['focus'] = hexColors(data['color3'])
    pywal['unfocus'] = hexColors(data['color0'])
    # pywal['text'] = hexColors(data['color7'])
    pywal['text'] = hexColors(data['color7'])


# PATHS (new and backup file)
newPath = os.environ["HOME"] + "/.config/spectrwm/spectrwm.conf"
oldPath = os.environ["HOME"] + "/.config/spectrwm/spectrwm.conf.backup"


# THE MAGIC
copyfile(newPath, oldPath) 
with open(oldPath) as old:
    
    with open(newPath, "w") as new:
        for line in old:
            if 'bar_color[1]' in line:
                print("found bar_color")
                if(line[0] != '#'):
                    moddedBg = 'bar_color[1] = ' + pywal['background'] + '\n'
                    print('writing background')
                    new.write(moddedBg)
            
            elif 'bar_font_color[1]' in line:
                print("found bar_font_color")
                if(line[0] != '#'):
                    moddedFontColor = 'bar_font_color[1] = ' + pywal['text'] + "," + pywal['focus'] + '\n'
                    print('writing text color')
                    new.write(moddedFontColor)

            elif 'color_focus' in line:
                print("found color_focus")
                if(line[0] != '#'):
                    modded_focus = 'color_focus = ' + pywal['focus'] + '\n'
                    print('writing focus')
                    new.write(modded_focus)

            elif 'color_unfocus' in line:
                print("found color_unfocus")
                if(line[0] != '#'):
                    modded_unfocus = 'color_unfocus = ' + pywal['unfocus'] + '\n'
                    print('writing unfocus')
                    new.write(modded_unfocus)

            elif 'bar_font_color_selected' in line:
                print("found bar_font_color_selected")
                if(line[0] != '#'):
                    modded_bar_font_selected = 'bar_font_color_selected = ' + pywal['focus'] + '\n'
                    print('writing bar_font_color_selected')
                    new.write(modded_bar_font_selected)
            
            else: new.write(line)

# os.system('clear')           
print("Pywal colors have been applies to 'spectrwm.config'.")
sleep(.5)
print("Resart Spectrwm to load changes.")

