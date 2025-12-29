#!/bin/sh

CONF_FILE="/var/local/mesquite/browser/config.xml"
BACKUP_FILE="/var/local/mesquite/browser/config.xml.bak"

mntroot rw

if [ -f "$BACKUP_FILE" ]; then
    chattr -i "$CONF_FILE"
    mv "$BACKUP_FILE" "$CONF_FILE"
fi

mntroot ro
reboot
