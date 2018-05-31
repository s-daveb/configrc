#!/bin/sh

# Script working directory
SWD="$(dirname $0)"

cd $SWD
REPODIR=$PWD

cd $HOME

ln -sv "${REPODIR}/.bash_profile" "$HOME"
ln -sv "${REPODIR}/.bashrc" "$HOME"
ln -sv "${REPODIR}/.bashrc.d" "$HOME"
