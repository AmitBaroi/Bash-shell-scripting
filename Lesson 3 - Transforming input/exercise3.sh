#!/bin/bash

# Write a script that puts the result of the command date +%d-%m-%y in a variable.
# Use pattern matching on this variable displaying the day, month in seperate lines.

DATE=$(date +%d-%m-%y)
echo \$DATE: $DATE
echo
# With substitution operators (easy)
echo "Day   :" ${DATE:0:2}
echo "Month :" ${DATE:3:2}
echo "Year  :" ${DATE:6:2}
echo
# With pattern matching (hard)
echo "Day   :" ${DATE%%-*}
MONTH=${DATE%-*}
echo "Month :" ${MONTH#*-}
echo "Year  :" ${DATE##*-}

exit 0