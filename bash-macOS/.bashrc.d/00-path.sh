#!/usr/bin/env bash

if [ -z "$(echo "${PATH}" | grep "/usr/local/bin")" ]; then
	export PATH="/usr/local/bin:${PATH}"
fi

if [ -z "$(echo "${PATH}" | grep "/usr/local/opt/go/libexec/bin")" ]; then
	export PATH="/usr/local/opt/go/libexec/bin:$PATH"
fi

if [ -z "$(echo "${PATH}" | grep "/usr/local/sbin")" ]; then
	export PATH="/usr/local/sbin:${PATH}"
fi

if [ -z "$(echo "${PATH}" | grep "${HOME}/.bin")" ]; then
	export PATH="$HOME/.bin:$PATH"
fi
