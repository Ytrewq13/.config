#
# ~/.bash_profile
#

export XDG_CONFIG_HOME="$HOME"/.config
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CACHE_HOME="$HOME"/.cache

# shellcheck source=/home/sam/.config/bash/bashrc
if [ -f "$XDG_CONFIG_HOME/bash/bashrc" ];
then
    . "$XDG_CONFIG_HOME/bash/bashrc"
elif [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export PATH="$PATH:$HOME/.scripts"

export EDITOR="vim -i $HOME/.cache/.viminfo"
export VIMINIT="source $XDG_CONFIG_HOME/vim/vimrc"
export TERMINAL="terminator"
#export BROWSER="chromium"
export BROWSER="google-chrome-stable"
#export BROWSER="firefox"
