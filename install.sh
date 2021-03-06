#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "link zsh"
rm -f $HOME/.zshrc
ln -s $DIR/zshrc $HOME/.zshrc

echo "link gitconfig"
rm -f $HOME/.gitconfig
ln -s $DIR/gitconfig $HOME/.gitconfig

echo "link nanorc"
rm -f $HOME/.nanorc
ln -s $DIR/nanorc $HOME/.nanorc

echo "link spaceship.zsh-theme"
rm -f $HOME/.oh-my-zsh/themes/spaceship.zsh-theme
ln -s $DIR/spaceship.zsh-theme $HOME/.oh-my-zsh/themes/spaceship.zsh-theme

echo "link bin"
rm -f $HOME/.bin
ln -s $DIR/bin $HOME/.bin

if [ $(hostname -s) = "thinkpad" ]; then
    echo "link compton"
    rm -f $HOME/.compton.conf
    ln -s $DIR/compton.conf $HOME/.compton.conf

    echo "link Xresources"
    rm -f $HOME/.Xresources
    ln -s $DIR/Xresources $HOME/.Xresources

    echo "link i3"
    rm -f $HOME/.config/i3/config
    ln -s $DIR/config-i3 $HOME/.config/i3/config

    echo "link dunst"
    rm -f $HOME/.config/dunst/dunstrc
    ln -s $DIR/dunstrc $HOME/.config/dunst/dunstrc

    echo "link sxhdkrc"
    rm -f $HOME/.config/sxhkd/sxhkdrc
    ln -s $DIR/sxhkdrc $HOME/.config/sxhkd/sxhkdrc

    echo "link bspwm"
    rm -f $HOME/.config/bspwm/bspwmrc
    ln -s $DIR/bspwmrc $HOME/.config/bspwm/bspwmrc

    echo "link 20-intel.conf"
    sudo rm -f /etc/X11/xorg.conf.d/20-intel.conf
    sudo ln -s $DIR/thinkpad/xorg.conf.d/20-intel.conf /etc/X11/xorg.conf.d/20-intel.conf

    echo "link audio_powersave.conf"
    sudo rm -f /etc/modprobe.d/audio_powersave.conf
    sudo ln -s $DIR/thinkpad/modprobe/audio_powersave.conf /etc/modprobe.d/audio_powersave.conf

    echo "link blacklist.conf"
    sudo rm -f /etc/modprobe.d/blacklist.conf
    sudo ln -s $DIR/thinkpad/modprobe/blacklist.conf /etc/modprobe.d/blacklist.conf

    echo "link 50-hdparm.rules"
    sudo rm -f /etc/udev/rules.d/50-hdparm.rules
    sudo ln -s $DIR/thinkpad/udev-rules/50-hdparm.rules /etc/udev/rules.d/50-hdparm.rules

    echo "link apm.service"
    sudo rm -f sudo rm -f /etc/systemd/system/apm.service
    sudo ln -s $DIR/thinkpad/systemd/apm.service /etc/systemd/system/apm.service

    echo "link smb.conf"
    sudo rm -f /etc/samba/smb.conf
    sudo ln -s $DIR/thinkpad/etc/samba/smb.conf /etc/samba/smb.conf

    echo "link 99-wlan"
    sudo rm -f /etc/NetworkManager/dispatcher.d/99-wlan
    sudo ln -s $DIR/thinkpad/networkmanager/99-wlan /etc/NetworkManager/dispatcher.d/99-wlan
fi

#cat $DIR/thinkpad/mate-terminal-dump.dconf | dconf load /org/mate/terminal/
