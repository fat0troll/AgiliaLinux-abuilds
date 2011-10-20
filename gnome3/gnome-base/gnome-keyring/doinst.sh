chroot . usr/bin/glib-compile-schemas usr/share/glib-2.0/schemas
chroot . setcap cap_ipc_lock=ep usr/bin/gnome-keyring-daemon
