#!/bin/bash
myarray=(20 40 60 20 100 10 30 50 70 90);
echo "The array vaues are ${myarray[*]}";
a=${#myarray[*]};
b=1;
c=1;
echo "The length of the array is $a";
for i in ${myarray[*]}
do 
  if [ $i -gt $b ]
  then
     b=$i
  fi
done
echo " The largest number is $b"  
for i in ${myarray[*]}
do
  if [ $i -lt $b ]
  then
     b=$i
  fi
done
echo " The smallest number is $b"



echo "Finding the Duplicate Values in the array"
#bash /root/Desktop/shellscripts/scripttest.sh

size=${#myarray[*]};
echo "The length of the array is $size";
echo -e "\n\n";
m=0;
j=0;

for var in ${myarray[*]}
do
  j=`expr $m + 1`
  while [ $j -lt $size ]
  do
    if [ ${myarray[$m]} -eq ${myarray[$j]} ]
    then
      echo "Duplicate value ${myarray[$j]} at Index position $m and $j"
    fi
    j=`expr $j + 1`
  done
m=`expr $m + 1`
done
