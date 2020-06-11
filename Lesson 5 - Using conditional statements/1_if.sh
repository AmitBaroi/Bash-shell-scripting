#!/bin/bash

# Scripts takes an argument and checks if it is a file or directory
# Usage: 1_if.sh value

# -d checks if given value is directory
if [ -d $1 ]
then
	echo $1 is a directory
# -f checks if given value is a file
elif [ -f $1 ]
then
	echo $1 is a file
# If both conditions are false
else
	echo $1 is neither a file, nor a directory
fi # Dont forget to close if statements with `fi`

exit 0