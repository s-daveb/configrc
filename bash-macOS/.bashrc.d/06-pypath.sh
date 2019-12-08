#!/usr/bin/env bash

if [ -z "$(echo "${PATH}" | grep "/usr/local/opt/python/libexec/bin")" ]; then
	export PATH="/usr/local/opt/python/libexec/bin:$PATH"
fi
