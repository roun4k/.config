#!/bin/bash

xsetroot -cursor_name left_ptr &

killall sxhkd

killall polybar

xrandr --output LVDS1 --mode 1366x768 --pos 1920x156 --rotate normal --output DP1 --off --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VGA1 --off --output VIRTUAL1 --off

picom &

dunst &

sxhkd &

udiskie &

# nm-applet &

# blueman-applet &

feh --bg-fill $HOME/Pictures/Wallpapers/*

polybar -c $HOME/.config/polybar/config.ini top &

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &


