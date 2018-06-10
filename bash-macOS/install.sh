#!/bin/sh

# Script working directory
SWD="$(dirname $0)"

cd $SWD
REPODIR=$PWD

cd $HOME



unlink "${HOME}/.bash_profile"
unlink "${HOME}/.bashrc"
unlink "${HOME}/.bashrc.d"

ln -sv "${REPODIR}/.bash_profile" "$HOME"
ln -sv "${REPODIR}/.bashrc" "$HOME"
ln -sv "${REPODIR}/.bashrc.d" "$HOME"

