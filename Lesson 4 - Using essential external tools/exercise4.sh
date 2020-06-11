#/bin/bash

# Create a script that transforms the string:
# "cn=lara,dc=example,dc=com" in a way that the user name (lara) is
# extracted. Also make sure that the result is written in lowercase.
# Store the username in the variable USER and at the end of the scipt
# echo the value of USER.

TEXT="cn=lara,dc=example,dc=com"

# Search from end to start, find a comma followed by anything (,*) and remove it
# In this case removed: ',dc=example,dc=com'
USER=${TEXT%%,*}
echo \$USER: $USER # USER='cn=lara'


# Search from start to end, find anything followed by equal sign (*=) and remove
# In this case: removed: 'cn='
USER=${USER#*=}
echo \$USER: $USER # User='lara'

# Making sure the username is in lowercase
USER=$(echo $USER | tr [:upper:] [:lower:])
echo The username is: $USER

exit 0
