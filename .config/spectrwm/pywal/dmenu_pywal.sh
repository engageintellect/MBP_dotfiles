#!/bin/bash

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

#dmenu_run -fn 'mononoki Nerd Font -9' -nb "$color0" -nf "$color15" -sb "$color3" -sf "$color15" -h 30
#dmenu_run -w 600 -fn 'Hack Nerd Font -9' -nb "$color0" -nf "$color15" -sb "$color3" -sf "$color15" -h 20
#dmenu_run -fn 'Iosevka -9' -nb "$color0" -nf "$color15" -sb "$color3" -sf "$color15" -h 30
#dmenu_run -fn 'Fira Code Nerd Font -9' -nb "$color0" -nf "$color15" -sb "$color3" -sf "$color15" -h 30


# dmenu_run -fn 'Hack Nerd Font -12' -nb "$color0" -nf "$color15" -sb "$color3" -sf "$color0" -h 30 -p " "
# dmenu_run -fn 'Hack Nerd Font -12' -nb "$color0" -nf "$color15" -sb "$color3" -sf "$color0" -h 30 -p " "
# dmenu_run -fn 'Hack Nerd Font -12' -nb "$color0" -nf "$color15" -sb "$color3" -sf "$color0" -h 30 -p " "

dmenu_run -fn 'Hack Nerd Font -10' -nb "$color0" -nf "$color15" -sb "$color3" -sf "$color0" \
    -nhb "$color3" -nhf "$color0" -shb "$color3" -shf "$color15" -h 25 -p " "

