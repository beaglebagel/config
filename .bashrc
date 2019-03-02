# To the extent possible under law, the author(s) have dedicated all
# copyright and related and neighboring rights to this software to the
# public domain worldwide. This software is distributed without any warranty.
# You should have received a copy of the CC0 Public Domain Dedication along
# with this software.
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

# base-files version 4.1-1

# ~/.bashrc: executed by bash(1) for interactive shells.

# Modifying /etc/skel/.bashrc directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bashrc) is yours, please
# feel free to customise it to create a shell
# environment to your liking. If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# USER DEPENDENT .bashrc file

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
}

man() {
    env LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}

tmuxcolor() {
    for i in {0..255} ; do
        printf "\x1b[38;5;${i}mcolours${i}\n"
    done
}

# disable suspend/resume feature.
stty -ixon

# adjust command prompt profile.
# export PS1="\u@\w> "
export PS1="[\[$(tput sgr0)\]\[\033[38;5;39m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;215m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]] \[$(tput sgr0)\]\[\033[38;5;41m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# define directory variables.
export VIMHOME=/Applications/MacVim.app/Contents
export VIMFILES=$VIMHOME/Resources/vim/runtime

export LLVM_HOME=/usr/local/Cellar/llvm/3.4.1
export PKG_CONFIG_PATH=/usr/local/Cellar/sqlite/3.8.5/lib/pkgconfig
export DESKTOP="$HOME/Desktop"
export CONFIG=$HOME/config

# Arrange paths
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:$LLVM_HOME/bin
# clean up duplicates in path.
PATH=`printf %s "$PATH" | awk -v RS=: '{ if (!arr[$0]++) {printf("%s%s",!ln++?"":":",$0)}}'`

export PYENV_ROOT="${HOME}/.pyenv"
export PATH=~/miniconda3/bin:"$PATH"

# for python virtual environment (virtualenvwrapper)
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$WORKSPACE
source /usr/local/bin/virtualenvwrapper.sh

# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# [[ -f /etc/bash_completion ]] && . /etc/bash_completion

# Interactive operation...
#
# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# [[ -f /etc/bash_completion ]] && . /etc/bash_completion

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Interactive operation...
#alias cp='cp -i'
alias mv='mv -i'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# handy short cuts #
alias hs='history'
alias hsg='history | grep '
#alias j='jobs -l'
alias psg='ps aux | grep -v grep | grep -i -e VSZ -e'
alias wget='wget -c'
alias vim='$VIMHOME/MacOS/Vim'
alias vi='vim'
alias tree='tree | less'

# trim newlines
alias tn='tr -d "\n"'
alias tt="tr '>' '\n'"

# Misc :)
alias less='less -r' # raw control characters
alias whence='type -a' # where, of a sort
alias grep='grep --color=auto' # show differences in colour
alias egrep='egrep --color=auto' # show differences in colour
alias fgrep='fgrep --color=auto' # show differences in colour

# Some shortcuts for different directory listings
alias ls='ls -hpGF' # classify files in colour
alias sl='ls' # typo : ls
alias ll='ls -lphG' # long list
alias la='ls -phAG' # all but . and ..
alias ld='ls -dphG'
alias lla='ls -laphG'
alias mkdir='mkdir -pv'
alias pw='pwd'

# Get readable list of network IPs
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias flush="dscacheutil -flushcache" # Flush DNS cache

# Custom defined shortcuts
alias home='cd ~'
alias src='source $HOME/.bashrc'
alias ve='vim $HOME/.vimrc'
alias tmux='tmux -2'

# copy to system-wide clipboard.
alias xc='xclip -selection clipboard'

# cd .. aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../../../..'
alias .........='cd ../../../../../../../..'
alias ..........='cd ../../../../../../../../..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias .6='cd ../../../../../..'
alias .7='cd ../../../../../../..'
alias .8='cd ../../../../../../../..'
alias .9='cd ../../../../../../../../..'
alias .10='cd ../../../../../../../../../..'
alias .11='cd ../../../../../../../../../../..'

# quick python fix with YCM plugin.
export DYLD_FORCE_FLAT_NAMESPACE=1

# for extending regex?
shopt -s extglob

# History related settings.
export HISTIGNORE="&:ls:exit:lo:ll:history:pwd:..:cd"
export HISTCONTROL=ignoredups:ignorespace
export HISTFILESIZE=20000000
export HISTSIZE=1000000
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# check win size change and align texts accordingly.
shopt -s checkwinsize

# autocorrects cd misspellings
shopt -s cdspell
# live updating .bash_history
shopt -s histappend
# Combine multiline commands into one in history
shopt -s cmdhist
# must press ctrl-D 2+1 times to exit shell
export IGNOREEOF="2"
# set default editor to vi
export EDITOR=vi
