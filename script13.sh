#!/bin/bash
echo "The number is $1";
a=`expr $1 % 10`;
echo "the Units place of the number is $a";
b=`expr $1 / 10`;
c=`expr $b % 10`;
echo "The Tens place of the number is $c";
d=`expr $b / 10`;
e=`expr $d % 10`;
echo "The hundreds place of the number is $e";
if [ $a -gt $c ] && [ $a -gt $e ]
then
  echo "$a is greater than $c and $e"
elif [ $c -gt $a ] && [ $c -gt $e ]
then
  echo "$c is greater than $a and $e"
else
  echo "$e is greater than  $a and $c"
fi
echo "Sum of all the digits is `expr $a + $c + $e`";
echo " Thank you !!";
