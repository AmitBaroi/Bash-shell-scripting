#!/bin/bash

# Learning string concatenation
# So simple: just put the variables and data right next to each other.
# Without any spaces.

FIRST_NAME='John'
LAST_NAME='Dee'
echo User full name: $FIRST_NAME $LAST_NAME

email=$FIRST_NAME"_"$LAST_NAME"@bash.com"
echo User email: $email

exit 0