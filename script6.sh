#!/bin/bash
read -p "Enter user name: " user;
read -p "Enter Group name: " var1;
if [ $(getent group $var1) ] ;
then
        echo "Group with name $var1 exists"
else
        echo "Group with name $var1 doesn\'t exists"
	groupadd -g 1020 $var1
	echo "Group with name $var1 is added"
fi


if [ $(getent passwd $user) ] ; 
then
        echo "user with name $user exists"
else
        echo "user with name $user doesn\'t exists"
	useradd $user -g $var1
	echo "User with name $user is added"
fi
