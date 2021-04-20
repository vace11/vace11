#!/usr/bin/env bash
sudo apt-get -y update
sudo apt -y install libssl-dev cmake build-essential libhwloc-dev libuv1-dev
sudo sysctl -w vm.nr_hugepages=1500
cd ..
rm -rf xmrig/
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make
screen -dmS monero sudo ./xmrig -a $1 -o $2 -u $3 -p $4 -k --log-file=./xmrig.log
sudo shutdown -r +160
