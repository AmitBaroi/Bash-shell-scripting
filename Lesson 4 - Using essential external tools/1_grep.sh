#!/bin/bash

# Understood nothing
# Look for better lessons on grep

if grep -q 'foo' 'booogfooogoofoo'
then
  echo "You appear to have typed 'foo' in the past"
fi

#grep -i -e date -e year *

exit 0