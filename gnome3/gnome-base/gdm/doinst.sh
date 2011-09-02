#!/bin/bash
getent group gdm >/dev/null 2>&1 || groupadd -g 120 gdm
if getent passwd gdm > /dev/null 2>&1; then
	usr/sbin/usermod -d /var/lib/gdm -c 'Gnome Display Manager' -s /bin/false gdm > /dev/null 2>&1
else
	usr/sbin/useradd -c 'Gnome Display Manager' -u 120 -g gdm -d /var/lib/gdm -s /bin/false gdm
fi
passwd -l gdm > /dev/null
chown -R gdm:gdm var/lib/gdm > /dev/null
chown -R root:gdm var/lib/gdm/.gconf.mandatory

