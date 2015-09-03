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

# disable suspend/resume feature.
stty -ixon

# adjust command prompt profile.
export PS1="\u> "

# define directory variables.
export VIMHOME=/Applications/MacVim.app/Contents
export VIMFILES=$VIMHOME/Resources/vim/runtime
export JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)
#export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_HOME=$JAVA_7_HOME
#export PYTHON_HOME=/usr/local/Cellar/python/2.7.7_1
#export LLVM_HOME=/usr/local/opt/llvm
export LLVM_HOME=/usr/local/Cellar/llvm/3.4.1
export PKG_CONFIG_PATH=/usr/local/Cellar/sqlite/3.8.5/lib/pkgconfig
export DOWNLOADS=$HOME/Downloads
#export LD_LIBRARY_PATH=/lib/:/usr/lib/:/usr/local/lib/
export WORKSPACE=$HOME/workspace
export DESKTOP="$HOME/Desktop"
export CONFIG=$HOME/config
export UNIXCONFIG=$CONFIG/unix
export TOOLS=$HOME/tools
export ANDROID_SDK_HOME=$TOOLS/android-sdk-macosx
# Arrange paths
export PATH=/usr/local/bin:$PATH
#export PATH=$PATH:$ANDROID_SDK_HOME/tools:$ANDROID_SDK_HOME/platform-tools:$ANDROID_SDK_HOME/build-tools/17.0.0
#export PATH=$PYTHON_HOME/bin:$PATH
export PATH=$PATH:$LLVM_HOME/bin
# pythonpath for python module used by mozilla project.
export MOZILLA_PYTHON=$WORKSPACE/mozilla-central/python
export PYTHONPATH=/usr/local/lib/python2.7/site-packages

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
# alias rm='rm -i'
 alias cp='cp -i'
 alias mv='mv -i'

# Default to human readable figures
 alias df='df -h'
 alias du='du -h'

# handy short cuts #
 alias hs='history'
 alias hsg='history | grep '
 #alias j='jobs -l'
 alias find='find . -name '
 alias psg='ps aux | grep -v grep | grep -i -e VSZ -e'
 alias wget='wget -c'
 alias vim='$VIMHOME/MacOS/Vim'
 alias vi='vim'
 alias tree='tree | less'

# make executable
 alias ax="chmod a+x"

# trim newlines
 alias tn='tr -d "\n"'

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
# alias l='ls -phCGF' #
 alias mkdir='mkdir -pv'
 #alias p='pwd'
 alias pw='pwd'

 # Get readable list of network IPs
 alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
 alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
 alias flush="dscacheutil -flushcache" # Flush DNS cache
#
# Custom defined shortcuts
 alias desktop='cd $DESKTOP'
 alias config='cd $CONFIG'
 alias unixconfig='cd $UNIXCONFIG'
 alias uconfig='unixconfig'
 alias vimfiles='cd $VIMFILES'
 alias downloads='cd $DOWNLOADS'
 alias src='source $HOME/.bashrc'
 alias vh='cd $VIMFILE'
 alias ve='vim $HOME/.vimrc'
 alias ch='cd "$UNIXCONFIG"'
 alias be='vim "$UNIXCONFIG"/.bashrc'
# alias te='vim "$UNIXCONFIG"/.tmux.conf'
# alias tmux='tmux -2'
#
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

# go to home directory
# alias h='cd ~'
 alias home='cd ~'

# quick python fix with YCM plugin.
 export DYLD_FORCE_FLAT_NAMESPACE=1

# for extending regex?
 shopt -s extglob

