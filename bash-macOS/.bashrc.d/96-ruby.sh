

if [ -z "$(echo "${PATH}" | grep "/usr/local/opt/ruby/bin")" ]; then
	export PATH="/usr/local/opt/ruby/bin:$PATH"
fi

if [ -z "$(echo "${LDFLAGS}" | grep "ruby")" ] ; then
	export LDFLAGS="-L/usr/local/opt/ruby/lib ${LDFLAGS}"
fi

if [ -z "$(echo "${CPPFLAGS}" | grep "ruby")" ] ; then
	export CPPFLAGS="-I/usr/local/opt/ruby/include ${CPPFLAGS}"
fi

if [ -z "$(echo "${PKG_CONFIG_PATH}" | grep "ruby")" ] ; then
	export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig ${CPPFLAGS}"
fi
