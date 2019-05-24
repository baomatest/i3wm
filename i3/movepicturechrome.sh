#!/usr/bin/env bash
if [ $(wmctrl -lG | grep "Picture in picture" | cut -f2 -d"-" | sed 's/ /_/g' | sed 's/__/_/g' | cut -d"_" -f2) -gt 500 ]; then
	#if [ $(wmctrl -lG | grep "Picture in picture" | cut -f2 -d"-" | cut -f2 -d" " | cut -f1 -d" ") < 1076 ]; then
	var1=$( wmctrl -lG | grep "Picture in picture" | cut -f2 -d"-" | sed 's/ /_/g' | sed 's/__/_/g' | cut -f3 -d"_");
	var2=$( wmctrl -lG | grep "Picture in picture" | cut -f2 -d"-" | sed 's/ /_/g' | sed 's/__/_/g' | cut -f4 -d"_");
	var3=$( wmctrl -lG | grep "Picture in picture" | cut -f2 -d"-" | sed 's/ /_/g' | sed 's/__/_/g' | cut -f5 -d"_");
	wmctrl -ic $(wmctrl -lG | grep "Picture in picture" | cut -f1 -d" ") -e 5,10,$var1,$var2,$var3;
else
	var1=$( wmctrl -lG | grep "Picture in picture" | cut -f2 -d"-" | sed 's/ /_/g' | sed 's/__/_/g' | sed 's/__/_/g' |cut -f3 -d"_");
	var2=$( wmctrl -lG | grep "Picture in picture" | cut -f2 -d"-" | sed 's/ /_/g' | sed 's/__/_/g' | sed 's/__/_/g' |cut -f4 -d"_");
	var3=$( wmctrl -lG | grep "Picture in picture" | cut -f2 -d"-" | sed 's/ /_/g' | sed 's/__/_/g' | sed 's/__/_/g' |cut -f5 -d"_");
	wmctrl -ic $(wmctrl -lG | grep "Picture in picture" | cut -f1 -d" ") -e 5,$((1356 - var2)),$var1,$var2,$var3;
fi

