#!/bin/bash
#run as sudo
sudo apt-get install python-pip -y
sudo apt-get install python-paramiko -y

sudo pip install requests
sudo pip install robotframework
sudo pip install robotframework-sshlibrary
sudo pip install -U robotframework-requests
sudo pip install --upgrade robotframework-httplibrary

sudo easy_install robotframework-ride

sudo apt-get install python-wxgtk2.8 -y

#for code highlight
sudo easy_install pygments

#to run, type
#>ride.py
