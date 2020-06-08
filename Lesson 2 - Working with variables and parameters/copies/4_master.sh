#!/bin/bash

# This script will include the contents of another script using the source command
# Then use those contents for something, in this case just showing the value of the
# variable that we get from the source file.

# Source file name: '4_src.sh'
# Used source instead of . for  better code readability
source 4_src.sh # we can also write `. 4_src.sh`

# Showing the value of the variable that we got from source file
echo The value of the variable '$COLOR' is $COLOR

exit 0