#!/bin/bash
array=(one two 1 2 3 two 1 four one);
echo "the values of the array is ${array[*]}";
size=${#array[*]};
echo "the length of the array is $size";
i=0;

function duplicate {

for d in ${array[*]}
do
  j=`expr $i + 1`
  while [ $j -lt $size ]
  do
    if [ ${array[$i]} == ${array[$j]} ]
    then
#    echo " Duplicate value is ${array[$j]} and index position is $i and $j"
    echo ${array[$i]} >> arfile.txt
    fi
    j=`expr $j + 1`
  done
  i=`expr $i + 1`
done

}

#Calling the function

duplicate

# Here we are removing the duplicate entries and finding the unique values and copying them to new array
echo -e "\n\n"
#echo "the array values are ${array[*]}"
input=/root/Desktop/shellscripts/arfile.txt

for h in 0 1 2 3 4 5 6 7 8 9
do 
  while  IFS= read -r line
  do
#    echo "removing the duplicate values $line"
    if [ $line == ${array[$h]} ]
    then
    unset -v 'array[$h]'
    fi
  done < $input
done
new_array=("${array[*]}")
echo " Unique values of the array is ${new_array[*]}"
# Here we are deleting the contents of arfile.txt by making it as null
#$ > arfile.txt
echo -n "" > arfile.txt
