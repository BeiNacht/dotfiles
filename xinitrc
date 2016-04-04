xset -dpms
xset b off
xset s off
xset s noexpose
xset s noblank
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"

urxvtd -f -q &
xrdb ~/.Xresources &
thunar --daemon &
while true; do ~/bin/dwm-status; sleep 2; done &
xcompmgr -C &
nitrogen --restore
wmname LG3D

~/dwm/dwm/dwm 2>> .dwm.log
