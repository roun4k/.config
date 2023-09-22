#! /bin/sh

chosen=$(printf "  Power Off\n  Restart\n󰍃  Log Out\n  Lock" | rofi -dmenu -i -theme-str '@import "config.rasi"' -p " 󰚥 ")

case "$chosen" in
	"  Power Off") systemctl poweroff ;;
	"  Restart") systemctl reboot ;;
	"󰍃  Log Out") bspc quit ;;
	"  Lock") betterlockscreen -l ;;
	*) exit 1 ;;
esac
