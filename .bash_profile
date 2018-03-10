#This file is sourced by bash when you log in interactively.
[ -f ~/.bashrc ] && . ~/.bashrc

export LANG=en_US.utf8
export LC_ALL=en_US.utf8

export SDL_AUDIODRIVER=pulse
export GOPATH=${HOME}/opt/go

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. $HOME/.local/lib64/python3.4/site-packages/powerline/bindings/bash/powerline.sh
