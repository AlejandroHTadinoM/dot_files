#!/bin/sh
lock() {
    i3lock
}

case "$1" in
    lock)
        ICON=$HOME/Pictures/lock.png
        TMPBG=/tmp/screen.png
        scrot /tmp/screen.png
        convert $TMPBG -type Grayscale -blur 0x10 $TMPBG
        convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
        i3lock -u -i $TMPBG
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        systemctl suspend
        ;;
    hibernate)
        systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
