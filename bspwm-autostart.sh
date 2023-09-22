#!/bin/bash

xsetroot -cursor_name left_ptr &

killall sxhkd

killall polybar

xrandr --output LVDS1 --mode 1366x768 --pos 0x156 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 1366x0 --rotate normal

picom &

dunst &

sxhkd &

udiskie &

# nm-applet &

# blueman-applet &

feh --bg-fill $HOME/Pictures/Wallpapers/*

polybar -c $HOME/.config/polybar/config.ini top &

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &


