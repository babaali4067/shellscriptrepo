#!/bin/bash
x=$1;
y=$2;
echo "The First number is x=$x";
echo "The Second number is y=$y";

y=`expr $x + $y`;
x=`expr $y - $x`;
y=`expr $y - $x`;

echo "The numbers are swapped as x=$x and y=$y"; 
