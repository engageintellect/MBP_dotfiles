#!/usr/bin/env bash

. "${HOME}/.cache/wal/colors.sh"


declare options=("dmenu
dwm
ii
slock
st
surf
tabbed
quit")

choice=$( echo -e "${options[0]}" | dmenu -fn 'Hack Nerd Font -10' -nb "$color0" -nf \
    "$color15" -sb "$color3" -sf "$color0" -nhb "$color3" -nhf "$color0" -shb "$color3" -shf "$color15" -h 15 -p 'Compiple: ')


case "$choice" in
    quit)
        echo "Program terminated." && exit 1
    ;;
    dmenu)
        choice="$HOME/.config/suckless/dmenu"
    ;;
    dwm)
        choice="$HOME/.config/suckless/dwm"
    ;;
    ii)
        choice="$HOME/.config/suckless/ii"
    ;;
    slock)
        choice="$HOME/.config/suckless/slock"
    ;;
    st)
        choice="$HOME/.config/suckless/st_term"
    ;;
    surf)
        choice="$HOME/.config/suckless/surf"
    ;;
    tabbed)
        choice="$HOME/.config/suckless/tabbed"
    ;;
    *)
        exit 1
    ;;


esac
cd $choice && sudo make install




