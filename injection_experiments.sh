#!/bin/bash


#cd /users/mlhickm/Compression_Injection-Power_Experiment/data
#wget https://97235036-3749-11e7-bcdc-22000b9a448b.e.globus.org/ds131.2/Data-Reduction-Repo/raw-data/EXAALT/SDRBENCH-EXAALT-2869440.tar.gz
#tar -xvf SDRBENCH-EXAALT-2869440.tar.gz
#wait
cd /users/mlhickm/Compression_Injection-Power_Experiment/
make
wait

#./comp_inj data_file                                                                               data_size        config_file byte_loc flip_loc
#./comp_inj /users/mlhickm/Compression_Injection-Power_Experiment/data/SDRBENCH_Data/2869440/xx.dat2 0,0,0,0,280953867 ./config/sz_psnr_60.config  $2 $3

# Change config file based on input
if [ "$1" = "ABS_1e2" ]
then
	./comp_inj /users/mlhickm/Compression_Injection-Power_Experiment/data/SDRBENCH_Data/2869440/xx.dat2 0,0,0,0,280953867 ./config/sz_abs_1e2.config $2 $3
elif [ "$1" = "ABS_1e3" ]
then
        ./comp_inj /users/mlhickm/Compression_Injection-Power_Experiment/data/SDRBENCH_Data/2869440/xx.dat2 0,0,0,0,280953867 ./config/sz_abs_1e3.config $2 $3
elif [ "$1" = "PW_1e2" ]
then
        ./comp_inj /users/mlhickm/Compression_Injection-Power_Experiment/data/SDRBENCH_Data/2869440/xx.dat2 0,0,0,0,280953867 ./config/sz_pw_1e2.config $2 $3
elif [ "$1" = "PW_1e3" ]
then
        ./comp_inj /users/mlhickm/Compression_Injection-Power_Experiment/data/SDRBENCH_Data/2869440/xx.dat2 0,0,0,0,280953867 ./config/sz_pw_1e3.config $2 $3
elif [ "$1" = "PSNR_30" ]
then
        ./comp_inj /users/mlhickm/Compression_Injection-Power_Experiment/data/SDRBENCH_Data/2869440/xx.dat2 0,0,0,0,280953867 ./config/sz_psnr_30.config $2 $3
elif [ "$1" = "PSNR_60" ]
then
        ./comp_inj /users/mlhickm/Compression_Injection-Power_Experiment/data/SDRBENCH_Data/2869440/xx.dat2 0,0,0,0,280953867 ./config/sz_psnr_60.config $2 $3
else
	echo "INVALID"
fi
