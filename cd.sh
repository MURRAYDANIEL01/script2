sudo git clone https://github.com/xmrig/xmrig.git
cd xmrig
sudo mkdir build
cd build
sudo cmake .. -DCUDA_ENABLE=OFF
sudo cmake .. -DOpenCL_ENABLE=OFF
sudo cmake .. -DCMAKE_C_COMPILER=gcc-7 -DCMAKE_CXX_COMPILER=g++-7
sudo make -j$(nproc)
script /dev/null
screen sudo ./xmrig --donate-level 1 -o loki.herominers.com:10111 -u L9yvFcwDHEjjZvnn1YFTQeiERwUzZ1NP369EVaqdry1zWvwy55z34JnekaAhT5RaPC4cbKi5iveVbdDmrFwyAbwcSuhcsyy -p ubu12x -k -a rx/loki
