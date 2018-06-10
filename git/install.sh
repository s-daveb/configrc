#!/bin/sh

# Script working directory
SWD="$(dirname $0)"

cd $SWD
REPODIR=$PWD

cd $HOME



unlink "${HOME}/.gitconfig"

ln -sv "${REPODIR}/gitconfig" "$HOME/.gitconfig"

