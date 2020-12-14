#!/bin/bash


. "${HOME}/.cache/wal/colors.sh"


declare -a options=("r/unixporn
r/linux
r/wallpapers
youtube
github
suckless
sololearn
icloud
bash_cheatsheet
python_cheatsheet
go_cheatsheet
quit")

# DMENU
# choice=$( echo -e "${options[0]}" | dmenu -fn 'Hack Nerd Font -10' -nb "$color0" -nf \
#     "$color15" -sb "$color3" -sf "$color0" -nhb "$color3" -nhf "$color0" -shb "$color3" -shf "$color15" -h 10 -p 'BOOKMARKS: ')

# ROFI
choice=$( echo -e "${options[0]}" | rofi -dmenu -p "BOOKMARKS"  \
    -font "Hack Nerd Font 10" -location 3 -width 15 -lines 100)

case $choice in
	quit)
		echo "Program terminated." && exit 1
	;;
	r/unixporn)
        choice="https://reddit.com/r/unixporn"
	;;
	r/linux)
        choice="https://reddit.com/r/linux"
	;;
	r/wallpapers)
        choice="https://reddit.com/r/wallpapers"
	;;
    youtube)
        choice="https://youtube.com"
	;;
    github)
        choice="https://github.com"
	;;
    suckless)
        choice="https://suckless.org"
	;;
    sololearn)
        choice="https://sololearn.com"
	;;
    icloud)
        choice="https://icloud.com"
	;;
    bash_cheatsheet)
        choice="https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjq28DusKLtAhXG854KHeo-D8QQFjAJegQILxAC&url=https%3A%2F%2Fdevhints.io%2Fbash&usg=AOvVaw11qhw8ZW7USe9rbM6TU70x"
	;;
    python_cheatsheet)
        choice="https://www.pythoncheatsheet.org/"
	;;
    go_cheatsheet)
        choice="https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjkpIW-taLtAhXiHTQIHSK1B-kQFjAAegQIAhAC&url=https%3A%2F%2Fdevhints.io%2Fgo&usg=AOvVaw3h5i-0azn8rCyfVeBThPRI"
	;;

	*)
        exit 1
    ;;

esac
qutebrowser $choice

