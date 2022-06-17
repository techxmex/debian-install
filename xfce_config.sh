#!/bin/bash

# Install packages after installing Debian XFCE

# Build-essential.
sudo apt install -y build-essential 

# Microcode for Intel/AMD 
# sudo apt install -y amd-microcode
sudo apt install -y intel-microcode 

# Neofetch/HTOP
sudo apt install -y neofetch htop

#copy my bashrc file
sudo cp -f .bashrc ~/

# Printing and bluetooth (if needed)
sudo apt install -y libcupsimage2
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
sudo apt install -y libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi libdvdread8 libdvdcss2
sudo dpkg-reconfigure libdvd-pkg 

#install torrent app
sudo apt install -y transmission-gtk

#install vir-manager
sudo apt install -y virt-manager
sudo gpasswd -a louis libvirt
sudo gpasswd -a louis libvirt-qemu

#flatpak setup
sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#flatpak apps
flatpak install flathub org.mozilla.firefox -y
flatpak install flathub com.brave.Browser -y
flatpak install flathub com.makemkv.MakeMKV -y
flatpak install flathub com.github.tchx84.Flatseal -y

# Install LightDM GTK Greeter Settings (lightdm,lightdm-gtk-greeter installs with xfce)
sudo apt install -y lightdm-gtk-greeter-settings slick-greeter
sudo cp -f lightdm.conf /etc/lightdm/
sudo cp -f slick-greeter.conf /etc/lightdm/
sudo cp -f purplegalaxy.jpg /usr/share/backgrounds/
sudo systemctl enable lightdm

sudo apt remove quodlibet parole exfalso -y
sudo apt purge libreoffice* -y
sudo apt autoremove -y
