#!/bin/bash

cd /users/gfwilki/Compression_Injection-Power_Experiment/
make
wait

#./comp_inj data_file                                                                               data_size        config_file byte_loc flip_loc
#./comp_inj /users/gfwilki/Compression_Injection-Power_Experiment/data/SDRBENCH_Data/2869440/ 0,0,512,512,512 ./config/sz_psnr_60.config  $2 $3

# Change config file based on input
if [ "$1" = "IDLE" ]
then
        sleep 5
elif [ "$1" = "ABS_1e2" ]
then
	./comp_inj /users/gfwilki/Compression_Injection-Power_Experiment/data/SDRBENCH_Data/temperature.dat 0,0,512,512,512 ./config/sz_abs_1e2.config $2 $3
elif [ "$1" = "ABS_1e3" ]
then
        ./comp_inj /users/gfwilki/Compression_Injection-Power_Experiment/data/SDRBENCH_Data/temperature.dat 0,0,512,512,512 ./config/sz_abs_1e3.config $2 $3
elif [ "$1" = "PW_1e2" ]
then
        ./comp_inj /users/gfwilki/Compression_Injection-Power_Experiment/data/SDRBENCH_Data/temperature.dat 0,0,512,512,512 ./config/sz_pw_1e2.config $2 $3
elif [ "$1" = "PW_1e3" ]
then
        ./comp_inj /users/gfwilki/Compression_Injection-Power_Experiment/data/SDRBENCH_Data/temperature.dat 0,0,512,512,512 ./config/sz_pw_1e3.config $2 $3
elif [ "$1" = "PSNR_30" ]
then
        ./comp_inj /users/gfwilki/Compression_Injection-Power_Experiment/data/SDRBENCH_Data/temperature.dat/ 0,0,512,512,512 ./config/sz_psnr_30.config $2 $3
elif [ "$1" = "PSNR_60" ]
then
        ./comp_inj /users/gfwilki/Compression_Injection-Power_Experiment/data/SDRBENCH_Data/512x512x512/dark_matter_density.dat 0,0,512,512,512 ./config/sz_psnr_60.config $2 $3
else
	echo "INVALID"
fi
