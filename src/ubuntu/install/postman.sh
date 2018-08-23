#!/usr/bin/env bash
### every exit != 0 fails the script
set -e
echo "Install Postman"

wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
tar -xzf postman.tar.gz -C /usr/local/etc/
rm postman.tar.gz
sudo ln -s /usr/local/etc/Postman/Postman /usr/local/bin/postman