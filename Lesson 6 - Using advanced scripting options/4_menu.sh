#!/bin/bash

echo "Select a directory"
select DIR in abc blame lame
do
	# Only continue if the user selected something
	if [ -n $DIR ]
	then
		DIR=$DIR
		echo "You have selected $DIR"
		echo "Files in directory:"
		ls $DIR
		export DIR
		break
	else
		echo 'INVALID CHOICE!'
	fi
done

exit 0