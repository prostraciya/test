#!/bin/bash

sudo apt install libxss1 libaudio2 libasound2 libqt4-designer libqt4-opengl libqt4-svg libqtgui4 libqtwebkit4 libqt4-network
cd ~
wget http://172.31.134.213/zabbix/vidyo.deb
sudo dpkg -i vidyo.deb