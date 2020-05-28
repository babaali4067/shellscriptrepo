#!/bin/bash
echo "Enter the number to check";
read var1;
res=`expr $var1 % 2`;
if [ $res -eq "0" ]
then
   echo "Number $var1 is even"
   n=`expr $var1 % 6`
   if [ $n -eq "0" ]
   then
     echo "The number is even and divisible by 6"
   else
     echo "the number is even but not divisible by 6"
   fi

elif [ $res -eq "1" ]
then
   echo "Number $var1 is odd"   
   if [ $var1 -lt "50" ]
   then
     echo "number is odd and less than 50"
   else 
     echo "number is odd and greater than 50"
   fi
else
  echo "the Number is invalid"
fi

if [ $var1 -gt "100" ]
then
   echo "number is greater than 100";
   m=`expr $var1 % 10`;
   echo " Units place of a number is $m";
   n=`expr $var1 / 10`;
   p=`expr $n % 10`;
   echo " Tens place of a number is $p";
fi
