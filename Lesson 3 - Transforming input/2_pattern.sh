#!/bin/bash

# Demonstation of pattern matching operators

BLAH=Rababarabarabarara

echo \$BLAH: $BLAH
echo 'Result of ##*ba is:' ${BLAH##*ba}
echo 'Result of #*ba  is:' ${BLAH#*ba}
echo 'Result of %%*ba is:' ${BLAH%%*ba}
echo 'Result of %*ba  is:' ${BLAH%*ba}

exit 0