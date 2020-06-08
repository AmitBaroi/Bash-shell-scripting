#!/bin/bash

# Problem: copy contents from `var/log/messages` to `var/log/messages.old`
# then clears the current contents of the file.

# Copy the log file
cp 'var/log/messages' 'var/log/messages.old'
# Clear contents of the messages file
cat /dev/null > var/log/messages
# Notify user of task completion!
echo "Log file copied and contents cleared!"

exit 0