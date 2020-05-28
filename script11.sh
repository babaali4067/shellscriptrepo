#!/bin/bash


echo "Enter Country name";
read a;

if [ $a == "india" ]
then
  echo "India capital is New Delhi"
elif [ $a == "srilanka" ]
then
  echo "SriLanka Capital is Colombo"
elif [ $a == "usa" ]
then
  echo "USA Capital is Washington DC"
elif [ $a == "japan" ]
then
  echo "Japan Capital is Tokyo"
elif [ $a == "china" ]
then
  echo "China Capital is Beijing"
else
  echo "Invalid Country Name"
fi

 
