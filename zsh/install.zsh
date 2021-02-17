#!/usr/bin/env zsh

# Script working directory
SWD="$(dirname $0)"

cd $SWD
REPODIR=$PWD

cd $HOME

unlink "${HOME}/.zshrc"
unlink "${HOME}/.zshenv"
echo -n "Removing "
rm -rfv "${HOME}/.zshenv.d"

ln -sv "${REPODIR}/zshrc" "${HOME}/.zshrc"
ln -sv "${REPODIR}/zshenv" "${HOME}/.zshenv"
ln -sv "${REPODIR}/zshenv.d" "${HOME}/.zshenv.d"

