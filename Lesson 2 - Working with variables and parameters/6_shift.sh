#!/bin/bash

# Demonstrates usage of shift command

echo "The arguments provided are:" $@
echo
echo "The value of \$1 is:" $1
echo "Argument in memory:" $@

shift # Shift arguments forward

echo "The value of \$1 is:" $1
echo "Argument in memory:" $@

exit 0