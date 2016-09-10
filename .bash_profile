#!/bin/bash
#
# Default Bash Profile
#
# echo "Loading ${HOME}/.bash_profile"
#source ~/.profile # Get the paths
source ~/.bashrc  # get aliases

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#
#- end
