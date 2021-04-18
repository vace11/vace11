sudo apt-get -y update
sudo apt -y install libssl-dev cmake build-essential libhwloc-dev libuv1-dev
sudo sysctl -w vm.nr_hugepages=1500
cd ..
rm -rf xmrig/
sudo git clone https://github.com/xmrig/xmrig.git
cd xmrig
sudo mkdir build
cd build
sudo cmake ..
sudo make
screen -dmS monero sudo ./xmrig -a cn-heavy/xhv -o haven.herominers.com:10451 -u hvxyFW2vGoV3mSsgb7bRdFew8yKVStXd9C3heWU6QByRBjavnPWgU7PbqE5vZ4nhAFFgTCuofMr1t3VYGzmhVFJK1cu1Kjk6F8 -k
