#!/bin/bash

FILEPATH='var/log/messages'

# Will substitute the output of date command and add at end of file
cp $FILEPATH $FILEPATH.$(date +%d-%m-%y)
cat "/dev/null" > $FILEPATH
echo "Process completed!"

exit 0