#!/bin/bash

FILE=some.csv
echo Reading line 5 of $FILE ...
# 5p- line 5 print of specified file
sed -n 5p $FILE
echo

FILE=hello.txt
echo Reading $FILE ...
echo
cat $FILE
echo Replacing \'hello\' with \'HELLO!\' ...
echo
# Replace hello with HELLO! in specified file
# Without -i, it changes will be returned to console (file remains unchanged)
# -i flag tells to change the file itself (not just return changed text)
sed -i s/hello/HELLO!/g $FILE
# Showing changes
cat $FILE


exit 0