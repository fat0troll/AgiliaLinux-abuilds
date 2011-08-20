if [[ -f /usr/bin/gtk-window-decorator && -f /usr/bin/gconftool-2 ]]; then;
	export GCONF_CONFIG_SOURCE=`/usr/bin/gconftool-2 --get-default-source`
	echo -ne "\n:: Installing gtk-window-decorator schema file... "
	/usr/bin/gconftool-2 --makefile-install-rule /usr/share/gconf/schemas/gwd.schemas > /dev/null
fi
