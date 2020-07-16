#!/bin/bash
## link dots to home
#ln -s ~/dot/.!(|.)* ~/

ln -s ~/dot/.bashrc $HOME
ln -s ~/dot/.i3status.conf $HOME
ln -s ~/dot/.compton.conf $HOME
ln -s ~/dot/.bash_profile $HOME 
ln -s ~/dot/.xresources $HOME
ln -s ~/dot/.vimrc $HOME
ln -s ~/dot/.xinitrc $HOME
ln -s ~/dot/.xbindkeysrc $HOME

# init config for i3
mkdir $HOME/.config && mkdir $HOME/.config/i3
ln -s $HOME/dot/.i3.conf $HOME/.config/i3/config
chmod +x $HOME/.config/i3/config

# XDG config setup
ln -s $HOME/dot/.config/user-dirs.dirs $HOME/.config/user-dirs.dirs
