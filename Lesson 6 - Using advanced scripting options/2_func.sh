#!/bin/bash

function noarg()
{
	# Funciton warns user to provide filename for script
	echo "You haven't provided an argument"
	echo "When using this script, you need to specify a filename"
	exit 2
}

# Check if arg 1 is empty
if [ -z "$1" ]
then
	# Call a funcito that warns user
	noarg
else
	# Tell user what kind of file it is
	file "$1"
fi

exit 0