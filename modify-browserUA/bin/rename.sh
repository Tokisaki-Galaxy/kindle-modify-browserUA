#!/bin/sh

CONF_FILE="/var/local/mesquite/browser/config.xml"
BACKUP_FILE="/var/local/mesquite/browser/config.xml.bak"
NEW_UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36 Edg/80.0.361.66"

mntroot rw

if [ ! -f "$BACKUP_FILE" ]; then
    cp "$CONF_FILE" "$BACKUP_FILE"
fi

sed -i "s|<kindle:asset key=\"user-agent\" value=\".*\" />|<kindle:asset key=\"user-agent\" value=\"$NEW_UA\" />|g" "$CONF_FILE"
sed -i "s|<kindle:asset key=\"enableWrsProxy\" value=\"true\" />|<kindle:asset key=\"enableWrsProxy\" value=\"false\" />|g" "$CONF_FILE"

chattr +i "$CONF_FILE"
mntroot ro
reboot
