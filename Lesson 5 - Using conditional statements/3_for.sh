#!/bin/bash

# Script counts the number of files in a directory

echo For which directory do you want to count files?
read DIR
cd $DIR
#echo Current directory: $(pwd)

COUNTER=0
# * is same as $(ls) - lists files/folders in directory
for i in *
do
	echo Counted: \'$i\'
	COUNTER=$((COUNTER+1))
done
# After done iterating over files
echo Total $COUNTER files in directory

exit 0