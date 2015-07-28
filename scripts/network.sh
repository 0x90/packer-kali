#!/bin/sh
set -e

# Test for VMware
# When launching the VM for the first time VMware will create the VMnet but eth1 doesn't get an ip until restarting the interface
# We do this at every boot simply to make shit work right the first time a user loads the VM.

if test -f linux.iso ; then
cat >>/etc/rc.local <<EOL
sleep 2
ifconfig eth1 down
ifconfig eth1 up
EOL

# Test for Virtualbox
elif test -f .vbox_version ; then
echo "Nothing to see here, move along"

fi