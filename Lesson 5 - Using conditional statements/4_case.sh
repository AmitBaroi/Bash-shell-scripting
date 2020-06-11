#!/bin/bash

VAR=$1

case $VAR in
yes) # if $VAR is yes
	echo OK;;
no|nee) # if $VAR is no or nee
	echo Too bad;;
*) # else (for all other cases)
	echo Try again;;
esac # dont forget to close case with `esac`

exit 0
