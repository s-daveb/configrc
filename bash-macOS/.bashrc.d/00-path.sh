
if [ -z "$(echo "${PATH}" | grep "/usr/local/bin")" ]; then
	export PATH="/usr/local/bin:${PATH}"
fi

export PATH="$HOME/.bin:$PATH"
