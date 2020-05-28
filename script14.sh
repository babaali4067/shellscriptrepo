#!/bin/bash
touch data.txt;
chmod +x data.txt;

while [ true ]
do
echo "Enter $4 if you are done";
read var;
  if [ $var == "$4" ]
  then
    break
  else
    echo "Filename:$0" >> data.txt; 
    echo "Name:$1" >> data.txt;
    echo "Age:$2" >> data.txt;
    echo "Gender:$3" >> data.txt;
  fi
done
