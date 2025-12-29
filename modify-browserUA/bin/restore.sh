#!/bin/sh

CONF_FILE="/usr/bin/browser"
BACKUP_FILE="/usr/bin/browser.bak"
mntroot rw

if [ -f "$BACKUP_FILE" ]; then
    chattr -i "$CONF_FILE"
    mv "$BACKUP_FILE" "$CONF_FILE"
fi

mntroot ro
reboot
