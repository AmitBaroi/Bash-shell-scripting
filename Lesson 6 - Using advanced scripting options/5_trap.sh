#!/bin/bash

# The uninterruptable script

# Too risky to run this without precautions so putting exit here:
exit 0

trap "echo 'Forget it bro!'" INT
trap "logger 'Who tried to kill me?'" KILL
trap "logger 'Getting nasty huh?'" TERM

while true
do
	true
done

exit 0