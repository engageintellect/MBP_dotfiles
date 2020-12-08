#!/usr/bin/env bash

# IMPORT WAL COLORS
. "${HOME}/.cache/wal/colors.sh"


declare options=("alacritty
bspwm
sxhkd
polybar
picom
nvim
spectrwm
zshrc
zsh_aliases
zsh_env
quit")


choice=$(echo -e "${options[0]}" | dmenu -fn 'Hack Nerd Font -10' -nb "$color0" -nf \
    "$color15" -sb "$color3" -sf "$color0" -nhb "$color3" -nhf "$color0" -shb "$color3" -shf "$color15" -h 10 -l 12 -g 1 -p 'Edit config > ')


case "$choice" in 
    quit)
        echo "Progam terminated." && exit 1

    ;;
    alacritty)
        choice="$HOME/.config/alacritty/alacritty.yml"
    ;;
    bspwm)
        choice="$HOME/.config/bspwm/bspwmrc"
    ;;
    sxhkd)
        choice="$HOME/.config/sxhkd/sxhkdrc"
    ;;
    polybar)
        choice="$HOME/.config/polybar/config"
    ;;
    picom)
        choice="$HOME/.config/picom/picom.conf"
    ;;
    nvim)
        choice="$HOME/.config/nvim/init.vim"
    ;;
    zshrc)
        choice="$HOME/.zshrc"
    ;;
    zsh_aliases)
        choice="$HOME/.config/zsh/zsh_aliases"
    ;;
    zsh_env)
        choice="$HOME/.zshenv"
    ;;

    spectrwm)
        choice="$HOME/.config/spectrwm/spectrwm.conf"
    ;;
    *)
        exit 1
    ;;
esac
echo $choice
st -e nvim "$choice"



