if [ -f /usr/bin/gconftool-2]; then
	export GCONF_CONFIG_SOURCE=`/usr/bin/gconftool-2 --get-default-source`
	/usr/bin/gconftool-2 --makefile-uninstall-rule /usr/share/gconf/schemas/gwd.schemas >/dev/null
fi
