#!/bin/bash
echo "Top 10 processes utilizing high CPU";
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head;
echo "Top 10 processes utilizing high RAM";
ps aux | awk '{print $6/1024 " MB\t\t" $11}' | sort -n | tail;
echo "Enter the pid of the process you want to kill";
#read var1;
#kill -9 $var1;
echo "Installing ntp package";
yum install ntpd;
echo "Starting the ntp service";
systemctl start ntpd;
