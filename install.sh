#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "link compton"
rm -f $HOME/.compton.conf
ln -s $DIR/compton.conf $HOME/.compton.conf

echo "link Xresources"
rm -f $HOME/.Xresources
ln -s $DIR/Xresources $HOME/.Xresources

echo "link zsh"
rm -f $HOME/.zshrc
ln -s $DIR/zshrc $HOME/.zshrc

echo "link gitconfig"
rm -f $HOME/.gitconfig
ln -s $DIR/gitconfig $HOME/.gitconfig

echo "link nanorc"
rm -f $HOME/.nanorc
ln -s $DIR/nanorc $HOME/.nanorc

echo "link synergy.conf"
rm -f $HOME/.synergy.conf
ln -s $DIR/synergy.conf $HOME/.synergy.conf

echo "link notify-osd"
rm -f $HOME/.notify-osd
ln -s $DIR/notify-osd $HOME/.notify-osd

echo "link spaceship.zsh-theme"
rm -f $HOME/.oh-my-zsh/themes/spaceship.zsh-theme
ln -s $DIR/spaceship.zsh-theme $HOME/.oh-my-zsh/themes/spaceship.zsh-theme

echo "link bin"
rm -f $HOME/.bin
ln -s $DIR/bin $HOME/.bin

echo "link xbindkeysrc"
rm -f $HOME/.xbindkeysrc
ln -s $DIR/xbindkeysrc $HOME/.xbindkeysrc

echo "link themes"
rm -f $HOME/.themes
ln -s $DIR/themes $HOME/.themes

echo "link i3"
rm -f $HOME/.config/i3/config
ln -s $DIR/config-i3 $HOME/.config/i3/config

echo "link 20-radeon.conf"
sudo rm -f /etc/X11/xorg.conf.d/20-radeon.conf
sudo ln -s $DIR/xorg.conf.d/20-radeon.conf /etc/X11/xorg.conf.d/20-radeon.conf

#cat $DIR/mate-terminal-dump.dconf | dconf load /org/mate/terminal/
