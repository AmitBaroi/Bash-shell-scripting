#!/bin/bash

# Filters out 2nd column with comma delimiter
cut -f 2 -d , some.csv
echo
# Filters out 2nd column with comma delimiter then sorts the output
# (Here | is the pipe operator which passes the output of cut to sort)
cut -f 2 -d , some.csv | sort

exit 0
