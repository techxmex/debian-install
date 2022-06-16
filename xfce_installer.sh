#!/bin/bash

# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# xorg display server installation
sudo apt install -y xorg 

# Build-essential.
sudo apt install -y build-essential 

# Microcode for Intel/AMD 
# sudo apt install -y amd-microcode
sudo apt install -y intel-microcode 

#XFCE packages
sudo apt install -y xfce4 xfce4-goodies

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr 

# Sound packages (pulseaudio installed prior)
sudo apt install -y alsa-utils volumeicon-alsa

# Neofetch/HTOP
sudo apt install -y neofetch htop

# EXA installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first' 
sudo apt install -y exa

# Printing and bluetooth (if needed)
sudo apt install -y cups libcupsimage2
sudo apt install -y bluez blueman

sudo systemctl enable bluetooth
sudo systemctl enable cups

sudo systemctl stop cups-browsed
sudo systemctl disable cups-browsed

# Command line text editor -- nano preinstalled
sudo apt install -y vim

# Install fonts
sudo apt install fonts-font-awesome fonts-powerline fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus

#install icons and theme
sudo apt install -y papirus-icon-theme arc-theme

#install video player
sudo apt install -y celluloid

#install video transcoder
sudo apt install -y handbrake

#install video codecs
sudo apt install libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi libdvdread8 libdvdcss2 -y
sudo dpkg-reconfigure libdvd-pkg -y

#install torrent app
sudo apt install -y transmission-gtk

#install vir-manager
sudo apt install -y virt-manager
sudo gpasswd -a louis libvirt
sudo gpasswd -a louis libvirt-qemu

#flatpak setup
sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#flatpak install firefox
flatpak install flathub org.mozilla.firefox -y

# Install LightDM GTK Greeter Settings (lightdm,lightdm-gtk-greeter installs with xfce)
sudo apt install -y lightdm-gtk-greeter-settings
sudo systemctl enable lightdm

sudo apt autoremove

printf "\e[1;32mTime to reboot! Thanks!\e[0m\n"