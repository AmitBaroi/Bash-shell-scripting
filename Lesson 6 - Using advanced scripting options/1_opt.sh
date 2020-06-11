#!/bin/bash

while getopts "abc:" opt
do
case $opt in
	a ) VAR1=-m ;;
	b ) VAR2="-g 100";;
	c ) VAR3="-s $OPTARG";;
	* ) echo 'Usage: makeuser [-a] [-b] [-c shell] username'
esac
done

echo The current arguments are set to $*
shift $((OPTIND-1))
echo Now the current arguments are set to $*
echo Useradd $VAR1 $VAR2 $VAR3 $1

exit 0