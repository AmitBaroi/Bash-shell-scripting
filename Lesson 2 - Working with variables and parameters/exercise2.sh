#!/bin/bash

# This script should copy all files of which the names are provided as arguments on the
# command line to the './copies' directory. If no files have been provided, the script
# should use read to ask for file names, and copy all file names provided in the answer
# to the './copies'.


# Check if arguments are provided
if [ -z $1 ]
then
	# Ask for arguments if non provided
	echo "Please provide filenames:"
	read FILENAMES
else
	# Else assign the arguments to this variable
	FILENAMES="$@"
fi
	
# Loop over filenames
for file in $FILENAMES
do
	# Make copies of each file in another directory
	cp $file ./copies/$file
	echo New copy made: ./copies/$file
done

exit 0
