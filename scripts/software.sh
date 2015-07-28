#!/bin/sh
set -e

# Let's automate the install some Firefox addons
# We used the instructions here to prepare our addons: http://askubuntu.com/a/73480
# Then we zipped the contents and had Packer transfer them to the /tmp directory of our VM

# Untar the file Packer uploaded for us
#tar zxf /tmp/add-ons.tar.gz -C /usr/lib/iceweasel/browser/extensions
sudo su

apt-get install -y git

git clone https://github.com/0x90/kali-scripts
cd kali-scripts
./runall.sh