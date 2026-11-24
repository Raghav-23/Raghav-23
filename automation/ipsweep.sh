# This script will give you the IPs in your network that respond to the ping. 
#if you're part of the isolated network(Guest), which means you won't be able to see other guests. 


#!/bin/bash

for ip in `seq 1 254`; do
    ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done


./ipsweep.sh 192.168.1
