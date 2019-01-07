
Debian
====================
This directory contains files used to package masternodescheguevarad/masternodescheguevara-qt
for Debian-based Linux systems. If you compile masternodescheguevarad/masternodescheguevara-qt yourself, there are some useful files here.

## masternodescheguevara: URI support ##


masternodescheguevara-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install masternodescheguevara-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your masternodescheguevara-qt binary to `/usr/bin`
and the `../../share/pixmaps/masternodescheguevara128.png` to `/usr/share/pixmaps`

masternodescheguevara-qt.protocol (KDE)

