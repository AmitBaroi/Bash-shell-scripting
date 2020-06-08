#!/bin/bash

# Script copies contents of var/log/messages` and clears current contents of file

# Declaring a variable (dont use spaces!)
LOGFILE='var/log/messages'

# Copy to a file with same name but .old extension
cp $LOGFILE $LOGFILE.old
# Clear contents of the logfile
cat '/dev/null' > $LOGFILE
# Notify user
echo 'Log file copied and contents cleared!'

exit 0