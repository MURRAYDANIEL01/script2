sudo apt update
sudo apt-get --yes --force-yes install git libcurl4-openssl-dev build-essential libjansson-dev autotools-dev automake
sudo apt --yes --force-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev
sudo apt --yes --force-yes install software-properties-common
sudo add-apt-repository --yes ppa:jonathonf/gcc-7.1
sudo apt --yes --force-yes install git build-essential cmake libuv1-dev libssl-dev libmicrohttpd-dev gcc-7 g++-7
sudo git clone https://github.com/xmrig/xmrig.git
cd xmrig
sudo mkdir build
cd build
sudo cmake .. -DCUDA_ENABLE=OFF
sudo cmake .. -DOpenCL_ENABLE=OFF
sudo cmake .. -DCMAKE_C_COMPILER=gcc-7 -DCMAKE_CXX_COMPILER=g++-7
sudo make
cd xmrig
cd build
