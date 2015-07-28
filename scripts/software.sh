#!/bin/sh
set -e

sudo su
apt-get install -y git

git clone https://github.com/0x90/kali-scripts
cd kali-scripts
./autoinstall.sh