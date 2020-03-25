#!/usr/bin/env bash
# Aravind Reddy V. aravindvoggu.in

export DOTFOLDER="$HOME/.dotfiles"

export PATH="$DOTFOLDER:$PATH";

# remove duplicates in path
PATH=$(echo "$PATH" | awk -v RS=':' -v ORS=":" '!a[$1]++{if (NR > 1) printf ORS; printf $a[$1]}')

MYZSH="$DOTFOLDER/myz.sh"

ALIASES="$DOTFOLDER/aliases.sh"
FUNCS="$DOTFOLDER/funcs.sh"

source "$ALIASES"
source "$FUNCS"

x