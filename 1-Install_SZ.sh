#!/bin/bash

cd /users/gfwilki/Compression_Injection-Power_Experiment/SZ_Files
pwd
wait
pwd
git clone https://github.com/disheng222/SZ.git
wait
cd /users/gfwilki/Compression_Injection-Power_Experiment/SZ_Files/SZ
wait
./configure --prefix=/users/gfwilki/Compression_Injection-Power_Experiment/SZ_Files
wait
make clean
make
make install
