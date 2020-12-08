#!/usr/bin/env python3


import os, subprocess

a = subprocess.getoutput('iwconfig')


for x in a.split():
    if "ESSID" in x:
        network = str(x)

print(network.replace("ESSID:", "").replace('"', ''))
