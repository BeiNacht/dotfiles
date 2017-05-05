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

echo "link 20-intel.conf"
sudo rm -f /etc/X11/xorg.conf.d/20-intel.conf
sudo ln -s $DIR/xorg.conf.d/20-intel.conf /etc/X11/xorg.conf.d/20-intel.conf

echo "link blacklist.conf"
sudo rm -f /etc/modprobe.d/blacklist.conf
sudo ln -s $DIR/modprobe/blacklist.conf /etc/modprobe.d/blacklist.conf

echo "link 50-hdparm.rules"
sudo rm -f /etc/udev/rules.d/50-hdparm.rules
sudo ln -s $DIR/udev-rules/50-hdparm.rules /etc/udev/rules.d/50-hdparm.rules

