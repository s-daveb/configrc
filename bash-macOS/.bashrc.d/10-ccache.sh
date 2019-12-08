#!/usr/bin/env bash

if [ -z "$(echo "${PATH}" | grep "/usr/local/opt/ccache/libexec")" ]; then
	export PATH="/usr/local/opt/ccache/libexec:${PATH}"
fi
export CCACHE_DIR="$HOME/.cache/ccache"
export CCACHE_RECACHE="yes"
