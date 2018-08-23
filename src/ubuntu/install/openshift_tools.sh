#!/usr/bin/env bash
### every exit != 0 fails the script
set -e
echo "Install OC Client"

wget https://github.com/openshift/origin/releases/download/v3.7.1/openshift-origin-client-tools-v3.7.1-ab0f056-linux-64bit.tar.gz -O /usr/local/etc/openshift.tar.gz

gunzip /usr/local/etc/openshift.tar.gz
tar -xvf /usr/local/etc/openshift.tar
rm /usr/local/etc/openshift.tar
ln -s /usr/local/etc/openshift/oc /usr/local/bin/oc
