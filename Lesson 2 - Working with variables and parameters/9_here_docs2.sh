#!/bin/bash

# Example of a scripted FTP session
# In this case it is: 'ENDofSESSION'

lftp localhost <<ENDofSESSION
ls
get hosts
bye
ENDofSESSION

exit 0