# This file is sourced by all *interactive* bash shells on startup.  This
# file *should generate no output* or it will break the scp and rcp commands.

# colors for ls, etc.
alias d="ls --color"
alias ls="ls --color=auto"
alias ll="ls --color -l"
alias less=most
alias sudo='sudo '

# Change the window title of X terminals 
case $TERM in
	xterm*|rxvt*|Eterm|eterm)
		PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
		;;
	screen)
		PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\033\\"'
		;;
esac

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoreboth:erasedups


export PATH=$HOME/bin:$HOME/opt/fpc/bin:$PATH:/usr/sbin:/sbin:${HOME}/opt/go/bin
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig
#eval "$(ssh-agent -s)"

shopt -s checkwinsize

export EDITOR=`which vim`

for sh in `pwd`/.gentoo/*-env ; do
        if [ -r "$sh" ] ; then
                . "$sh"
        fi
done
unset sh

export POVRAY_BETA=`povray --betacode 2>&1`
export NNTPSERVER=newszilla.xs4all.nl


# export MANPAGER="col -b | view -c 'set ft=man nomod nolist' -"
export MANPAGER="most"

export DEVKITPRO=${HOME}/opt/devkitpro
export DEVKITPPC=${DEVKITPRO}/devkitPPC


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/profile.d/bash-completion ]; then
#	source /etc/profile.d/bash-completion
#fi

alias t=tmux

function squashroot () {
	if [[ $1 != "" ]]; then
		dir=$(realpath "$1")
		if [ -d $dir ]; then
			find $dir -depth \( -type f -regex "$dir/.+/.+" -exec mv -v '{}' "$dir"  \; \) -or \( -type d  -regex "$dir/.+" -exec rmdir -v '{}' \; \)
		fi
	else
		echo 'Usage: squashroot [path]'
	fi
}


. /home/stefan/torch/install/bin/torch-activate


. /home/stefan/torch/install/bin/torch-activate
