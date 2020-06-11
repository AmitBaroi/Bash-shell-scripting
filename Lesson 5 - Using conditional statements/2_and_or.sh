#!/bin/bash

# Checks if given argument is a file or a directory and informs user.
# Raises warning if no argument value is provided to the script.
# 

# Check if argument 1 empty, if true then prompt user and exit with code 2
[ -z $1 ] && echo No argument provided && exit 2

# Check if argument is a file, if so then prompt user and exit with code 0
[ -f $1 ] && echo $1 is a file && exit 0

# Check if argument is a directory, if so then prompt user and exit with code 0
[ -d $1 ] && echo $1 is a directory && exit 0

exit 0