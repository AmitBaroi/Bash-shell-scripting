#!/bin/bash

# This script shows how arguments are handled in different ways

echo "Runnig script: '$0' ..."
echo
echo "\$@ returns array of args : $@"
echo "\$# returns count of args : $#"
echo "\$* returns string of args: $*"

##################################
echo
echo "Looping over arg array:"
for i in "$@"
do
	echo $i
done

##################################
echo
echo "Looping over arg string:"
for j in "$*"
do
	echo $j
done

exit 0