#!/bin/sh

[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
[ -f ~/.fehbg ] && sh ~/.fehbg &

xset s 600 600
xset dpms 600 600 600
xset-lock -- ~/.config/script/i3-lock &

picom --config ~/.config/picom/picom.conf &

(sleep 2; dwmblocks) &
~/.config/scripts/sig-volume

export DESKTOP_SESSION=dwm
exec dwm
