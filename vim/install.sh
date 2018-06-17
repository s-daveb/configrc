#!/bin/sh

# Script working directory
SWD="$(dirname $0)"

cd $SWD
REPODIR=$PWD

cd $HOME

ln -sv "${REPODIR}/vimrc" "$HOME/.vimrc"
ln -sv "${REPODIR}/vimfiles" "$HOME/.vim"

mkdir -pv ${HOME}/.vim/{swap,undo,view,backup} &> /dev/null

vim +PlugInstall +qa
