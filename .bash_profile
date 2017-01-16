#This file is sourced by bash when you log in interactively.
[ -f ~/.bashrc ] && . ~/.bashrc

export SDL_AUDIODRIVER=pulse
export DEVKITPRO=/home/stefan/opt/devkitpro 
export DEVKITARM=/home/stefan/opt/devkitpro/devkitARM
export GOPATH=${HOME}/opt/go
export STEAM_FRAME_FORCE_CLOSE=1 

[ -s "/home/stefan/.dnx/dnvm/dnvm.sh" ] && . "/home/stefan/.dnx/dnvm/dnvm.sh" # Load dnvm
