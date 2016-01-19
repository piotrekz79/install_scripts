#!/bin/bash
# installs lubuntu desktop and configures remote access via tigervnc
#sudo apt-get install lubuntu-desktop -y

mkdir ~/Downloads
cd ~/Downloads
wget https://bintray.com/artifact/download/tigervnc/stable/ubuntu-14.04LTS/amd64/tigervncserver_1.6.0-3ubuntu1_amd64.deb

#gdebi installs with dependeces
#alternative is to use 
#dpkg -i mypak.deb
#sudo apt-get install -f
#dpkg -i mypak.deb

sudo gdebi tigervncserver_1.6.0-3ubuntu1_amd64.deb
#touch ~

#!/bin/sh

#xrdb $HOME/.Xresources
#xsetroot -solid grey
#export XKL_XMODMAP_DISABLE=1
#/etc/X11/Xsession
#/usr/bin/lxsession -s Lubuntu -e LXDE
