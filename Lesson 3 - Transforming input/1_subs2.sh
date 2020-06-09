#!/bin/bash

# Demonstration of slicing strings with offset and length
# ${VAR:offset:length}

# Get date in specified format
DATE=$(date +%d-%m-%Y)
# Show only a slice of the day
echo The day is ${DATE:0:2}
echo The month is ${DATE:3:2}
echo The year is ${DATE:6:4}
echo Full date: $DATE


# Demonstration of substiution operator which raises error and exits
# ${VAR:?error_message}

# Set variable to null value
DATE=
# If var is empty will raise error and exit
echo ${DATE:?variable value not set!}
echo \$DATE=$DATE

exit 0