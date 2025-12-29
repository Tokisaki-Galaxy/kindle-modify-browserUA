#!/bin/sh

TARGET="/usr/bin/browser"

msg() {
    echo "$1"
    if command -v eips >/dev/null 2>&1; then
        eips 10 35 "$1"
    fi
}

if [ ! -f "$TARGET" ]; then
    showmsg "ERR: cannot find browser script"
    exit 1
fi

CURRENT_UA=$(grep "\--user-agent=" "$TARGET" | sed -n 's/.*--user-agent="\([^"]*\)".*/\1/p')

if [ -z "$CURRENT_UA" ]; then
    showmsg "ERR cannot analyse UA"
else
    if echo "$CURRENT_UA" | grep -q "Edg/"; then
        UA_TYPE="modify (PC Edge)"
    elif echo "$CURRENT_UA" | grep -q "Kindle/"; then
        UA_TYPE="origin (Kindle Default)"
    else
        UA_TYPE="unknown"
    fi
    msg "Type: $UA_TYPE"
fi
