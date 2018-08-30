#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install some more developer tools"
apt-get update 
apt-get install -y dnsutils inetutils-traceroute gedit netbeans
apt-get clean -y
