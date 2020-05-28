#!/bin/bash
echo "These are the list of shells available in your system";
chsh -l;
echo "This is your default shell $SHELL";
echo " enter the shell of your choice";
read var1;
chsh -s $var1;
su -;
echo "Now your default shell changed to $SHELL;
