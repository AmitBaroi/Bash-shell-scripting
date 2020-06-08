#!/bin/bash

# Script shows how to make sure user input is provided

# If argument 1 is empty
if [ -z $1 ]
then
	echo "Please provide filenames:"
	# Remember that when assigning or declaring dont use $ sign
	read FILENAMES
else
	# Else assign the arguments to this variable
	FILENAMES="$@"
fi

# When using the value of the variable, use $ sign
echo The following filenames have been provided: $FILENAMES

exit 0