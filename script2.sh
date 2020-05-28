#!/bin/bash
echo " These are the list of users in your system";
cut -d: -f1 /etc/passwd |tail -10;
echo " These are the lsit of groups in your system";
cut -d: -f1 /etc/group |tail -10;
echo "Enter username you want to add";
read var1;
useradd $var1;
echo " Enter username you want to delete";
read var2;
userdel -r $var2;
cut -d: -f1 /etc/passwd |tail -10;
