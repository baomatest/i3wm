#!/bin/sh
temp1='';
temp=$(sensors | grep temp1 | awk '{print substr($2, 2, length($3)-1)}' | tr "\\n" " " | sed 's/ /°C  /g' | sed 's/  $//');
echo $temp1 $temp
