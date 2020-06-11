#!/bin/bash

COUNTER=0
while [[ $COUNTER<10 ]]
do
	sleep 1
	COUNTER=$((COUNTER+1))
	echo $COUNTER
done

exit 0
