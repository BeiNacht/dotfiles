#xset -dpms
#xset b off
#xset s off
#xset s noexpose
#xset s noblank
#export LANG="en_US ISO-8859-1"
export LANG="en_US.UTF-8"
#export LC_ALL="en_US ISO-8859-1"
export LC_ALL="en_US.UTF-8"
#export LC_CTYPE="en_US ISO-8859-1"
export LC_CTYPE="en_US.UTF-8"
#export LC_COLLATE="en_US ISO-8859-1"
export LC_COLLATE="en_US.UTF-8"
#export LC_MESSAGES="en_US ISO-8859-1"
export LC_MESSAGES="en_US.UTF-8"

#urxvtd -f -q &
sxrdb /home/bernd/.Xresources &
unclutter &
twmnd &
thunar --daemon &
(conky | while read LINE; do xsetroot -name "$LINE"; done) &
gnome-keyring-daemon --start --components=pkcs11, secrets, gpg, ssh &
volumeicon &
wmname LG3D

exec /home/bernd/.dwm/dwm 2>> .dwm.log
