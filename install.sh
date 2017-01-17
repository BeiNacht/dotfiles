#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ ! -e "$HOME/.compton.conf" ]; then
    echo "link compton"
    ln -s $DIR/compton.conf $HOME/.compton.conf
fi
if [ ! -e "$HOME/.Xresources" ]; then
    echo "link Xresources"
    ln -s $DIR/Xresources $HOME/.Xresources
fi
if [ ! -e "$HOME/.zshrc" ]; then
    echo "link zsh"
    ln -s $DIR/zshrc $HOME/.zshrc
fi
if [ ! -e "$HOME/.gitconfig" ]; then
    echo "link gitconfig"
    ln -s $DIR/gitconfig $HOME/.gitconfig
fi
if [ ! -e "$HOME/.nanorc" ]; then
    echo "link nanorc"
    ln -s $DIR/nanorc $HOME/.nanorc
fi
if [ ! -e "$HOME/.synergy.conf" ]; then
    echo "link synergy.conf"
    ln -s $DIR/synergy.conf $HOME/.synergy.conf
fi
if [ ! -e "$HOME/.notify-osd" ]; then
    echo "link notify-osd"
    ln -s $DIR/notify-osd $HOME/.notify-osd
fi
if [ ! -e "$HOME/.oh-my-zsh/themes/spaceship.zsh-theme" ]; then
    echo "link spaceship.zsh-theme"
    ln -s $DIR/spaceship.zsh-theme $HOME/.oh-my-zsh/themes/.spaceship.zsh-theme
fi
if [ ! -e "$HOME/.bin" ]; then
    echo "link bin"
    ln -s $DIR/bin $HOME/.bin
fi
if [ ! -e "$HOME/.xbindkeysrc" ]; then
    echo "link xbindkeysrc"
    ln -s $DIR/xbindkeysrc $HOME/.xbindkeysrc
fi
if [ ! -e "$HOME/.themes" ]; then
    echo "link themes"
    ln -s $DIR/themes $HOME/.themes
fi

