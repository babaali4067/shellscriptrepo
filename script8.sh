#!/bin/bash
echo "Welcome to my Calculator";
echo "Enter First number";
read val1;
echo "Enter second number";
read val2;

echo "Select the options 1 to 4 to perform the task";
echo "1-Addition";
echo "2-Substraction";
echo "3-Multiplication";
echo "4-Division";

echo "Enter your choice:"
read var1;


if [ $var1 -eq "1" ]
then
  n=`expr $val1 + $val2`
  echo "sum of two numbers is $n"
elif [ $var1 -eq "2" ]
then
  n=`expr $val1 - $val2`
  echo "Substraction of two numbers is $n"

elif [ $var1 -eq "3" ]
then
  n=`expr $val1 \* $val2`
  echo "Product of two numbers is $n"
elif [ $var1 -eq "4" ]
then
  n=`expr $val1 / $val2`
  echo "Division of two numbers is $ var2"
else
  echo "Invalid Selection"
fi
