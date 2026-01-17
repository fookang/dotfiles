export DESKTOP_SESSION=dwm

xset s 600 600
xset dpms 600 600 600
xset-lock -- ~/.config/script/i3-lock &

picom --config ~/.config/picom/picom.conf &
exec dwmblocks &
exec dwm
