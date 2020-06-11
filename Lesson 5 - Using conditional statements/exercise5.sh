#!/bin/bash

# A customer has exported a long list of LDAP user names. These usernames
# are sorted in the file `Idapusers`. In this file, every user has a name
# in the format "cn=lisa,dc=example,dc=com". Write a script that extracts
# the username only (lisa) from all of the lines and write those to a new
# file. Based on this new file, create a local user account on your Linux box.

# Note: while testing its not a smart idead to create the user accounts directly.
# Find a solution that proves that the script works, without polluting your system
# with many unnecessary usernames.

FILE="abc/data"

for line in $(cat $FILE)
do
	USER=${line%%,*} # Removes ",dc=....,dc=..." from $line
	USER=${USER#*=}  # Removes "cn=" from $USER
	echo $USER >> users # Adds user name to a file called users
done

for i in $(cat users)
do
	echo User: $i
done


exit 0
