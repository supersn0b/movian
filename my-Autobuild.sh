#!/bin/sh 

# for Ubuntu 14.04

echo "*** Removing current texinfo..."
sudo apt-get remove texinfo

echo "*** Installing old texinfo..."
sudo dpkg -i /data/dev/ps3/texinfo_4.13a.dfsg.1-8ubuntu2_amd64.deb

./Autobuild.sh -t ps3 -w /data/dev/ps3/movian.build.tmp/

echo "*** Removing old texinfo..."
sudo apt-get remove texinfo

echo "*** Installing current texinfo..."
sudo apt-get install texinfo
