#!/bin/bash
read -p "Enter the country name: " a;

case $a in
 india) echo "India: New Delhi";;
 srilanka) echo "Srilanka: Colombo";;
 usa) echo " USA: Washington DC";;
 *) echo "Invalid Country Name";;
 1) break;;
 2) exit;;
esac
echo "Thank You !!"
