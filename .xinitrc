#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Keyboard Layout
# setxkbmap dk &

# dwm Status
dwmbar &

# /home/ruby/dwm-bar/dwm_bar.sh &
# dwmstatus 2>&1 >/dev/null &

# Display Resolution
xrandr --output DP-1 --mode 2560x1440 --rate 144.00 --primary --left-of DP-2 && xrandr --output DP-2 --mode 2560x1440 --rate 165.00 

# dpi
xrdb --merge .Xresources

# Wallpaper
feh --bg-scale ~/pics/wp/dwm.png

# Compositor
# picom -f &

# No dimming
xset -dpms

# Loop
while true; do
	dwm >/dev/null 2>&1
done

# Execute dwm
exec dwm
