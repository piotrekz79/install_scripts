#!/bin/bash
# assumes installed lubuntu desktop and configures remote access via tigervnc

DEBFILE=tigervncserver_1.9.0-1ubuntu1_amd64.deb

mkdir ~/Downloads
cd ~/Downloads

wget https://bintray.com/artifact/download/tigervnc/stable/ubuntu-16.04LTS/amd64/${DEBFILE}

#gdebi installs with dependeces
#alternative is to use 
#dpkg -i mypak.deb
#sudo apt-get -f install
#dpkg -i mypak.deb

sudo gdebi -n ${DEBFILE}

touch ~/.Xresources

tigervncserver
#password setup needed

tigervncserver -kill :1
mv ~/.vnc/xstartup ~/.vnc/xstartup.bak 
cd ~/.vnc

touch xstartup

echo "#!/bin/sh" >> xstartup
echo "xrdb $HOME/.Xresources" >> xstartup
echo "xsetroot -solid grey" >> xstartup
echo "export XKL_XMODMAP_DISABLE=1" >> xstartup
echo "/etc/X11/Xsession" >> xstartup
echo "/usr/bin/lxsession -s Lubuntu -e LXDE" >> xstartup

chmod +x xstartup

tigervncserver -geometry 1900x1000

cd
