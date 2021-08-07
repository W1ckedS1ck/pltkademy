#!/bin/bash
echo '          Your Hostname is' : > Info.txt 
hostname >> Info.txt
echo '          The number of CPU cores are' : >> Info.txt
lscpu | grep 'CPU(s):' | grep -v NUMA >> Info.txt
echo '          Your total memory are' : >> Info.txt
free -h >> Info.txt
echo '          Your total disk size is' : >> Info.txt
#df -h | grep /dev >> Info.txt
sudo fdisk -l | grep Disk | grep /dev/ | grep -v loop >> Info.txt
echo Done! Please check file Info.txt in the current directory.
