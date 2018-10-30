#!/usr/bin/env bash

DOTFOLDER="$HOME/.dotfiles"

UPDATING=false;


if [ -d "$DOTFOLDER" ] ; then
    UPDATING=true;
    echo "Updating config = $UPDATING"
    rm -rf $DOTFOLDER
fi


mkdir $DOTFOLDER && cp ./src/dotfiles/* $DOTFOLDER/

if [ ! $UPDATING ] ; then
	echo "source $DOTFOLDER/myz.sh" >> $HOME/.zshrc
fi












