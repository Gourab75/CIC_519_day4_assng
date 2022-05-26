#!/bin/bash
read -p "Enter the Year: " y;
read -p "Enter the Month: " m;
read -p "Enter the Date: " d;

XYZ=($d-$m-$y);

Y=$(( y - (14 - m) / 12))
X=$(( Y + (Y/4) - (Y/100) +(Y/400)))
M=$((m + 12 * ((14 - m) / 12) - 2))
D=$(((d + x + (31 * M) / 12) % 7))

case $D in 
0) echo "The date entered is " $XYZ "and the day is Sunday"
;;
1) echo "The date entered is " $XYZ "and the day is Monday"
;;
2) echo "The date entered is " $XYZ "and the day is Tuesday"
;;
3) echo "The date entered is " $XYZ "and the day is Wednesday"
;;
4) echo "The date entered is " $XYZ "and the day is Thursday"
;;
5) echo "The date entered is " $XYZ "and the day is Friday"
;;
6) echo "The date entered is " $XYZ "and the day is Saturday"
;;
*) echo "Re-verify the date entered by you"
;;
esac
