#!/bin/bash
myarray=(1 2 3 4 5 6 7 8 9 10);
echo "The array vaues are ${myarray[*]}";
i=0;
b=0;
a=${#myarray[*]};
echo "The length of the array is $a";
while [ $i -lt $a ]
do
  b=`expr $b + ${myarray[$i]}`
  i=`expr $i + 1`
done
  echo "Sum of all array elements is $b"
  c=`expr $b / 10`
  echo "Average of array elements is $c" 
