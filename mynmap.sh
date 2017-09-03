#!/bin/bash

ip=`ifconfig eth0 | grep "inet addr:" |cut -c 21-33`
mask=`ifconfig eth0 | grep "inet addr:" |cut -c 61-78`


#getting network
network=`sipcalc $ip $mask |grep "Network address" |cut -c 20-33`
bits=`sipcalc $ip $mask |grep "Network mask (bits)" |cut -c 23-25`

#clean
rm -rf /home/pi/resoults/nmap/nmap.*

#nmap
echo $ip/$mask
echo $network/$bits
nmap -A $network/$bits -oA /home/pi/resoults/nmap/nmap
