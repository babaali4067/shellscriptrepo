#!/bin/bash
echo "Hello $USER";
echo "Your Home Directory is $HOME";
echo "Your current login shell is $SHELL";
echo "uptime";
uptime;
history|tail -5 >> /root/Desktop/command.txt;
echo "Last 5 commands executed by you are as below";
cat command.txt;

