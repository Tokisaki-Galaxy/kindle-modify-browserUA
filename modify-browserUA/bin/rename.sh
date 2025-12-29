#!/bin/sh

TARGET="/usr/bin/browser"
BACKUP="/usr/bin/browser.bak"
NEW_UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36 Edg/80.0.361.66"

mntroot rw

if [ ! -f "$BACKUP_FILE" ]; then
    cp "$CONF_FILE" "$BACKUP_FILE"
fi
sed -i "s|--user-agent=\".*\"|--user-agent=\"$NEW_UA\"|g" "$TARGET"

mntroot ro
reboot
