#!/bin/bash
sudo apt-get install -y gnome-terminal
sudo apt-get install -y fonts-inconsolata

echo 'export PS1="[\[$(tput bold)\]\t\[$(tput sgr0)\]] \u\[$(tput bold)\] \[$(tput sgr0)\]\w \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;97m\]\\$\[$(tput sgr0)\] "' >> ~/.bashrc

# Used to import/export its conf
sudo apt install dconf-cli

dconf load /org/gnome/terminal/ < ./gnome-terminal-settings.dconf
