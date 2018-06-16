#!/usr/bin/env bash


# Script working directory
SWD="$(dirname $0)"

cd $SWD
REPODIR=$PWD
cd $OLDPWD

unlink "${HOME}/.gitconfig"
cp -v "${REPODIR}/gitconfig" "/tmp/.tmp.gitconfig"

sed -i'' -e "s/^#\([[:blank:]]*\)name\(.*\)/\1name\2/g" /tmp/.tmp.gitconfig

echo -n "Please to be entering your git display name> "
read USER

sed -i.bak  "s/AAAA BBBB/${USER}/g" /tmp/.tmp.gitconfig
mv -v "/tmp/.tmp.gitconfig" "${HOME}/.gitconfig"
