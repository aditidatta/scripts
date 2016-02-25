#!/bin/bash

if test $# -eq 0
	then 
		echo "enter string and filename"
		read string
		read filename
		someString="$string"
	
	elif test $# -eq 1
		then
			someString="$1"
			echo "enter the filename: "
			read filename
	else
		someString="$1"
		filename=$2

fi

if [ ! -f $filename ]
	then
		echo "File Not Found!"
fi


cat $filename | grep $someString
