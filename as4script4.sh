#!/bin/bash
echo "1.Addition";
echo "2.Substraction";
echo "3.Multiplication";
echo "4.Division";
echo "5.exit"

read -p "Enter the first number: " a;
read -p "Enter the second number: " b;

myarray=(1 2 3 4 5 6);
select i in ${myarray[*]}
do
case $i in
 1) echo "The Addition of two numbers is `expr $a + $b`";;
 2) echo "The Difference of two numbers is `expr $a - $b`";;
 3) echo "The Product of two numbers is `expr $a \* $b`";; 
 4) echo "The Division of two numbers is `expr $a / $b`";;
 5) exit;;
 *) echo "Invalid Selection";;
esac

done

