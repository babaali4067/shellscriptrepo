#!/bin/bash
myarray=(2002 2004 2006 2008 2010 2012 2014 2016 2018 2020);
echo " The array values are ${myarray[*]}";
a=${#myarray[*]};
echo "Length of the array is $a";
read -p "Enter the array value to seach the index position: " b;
i=0
while [ $i -lt $a ]
 do  
 if [ $b -eq ${myarray[$i]} ]
 then 
 echo "The array value is $b: Index position $i"
 fi
 i=`expr $i + 1`
done



