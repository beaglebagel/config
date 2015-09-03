# To the extent possible under law, the author(s) have dedicated all
# copyright and related and neighboring rights to this software to the
# public domain worldwide. This software is distributed without any warranty.
# You should have received a copy of the CC0 Public Domain Dedication along
# with this software.
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

# base-files version 4.1-1

# ~/.bashrc: executed by bash(1) for interactive shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bashrc

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

# cd to default C:
cd /cygdrive/c

# disable suspend/resume feature.
stty -ixon


# define directory variables.
export HOME=/cygdrive/c
export BASH_HOME="/home/Valued Customer"
export DOWNLOAD=$HOME/Download
export LD_LIBRARY_PATH=/lib/:/usr/lib/:/usr/local/lib/
export VIMFILES=/usr/share/vim/vim74
export JAEBIN=$HOME/Jaebin
export WORKSPACE=$JAEBIN/workspace
export WORKSPACE2=$JAEBIN/workspace2
export SHORTCUTS=$JAEBIN/tools/shortcuts
export PROGRAM_FILES="$HOME/Program Files"
export PROGRAM_FILES_86="$HOME/Program Files (x86)"
export FIREFOX_HOME="$PROGRAM_FILES_87/Mozilla Firefox"
export DESKTOP="/cygdrive/c/Desktop"
export TOOLS="$JAEBIN/tools"
export CONFIG="$TOOLS/config"

# Shell Options
#
# See man bash for more options...
#
# Don't wait for job termination notification
# set -o notify
#
# Don't use ^D to exit
# set -o ignoreeof
#
# Use case-insensitive filename globbing
# shopt -s nocaseglob
#
# Make bash append rather than overwrite the history on disk
# shopt -s histappend
#
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
# shopt -s cdspell

# Completion options
#
# These completion tuning parameters change the default behavior of bash_completion:
#
# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1
#
# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1
#
# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# [[ -f /etc/bash_completion ]] && . /etc/bash_completion

# History Options
#
# Don't put duplicate lines in the history.
# export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
#
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
#
# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"

# Interactive operation...
 alias rm='rm -i'
 alias cp='cp -i'
 alias mv='mv -i'
#
# Default to human readable figures
 alias df='df -h'
 alias du='du -h'

# handy short cuts #
 alias hs='history'
 alias hsg='history | grep '
 alias j='jobs -l'
 alias fi='find . -name '
 alias psg='ps aux | grep -v grep | grep -i -e VSZ -e'
 alias wget='wget -c'
 alias vi='vim'
 alias t='tree | less'


# make executable
 alias ax="chmod a+x"

# trim newlines
 alias tn='tr -d "\n"'

# Misc :)
# alias less='less -r' # raw control characters
# alias whence='type -a' # where, of a sort
 alias grep='grep --color' # show differences in colour
 alias egrep='egrep --color=auto' # show differences in colour
 alias fgrep='fgrep --color=auto' # show differences in colour
#
# Some shortcuts for different directory listings
 alias ls='ls -hF --color=tty' # classify files in colour
 alias dir='ls --color=auto --format=vertical'
 alias vdir='ls --color=auto --format=long'
 alias ll='ls -l' # long list
 alias la='ls -A' # all but . and ..
 alias ld='ls -d'
 alias lla='ls -la'
 alias l='ls -CF' #
 alias mkdir='mkdir -pv'

# Custom defined shortcuts
 alias cygwin='cd $HOME/cygwin'
 alias desktop='cd /cygdrive/c/Desktop'
 alias jaebin='cd $JAEBIN'
 alias config='cd $CONFIG'
 alias music='cd $JAEBIN/music'
 alias shortcuts='cd $SHORTCUTS'
 alias src='source $SHORTCUTS/.bashrc'
 alias firefox='$SHORTCUTS/firefox.exe'
 alias vh='cd $VIMFILE'
 alias ve='vim $CONFIG/.vimrc'
 alias ch='cd "$CONFIG"'
 alias be='vim "$CONFIG"/.bashrc'
 alias te='vim "$CONFIG"/.tmux.conf'
 alias tmux='tmux -2'

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
 alias h='cd ~'
 alias home='cd ~'

