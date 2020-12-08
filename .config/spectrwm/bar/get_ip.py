#!/usr/bin/env python3

import os, subprocess

a = subprocess.getoutput("ip address | grep inet | awk '{print $2}'")


print(a.split()[2].replace("/24", ""))
