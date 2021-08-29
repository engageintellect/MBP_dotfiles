#           _
#   _______| |__   ___ _ ____   __
#  |_  / __| '_ \ / _ \ '_ \ \ / /
# _ / /\__ \ | | |  __/ | | \ V /
#(_)___|___/_| |_|\___|_| |_|\_/
#
# Version: 2.0
# Build: MBP


# DISPLAY SCALING
export QT_SCALE_FACTOR=1
export GDK_SCALE=.5
export GDK_DPI_SCALE=1
export QT_QPA_PLATFORMTHEME=qt5ct

# FZF
export FZF_BASE="/home/$USER/.bin/fzf"

# JAVA
export _JAVA_AWT_WM_NONREPARENTING=1

# CRYPTOWATCH
LIBGL_DRI3_DISABLE=true

# DEFAULT PROGRAMS
export EDITOR='nvim'
export SUDO_EDITOR='nvim'
export VISUAL='nvim'
export TERMINAL='st'
export BROWSER='brave'

# ENVIRONMENTAL EXPORTS
export PATH="/home/r3dux/.cargo/bin:$PATH"
export PATH="/home/r3dux/scripts:$PATH"
export PATH="/home/r3dux/bin:$PATH"
export PATH="/home/r3dux/.bin:$PATH"
export PATH="/home/r3dux/.local/bin:$PATH"
export PATH="/home/r3dux/.emacs.d/bin:$PATH"

# GO LANG EXPORTS
export GOPATH="$HOME/code/go"
export GOBIN="$HOME/code/go/bin"


# DISABLE FILES
export LESSHISTFILE=-

# COLORS
export LS_COLORS="$color3"
export TREE_COLORS="$color3"

# CLEAN UP
#export XINITRC="/home/r3dux/.config/X11/.xinitrc
export ZDOTDIR=~/.config/zsh
export HISTFILE=~/.config/zsh/.zsh_history
export GTK2_RC_FILES="$HOME"/.config/gtk-2.0/gtkrc-2.0

