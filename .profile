# Basic config
xset r rate 200 35 # set key repeat delay and rate
# Clean Up Home Directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export TS3_CONFIG_DIR="$XDG_CONFIG_HOME/ts3client"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export CARGO_HOME="$XDG_DATA_HOME/cargo" 
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv" 
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
alias vscodium='vscodium --extensions-dir "$XDG_DATA_HOME/vscode"'
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'
alias code='code --extensions-dir "$XDG_DATA_HOME/vscode"'


# THEME

export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
# global theme colors
export BLACK="#272822"
export WHITE="#FFFFFF"
export RED="#F92672"
export BLUE="#66D9EF"
export GREEN="#A6E22E"
export ORANGE="#FD971F"
export YELLOW="#E6DB74"
export PURPLE="#AE81FF"
export FONT="Noto"
export FONTSIZE="12"

# default applications
export EDITOR=/usr/bin/nvim
export BROWSER=/usr/bin/firefox
export TERMINAL=/usr/bin/alacritty
export EXPLORER=/usr/bin/thunar
export MAILCLIENT=/usr/bin/thunderbird
export LAUNCHER="ulauncher-toggle"
