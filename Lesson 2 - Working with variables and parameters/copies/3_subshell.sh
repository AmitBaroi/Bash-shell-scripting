#!/bin/bash
#
# This program changes the current directory and shows contents of new directory.
# However, after the program ends we can see that we are back to the directory we
# were previously at. This is because when we run this script it runs in a subshell.
# When the script is done executing the subshell closes, we are back in the main shell.

echo Which directory do you want to activate?
read DIR

# Change directory to that which was specified by user
cd DIR
# Show directory path, contents
pwd
ls

echo End of program

exit 0