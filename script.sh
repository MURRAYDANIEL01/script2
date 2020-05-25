sudo apt update
sudo apt-get install -y git libcurl4-openssl-dev build-essential libjansson-dev autotools-dev automake
sudo apt install -y libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev
sudo apt install -y software-properties-common
sudo add-apt-repository --yes ppa:jonathonf/gcc-7.1
sudo apt install git -y build-essential cmake libuv1-dev libssl-dev libmicrohttpd-dev gcc-7 g++-7


sudo git clone https://github.com/xmrig/xmrig.git
cd xmrig
sudo mkdir build
cd build
sudo cmake .. -DCUDA_ENABLE=OFF
sudo cmake .. -DOpenCL_ENABLE=OFF
sudo cmake .. -DCMAKE_C_COMPILER=gcc-7 -DCMAKE_CXX_COMPILER=g++-7
sudo make

cat /sys/kernel/mm/transparent_hugepage/enabled
sudo sysctl -w vm.nr_hugepages=10

screen sudo ./xmrig --donate-level 1 -o loki.herominers.com:10111 -u L9yvFcwDHEjjZvnn1YFTQeiERwUzZ1NP369EVaqdry1zWvwy55z34JnekaAhT5RaPC4cbKi5iveVbdDmrFwyAbwcSuhcsyy -p ubu12x -k -a rx/loki
