#!/bin/bash

ANIMAL=cow

[[ $ANIMAL=='[a-z]*' ]] || echo $ANIMAL does not start with a letter
echo End of program.

exit 0